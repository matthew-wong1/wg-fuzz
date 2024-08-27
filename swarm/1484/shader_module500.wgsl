struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(true, 975f, Struct_2(vec3<bool>(false, false, true), vec2<i32>(-1i, -1i), vec4<u32>(50936u, 5411u, 4294967295u, 0u), false), vec4<i32>(-1i, 14078i, 2640i, -9027i), Struct_1(vec2<i32>(21172i, 0i), vec4<f32>(-1000f, -954f, -1519f, -379f), false)), Struct_4(true, 893f, Struct_2(vec3<bool>(false, true, false), vec2<i32>(-2682i, i32(-2147483648)), vec4<u32>(30252u, 9289u, 1u, 4294967295u), true), vec4<i32>(1i, 1i, -1i, -32022i), Struct_1(vec2<i32>(-1i, -37563i), vec4<f32>(-531f, -1423f, -1000f, -844f), false)), Struct_4(true, 529f, Struct_2(vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 0u, 1u, 1u), false), vec4<i32>(0i, 17971i, 1i, -38968i), Struct_1(vec2<i32>(60746i, -3521i), vec4<f32>(755f, -1147f, 383f, -2751f), false)), Struct_4(true, 1040f, Struct_2(vec3<bool>(false, false, true), vec2<i32>(1i, 7864i), vec4<u32>(1048u, 51349u, 0u, 0u), false), vec4<i32>(0i, 18704i, 0i, 2147483647i), Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(1773f, -1183f, -261f, 754f), true)), Struct_4(true, -1000f, Struct_2(vec3<bool>(true, true, true), vec2<i32>(0i, 0i), vec4<u32>(37268u, 56346u, 1u, 0u), false), vec4<i32>(9816i, 0i, -29218i, 0i), Struct_1(vec2<i32>(-32293i, -11234i), vec4<f32>(-346f, 2234f, 596f, -424f), false)));

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(vec4<i32>(0i, 0i, -3896i, i32(-2147483648)), Struct_1(vec2<i32>(34404i, -7645i), vec4<f32>(427f, 707f, -1142f, -1382f), true), vec3<f32>(1001f, -134f, -196f), 1000f, -644f), Struct_5(vec4<i32>(66610i, -1i, 43723i, 2147483647i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(1468f, -440f, 1396f, -2449f), true), vec3<f32>(-387f, -1000f, 2223f), -748f, 905f), Struct_5(vec4<i32>(1868i, -1i, 0i, 2147483647i), Struct_1(vec2<i32>(10996i, -1i), vec4<f32>(-502f, 1063f, -693f, 1329f), true), vec3<f32>(1510f, -1449f, -1320f), -567f, 353f), Struct_5(vec4<i32>(66489i, 0i, -2446i, i32(-2147483648)), Struct_1(vec2<i32>(27696i, -24495i), vec4<f32>(601f, -639f, 401f, -823f), false), vec3<f32>(881f, -528f, -2005f), 1085f, 1216f), Struct_5(vec4<i32>(1i, 7116i, i32(-2147483648), 19559i), Struct_1(vec2<i32>(-56086i, -1i), vec4<f32>(-1233f, 2243f, -1826f, -260f), false), vec3<f32>(479f, -822f, -328f), 235f, 820f), Struct_5(vec4<i32>(0i, -14197i, 32048i, 0i), Struct_1(vec2<i32>(28484i, 2147483647i), vec4<f32>(660f, 1402f, -781f, -561f), false), vec3<f32>(-801f, -266f, -631f), -1428f, 697f), Struct_5(vec4<i32>(-53136i, 25956i, 18916i, -866i), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<f32>(407f, -502f, 1386f, -381f), true), vec3<f32>(296f, -413f, 1645f), 1331f, 1161f), Struct_5(vec4<i32>(i32(-2147483648), 20122i, 0i, 43238i), Struct_1(vec2<i32>(i32(-2147483648), 14495i), vec4<f32>(-944f, -1464f, -2068f, -291f), true), vec3<f32>(1313f, -597f, -923f), -1009f, 1252f), Struct_5(vec4<i32>(1i, 0i, 0i, 15379i), Struct_1(vec2<i32>(-20710i, -1i), vec4<f32>(830f, 388f, -319f, 835f), true), vec3<f32>(1250f, -183f, 1296f), 574f, 719f), Struct_5(vec4<i32>(1i, 9558i, -1i, -21057i), Struct_1(vec2<i32>(i32(-2147483648), 54857i), vec4<f32>(103f, 1168f, -1728f, -1047f), true), vec3<f32>(1238f, -1068f, -1342f), 743f, -446f), Struct_5(vec4<i32>(-1i, 0i, 86747i, 0i), Struct_1(vec2<i32>(0i, 1i), vec4<f32>(814f, -542f, -1038f, -1231f), true), vec3<f32>(-150f, -264f, -427f), 510f, -1000f), Struct_5(vec4<i32>(-1i, -23454i, i32(-2147483648), 25162i), Struct_1(vec2<i32>(-2444i, 24050i), vec4<f32>(-120f, 223f, -489f, 1007f), true), vec3<f32>(-2119f, 1097f, -1700f), 1000f, -931f), Struct_5(vec4<i32>(-40146i, 1i, 2147483647i, 8383i), Struct_1(vec2<i32>(3594i, 0i), vec4<f32>(-359f, 493f, 789f, 642f), false), vec3<f32>(274f, -1290f, 1674f), 632f, 593f), Struct_5(vec4<i32>(-34763i, 52055i, 2147483647i, 2601i), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<f32>(-819f, -277f, 986f, 215f), false), vec3<f32>(1000f, -503f, 1175f), -467f, 636f), Struct_5(vec4<i32>(1i, 1i, 53076i, 5777i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(475f, -948f, 740f, -174f), false), vec3<f32>(-1000f, -1000f, -761f), -1554f, 479f), Struct_5(vec4<i32>(20810i, -1i, -39317i, 5575i), Struct_1(vec2<i32>(101i, 1i), vec4<f32>(-974f, -622f, -593f, -267f), true), vec3<f32>(392f, -672f, -761f), -1000f, 1598f), Struct_5(vec4<i32>(16911i, 2147483647i, 27527i, 1i), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-840f, 1577f, -1000f, -1328f), false), vec3<f32>(-418f, 539f, -2120f), -512f, -685f), Struct_5(vec4<i32>(-1i, -37480i, 0i, -1i), Struct_1(vec2<i32>(1i, 2147483647i), vec4<f32>(1000f, -1113f, -737f, -1115f), false), vec3<f32>(384f, 565f, 186f), -1743f, 667f), Struct_5(vec4<i32>(-59920i, 2147483647i, -60449i, 1i), Struct_1(vec2<i32>(i32(-2147483648), 37994i), vec4<f32>(-164f, -818f, -1376f, 263f), true), vec3<f32>(942f, 272f, -865f), -1273f, 941f), Struct_5(vec4<i32>(2147483647i, -28938i, -1i, -34380i), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<f32>(-511f, 452f, 352f, 321f), false), vec3<f32>(1264f, -1000f, 213f), 1000f, -921f), Struct_5(vec4<i32>(28480i, -12911i, 1i, 2147483647i), Struct_1(vec2<i32>(0i, -43985i), vec4<f32>(696f, 1302f, 1302f, 1534f), false), vec3<f32>(999f, 141f, -2476f), -1000f, -559f), Struct_5(vec4<i32>(i32(-2147483648), -10581i, 23879i, 29519i), Struct_1(vec2<i32>(32709i, i32(-2147483648)), vec4<f32>(-874f, 159f, -1342f, 112f), false), vec3<f32>(-791f, -194f, 279f), -625f, 1366f), Struct_5(vec4<i32>(45184i, -1i, 0i, 1601i), Struct_1(vec2<i32>(-24750i, 2147483647i), vec4<f32>(2010f, -1558f, -574f, 1000f), true), vec3<f32>(-253f, -612f, -841f), 303f, -726f), Struct_5(vec4<i32>(0i, 2147483647i, -12458i, 12515i), Struct_1(vec2<i32>(44112i, 50850i), vec4<f32>(558f, -343f, 688f, -1400f), false), vec3<f32>(-119f, 622f, 1000f), 100f, -1942f), Struct_5(vec4<i32>(16145i, -14738i, 2638i, 33614i), Struct_1(vec2<i32>(-17348i, -4074i), vec4<f32>(-1654f, 556f, 462f, 631f), false), vec3<f32>(-798f, -895f, -964f), -1157f, 431f), Struct_5(vec4<i32>(2147483647i, 39203i, 1i, -14730i), Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(1546f, 520f, -1510f, -1044f), true), vec3<f32>(-1032f, -353f, -109f), 3351f, -237f), Struct_5(vec4<i32>(-46145i, 2147483647i, 2147483647i, 2147483647i), Struct_1(vec2<i32>(-80066i, -19987i), vec4<f32>(1851f, 1007f, -244f, -314f), true), vec3<f32>(1408f, 1060f, 194f), -902f, -482f), Struct_5(vec4<i32>(28689i, -21704i, 1i, i32(-2147483648)), Struct_1(vec2<i32>(26340i, 15440i), vec4<f32>(-828f, -483f, -1000f, -702f), true), vec3<f32>(268f, -875f, -251f), 1709f, -1562f));

