struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(i32(-2147483648), 17315i), vec2<i32>(-13829i, -5731i), vec2<i32>(43471i, 2147483647i), vec2<i32>(0i, -58771i), vec2<i32>(-11100i, -91078i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(8621i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(0i, -13041i), vec2<i32>(-62683i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 20177i), vec2<i32>(-30357i, -27563i), vec2<i32>(30462i, 1i), vec2<i32>(-1i, 36881i), vec2<i32>(-39169i, 23272i), vec2<i32>(-12036i, 19228i), vec2<i32>(9757i, -1i), vec2<i32>(-25293i, -1i), vec2<i32>(i32(-2147483648), 19930i), vec2<i32>(2147483647i, -55183i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(151f + 775f)))), true, vec4<bool>(any(vec3<bool>(true, true, true)) || true, true, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), true));
    var var_1 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, var_0.a))))) * _wgslsmith_f_op_f32(f32(-1f) * -1974f)));
    var var_2 = ~(~(~vec4<u32>(countOneBits(0u), countOneBits(0u), abs(global0[_wgslsmith_index_u32(83723u, 19u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -765f);
    let var_4 = var_0.c.yx;
    return Struct_1(-438f, var_4.x, vec4<bool>(var_0.b, var_0.c.x, var_2.x < ~var_2.x, true));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<vec2<i32>, 24>();
    let var_0 = Struct_1(-2318f, any(!func_1().c.yz), vec4<bool>(!(!(!arg_1.b)), arg_1.c.x, 0i >= select(firstLeadingBit(-1i), 1i, true), -_wgslsmith_mult_i32(-1i, u_input.a.x) > max(~2147483647i, 67310i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(379f, 728f, -1282f, var_0.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -754f, -1600f, -278f) + vec4<f32>(1857f, -988f, var_0.a, 1676f)))) - vec4<f32>(1f, var_0.a, _wgslsmith_f_op_f32(1551f * arg_1.a), 854f)));
    var var_2 = Struct_2(all(vec4<bool>(true, all(arg_1.c.wyy), arg_1.b & arg_1.c.x, u_input.a.x <= 2147483647i)) | !(!func_1().b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.c.x))) + -212f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1122f + -1493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-831f)))), var_1.x), ~(-(vec3<i32>(-1i) * -u_input.c.yxx)), 576f, _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.b.x, u_input.e.x) | vec4<u32>(38138u, 0u, global0[_wgslsmith_index_u32(36893u, 19u)], 25075u))), firstTrailingBit(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.e.x, u_input.e.x, 0u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 52595u), select(vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.b.x), u_input.b, var_0.b))));
    let var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_1.x)), func_1().a, 908f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f) + var_0.a), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -315f)), var_2.d, var_2.d)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(arg_0.d, 976f), Struct_1(-1484f, true, vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -391f, arg_0.d, 298f) * vec4<f32>(arg_0.d, arg_0.d, arg_0.b.x, -319f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d)), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -269f), arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), -325f, arg_0.d, arg_0.d) + vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d, arg_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.d, 119f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d, -764f)) - arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, 540f))))));
    return u_input.b.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    let var_0 = ~select(_wgslsmith_add_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 19u)], 0u, 0u), u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 16064u, 1u, 59909u), u_input.b)), vec4<u32>(4294967295u, func_2(Struct_2(arg_1, vec3<f32>(1000f, -534f, 1660f), vec3<i32>(arg_0.x, arg_0.x, -50428i), 103f, vec4<u32>(68051u, 29202u, u_input.b.x, u_input.b.x)), 4294967295u, u_input.d.x), u_input.e.x, firstTrailingBit(4294967295u))), ~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), vec4<bool>(u_input.b.x != u_input.e.x, func_1().c.x, arg_1, arg_1 || !arg_1));
    global0 = array<u32, 19>();
    global1 = array<vec2<i32>, 24>();
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, -786f, -2056f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1808f, -340f, 225f), vec3<f32>(1000f, 616f, 1034f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(173f, -845f, -837f) + vec3<f32>(1131f, 1738f, -1753f)), vec3<f32>(-2390f, -731f, 1000f)))), -_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-17986i), reverseBits(arg_0.x), -40854i), ~u_input.d | (u_input.c.yww ^ vec3<i32>(9039i, arg_0.x, -48584i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1766f))), ~var_0 >> (u_input.b % vec4<u32>(32u)));
    global0 = array<u32, 19>();
    return _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~u_input.b.wx));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)), var_1.a, var_1.b))))));
    var_2 = 2067f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32((_wgslsmith_sub_u32(33582u, global0[_wgslsmith_index_u32(21974u, 19u)]) ^ func_2(Struct_2(false, vec3<f32>(var_1.a, 657f, var_1.a), vec3<i32>(-2147483647i, -20488i, 0i), var_1.a, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 64336u)), u_input.e.x, -2147483647i)) << (30123u % 32u), 24u)], true)), !(!(!all(var_1.c))), !select(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.b), var_1.c, var_1.b), select(!var_1.c, !vec4<bool>(false, var_1.b, false, false), var_1.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, -740f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(var_1.a)), true)), var_3.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-402f * var_3.a), _wgslsmith_f_op_f32(331f + 1000f)))));
}

