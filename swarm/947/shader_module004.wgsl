struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(7071u, 45068u, 4294967295u);

var<private> global1: array<bool, 2> = array<bool, 2>(false, false);

var<private> global2: array<vec3<i32>, 24>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global1 = array<bool, 2>();
    var var_0 = vec4<bool>(false, true != all(select(select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false, global1[_wgslsmith_index_u32(43277u, 2u)]), global1[_wgslsmith_index_u32(15620u, 2u)]), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(43649u, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(45656u, 2u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 2u)])), true)), any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], true)) & ((global1[_wgslsmith_index_u32(29649u, 2u)] & any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.e.x, 2u)], global1[_wgslsmith_index_u32(19469u, 2u)]))) | global1[_wgslsmith_index_u32(global0.x, 2u)]), global1[_wgslsmith_index_u32(4294967295u, 2u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1149f, -488f));
    let var_2 = select(~(~u_input.b), _wgslsmith_sub_u32(global0.x, ~49170u) << (0u % 32u), var_0.x) | ~1u;
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~var_2 >> ((u_input.b & firstLeadingBit(1u)) % 32u), global0.x), ~reverseBits(max(vec3<u32>(0u, 4294967295u, 18637u), vec3<u32>(0u, var_2, 80969u))) & countOneBits(vec3<u32>(~u_input.e.x, ~u_input.b, ~var_2)), reverseBits(vec3<u32>(global0.x, 1u, abs(countOneBits(u_input.e.x)))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1303f, _wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f - -1051f) * _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_div_f32(1f, arg_1.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-621f, -835f, _wgslsmith_f_op_f32(-arg_1.b.x))) - arg_1.b.zyw));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-var_0.xy)), arg_0.yy)))), _wgslsmith_f_op_vec2_f32(round(var_0.zx))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1315f, -853f, !(false || arg_0.x))))), _wgslsmith_f_op_f32(exp2(var_0.x)), 948f);
    global1 = array<bool, 2>();
    let var_2 = true;
    return ~(arg_1.a >> (firstLeadingBit(u_input.b) % 32u));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = vec3<u32>(arg_2, 28703u, 4294967295u);
    global1 = array<bool, 2>();
    global2 = array<vec3<i32>, 24>();
    global2 = array<vec3<i32>, 24>();
    var var_1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1322f, -1927f, -650f, 788f), vec4<f32>(-1218f, -835f, 542f, -952f), vec4<bool>(global1[_wgslsmith_index_u32(arg_2, 2u)], arg_1, global1[_wgslsmith_index_u32(var_0.x, 2u)], true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(542f, 460f, 1000f, -787f))), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-665f, -762f, -1261f, 493f), vec4<f32>(-587f, 200f, 379f, 941f)) * vec4<f32>(-424f, 1526f, 640f, 532f)), !select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(var_0.x, 2u)], true, arg_1), true))))));
    return 80292u;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    var var_0 = abs(u_input.e);
    var var_1 = any(!vec2<bool>(any(select(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 2u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false, false), vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_1, 2u)]))), false));
    let var_2 = func_5(vec2<i32>(u_input.d, countOneBits(-firstLeadingBit(26210i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.e), vec2<u32>(_wgslsmith_mod_u32(arg_0.a, global0.x), 1u)), 2u)], func_4(vec4<bool>(true, func_3(), func_3(), !func_3()), arg_0));
    global1 = array<bool, 2>();
    var var_3 = Struct_2(Struct_1(~var_2, arg_0.b), arg_0.b.zyx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(244f)), arg_0.b.x), !any(vec2<bool>(arg_0.b.x >= -1969f, true)));
    return _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(13746i, 1i))) & vec2<i32>(u_input.c, abs(31161i)), ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.c, 1i), vec2<i32>(-37338i, 2147483647i)), vec2<i32>(-2147483647i, -15916i) | vec2<i32>(u_input.a, -18366i), vec2<bool>(true, true))), vec2<i32>(abs(u_input.a), u_input.c));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(select(u_input.e.x, 47441u, arg_0.d)), ~min(1u, 1u), 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, u_input.b, global0.x), vec3<u32>(4294967295u, global0.x, arg_0.a.a)), vec3<u32>(57436u, 29740u, 0u)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e.x, 1u, 4294967295u), vec3<u32>(32107u, 125334u, 16688u))), vec3<u32>(u_input.b ^ 10395u, 26874u, global0.x));
    global2 = array<vec3<i32>, 24>();
    var var_1 = ~_wgslsmith_mod_vec2_i32((~vec2<i32>(u_input.a, var_0) & (vec2<i32>(var_0, u_input.c) | vec2<i32>(var_0, 2147483647i))) & _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, var_0), vec2<i32>(var_0, var_0), vec2<i32>(-46739i, var_0)), vec2<i32>(u_input.c, -37117i)), _wgslsmith_mult_vec2_i32(func_2(arg_0.a, u_input.b), vec2<i32>(_wgslsmith_mod_i32(u_input.c, u_input.d), _wgslsmith_div_i32(var_0, -31313i))));
    return arg_0.a;
}

