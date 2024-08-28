struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = !all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)));
    global0 = array<vec4<u32>, 26>();
    var var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1629f, -713f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -1656f))), all(vec2<bool>(all(vec3<bool>(true, true, true)), false)), Struct_1(min(~u_input.b.x, abs(3656i)), min(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.d.x, 66247u))), ~max(vec3<u32>(u_input.a.x, 1217u, 48732u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)))));
    let var_2 = 2227u;
    let var_3 = -(~(~35903i));
    return var_1.a.c.b;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~1i, -691i), u_input.b.x), -(~firstLeadingBit(-2147483647i))), vec3<u32>(15317u, u_input.d.x, ~(~u_input.d.x)), ~_wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, u_input.a.x, 1412u) >> (vec3<u32>(28737u, 15312u, 11652u) % vec3<u32>(32u))), ~func_3(-1437f)));
    var var_1 = false;
    let var_2 = select(vec3<bool>(false, all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), !vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), !all(vec2<bool>(true, false)), true), !vec3<bool>(any(vec3<bool>(true, true, true)), select(true, false, false), true));
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    return Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1360f, -955f, -1043f, -1000f) + vec4<f32>(-543f, -1164f, 206f, 1558f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1255f, 997f, -1561f, 318f))), vec4<bool>(var_2.x, true, var_2.x, var_2.x))))), true, Struct_1(u_input.b.x, var_0.b, var_0.b)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1376f, -901f)) - _wgslsmith_f_op_f32(min(-593f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(691f, -781f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(657f, -1358f)) * _wgslsmith_f_op_f32(-1457f - -216f)))));
    var var_1 = ~reverseBits(vec4<u32>(u_input.a.x, u_input.d.x, 0u, 18930u));
    let var_2 = func_2();
    var_1 = ~(global0[_wgslsmith_index_u32(~func_2().a.c.c.x, 26u)] >> ((((global0[_wgslsmith_index_u32(6062u, 26u)] << (global0[_wgslsmith_index_u32(u_input.a.x, 26u)] % vec4<u32>(32u))) & global0[_wgslsmith_index_u32(~u_input.a.x, 26u)]) | global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, var_1.x), 26u)]) % vec4<u32>(32u)));
    var var_3 = func_2().a.c;
    return StorageBuffer((2147483647i << (_wgslsmith_mult_u32(28851u, ~var_2.a.c.c.x) % 32u)) << (85318u % 32u), var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2489f;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 313f) - vec2<f32>(var_0, var_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1219f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1434f, -1660f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, -357f)))))));
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_0), vec4<f32>(-439f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, true))))), true, Struct_1(u_input.b.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x), ~vec3<u32>(6845u, u_input.a.x, u_input.a.x)), reverseBits(vec3<u32>(35928u, u_input.d.x, u_input.a.x) & vec3<u32>(1711u, u_input.d.x, 16713u)))));
    global0 = array<vec4<u32>, 26>();
    var var_3 = var_0;
    let x = u_input.a;
    s_output = func_1();
}

