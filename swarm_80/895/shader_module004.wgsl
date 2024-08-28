struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(79369u, 1u, 1u, 47300u, 0u, 1u, 1u, 7902u, 1u, 4294967295u, 28177u, 66679u, 1u, 28836u, 1u, 33481u, 45882u, 4294967295u, 1u, 1u, 4294967295u, 39922u, 4294967295u, 4294967295u, 13968u, 0u, 51496u, 88925u, 66796u);

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(38916u, 0u, 74859u, 1u), vec4<u32>(1u, 7034u, 0u, 3062u));

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<f32>, 24>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<vec4<u32>, 2>();
    let var_0 = reverseBits(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.b, u_input.b, -17311i)) | vec4<i32>(global3.x, 7351i, -16604i, 1i), vec4<i32>(-u_input.b, select(u_input.b, global3.x, true), 1i, -39170i)) & _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, -2147483647i, global3.x, -2147483647i), max(max(vec4<i32>(-27893i, global3.x, 2147483647i, 2147483647i), vec4<i32>(u_input.b, 2147483647i, global3.x, -2572i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 5930i, -26092i, global3.x), vec4<i32>(0i, 1i, global3.x, -42088i)))));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(step(1040f, -1282f)))), -784f)), u_input.a);
    let var_2 = 981f;
    global1 = array<vec3<i32>, 9>();
    return select(!vec4<bool>(all(arg_0.a), var_1.a.x, any(vec4<bool>(arg_0.a.x, var_1.a.x, var_1.a.x, true)) && var_1.a.x, !var_1.a.x), select(var_1.a, select(select(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), true), vec4<bool>(false, all(vec3<bool>(arg_0.a.x, var_1.a.x, arg_0.a.x)), true, false), !select(var_1.a, arg_0.a, var_1.a.x)), true), var_1.a);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    global1 = array<vec3<i32>, 9>();
    var var_0 = ~(~(~select(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<u32>(1u, u_input.a, 5428u, 27779u), any(arg_1))));
    var var_1 = var_0.x >= ~43263u;
    var var_2 = Struct_1(func_3(Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(202f, -1121f, 538f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2095f, -661f, -319f) + vec3<f32>(1868f, -481f, 548f))), 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1320f)), -1633f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2288f, 484f)) + -1055f), _wgslsmith_f_op_f32(abs(-1882f)))), u_input.a | ~41108u);
    let var_3 = true;
    return false;
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    global1 = array<vec3<i32>, 9>();
    global2 = array<vec4<u32>, 2>();
    global4 = array<vec2<f32>, 24>();
    var var_0 = true;
    var var_1 = !(!(func_2(vec4<i32>(1i, 1i, u_input.b, -54391i) >> (global2[_wgslsmith_index_u32(0u, 2u)] % vec4<u32>(32u)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0)), vec2<bool>(false, arg_0)) || true));
    return ~countOneBits(57650u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(~38540u, 2u)], ~global2[_wgslsmith_index_u32(func_1(true | any(vec3<bool>(true, false, false)), _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 29u)]) ^ min(1u, 0u)), 2u)]);
    let var_1 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1115f, _wgslsmith_f_op_f32(step(170f, 267f)), -1164f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, 312f, 473f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(765f, 602f, -959f)))))), 545u);
    let var_2 = !var_1.a.xzw;
    let var_3 = abs(var_0.wx);
    let var_4 = vec4<i32>(u_input.b ^ -37561i, -14075i, -(~20400i) >> (countOneBits(abs(var_0.x)) % 32u), u_input.b);
    global0 = array<u32, 29>();
    var var_5 = var_2.zz;
    let var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, global1[_wgslsmith_index_u32(1u, 9u)]);
}