fn func_6(arg_0: Struct_1) -> u32 {
    global2 = array<vec3<i32>, 24>();
    var var_0 = _wgslsmith_f_op_f32(-506f - arg_0.b.x);
    let var_1 = ~vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(1u, firstTrailingBit(33242u)), countOneBits(56660u) >> (_wgslsmith_div_u32(func_5(vec2<i32>(u_input.d, -10176i), true, 4294967295u), u_input.e.x) % 32u), ~(~_wgslsmith_div_u32(global0.x, 4294967295u)));
    var var_2 = arg_0.b.x;
    global1 = array<bool, 2>();
    return ~(~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~func_6(func_1(Struct_2(Struct_1(u_input.b, vec4<f32>(-573f, -465f, -315f, -960f)), vec3<f32>(631f, -473f, 774f), 232f, true), global1[_wgslsmith_index_u32(0u, 2u)])), global0.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_u32(u_input.e.x, max(min(0u, u_input.b), firstTrailingBit(global0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, 167f, -423f, 1000f) * vec4<f32>(391f, 882f, -749f, -772f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1137f, -1817f, -200f, -144f) * vec4<f32>(-1123f, -812f, 1006f, 176f))), func_1(Struct_2(Struct_1(var_0.x, vec4<f32>(-112f, 1147f, -1000f, 717f)), vec3<f32>(583f, 2056f, 341f), -1000f, true), func_3()).b))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(688f, 768f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1997f, 676f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(900f, -328f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(f32(-1f) * -444f), u_input.a >= u_input.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1317f)), -716f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2889f)) - -1000f)), global1[_wgslsmith_index_u32(abs(firstLeadingBit(8058u | u_input.e.x)) << (func_6(func_1(Struct_2(Struct_1(75903u, vec4<f32>(703f, 1119f, -1795f, 2740f)), vec3<f32>(-773f, -1014f, -1461f), -1000f, global1[_wgslsmith_index_u32(0u, 2u)]), all(vec2<bool>(true, true)))) % 32u), 2u)]);
    global2 = array<vec3<i32>, 24>();
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(~(-2147483647i), ~u_input.c), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(-28129i, u_input.d)), select(vec2<i32>(u_input.c, u_input.a) << (vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u)), vec2<i32>(u_input.c, -10573i), true)), ~vec2<i32>(firstTrailingBit(u_input.c), u_input.a)), vec2<i32>(u_input.c, 1i ^ u_input.c));
    global0 = ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(14442u, 48204u, var_1.a.a), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, 48625u), vec3<u32>(0u, 36268u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(204f)))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-6023i, u_input.c, 0i, -2147483647i), vec4<i32>(u_input.a, u_input.c, u_input.d, 2147483647i), vec4<i32>(-1i, 16834i, 30939i, -2147483647i)) ^ -firstLeadingBit(vec4<i32>(u_input.c, -19167i, var_2.x, 2147483647i))), (u_input.c ^ ~u_input.d) >> (var_0.x % 32u));
}

