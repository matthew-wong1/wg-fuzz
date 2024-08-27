struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1000f, -2835f), vec2<f32>(-973f, -886f), vec2<f32>(-1000f, -436f), vec2<f32>(-692f, -1721f), vec2<f32>(1040f, -998f), vec2<f32>(503f, -436f), vec2<f32>(-1707f, -987f), vec2<f32>(-955f, -1000f), vec2<f32>(-947f, -277f), vec2<f32>(-645f, -140f), vec2<f32>(1056f, -701f), vec2<f32>(1350f, 2181f), vec2<f32>(365f, -1164f), vec2<f32>(-312f, -472f), vec2<f32>(1000f, -310f), vec2<f32>(-914f, 1000f), vec2<f32>(-2066f, -226f), vec2<f32>(-1687f, 506f), vec2<f32>(-644f, 672f), vec2<f32>(-204f, -303f), vec2<f32>(1013f, -459f), vec2<f32>(-1000f, 941f), vec2<f32>(355f, -475f));

var<private> global3: vec3<i32> = vec3<i32>(17144i, -47832i, 34669i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(u_input.d.x, arg_1.b, arg_1.b.xy, arg_2.x > 1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x)))));
    let var_1 = -1084f;
    global1 = array<vec4<f32>, 17>();
    var var_2 = arg_1.d;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f + arg_0.a) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, -1349f), _wgslsmith_f_op_f32(-arg_1.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, arg_1.e)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(0u, 22u)], vec2<f32>(arg_2.x, arg_1.e))))), ~arg_0.c);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 17u)];
    var var_1 = false;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = _wgslsmith_add_u32(83909u, _wgslsmith_clamp_u32(0u, ~4294967295u, 62399u));
    let var_3 = Struct_1(15036u, -(~(-vec3<i32>(-1i, -35343i, -3121i) ^ vec3<i32>(0i, global3.x, -18973i))), global3.yx ^ -vec2<i32>(global3.x, -1i), func_3(Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(75292u, 0u)), 22u)] * _wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, 1067f) * vec2<f32>(arg_1, var_0.x))), ~vec4<u32>(38895u, 6034u, 0u, u_input.b.x)), Struct_1(arg_0.x, -_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, -2147483647i, global3.x), vec3<i32>(global3.x, 35332i, global3.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, global3.x), global3.xz), true | any(vec3<bool>(true, false, true)), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), 1464f, _wgslsmith_f_op_f32(select(2299f, var_0.x, false)), var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-773f)), _wgslsmith_f_op_f32(-var_0.x))))));
    return _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(global3.x, global3.x, var_3.c.x, var_3.c.x))), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.c.x, 2147483647i, var_3.b.x, var_3.c.x), vec4<i32>(global3.x, 2147483647i, -1i, 1i)) | vec4<i32>(18581i, var_3.b.x, global3.x, var_3.b.x)), ~(-vec4<i32>(i32(-1i) * -37034i, ~global3.x, 36588i, 1i)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = vec2<bool>(!(!(-48513i != _wgslsmith_mult_i32(1i, global3.x))), false);
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    return select(vec4<i32>(-(~1i), global3.x, global3.x, select(global3.x, global3.x, true)), abs(func_2(arg_1.wx, _wgslsmith_f_op_f32(-371f + 1000f))), vec4<bool>(true, var_0.x, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(498f, 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(368f, -1523f)), _wgslsmith_f_op_f32(-753f * -701f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1588f, 1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-894f, -1065f)))), ~min(~(vec4<u32>(35763u, u_input.a, u_input.c, u_input.b.x) ^ u_input.d), vec4<u32>(min(u_input.d.x, u_input.b.x), u_input.b.x, ~0u, abs(47468u))));
    var var_1 = firstTrailingBit(-(~(-func_1(96137u, vec4<u32>(0u, var_0.c.x, 21302u, 0u), global2[_wgslsmith_index_u32(var_0.c.x, 23u)], vec3<f32>(414f, var_0.b.x, 241f)))));
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, firstLeadingBit(abs(_wgslsmith_sub_i32(68399i, var_1.x))), abs(0i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global3.xz, var_1.xw), ~global3.zz)), vec4<i32>(global3.x, -43443i, -2147483647i, ~var_1.x) | firstLeadingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(25008i, -42451i, 2147483647i, var_1.x), func_2(u_input.d.xy, 1412f))));
    let var_2 = -global3.x;
    let var_3 = Struct_1(~4294967295u, var_1.xxx, -_wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(0i), _wgslsmith_clamp_i32(global3.x, var_2, 1i)), vec2<i32>(41767i, -2147483647i)), false, _wgslsmith_f_op_f32(f32(-1f) * -2443f));
    var var_4 = ~reverseBits(~abs(_wgslsmith_clamp_vec3_u32(u_input.d.zzy, u_input.d.wwx, vec3<u32>(29276u, var_0.c.x, 4294967295u))));
    var var_5 = 4294967295u;
    global0 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(reverseBits(var_3.b), vec3<i32>(-1i) * -vec3<i32>(var_3.c.x, -1i, var_1.x)), vec4<u32>(u_input.a, u_input.d.x, u_input.b.x >> (~(11603u | var_0.c.x) % 32u), 40502u), 11339u, -2147483647i);
}

