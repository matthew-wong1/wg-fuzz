struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: array<f32, 26> = array<f32, 26>(-1339f, 312f, 1359f, 489f, 154f, 209f, -911f, -1507f, -633f, 108f, 987f, -1737f, -1000f, 248f, -336f, -601f, -1194f, -1632f, 142f, 362f, -623f, -756f, 516f, -1225f, -539f, -973f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - global1[_wgslsmith_index_u32(countOneBits(18817u), 26u)])), 0u));
    global1 = array<f32, 26>();
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(firstLeadingBit(arg_0.x), _wgslsmith_clamp_i32(2147483647i, -4713i, arg_0.x), u_input.a.x)), u_input.a.xzz), abs(firstTrailingBit(u_input.a.xx)));
    var var_2 = -1331f;
    var var_3 = _wgslsmith_f_op_f32(abs(-2445f));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, -717f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(522f + -1104f)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    global1 = array<f32, 26>();
    var var_0 = arg_3.x;
    var_0 = abs(_wgslsmith_mod_i32(firstTrailingBit(arg_3.x), min(~(~arg_0.x), max(min(arg_3.x, arg_0.x), min(arg_0.x, arg_0.x)))));
    global1 = array<f32, 26>();
    var var_1 = Struct_1(~arg_0.x, arg_3);
    return u_input.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    global1 = array<f32, 26>();
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-180f)) * _wgslsmith_f_op_f32(arg_0.x + -219f))), ~(~select(1u, 37297u, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(-u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.a.a, global1[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(1i, u_input.a.x))) - _wgslsmith_f_op_f32(floor(var_0.a.a))), u_input.a.yx), 26u)]), _wgslsmith_clamp_u32(var_0.a.b, 6400u, 24169u));
    global1 = array<f32, 26>();
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1168u, firstLeadingBit(~1u)), ~select(vec2<u32>(0u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, 1u), vec2<u32>(1445u, 1u)), all(arg_2.zw)) & _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.b, var_0.a.b), ~vec2<u32>(94484u, 20199u)), ~(~vec2<u32>(u_input.b, var_1.b)), vec2<u32>(select(var_1.b, u_input.b, arg_2.x), max(37621u, 35829u))), ~vec2<u32>(u_input.b, ~_wgslsmith_mod_u32(4294967295u, 14644u)));
    return -26263i;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_3 {
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    global0 = array<vec4<u32>, 4>();
    global1 = array<f32, 26>();
    let var_0 = _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.a.x | -6266i, min(2147483647i, ~6235i), ~0i), -(~_wgslsmith_div_vec3_i32(u_input.a.xwx, arg_2.zwy))), vec3<i32>(0i, 1i, firstTrailingBit(-func_2(arg_1, arg_1.x, vec4<bool>(false, false, false, false)))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + -1026f) - -1902f), _wgslsmith_sub_u32(0u, ~((u_input.b | u_input.b) << (~u_input.b % 32u))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    global1 = array<f32, 26>();
    global0 = array<vec4<u32>, 4>();
    var var_0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x << (15161u % 32u), 1i)), countOneBits(-min(u_input.a.ww, u_input.a.wx))));
    let var_1 = Struct_1(-13046i, vec2<i32>(-22778i, abs(u_input.a.x)));
    let var_2 = ~(24687u | u_input.b);
    return func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1128f + global1[_wgslsmith_index_u32(var_2, 26u)]), arg_0.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 26u)]), _wgslsmith_f_op_f32(f32(-1f) * -263f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1922f * 1000f))) * global1[_wgslsmith_index_u32(~4294967295u, 26u)]), global1[_wgslsmith_index_u32(~(~94030u), 26u)], arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f - 2757f))), vec4<i32>(-30467i, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1882f, global1[_wgslsmith_index_u32(54698u, 26u)], arg_0.x, -221f) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(3010u, 26u)], arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 26u)], 1722f)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), -1397i, _wgslsmith_div_i32(2147483647i, 27300i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 26>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 26u)], 213f))))) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 26u)] - 1343f)), 4294967295u);
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = 0u;
    var var_3 = Struct_1(u_input.a.x, u_input.a.zy);
    let var_4 = Struct_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.b, 26u)]), 1393f)));
    let var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(-var_3.b)), -1000f, var_4.a.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1983f, var_4.a.a, -292f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_4.a.b, 26u)], global1[_wgslsmith_index_u32(var_2, 26u)], var_4.a.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(500f, 1409f, 1310f))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.a.a, var_4.a.a, -2189f), vec3<f32>(1000f, 999f, global1[_wgslsmith_index_u32(var_2, 26u)])) + vec3<f32>(-1357f, 617f, var_4.a.a))))));
    var var_6 = Struct_4(var_4.a);
    let var_7 = 1090f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 26u)]), -vec3<i32>(_wgslsmith_mod_i32(1996i, ~var_1), ~min(var_1, var_3.a), 36370i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_7)) - var_5.x));
}

