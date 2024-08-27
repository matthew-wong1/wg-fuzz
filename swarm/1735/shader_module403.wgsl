struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global1: vec4<i32>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global4: vec3<f32> = vec3<f32>(1691f, -540f, 1873f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = 26046u;
    let var_1 = arg_0;
    global2 = global1.x;
    let var_2 = arg_2;
    global4 = arg_1;
    return _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 83751u, u_input.b.x, _wgslsmith_mult_u32(73073u, 0u)), (vec4<u32>(_wgslsmith_clamp_u32(var_0, 4294967295u, arg_2.a.x), 1u, 10460u, var_2.a.x) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(65447u, arg_2.a.x, var_0, var_2.a.x), vec4<u32>(u_input.d, 24882u, 1u, 1u)) ^ _wgslsmith_div_vec4_u32(var_2.a, vec4<u32>(108252u, 94353u, 0u, 0u))) % vec4<u32>(32u))) | arg_2.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = global4.x;
    var var_1 = Struct_1(~(~1u));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(arg_1.a.x, min(1u, u_input.b.x)), countOneBits(~arg_1.a.x), _wgslsmith_dot_vec4_u32(func_3(_wgslsmith_mult_i32(global1.x, 1i) >> (~arg_1.a.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(585f - global4.x), _wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(max(1503f, 1000f))), arg_1), abs(_wgslsmith_div_vec4_u32(arg_0.a, vec4<u32>(var_1.a, arg_2.a.x, 4294967295u, var_1.a)))), _wgslsmith_div_u32(u_input.d, _wgslsmith_div_u32(1u, arg_0.a.x)));
    var var_3 = Struct_1(~_wgslsmith_mod_u32(firstLeadingBit(18686u), firstTrailingBit(u_input.b.x)));
    var var_4 = Struct_1(1u);
    return var_3.a;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = vec3<f32>(1f, -662f, global4.x);
    let var_1 = Struct_2(vec4<u32>(u_input.d, ~func_2(Struct_2(vec4<u32>(0u, u_input.b.x, 6305u, arg_0.a), true, global3[_wgslsmith_index_u32(arg_0.a, 24u)]), Struct_2(vec4<u32>(u_input.b.x, arg_0.a, arg_0.a, u_input.d), false, global3[_wgslsmith_index_u32(27277u, 24u)]), Struct_2(vec4<u32>(35529u, 20767u, 53423u, 1u), false, global3[_wgslsmith_index_u32(4294967295u, 24u)])), 1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u & u_input.d, 30805u), func_2(Struct_2(vec4<u32>(u_input.b.x, 1u, arg_0.a, 4294967295u), false, vec2<bool>(false, false)), Struct_2(vec4<u32>(arg_0.a, 22519u, arg_0.a, 0u), true, global3[_wgslsmith_index_u32(u_input.d, 24u)]), Struct_2(vec4<u32>(arg_0.a, arg_0.a, u_input.b.x, arg_0.a), true, global3[_wgslsmith_index_u32(4294967295u, 24u)])))), select(all(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(131217u, 1u, 38335u))), 4u)]), any(vec3<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, false, false)), 4294967295u == arg_0.a)), all(global3[_wgslsmith_index_u32(firstTrailingBit(625u), 24u)]) != (true | any(vec2<bool>(true, true)))), !global3[_wgslsmith_index_u32(4294967295u, 24u)]);
    var var_2 = var_1;
    var var_3 = vec3<f32>(-492f, var_0.x, -462f);
    var var_4 = global1.x;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.x, -732f), _wgslsmith_f_op_f32(-148f + 837f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(489f, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1560f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x - global4.x), -664f)) + global4.x));
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_div_u32(u_input.d, u_input.d)));
}

