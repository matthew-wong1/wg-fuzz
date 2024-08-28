struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: bool = true;

var<private> global2: array<vec3<u32>, 17>;

var<private> global3: array<vec2<i32>, 16>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = 4898u;
    global1 = arg_1.c.a.x & false;
    var var_1 = arg_1.a;
    return select(vec3<bool>(select(arg_1.c.a.x, !(!arg_1.c.a.x), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))), select(true, true, !all(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)))), vec3<bool>(any(var_1.a.yz), false, _wgslsmith_dot_vec2_i32(firstTrailingBit(global3[_wgslsmith_index_u32(7944u, 16u)]), global3[_wgslsmith_index_u32(~88314u, 16u)]) < _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 2147483647i), u_input.a)), all(vec3<bool>((false != arg_1.b.a.x) & var_1.a.x, abs(u_input.a) != _wgslsmith_sub_i32(-23314i, 31680i), true)));
}

fn func_2() -> Struct_1 {
    return Struct_1(select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1258f, -2195f)))), Struct_2(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)))), vec3<bool>(true, true, true), true));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_clamp_i32(global0.x, global0.x, -9612i), -32583i);
    let var_0 = select(!vec4<bool>(true, true, ~arg_0 >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54751u, arg_0, 55632u), vec4<u32>(arg_0, arg_0, arg_0, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(2456u, arg_0), vec2<u32>(1u, 36131u)) != 43964u), !(!vec4<bool>(29401u == arg_0, false, true, false)), true);
    var var_1 = func_2();
    let var_2 = Struct_2(func_2(), func_2(), func_2());
    let var_3 = vec3<i32>(u_input.a, 2147483647i, u_input.a | -reverseBits(0i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(select(~(~1u), 24352u, !any(vec2<bool>(true, false)))), func_2(), Struct_1(func_1(9194u).a));
    let var_1 = Struct_2(Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(var_0.b.a.x, var_0.c.a.x, var_0.a.a.x), select(var_0.a.a, vec3<bool>(true, var_0.a.a.x, var_0.b.a.x), var_0.a.a))), var_0.c, func_1(select(abs(4294967295u), firstTrailingBit(_wgslsmith_sub_u32(1u, 0u)), !any(vec4<bool>(var_0.c.a.x, false, var_0.a.a.x, false)))));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, firstTrailingBit(39567u)), ~reverseBits(vec2<u32>(28033u, 4294967295u))), 1u), 16u)];
    var_0 = var_1;
    var var_2 = select(vec2<u32>(_wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(29860u, 0u, 4294967295u, 45090u), vec4<u32>(0u, 1u, 0u, 1u)), 1u), 36112u), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(29206u, 4294967295u), vec2<u32>(1u, 1u)), _wgslsmith_sub_u32(select(4294967295u, 1u, var_0.c.a.x), 59298u))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, countOneBits(79130u)), 11073u), firstTrailingBit(vec2<u32>(1u, 1u))), !(var_0.c.a.x && (false | all(var_1.c.a))));
    var var_3 = vec3<u32>(4294967295u, ~(~_wgslsmith_clamp_u32(abs(var_2.x), _wgslsmith_sub_u32(var_2.x, 0u), ~26784u)), 4294967295u);
    let var_4 = global2[_wgslsmith_index_u32(var_3.x, 17u)];
    let var_5 = false;
    var_2 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), var_3.xx), ~firstTrailingBit(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(32478u, var_4.x, var_3.x), global2[_wgslsmith_index_u32(var_2.x, 17u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

