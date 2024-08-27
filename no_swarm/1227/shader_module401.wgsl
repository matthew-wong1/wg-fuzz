struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 31727u);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(3997u, Struct_2(Struct_1(-218f, -185f, 51109u, -546f, vec2<u32>(37412u, 64624u))), Struct_2(Struct_1(-1581f, -1174f, 1u, 124f, vec2<u32>(19236u, 11683u))), Struct_2(Struct_1(-148f, 441f, 8066u, 1249f, vec2<u32>(49098u, 62152u)))), Struct_3(4294967295u, Struct_2(Struct_1(780f, 241f, 13226u, 942f, vec2<u32>(1u, 0u))), Struct_2(Struct_1(-212f, 620f, 0u, 180f, vec2<u32>(38252u, 1u))), Struct_2(Struct_1(979f, -906f, 69832u, -454f, vec2<u32>(4294967295u, 5399u)))), Struct_3(13319u, Struct_2(Struct_1(890f, 788f, 4294967295u, 497f, vec2<u32>(4294967295u, 44649u))), Struct_2(Struct_1(-2029f, -1236f, 0u, 1000f, vec2<u32>(90707u, 61198u))), Struct_2(Struct_1(-1076f, 396f, 4294967295u, -676f, vec2<u32>(14305u, 50998u)))), Struct_3(11119u, Struct_2(Struct_1(-1288f, -628f, 25875u, 1395f, vec2<u32>(1u, 507u))), Struct_2(Struct_1(172f, 763f, 0u, -1000f, vec2<u32>(44353u, 4294967295u))), Struct_2(Struct_1(271f, -824f, 1u, 982f, vec2<u32>(0u, 8851u)))), Struct_3(1u, Struct_2(Struct_1(-785f, -1333f, 4294967295u, -301f, vec2<u32>(4294967295u, 27241u))), Struct_2(Struct_1(1557f, -1190f, 57357u, -126f, vec2<u32>(1u, 0u))), Struct_2(Struct_1(-147f, 152f, 1u, -1901f, vec2<u32>(0u, 46458u)))), Struct_3(15289u, Struct_2(Struct_1(-1000f, 853f, 18829u, 1094f, vec2<u32>(1u, 23125u))), Struct_2(Struct_1(-2330f, 1154f, 0u, -321f, vec2<u32>(1u, 16030u))), Struct_2(Struct_1(1538f, 1535f, 123580u, 534f, vec2<u32>(0u, 102305u)))), Struct_3(68412u, Struct_2(Struct_1(1511f, -789f, 4294967295u, -624f, vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(-1190f, 357f, 4294967295u, -2506f, vec2<u32>(23610u, 4294967295u))), Struct_2(Struct_1(1263f, 998f, 1u, -1040f, vec2<u32>(0u, 0u)))), Struct_3(33526u, Struct_2(Struct_1(117f, 283f, 4294967295u, -268f, vec2<u32>(1u, 12836u))), Struct_2(Struct_1(1018f, -509f, 4294967295u, -488f, vec2<u32>(1u, 0u))), Struct_2(Struct_1(-798f, 938f, 0u, -982f, vec2<u32>(0u, 28455u)))), Struct_3(0u, Struct_2(Struct_1(-519f, -613f, 1u, 588f, vec2<u32>(67561u, 1u))), Struct_2(Struct_1(426f, 195f, 17193u, 131f, vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(898f, 1000f, 0u, -1000f, vec2<u32>(1u, 0u)))), Struct_3(40908u, Struct_2(Struct_1(1000f, 196f, 42080u, 2340f, vec2<u32>(115902u, 7184u))), Struct_2(Struct_1(1000f, -1408f, 4294967295u, -1072f, vec2<u32>(72885u, 1u))), Struct_2(Struct_1(-1428f, 847f, 0u, 1446f, vec2<u32>(1382u, 1u)))), Struct_3(4294967295u, Struct_2(Struct_1(1239f, 583f, 4294967295u, -420f, vec2<u32>(15010u, 30401u))), Struct_2(Struct_1(778f, -2304f, 0u, 633f, vec2<u32>(49379u, 4294967295u))), Struct_2(Struct_1(-939f, -1162f, 33384u, -1000f, vec2<u32>(0u, 140538u)))), Struct_3(1u, Struct_2(Struct_1(1000f, -542f, 0u, 658f, vec2<u32>(3695u, 92943u))), Struct_2(Struct_1(543f, -246f, 1u, -1436f, vec2<u32>(1u, 72310u))), Struct_2(Struct_1(464f, 1512f, 1u, -545f, vec2<u32>(39601u, 4294967295u)))), Struct_3(0u, Struct_2(Struct_1(-582f, 983f, 4294967295u, 729f, vec2<u32>(1u, 50861u))), Struct_2(Struct_1(-933f, -600f, 0u, -998f, vec2<u32>(0u, 1u))), Struct_2(Struct_1(1696f, 1107f, 8761u, 1850f, vec2<u32>(57594u, 4294967295u)))), Struct_3(4294967295u, Struct_2(Struct_1(1250f, 132f, 9824u, 128f, vec2<u32>(24470u, 43841u))), Struct_2(Struct_1(1826f, 1195f, 4294967295u, -239f, vec2<u32>(84368u, 4294967295u))), Struct_2(Struct_1(762f, 158f, 1u, 1000f, vec2<u32>(0u, 4294967295u)))));

var<private> global3: array<f32, 20> = array<f32, 20>(1778f, -615f, 850f, -1390f, -1000f, -1000f, -531f, 567f, -307f, 375f, -1000f, 1000f, 2016f, 830f, -965f, 960f, 1000f, -748f, 144f, -280f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> i32 {
    let var_0 = all(vec3<bool>(!arg_2, all(!vec3<bool>(arg_2, arg_2, true)), true));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, countOneBits(_wgslsmith_sub_u32(arg_0, arg_3.a.d.a.e.x))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, global1.x)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 0u), abs(vec2<u32>(12115u, 12657u)), select(arg_1.e, vec2<u32>(arg_1.e.x, arg_0), global0[_wgslsmith_index_u32(1u, 16u)])))) >> (~4756u % 32u);
    let var_2 = global0[_wgslsmith_index_u32(~(1u >> (u_input.a % 32u)), 16u)];
    global2 = array<Struct_3, 14>();
    var_1 = arg_1.e.x;
    return _wgslsmith_add_i32(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -4549i, -19572i), vec3<i32>(73099i, 2147483647i, 2147483647i))), 1i);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = ~vec3<i32>(arg_1.x, func_3(arg_0.a.a, Struct_1(arg_0.a.d.a.a, 263f, 1u, _wgslsmith_div_f32(arg_0.b, arg_0.a.d.a.b), arg_0.a.d.a.e), true, arg_0), max(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, 1i, -2147483647i, arg_1.x)), ~vec4<i32>(arg_1.x, -26049i, arg_1.x, arg_1.x)), arg_1.x));
    let var_1 = arg_0.a.b.a.a;
    var var_2 = ~(~arg_1);
    global3 = array<f32, 20>();
    var var_3 = -vec2<i32>(arg_1.x, ~func_3(u_input.a, arg_0.a.d.a, true, Struct_4(arg_0.a, arg_0.a.c.a.b)) & 16698i);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-620f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))))) - 1189f), -1000f, 22474u, 632f, ~(arg_0.a.d.a.e << (select(arg_0.a.b.a.e, vec2<u32>(u_input.c, 1u), true) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_3.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.d)))), -282f, _wgslsmith_div_u32(arg_2.x, abs(_wgslsmith_div_u32(4294967295u, arg_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1412f)), _wgslsmith_f_op_f32(-1257f - arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.x, 866f)), _wgslsmith_f_op_f32(select(1821f, arg_3.d, false)), select(true, false, true))))), vec2<u32>(4294967295u, u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = arg_1.x >> (34322u % 32u);
    var var_3 = var_0.a.c;
    var var_4 = ~_wgslsmith_mult_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1, arg_1), arg_1.x ^ 27872i, -2147483647i >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(28081i, arg_1.x))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_1.x, 1938i, arg_1.x), vec4<i32>(-10864i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(0i, -2147483647i, -27587i, -1i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -76821i), vec4<i32>(18526i, 11496i, 27537i, arg_1.x)), firstLeadingBit(0i), _wgslsmith_sub_i32(arg_1.x, arg_1.x), 1i) >> (arg_2 % vec4<u32>(32u)));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(~_wgslsmith_dot_vec2_u32(arg_3.a.c.a.e, (vec2<u32>(0u, 1u) ^ arg_1) ^ reverseBits(arg_1)), func_4(vec2<f32>(-601f, arg_3.a.d.a.d), _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -29035i), vec2<i32>(arg_0, arg_0)), -vec2<i32>(arg_0, arg_0) | vec2<i32>(arg_0, -5543i)), ~vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(65679u, u_input.b), vec2<u32>(1u, 1u)), arg_1.x, arg_3.a.a), func_2(arg_3, select(-vec3<i32>(arg_0, arg_0, arg_0), firstLeadingBit(vec3<i32>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, true)))), func_4(arg_2.zx, -vec2<i32>(-arg_0, 38373i), (select(vec4<u32>(u_input.b, 0u, arg_1.x, 78334u), vec4<u32>(global1.x, 73227u, global1.x, 6199u), false) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, u_input.c, 53734u, global1.x), vec4<u32>(1u, arg_1.x, 17753u, arg_1.x))) >> (firstTrailingBit(select(vec4<u32>(arg_1.x, global1.x, arg_3.a.c.a.c, 53904u), vec4<u32>(45592u, 4294967295u, arg_3.a.a, 12664u), true)) % vec4<u32>(32u)), func_2(Struct_4(Struct_3(1u, arg_3.a.d, Struct_2(Struct_1(arg_2.x, -401f, 1179u, 1134f, arg_1)), Struct_2(arg_3.a.c.a)), arg_3.a.d.a.a), select(vec3<i32>(arg_0, arg_0, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, -25651i), vec3<i32>(arg_0, -2147483647i, -1i)), true))), Struct_2(arg_3.a.d.a));
    global3 = array<f32, 20>();
    let var_1 = Struct_2(Struct_1(var_0.b.a.a, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 0u), ~var_0.b.a.e), 20u)], _wgslsmith_mult_u32(arg_3.a.a, ~0u), _wgslsmith_f_op_f32(-var_0.c.a.a), _wgslsmith_mod_vec2_u32(~(~arg_1), select(arg_1, max(arg_1, arg_3.a.c.a.e), !global0[_wgslsmith_index_u32(global1.x, 16u)]))));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1776f, global3[_wgslsmith_index_u32(var_1.a.c, 20u)], _wgslsmith_f_op_f32(-arg_2.x), 886f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2, vec4<f32>(var_1.a.d, -480f, global3[_wgslsmith_index_u32(var_0.a, 20u)], 586f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 + arg_2) - arg_2))))));
    let var_3 = Struct_3(arg_3.a.d.a.e.x, func_4(_wgslsmith_f_op_vec2_f32(-arg_2.yw), -firstTrailingBit(vec2<i32>(arg_0, -6983i)), abs(~vec4<u32>(global1.x, arg_1.x, u_input.b, 562u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -401f), arg_3.b, ~firstTrailingBit(10329u), var_2.x, vec2<u32>(10785u, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_1.x, 4294967295u))))), Struct_2(var_0.c.a), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.wz + arg_2.xw))), vec2<i32>(_wgslsmith_mult_i32(arg_0 | 0i, ~1i), 1i), abs(~firstLeadingBit(vec4<u32>(arg_1.x, u_input.c, u_input.b, 2591u))), var_1.a));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~arg_1.x, 20u)] * var_3.b.a.d)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.d.a.b), arg_3.a.d.a.d))), -807f, 1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.c.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), false)))), vec2<u32>(global1.x, ~((18725u ^ arg_3.a.b.a.e.x) >> (3271u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~_wgslsmith_div_u32(1u, 61289u), Struct_2(func_1(-6766i, vec2<u32>(4294967295u | u_input.c, ~6240u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], 2284f, global3[_wgslsmith_index_u32(1u, 20u)]) + vec4<f32>(global3[_wgslsmith_index_u32(1065u, 20u)], -1523f, 763f, -1749f)), vec4<f32>(421f, -1966f, -1889f, 1000f))), Struct_4(Struct_3(1u, Struct_2(Struct_1(1216f, global3[_wgslsmith_index_u32(2122u, 20u)], u_input.c, -1015f, vec2<u32>(10791u, global1.x))), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global1.x, 20u)], -462f, 28119u, 718f, vec2<u32>(global1.x, 55332u))), Struct_2(Struct_1(767f, global3[_wgslsmith_index_u32(global1.x, 20u)], 7513u, global3[_wgslsmith_index_u32(global1.x, 20u)], vec2<u32>(4294967295u, 10199u)))), -259f))), Struct_2(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global3[_wgslsmith_index_u32(30111u, 20u)]), vec2<f32>(1022f, 914f)), vec2<i32>(~(-3806i), -17182i), vec4<u32>(u_input.a, ~global1.x, global1.x, firstTrailingBit(4294967295u)), Struct_1(810f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global1.x, 20u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(17945u, 4294967295u), vec2<u32>(42984u, 1u)), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global1.x, 20u)], global3[_wgslsmith_index_u32(1u, 20u)])), vec2<u32>(u_input.a, 29904u))).a), Struct_2(func_1(-reverseBits(-2083i), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(52116u, global1.x), vec2<u32>(u_input.c, 4853u), vec2<u32>(4294967295u, 1959u)), ~vec2<u32>(global1.x, 0u)), vec4<f32>(_wgslsmith_f_op_f32(-219f - 1035f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(53509u, 20u)]), 145f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 20u)] * -201f)), Struct_4(global2[_wgslsmith_index_u32(47061u, 14u)], _wgslsmith_f_op_f32(-1400f - 1939f)))));
    var var_1 = _wgslsmith_add_i32(~(-20163i), countOneBits(abs(~_wgslsmith_add_i32(-1i, 1i))));
    global1 = max(var_0.c.a.e, _wgslsmith_mult_vec2_u32(var_0.d.a.e, ~reverseBits(vec2<u32>(4294967295u, global1.x))));
    global2 = array<Struct_3, 14>();
    var var_2 = any(vec3<bool>(true, false, !(!all(global0[_wgslsmith_index_u32(global1.x, 16u)]))));
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(global1.x), 14u)];
    let var_4 = var_0.c.a.a;
    let var_5 = var_3.c;
    var var_6 = -405f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

