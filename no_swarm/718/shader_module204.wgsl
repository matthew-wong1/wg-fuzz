struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(7963u, 12178u, 11193u), vec3<u32>(1u, 59280u, 123294u), vec3<u32>(0u, 42333u, 32339u), vec3<u32>(1u, 45710u, 34253u), vec3<u32>(1u, 31036u, 113u), vec3<u32>(0u, 22169u, 0u), vec3<u32>(1u, 0u, 77849u), vec3<u32>(84165u, 4294967295u, 4294967295u), vec3<u32>(27246u, 14769u, 24183u), vec3<u32>(17561u, 44332u, 86243u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(47019u, 2859u, 4294967295u), vec3<u32>(75472u, 55338u, 4294967295u), vec3<u32>(9081u, 62139u, 4294967295u), vec3<u32>(4294967295u, 2503u, 1u), vec3<u32>(4294967295u, 31758u, 4294967295u), vec3<u32>(43395u, 0u, 28527u), vec3<u32>(9092u, 0u, 41498u), vec3<u32>(1u, 4294967295u, 36692u), vec3<u32>(1u, 1350u, 4294967295u), vec3<u32>(16755u, 4294967295u, 308u), vec3<u32>(1u, 38055u, 17567u), vec3<u32>(1u, 4294967295u, 35308u), vec3<u32>(27545u, 61307u, 0u), vec3<u32>(34648u, 124468u, 3645u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 0u, 35906u));

var<private> global3: array<vec2<u32>, 16>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_1(global1.a, -(~(~vec2<i32>(global1.b.x, global1.b.x))), 2147483647i < ~global1.b.x);
    global3 = array<vec2<u32>, 16>();
    var var_1 = !select(global1.a.x, true, !(_wgslsmith_div_f32(1903f, arg_0) < _wgslsmith_f_op_f32(abs(-438f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0))), arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0)));
    var_0 = Struct_1(select(vec2<bool>(all(!var_0.a), false), !vec2<bool>(all(vec4<bool>(var_0.a.x, false, var_0.a.x, global1.c)), var_0.a.x != false), _wgslsmith_sub_i32(-29952i, var_0.b.x) == ~1i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, global1.b.x), countOneBits(var_0.b)) | vec2<i32>(var_0.b.x, var_0.b.x), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(1359f * _wgslsmith_f_op_f32(floor(-1065f)))))) == _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(ceil(-1190f)))));
}

fn func_2() -> vec4<i32> {
    global1 = Struct_1(global1.a, vec2<i32>(firstLeadingBit(-2147483647i), select(~(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.x, -1i, 5385i, global1.b.x), vec4<i32>(global1.b.x, -2147483647i, global1.b.x, -1i)), vec4<i32>(global1.b.x, -1i, -1i, global1.b.x)), true)), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1419f * -274f) - _wgslsmith_f_op_f32(trunc(-221f))))), u_input.a));
    var var_0 = Struct_2(Struct_1(!(!vec2<bool>(global1.c, true)), global1.b, false), !select(true, global1.c, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-353f, -1000f, -1000f, 797f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, 776f, 925f, 1000f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -793f, 457f, -368f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, 124f, 225f, 591f)), !vec4<bool>(var_0.b, global1.c, global1.c, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -886f, -383f, 349f)), vec4<f32>(-720f, -1091f, -300f, -278f), !vec4<bool>(false, true, var_0.a.c, var_0.a.a.x))))));
    let var_2 = _wgslsmith_div_f32(var_1.x, var_1.x) <= var_1.x;
    var var_3 = var_1.xyy;
    return countOneBits(min(firstLeadingBit(countOneBits(vec4<i32>(var_0.a.b.x, 1i, var_0.a.b.x, -35178i))), vec4<i32>(var_0.a.b.x, 0i, 1i, -32688i) & vec4<i32>(abs(var_0.a.b.x), reverseBits(-16066i), global1.b.x, ~2147483647i)));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    global3 = array<vec2<u32>, 16>();
    global3 = array<vec2<u32>, 16>();
    var_0 = ~abs(~(-vec4<i32>(-18764i, global1.b.x, var_0.x, -40598i)));
    let var_1 = abs(~(~u_input.a.x & 18573u) ^ ((~u_input.a.x & 1u) | 11133u));
    return Struct_3(_wgslsmith_add_u32(1u, select(~(~var_1), 4294967295u, global1.a.x)), _wgslsmith_f_op_f32(select(-1381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f + -397f)) + _wgslsmith_f_op_f32(max(-499f, _wgslsmith_f_op_f32(1375f - -1344f)))), any(!select(vec4<bool>(global1.a.x, true, false, true), vec4<bool>(global1.a.x, false, true, false), vec4<bool>(global1.a.x, global1.a.x, true, true))))), Struct_1(vec2<bool>(global1.c, global1.a.x), global1.b, global1.c), min(-2147483647i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.x, global1.b.x, -25699i, global1.b.x), vec4<i32>(var_0.x, global1.b.x, global1.b.x, 16067i)), -vec4<i32>(var_0.x, var_0.x, 1i, global1.b.x)) >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1076f, 730f)), 194f) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(591f, 2571f), _wgslsmith_f_op_f32(297f * 528f), false)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_1();
    let var_1 = vec3<bool>(!arg_3.a.c, true, !global1.a.x);
    var var_2 = func_1();
    let var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(~1u, 30168u), arg_0.x) | func_1().a;
    return arg_3;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().b)));
    global3 = array<vec2<u32>, 16>();
    var var_1 = Struct_3(~0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-441f, _wgslsmith_f_op_f32(sign(-2172f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-988f)), _wgslsmith_f_op_f32(sign(-755f))))), func_4(u_input.a, func_1(), ~u_input.a.x << (abs(u_input.a.x) % 32u), arg_3).a, ~25337i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-239f)), -694f, arg_1))));
    global2 = array<vec3<u32>, 27>();
    global1 = var_1.c;
    return var_1.a;
}

