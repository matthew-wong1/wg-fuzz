struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = ~(~56173u);
    var_0 = min(arg_0.a, arg_0.a & arg_0.a);
    global0 = true;
    global0 = global1[_wgslsmith_index_u32(0u, 22u)];
    return !all(!(!select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)]), global1[_wgslsmith_index_u32(arg_0.a, 22u)])));
}

fn func_2() -> u32 {
    global0 = any(!(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)] && false, func_3(Struct_1(1u, 0i, vec4<f32>(311f, 674f, -736f, 1584f)), -206f))));
    global0 = (select(global1[_wgslsmith_index_u32(52443u, 22u)], global1[_wgslsmith_index_u32(35319u, 22u)], true | all(vec4<bool>(false, global1[_wgslsmith_index_u32(2276u, 22u)], false, true))) && false) & global1[_wgslsmith_index_u32(~32718u >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u), 22u)];
    let var_0 = vec3<i32>(~(-(~8155i)), 1i, 0i);
    var var_1 = Struct_1(abs(~0u), _wgslsmith_mult_i32(39549i, 51025i), vec4<f32>(1137f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2364f + 1000f)))), _wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1296f + 150f), -284f))), -757f));
    var var_2 = Struct_1(reverseBits(abs(_wgslsmith_sub_u32(~var_1.a, ~96881u))), 16238i, var_1.c);
    return abs(reverseBits(abs(countOneBits(var_1.a)) & var_1.a));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(func_2(), 22u)];
    var var_1 = Struct_1(4294967295u, 1i, vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) + -1000f), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-242f * arg_0), -517f)))));
    global0 = global1[_wgslsmith_index_u32(81045u, 22u)];
    global1 = array<bool, 22>();
    var_0 = !all(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.a, 22u)]), false), true));
    return ~(-1i ^ var_1.b) | -(var_1.b ^ u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(-1000f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -834f))), any(!select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, global1[_wgslsmith_index_u32(0u, 22u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(35422u, 22u)]))), !global1[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 59163u), vec3<u32>(37826u, 64502u, 1u))), 22u)] | (func_1(_wgslsmith_f_op_f32(f32(-1f) * -396f)) <= u_input.a));
    global0 = true;
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    let var_1 = Struct_1(_wgslsmith_div_u32(select(_wgslsmith_div_u32(2740u, ~0u), _wgslsmith_mult_u32(1u, 1u), true), ~abs(1u)), abs(select(-u_input.e.x, -16601i, true) >> (~(~0u) % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(868f, 1217f, -735f, 1257f), vec4<f32>(970f, -741f, 717f, -238f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -861f, -861f, -1000f), vec4<f32>(343f, -125f, 708f, -1154f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 164f, -1599f, 1800f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-461f, 1000f, 1374f, 1776f), vec4<f32>(538f, 1190f, -305f, -1073f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, 1975f, -246f, -290f) * vec4<f32>(-944f, 627f, -412f, -789f)))), vec4<bool>(false, true, any(vec2<bool>(false, true)), all(vec3<bool>(var_0.x, false, true))))));
    global1 = array<bool, 22>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) + _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)), var_1.c.x));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(0i, firstTrailingBit(firstTrailingBit(2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, 3891i), max(u_input.b, 5147i)), reverseBits(-u_input.c))), 2147483647i, _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), ~51973u);
}

