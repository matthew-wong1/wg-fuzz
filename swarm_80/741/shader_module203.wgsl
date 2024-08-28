struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(true, Struct_1(vec3<f32>(-933f, 181f, 1534f), true, 36418i, vec2<f32>(-865f, -1530f), -30107i), Struct_1(vec3<f32>(493f, 312f, 1724f), false, -55978i, vec2<f32>(498f, 1000f), -66276i), -482f, vec3<u32>(1u, 31480u, 73281u)), Struct_2(false, Struct_1(vec3<f32>(-1000f, -752f, -1080f), false, 10941i, vec2<f32>(-339f, 185f), -30947i), Struct_1(vec3<f32>(412f, -1429f, 247f), true, 37294i, vec2<f32>(1365f, 309f), 21767i), -390f, vec3<u32>(4294967295u, 1u, 1u)), Struct_2(true, Struct_1(vec3<f32>(739f, -926f, -1000f), false, 8774i, vec2<f32>(-1000f, 402f), i32(-2147483648)), Struct_1(vec3<f32>(1350f, -578f, -1544f), false, 24705i, vec2<f32>(284f, 208f), -20761i), -518f, vec3<u32>(26710u, 0u, 4294967295u)), Struct_2(true, Struct_1(vec3<f32>(-729f, 479f, 1891f), false, i32(-2147483648), vec2<f32>(-1000f, -1068f), 1i), Struct_1(vec3<f32>(-1072f, -361f, 310f), false, i32(-2147483648), vec2<f32>(547f, -1000f), 2977i), 1707f, vec3<u32>(41442u, 51213u, 5167u)), Struct_2(true, Struct_1(vec3<f32>(1161f, -919f, -262f), true, i32(-2147483648), vec2<f32>(-542f, 866f), -13832i), Struct_1(vec3<f32>(668f, 633f, -741f), false, -4389i, vec2<f32>(-1222f, -1118f), i32(-2147483648)), 465f, vec3<u32>(30458u, 65639u, 77854u)), Struct_2(false, Struct_1(vec3<f32>(1145f, -779f, 308f), true, -1i, vec2<f32>(-571f, -1018f), 8544i), Struct_1(vec3<f32>(122f, 284f, 685f), false, -34087i, vec2<f32>(-702f, 1982f), -1i), -407f, vec3<u32>(5842u, 1u, 4294967295u)), Struct_2(true, Struct_1(vec3<f32>(-1520f, 1271f, -352f), false, -24986i, vec2<f32>(-1989f, -499f), 20439i), Struct_1(vec3<f32>(473f, 405f, -1471f), false, -1i, vec2<f32>(-1825f, -1186f), 19125i), 288f, vec3<u32>(49812u, 1u, 53705u)), Struct_2(true, Struct_1(vec3<f32>(1953f, 1091f, -898f), true, 11618i, vec2<f32>(2715f, 1086f), 47968i), Struct_1(vec3<f32>(-902f, 1482f, 1548f), true, 2147483647i, vec2<f32>(-177f, 948f), 41769i), -1641f, vec3<u32>(6977u, 1u, 0u)), Struct_2(false, Struct_1(vec3<f32>(1622f, 1000f, -234f), true, 4843i, vec2<f32>(-375f, -1467f), -16045i), Struct_1(vec3<f32>(1216f, 1565f, -1000f), false, 2147483647i, vec2<f32>(168f, 427f), -1i), 1198f, vec3<u32>(72622u, 4294967295u, 4294967295u)), Struct_2(true, Struct_1(vec3<f32>(-938f, 169f, 906f), true, -33726i, vec2<f32>(1081f, 1086f), 0i), Struct_1(vec3<f32>(-241f, 1753f, -160f), false, -7845i, vec2<f32>(-484f, 427f), 9153i), 671f, vec3<u32>(0u, 18660u, 0u)));

var<private> global1: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(0i, true), Struct_4(2147483647i, true), Struct_4(12868i, true), Struct_4(9692i, true), Struct_4(-1115i, true), Struct_4(2147483647i, true));

var<private> global2: array<Struct_4, 4>;

var<private> global3: Struct_5 = Struct_5(51398u, Struct_4(20035i, true), 4294967295u);

