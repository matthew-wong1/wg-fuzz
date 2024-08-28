struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 4>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(2147483647i, vec2<i32>(-1i, -1i), -1i, true, vec4<bool>(false, false, true, false)), Struct_1(1i, vec2<i32>(2147483647i, i32(-2147483648)), 0i, true, vec4<bool>(true, false, true, true)), Struct_1(-1i, vec2<i32>(-1i, -20666i), -4244i, true, vec4<bool>(false, true, false, true)), Struct_1(39843i, vec2<i32>(1i, -38039i), i32(-2147483648), true, vec4<bool>(false, true, false, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> i32 {
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global1 = array<bool, 4>();
    return -12694i ^ u_input.b;
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = -vec4<i32>(min(arg_0.a.b.x, func_2(-784f, vec3<bool>(arg_0.a.e.x, true, false), arg_0.c, Struct_1(2580i, arg_0.a.b, -2147483647i, true, arg_0.a.e))), _wgslsmith_div_i32(0i, abs(arg_0.a.b.x)), max(arg_0.a.a, arg_0.a.c) << (~_wgslsmith_sub_u32(arg_0.c, 4294967295u) % 32u), 2147483647i);
    var var_1 = arg_0.c;
    global0 = -55894i;
    var var_2 = arg_0.a.e.zxw;
    let var_3 = 1i;
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<f32> {
    global2 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(-1i, 12086i, arg_0)), -14445i) ^ -14634i));
    var var_1 = vec3<f32>(-1645f, _wgslsmith_f_op_f32(trunc(-309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)))));
    global1 = array<bool, 4>();
    var var_2 = !(!arg_1.e);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 988f) - 491f), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(124f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1433f - -219f), _wgslsmith_f_op_f32(ceil(-421f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(~select(0i, _wgslsmith_sub_i32(u_input.b, u_input.b), true), global2[_wgslsmith_index_u32((u_input.a | u_input.a) >> (func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 4u)], vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]), u_input.a)) % 32u), 4u)], vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * 886f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -620f)))), var_0.x));
    var var_2 = countOneBits(-(~(select(vec4<i32>(u_input.b, u_input.b, u_input.b, -33325i), vec4<i32>(-27375i, -24125i, 1i, 27362i), global1[_wgslsmith_index_u32(40226u, 4u)]) << (~vec4<u32>(0u, 4294967295u, 0u, 44775u) % vec4<u32>(32u)))));
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + -712f), var_0.x, true))))), abs(vec2<u32>(14155u, ~u_input.a)), vec3<f32>(var_0.x, _wgslsmith_div_f32(-1381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1303f + var_0.x) * _wgslsmith_f_op_f32(ceil(1377f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + -1250f)))));
}

