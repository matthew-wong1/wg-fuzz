struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.b;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) * arg_0.b.d.d.x), arg_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.d.x), 1000f))), 397f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    var var_0 = vec2<bool>(false, true);
    var var_1 = Struct_3(1469f, Struct_2(vec3<i32>(10061i, arg_1.x, -1i), (any(vec3<bool>(var_0.x, var_0.x, true)) | true) | false, ~(~(~0u)), Struct_1(~(~u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1629f, 1161f, 549f) + vec3<f32>(946f, 768f, -616f))), true, vec3<f32>(_wgslsmith_f_op_f32(step(-107f, 1000f)), _wgslsmith_div_f32(361f, 458f), _wgslsmith_f_op_f32(sign(-1378f)))), u_input.c.zx), -187f, vec2<bool>(var_0.x, (_wgslsmith_mult_i32(-22665i, u_input.b.x) | ~arg_1.x) == arg_1.x), Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1134f)), -377f, _wgslsmith_div_f32(436f, -837f))), any(vec2<bool>(var_0.x & var_0.x, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1f, -251f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(805f, -1589f, -612f), vec3<f32>(555f, -179f, 663f)))))));
    return u_input.b.x;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = -588f;
    var var_1 = reverseBits(2147483647i);
    var var_2 = arg_2;
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_2.a.x, var_2.a.x, 0i, u_input.b.x), abs(abs(vec4<i32>(71573i, 0i, -2147483647i, var_2.a.x))), vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_add_i32(var_2.a.x, 17982i), _wgslsmith_div_i32(u_input.b.x, var_2.a.x))) | u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b), arg_2.b), true, var_2.d);
    var_1 = _wgslsmith_add_i32(firstLeadingBit((var_2.a.x ^ 0i) & arg_2.a.x), 41536i);
    return 169f;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 28>();
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(291f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-172f + -771f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !global0[_wgslsmith_index_u32(u_input.c.x, 28u)], Struct_1(vec4<i32>(-_wgslsmith_mult_i32(0i, -23262i), _wgslsmith_sub_i32(func_3(u_input.c.xyy, u_input.b), 0i), -_wgslsmith_mod_i32(0i, 34324i), func_3(~u_input.c.zyx, max(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -2147483647i), u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(579f, 359f, -275f) * vec3<f32>(-1195f, -1159f, 991f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1291f, 674f, 1196f) - vec3<f32>(-1476f, -396f, 115f)))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-177f, -2106f, 607f) * vec3<f32>(-879f, 1455f, _wgslsmith_div_f32(-877f, 136f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, -346f, -902f, 583f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1932f, -959f, -1260f, 1351f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1705f, 178f, 390f, 245f) + vec4<f32>(-759f, 275f, 1245f, -1198f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1522f, 425f, 1107f, -742f), vec4<f32>(897f, -1220f, 1000f, 243f), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1264f, -742f, -544f, 1578f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(725f, 1252f, 936f, 1032f) - vec4<f32>(750f, 709f, 452f, 745f)))), vec4<f32>(1f, 1f, 1f, 1f)), true));
    let var_2 = -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, 0i >> (u_input.a % 32u)), u_input.b.x, min(func_3(u_input.c.xwx << (u_input.c.zww % vec3<u32>(32u)), u_input.b), -reverseBits(u_input.b.x)));
    global0 = array<vec3<bool>, 28>();
    return Struct_2(max(u_input.b.zwx, u_input.b.wwz >> (u_input.c.wxy % vec3<u32>(32u))) ^ ~(-(vec3<i32>(var_2, -2147483647i, -3034i) ^ vec3<i32>(32529i, -24064i, -35507i))), false, u_input.d, Struct_1(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.b.x, u_input.b.x, var_2)), select(u_input.b, vec4<i32>(12801i, -28789i, u_input.b.x, 8005i), false), u_input.b)), _wgslsmith_f_op_vec3_f32(round(var_1.wzw)), true | all(!global0[_wgslsmith_index_u32(1u, 28u)]), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-773f)))), -271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(823f))))), u_input.c.xx);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(585f, 1000f, arg_2.b.d.b.x, -2326f), vec4<f32>(1000f, -203f, arg_2.e.b.x, -296f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.x, arg_2.a, -1000f, -232f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(abs(arg_2.b.d.d.x))), -337f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1348f)))))));
    let var_1 = arg_2.b.e;
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2661f, arg_2.b.d.d.x, var_0.x, arg_1.d.x))))));
    var_0 = vec4<f32>(633f, _wgslsmith_f_op_vec3_f32(func_1(arg_2, u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1715f, var_0.x, -1012f, -1973f), vec4<f32>(var_0.x, -1050f, -1195f, -2954f)) + vec4<f32>(-272f, -1842f, var_0.x, arg_0.d.x))), Struct_1(-arg_0.a, vec3<f32>(-1158f, _wgslsmith_f_op_f32(arg_1.b.x + 854f), 1476f), true, arg_1.d))).x, func_2().d.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(sign(715f))), _wgslsmith_div_f32(-241f, 411f))), _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-2336f * arg_0.d.x))))));
    let var_2 = vec3<i32>(abs(arg_0.a.x), arg_1.a.x, ~arg_1.a.x) ^ ~(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_2.b.a.x, u_input.b.x, arg_0.a.x), vec3<i32>(arg_2.e.a.x, -20215i, 1i), global0[_wgslsmith_index_u32(1u, 28u)]), func_2().a));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(~u_input.b, vec3<f32>(-1000f, -349f, 307f), u_input.c.x < 7791u, _wgslsmith_f_op_vec3_f32(func_1(Struct_3(-471f, Struct_2(vec3<i32>(u_input.b.x, u_input.b.x, 0i), false, u_input.a, Struct_1(vec4<i32>(-30414i, u_input.b.x, u_input.b.x, u_input.b.x), vec3<f32>(451f, 216f, 350f), false, vec3<f32>(-1277f, 1326f, -1469f)), vec2<u32>(26811u, u_input.d)), 658f, vec2<bool>(true, true), Struct_1(u_input.b, vec3<f32>(517f, -264f, -642f), false, vec3<f32>(911f, -1208f, 248f))), u_input.b.x, vec4<f32>(-102f, 832f, 1267f, -1000f), Struct_1(u_input.b, vec3<f32>(-748f, 1576f, -234f), false, vec3<f32>(-142f, 529f, 513f))))), Struct_1(u_input.b >> (vec4<u32>(7316u, 0u, u_input.a, u_input.c.x) % vec4<u32>(32u)), vec3<f32>(-1231f, 3225f, 1441f), false, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-518f, 631f, 1595f), vec3<f32>(187f, 1000f, 1210f)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -660f), func_2(), _wgslsmith_f_op_f32(464f * 587f), vec2<bool>(true, true), Struct_1(u_input.b, vec3<f32>(-527f, 769f, -672f), false, vec3<f32>(564f, 175f, -951f)))))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1330f)) * -661f) >= 969f), Struct_1(u_input.b << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 46557u), u_input.c.yz), ~u_input.c.x, u_input.d >> (1u % 32u), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-825f, 782f), func_2().d.b.x, 916f)), any(global0[_wgslsmith_index_u32(u_input.d, 28u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(572f, 470f, -730f), vec3<f32>(1209f, -463f, 174f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(322f, 1168f, -344f) + vec3<f32>(-117f, -1112f, -698f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, 482f, -478f) * vec3<f32>(-1214f, -1000f, -1000f)))), vec3<bool>(true, true, true)))));
    let var_1 = var_0.b.d;
    let var_2 = vec2<i32>(var_1.a.x, var_0.b.a.x) & (-vec2<i32>(-u_input.b.x, -2147483647i) >> (var_0.b.e % vec2<u32>(32u)));
    global0 = array<vec3<bool>, 28>();
    var var_3 = u_input.b.x;
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c.yyz), vec2<u32>(4294967295u, ~_wgslsmith_div_u32(var_0.b.c, _wgslsmith_add_u32(var_0.b.c, 0u))));
}

