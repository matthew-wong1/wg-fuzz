struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global2: u32 = 0u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_2(arg_1.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(602f, -1000f, -706f)))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(sign(-1670f))))));
    var var_1 = _wgslsmith_mod_u32(abs(21346u >> (arg_3.x % 32u)), 21664u);
    var var_2 = -237f;
    var_2 = 1166f;
    var_1 = arg_3.x;
    return _wgslsmith_sub_vec3_u32((~(vec3<u32>(76913u, u_input.a.x, arg_1.b) ^ u_input.a) << ((_wgslsmith_clamp_vec3_u32(arg_3, vec3<u32>(u_input.e, 37996u, arg_1.b), u_input.a) | ~u_input.a) % vec3<u32>(32u))) << (min(vec3<u32>(~u_input.b.x, _wgslsmith_sub_u32(4294967295u, arg_3.x), ~4294967295u), vec3<u32>(arg_0.x, u_input.a.x, ~4294967295u)) % vec3<u32>(32u)), arg_3);
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(~vec4<u32>(u_input.b.x, arg_0.a.b, 4294967295u, 5337u), Struct_1(vec4<i32>(64608i, 10406i, global0.x, 19954i), arg_0.a.b), arg_0.b, select(vec3<u32>(1u, 22031u, u_input.b.x), u_input.a, true)), max(~u_input.a, ~vec3<u32>(arg_0.a.b, arg_0.a.b, 4294967295u))), 1u)], arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.b)), -899f);
    global2 = ~u_input.a.x;
    var var_1 = u_input.b;
    var_1 = ~vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), u_input.a.yy), _wgslsmith_div_u32(5105u, var_0.a.b)), _wgslsmith_div_u32(~countOneBits(4294967295u), u_input.b.x));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(71865u, 1u)], 2147483647i, 2147483647i, 689i), abs(vec4<i32>(-1i, -1i, u_input.c, 2147483647i))), var_0.a.a), u_input.c) << (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(var_0.a.b), arg_0.a.b), u_input.b), u_input.b) % vec2<u32>(32u));
    return false;
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<bool>(all(vec3<bool>(all(vec2<bool>(true, true)), !func_2(Struct_4(Struct_3(global1[_wgslsmith_index_u32(1u, 1u)], u_input.a.x, 1356f), -1256f)), true)), 2719u < (u_input.a.x | (u_input.e >> (~98854u % 32u))), all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(func_2(Struct_4(Struct_3(38358i, 22173u, -492f), -1000f)), true, true, true), !all(vec4<bool>(false, false, true, true)))), false);
    let var_1 = Struct_4(Struct_3(-u_input.c, min(30857u, ~abs(0u)), 303f), -616f);
    var var_2 = var_1.a;
    var var_3 = Struct_1(vec4<i32>(-2147483647i, -(~63462i) | (-global1[_wgslsmith_index_u32(var_2.b, 1u)] << (firstLeadingBit(u_input.e) % 32u)), global0.x ^ abs(var_2.a ^ var_1.a.a), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, 26977i, var_2.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a, -2147483647i, 0i), vec3<i32>(56576i, var_1.a.a, global1[_wgslsmith_index_u32(var_1.a.b, 1u)])) >> (vec3<u32>(var_1.a.b, 0u, 13465u) % vec3<u32>(32u)))), var_1.a.b ^ var_2.b);
    var var_4 = vec3<u32>(_wgslsmith_sub_u32(1u & var_2.b, _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, var_3.b), 4294967295u) ^ u_input.e), var_1.a.b, 61480u);
    return Struct_4(var_1.a, -943f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-17709i, u_input.c, global0.x, max(0i, _wgslsmith_sub_i32(0i, u_input.d.x))), u_input.d & vec2<i32>(-1i, u_input.c), ~vec2<i32>(~u_input.d.x, firstTrailingBit(var_0.a.a)) ^ u_input.d, 50247i);
}