var<private> global4: bool = false;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_4, 4>();
    global0 = array<Struct_2, 10>();
    var var_0 = ~abs(firstLeadingBit(1u));
    return Struct_2(!global3.b.b, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-858f, 1509f, -2118f) - vec3<f32>(232f, 558f, 264f)))))), global3.b.b, u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1350f, 217f) + vec2<f32>(432f, -150f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1331f, 434f)))), firstTrailingBit(min(_wgslsmith_mult_i32(global3.b.a, u_input.a), u_input.a))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-524f)), -520f)), -2529f, 565f), all(vec3<bool>(true, true, !global3.b.b)), global3.b.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * -256f), _wgslsmith_f_op_f32(f32(-1f) * -418f)) - vec2<f32>(1f, 1f)), 39937i), -1233f, vec3<u32>(50592u, 4294967295u, countOneBits(48406u)));
}

fn func_1() -> vec4<u32> {
    let var_0 = -1i;
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1243f * 455f)));
    let var_3 = func_2();
    var var_4 = Struct_3(reverseBits(_wgslsmith_add_vec2_u32(var_3.e.zx, var_3.e.yz)) << (var_3.e.yz % vec2<u32>(32u)), global0[_wgslsmith_index_u32(117601u, 10u)], select(-2147483647i, reverseBits(-(global3.b.a >> (var_3.e.x % 32u))), global3.b.b), select(-14087i | ~(var_3.c.c ^ u_input.a), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_3.c.e), vec2<i32>(1i, u_input.a)), vec2<i32>(-29255i, var_3.c.e))), var_3.a));
    return min(vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.e, var_4.b.e << (vec3<u32>(17936u, 1u, var_4.b.e.x) % vec3<u32>(32u))), ~(~59425u), _wgslsmith_mod_u32(var_4.b.e.x, 19020u), abs(4294967295u)) >> (vec4<u32>(_wgslsmith_div_u32(0u, global3.c), 4294967295u, 13315u, 4294967295u) % vec4<u32>(32u)), abs(firstLeadingBit(~vec4<u32>(44271u, global3.c, 4294967295u, 4294967295u))) | vec4<u32>(11339u, global3.a, 2500u, reverseBits(var_4.b.e.x)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_5 {
    var var_0 = func_2();
    return Struct_5(abs(~func_2().e.x), Struct_4(~u_input.a, !var_0.a), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(firstLeadingBit(~vec2<i32>(1i, u_input.a)));
    global3 = func_3(min(~(~(~vec4<u32>(global3.c, 13395u, global3.a, global3.c))), func_1() << (((vec4<u32>(1u, 0u, 0u, global3.c) & vec4<u32>(11815u, 871u, 22151u, 10162u)) << (select(vec4<u32>(global3.a, global3.c, 4294967295u, 0u), vec4<u32>(0u, global3.a, global3.a, 0u), global3.b.b) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_4(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, var_0.x), -_wgslsmith_mult_i32(-27517i, 14670i), var_0.x), any(vec3<bool>(false == global3.b.b, true, true))));
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_add_u32(~abs(global3.a), 4294967295u), 4294967295u), func_2(), _wgslsmith_sub_i32(~global3.b.a, var_0.x), -3164i);
    global0 = array<Struct_2, 10>();
    var var_2 = !vec3<bool>(all(vec2<bool>(!var_1.b.c.b, true)), global3.b.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, _wgslsmith_f_op_f32(var_1.b.d + var_1.b.d))) * var_1.b.b.a.xy), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(46415u, 14942u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.a.x), var_1.b.e.xx), var_1.b.e.zy), var_1.b.e.xz, var_1.b.e.yy), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global3.c, global3.a, ~1u), vec3<u32>(_wgslsmith_mod_u32(1u, global3.a), firstLeadingBit(var_1.a.x), global3.c)), select(_wgslsmith_mult_i32(~(-var_1.b.c.e), 19985i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.c.c, var_1.d), vec2<i32>(global3.b.a, global3.b.a)), var_0), _wgslsmith_mult_vec2_i32(-vec2<i32>(-23068i, 3530i), var_0 << (var_1.a % vec2<u32>(32u)))), !(_wgslsmith_f_op_f32(-var_1.b.d) < _wgslsmith_f_op_f32(trunc(-1000f)))), ~var_1.b.e);
}