fn func_6(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -1409f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f), -660f)))));
    var var_1 = ~vec2<u32>(arg_1.x, firstLeadingBit(u_input.a.x));
    var var_2 = vec3<i32>(-2147483647i, ~arg_0, _wgslsmith_mult_i32(1i, ~global1.b.x) << (~abs(68611u) % 32u));
    var var_3 = global1.b.x << (46915u % 32u);
    var var_4 = Struct_1(global1.a, _wgslsmith_clamp_vec2_i32(global1.b, _wgslsmith_sub_vec2_i32(vec2<i32>(-17625i, global1.b.x), var_2.zx), (~var_2.zy >> (vec2<u32>(var_1.x, arg_1.x) % vec2<u32>(32u))) & min(-vec2<i32>(-23349i, arg_0), vec2<i32>(var_2.x, global1.b.x))), global1.a.x);
    return func_4(select(select(_wgslsmith_mult_vec2_u32(vec2<u32>(39981u, 29595u), global3[_wgslsmith_index_u32(33676u, 16u)]), reverseBits(vec2<u32>(var_1.x, var_1.x)), !var_4.a) ^ max(~arg_1.xy, arg_1.xx), abs(~vec2<u32>(1u, arg_1.x)), any(!var_4.a)), Struct_3(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(157f))))), Struct_1(vec2<bool>(true, true), var_4.b, (var_1.x << (45450u % 32u)) != ~21120u), firstTrailingBit(~18552i) << (arg_1.x % 32u), _wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(f32(-1f) * -1082f))), ~var_1.x, func_4(~(global3[_wgslsmith_index_u32(~u_input.a.x, 16u)] & arg_1.xy), func_1(), _wgslsmith_mod_u32(u_input.a.x, 11777u), func_4(global3[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 16u)], Struct_3(~arg_1.x, -251f, Struct_1(vec2<bool>(var_4.c, global1.a.x), vec2<i32>(var_2.x, -26260i), true), -1i, 116f), 23031u, func_4(vec2<u32>(arg_1.x, 13323u), Struct_3(23451u, -1000f, Struct_1(vec2<bool>(false, global1.a.x), vec2<i32>(-20690i, 23018i), var_4.c), var_2.x, -347f), ~var_1.x, Struct_2(Struct_1(vec2<bool>(global1.c, var_4.c), var_2.zy, global1.c), var_4.a.x))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    global2 = array<vec3<u32>, 27>();
    global1 = func_6(global1.b.x, global2[_wgslsmith_index_u32(~func_5(global1.b.x, all(vec4<bool>(true, true, true, true)), func_4(~u_input.a, func_1(), func_1().a, Struct_2(Struct_1(global1.a, global1.b, global1.c), true)), func_4(~global3[_wgslsmith_index_u32(u_input.a.x, 16u)], Struct_3(20024u, 580f, Struct_1(global1.a, vec2<i32>(global1.b.x, global1.b.x), true), global1.b.x, 263f), 4294967295u, Struct_2(Struct_1(global1.a, vec2<i32>(global1.b.x, 35742i), global1.c), global1.a.x))), 27u)]);
    global2 = array<vec3<u32>, 27>();
    global2 = array<vec3<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(201f, _wgslsmith_f_op_f32(-1252f + _wgslsmith_f_op_f32(364f + 531f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-690f, -983f, 156f, 1071f), vec4<f32>(-679f, 598f, -401f, 138f), global1.a.x))))), ~(~1u));
}

