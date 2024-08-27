struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-32860i, i32(-2147483648), 28697i, -9090i, 13784i, 1i, 2147483647i, 36217i, -1i, -1i, -41551i, -60294i, -1i, 2147483647i, 3044i, 0i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = -vec4<i32>(2147483647i, -u_input.a >> (~countOneBits(u_input.c.x) % 32u), u_input.a, -(~_wgslsmith_mod_i32(u_input.a, 1i)));
    return 1426f;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    var var_0 = vec4<u32>(~4294967295u, _wgslsmith_add_u32(abs(u_input.c.x), _wgslsmith_div_u32(~arg_1.e, arg_1.a << ((u_input.c.x & 47u) % 32u))), 10217u, reverseBits(_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(arg_1.e & 0u, ~u_input.c.x))));
    global0 = array<i32, 17>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(arg_2.x, 1190f)))), arg_2, !any(vec2<bool>(arg_1.c.x, false)))), arg_1.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1000f), _wgslsmith_f_op_vec4_f32(abs(arg_1.d.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.d.d, vec4<f32>(283f, arg_2.x, arg_2.x, 440f))))))));
    let var_2 = var_1.c.x;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_1(Struct_3(var_1.b.d.zz, arg_1.d, arg_1.d.d)))))));
    return 0u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32) -> Struct_1 {
    return Struct_1(vec3<i32>(firstTrailingBit(max(37536i, 28350i)), ~(-49747i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(75030u, 17u)], u_input.a, 40017i), ~vec3<i32>(1i, global0[_wgslsmith_index_u32(79140u, 17u)], 2147483647i))) ^ ~vec3<i32>(25624i, -20440i, -14443i), -global0[_wgslsmith_index_u32(~(func_3(global0[_wgslsmith_index_u32(arg_0, 17u)], Struct_2(u_input.b, true, vec3<bool>(true, false, true), Struct_1(vec3<i32>(-11419i, -2147483647i, global0[_wgslsmith_index_u32(1u, 17u)]), 37353i, vec2<f32>(arg_1, arg_1), vec4<f32>(arg_1, 462f, 1896f, arg_1), -328f), u_input.b), vec2<f32>(-345f, -432f)) ^ ~60040u), 17u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-753f - 1053f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -517f, 894f, -615f))) * vec4<f32>(arg_2, _wgslsmith_f_op_f32(-1133f - arg_1), arg_1, 1137f))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, any(vec4<bool>(true, false, false, false)) || true));
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_1 = ~abs(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 17u)], 1i) & global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 17u)]);
    global0 = array<i32, 17>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<f32>(793f, 2240f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec2<f32>(-363f, 1647f), vec4<f32>(1172f, 1085f, 1164f, -1726f), 1357f), vec4<f32>(1035f, 161f, -612f, -1755f)))), 1041f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f - -689f) * -127f), _wgslsmith_f_op_f32(step(-367f, _wgslsmith_f_op_f32(278f - -491f)))))), func_2(6528u, 832f, -358f), vec4<f32>(func_2(firstTrailingBit(56354u), 1f, _wgslsmith_f_op_f32(select(-534f, 1554f, var_0.x))).c.x, _wgslsmith_f_op_f32(sign(-1188f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -625f), -316f))), 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + var_2.c.x) + _wgslsmith_f_op_f32(round(var_2.b.e)))) - var_2.c.x));
}

