struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1i), Struct_1(56397i), Struct_1(1i), Struct_1(-5359i), Struct_1(-47310i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(15811i), Struct_1(-4609i), Struct_1(-1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(22003i), Struct_1(1i), Struct_1(0i), Struct_1(-3906i), Struct_1(10196i), Struct_1(-23421i), Struct_1(-18702i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-61103i), Struct_1(2147483647i), Struct_1(-1782i), Struct_1(-1i), Struct_1(-24096i));

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(28115u, 22647u, 12037u, 96511u), vec4<u32>(0u, 18622u, 24690u, 799u), vec4<u32>(0u, 16091u, 1u, 4294967295u), vec4<u32>(0u, 38886u, 17757u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    let var_0 = arg_2.yx;
    return ~(-arg_2.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> vec4<f32> {
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_1(arg_3);
    var_0 = Struct_1(arg_2.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, 469f, arg_0, 231f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(240f, 154f, 228f, arg_0))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1227f, -940f, -491f, 450f), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))));
    let var_2 = Struct_1(1i);
    return var_1;
}

fn func_1() -> f32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-921f, min(~0i, func_2(1u, global1[_wgslsmith_index_u32(countOneBits(var_0), 4u)], firstLeadingBit(vec3<i32>(694i, -2147483647i, 2147483647i)), true)), ~vec2<i32>(i32(-1i) * -2147483647i, func_2(8949u, global1[_wgslsmith_index_u32(0u, 4u)], vec3<i32>(1i, -55864i, -25355i), true)), -_wgslsmith_clamp_i32(abs(3483i), _wgslsmith_clamp_i32(-2147483647i, 11752i, 1i), countOneBits(-16297i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(527f, -1000f, 802f, -817f) * vec4<f32>(-1930f, 135f, 517f, 584f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, -273f, -368f), vec4<f32>(-1239f, 316f, -808f, -443f))))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1821f, 274f)) * _wgslsmith_f_op_f32(round(-349f))), ~13755i, vec2<i32>(1i, 1i), _wgslsmith_mod_i32(countOneBits(-1i), 1i)))));
    global1 = array<vec4<u32>, 4>();
    var var_2 = -abs(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-17233i, -1i, 1i), vec3<i32>(1i, 20587i, -1i))));
    var_2 = ~(~(-17547i) | ~max(-23428i, _wgslsmith_dot_vec2_i32(vec2<i32>(-73807i, 27602i), vec2<i32>(31165i, 1i))));
    return _wgslsmith_f_op_f32(var_1.x * var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2599f, 665f, 683f) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-1368f)), -188f, _wgslsmith_f_op_f32(abs(1422f)))))));
    global0 = array<Struct_1, 28>();
    global1 = array<vec4<u32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_2 = 4294967295u;
    var var_3 = -_wgslsmith_add_vec4_i32(countOneBits(select(max(vec4<i32>(35272i, 2147483647i, 30033i, 0i), vec4<i32>(2147483647i, 0i, 0i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), true)), vec4<i32>(-1i, -32490i, -1i, -17632i));
    var_3 = abs(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_3.x, var_3.x, -20318i), vec4<i32>(0i, var_3.x, var_3.x, -15703i)), vec4<i32>(var_3.x, var_3.x, 2147483647i, var_3.x)) & (vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(36681i, -1i), var_3.wz), var_3.x, ~var_3.x, var_3.x << (u_input.a % 32u)) ^ (vec4<i32>(var_3.x, -2147483647i, var_3.x, -1i) | abs(vec4<i32>(-2147483647i, 1i, var_3.x, 39435i)))));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 1u), firstTrailingBit(~(~vec2<u32>(15686u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, ~1u, 8872u));
}