var<private> global2: Struct_4;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(true, true, true), vec2<i32>(-43809i, -1i), vec4<u32>(4294967295u, 45583u, 1u, 1828u), false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = (_wgslsmith_mod_i32(~_wgslsmith_add_i32(global3.b.x, arg_0.a.x), _wgslsmith_mult_i32(~(-2147483647i), global3.b.x)) >> (abs(global2.c.c.x) % 32u)) | _wgslsmith_div_i32(1i, ~countOneBits(global2.d.x));
    let var_1 = -385f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global2.b * -1226f))), 630f);
    global3 = global2.c;
    var var_2 = global2.c;
    global0 = array<Struct_4, 5>();
    return max(reverseBits(-12958i), -5339i);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = arg_3;
    var var_1 = global2.c.c;
    let var_2 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(arg_3, u_input.a)), func_2(global2.e) >> (0u % 32u)), 1i, ~2147483647i, 1i);
    global0 = array<Struct_4, 5>();
    global1 = array<Struct_5, 28>();
    return global2.a;
}

fn func_3(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = select(global2.c.a, !(!select(global3.a, !vec3<bool>(true, global2.e.c, global3.d), global3.a.x)), !vec3<bool>(arg_0, true, arg_0));
    global1 = array<Struct_5, 28>();
    let var_1 = Struct_2(global3.a, global3.b, countOneBits(select(global2.c.c, vec4<u32>(global3.c.x, 3442u, global2.c.c.x, global3.c.x) << (vec4<u32>(66593u, global3.c.x, global3.c.x, global2.c.c.x) % vec4<u32>(32u)), select(vec4<bool>(arg_0, var_0.x, true, global2.c.a.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(global2.c.d, var_0.x, global3.d, var_0.x)))) ^ vec4<u32>(_wgslsmith_mult_u32(~89637u, _wgslsmith_add_u32(global3.c.x, global2.c.c.x)), global2.c.c.x, _wgslsmith_clamp_u32(global3.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.c.x, 0u, global2.c.c.x), global3.c.zzw), ~global3.c.x), ~global3.c.x), false);
    global3 = Struct_2(global2.c.a, global3.b & var_1.b, vec4<u32>(var_1.c.x, ~var_1.c.x, ~global2.c.c.x, ~var_1.c.x), 14664i < (1i & (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 7057i, -2147483647i), vec3<i32>(63480i, global2.e.a.x, 0i)) | (var_1.b.x ^ u_input.a))));
    let var_2 = Struct_3(Struct_1(abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b.x, 1i), vec2<i32>(u_input.a, var_1.b.x)), ~global2.e.a, ~vec2<i32>(global2.e.a.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2.b), global2.e.b.x, global2.b, global2.b), global2.e.b, select(select(vec4<bool>(arg_0, arg_0, false, global3.a.x), vec4<bool>(global2.a, true, true, global2.e.c), vec4<bool>(global3.d, true, global2.c.a.x, var_1.d)), select(vec4<bool>(global2.c.d, false, false, arg_0), vec4<bool>(arg_0, false, false, false), vec4<bool>(true, arg_0, global3.a.x, true)), !vec4<bool>(var_0.x, false, false, true)))), !global3.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global2.b)))))), 613f)), global2.c.c.yyw);
    return global0[_wgslsmith_index_u32(~61846u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_3(select(global2.d.x < _wgslsmith_dot_vec4_i32(-global2.d, countOneBits(global2.d)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2106f, global2.b, -1341f, 193f) * vec4<f32>(global2.e.b.x, -1147f, global2.e.b.x, global2.b)) - global2.e.b), false, Struct_1(global2.d.xx, _wgslsmith_f_op_vec4_f32(global2.e.b * vec4<f32>(global2.e.b.x, 399f, global2.e.b.x, global2.e.b.x)), any(vec4<bool>(false, false, false, false))), ~(~global3.b.x)), global2.e.c), -411f);
    global3 = Struct_2(func_3(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b * global2.e.b.x))))).c.a, global3.b, abs(select(vec4<u32>(4294967295u, 0u, 1u, global2.c.c.x), vec4<u32>(1u, 1u, global2.c.c.x, global2.c.c.x), true) ^ firstTrailingBit(global2.c.c)) & global3.c, global3.d);
    var var_0 = Struct_3(func_3(false, global2.e.b.x).e, _wgslsmith_f_op_f32(-global2.b), ~(~global2.c.c.xwx ^ vec3<u32>(firstLeadingBit(0u), 1u, global3.c.x)));
    global1 = array<Struct_5, 28>();
    var_0 = Struct_3(Struct_1(vec2<i32>(reverseBits(firstLeadingBit(0i)), i32(-1i) * -13988i), vec4<f32>(_wgslsmith_f_op_f32(1559f - -1305f), global2.b, func_3(func_3(true, global2.b).a, global2.b).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), var_0.b)), abs(var_0.c.x) <= 4294967295u), _wgslsmith_f_op_f32(-global2.e.b.x), var_0.c);
    var var_1 = func_3(all(!global3.a.xx), global2.b);
    let var_2 = _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global3.c.x, 65771u, reverseBits(var_1.c.c.x))), ~vec3<u32>(_wgslsmith_mult_u32(var_0.c.x, func_3(var_0.a.c, global2.b).c.c.x), 33530u, 77832u));
    var_1 = Struct_4(global3.a.x || var_0.a.c, 1181f, func_3(var_1.e.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - 275f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1451f, global2.e.b.x, false)))))).c, _wgslsmith_div_vec4_i32(firstTrailingBit(global2.d), ~firstTrailingBit(vec4<i32>(9024i, -61805i, 1i, global2.d.x))), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_div_vec4_i32(abs(vec4<i32>(global2.e.a.x, 635i, var_0.a.a.x, u_input.a)), _wgslsmith_add_vec4_i32(var_1.d, vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i)))));
}

