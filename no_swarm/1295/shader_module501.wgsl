struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-1000f, 1497f, 1000f), 35061u, vec3<f32>(1806f, -619f, -1095f), -606f, vec4<i32>(-30273i, 24339i, -1i, i32(-2147483648))), Struct_1(vec3<f32>(-1192f, -140f, 1827f), 10774u, vec3<f32>(498f, 1038f, 2398f), 618f, vec4<i32>(2147483647i, 1i, 1i, -22132i)), Struct_1(vec3<f32>(-1081f, 1843f, -564f), 1u, vec3<f32>(307f, -643f, 589f), -1605f, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -55226i)), Struct_1(vec3<f32>(-1372f, -1047f, 1623f), 1u, vec3<f32>(-294f, 1389f, -1277f), -1472f, vec4<i32>(2147483647i, 9420i, 59619i, -45716i)), Struct_1(vec3<f32>(-973f, -453f, 128f), 27449u, vec3<f32>(-728f, 1000f, 835f), 1000f, vec4<i32>(0i, 2147483647i, i32(-2147483648), 872i)), Struct_1(vec3<f32>(401f, 1637f, 955f), 33005u, vec3<f32>(600f, 334f, -506f), 348f, vec4<i32>(-1i, -53640i, -48494i, -1i)), Struct_1(vec3<f32>(663f, -1000f, -1985f), 36663u, vec3<f32>(-1000f, 2424f, 275f), 1000f, vec4<i32>(16768i, 0i, -83116i, 12389i)), Struct_1(vec3<f32>(999f, -976f, 801f), 68400u, vec3<f32>(2091f, -1000f, -426f), 1461f, vec4<i32>(-22368i, 1i, -2744i, i32(-2147483648))), Struct_1(vec3<f32>(-1589f, -281f, -1050f), 4294967295u, vec3<f32>(-1376f, 893f, -642f), 1758f, vec4<i32>(46979i, 2147483647i, 0i, -1i)), Struct_1(vec3<f32>(990f, 404f, -678f), 3102u, vec3<f32>(-1315f, -625f, -1295f), 607f, vec4<i32>(-16496i, 12151i, -1i, 28429i)), Struct_1(vec3<f32>(-993f, -248f, -517f), 45218u, vec3<f32>(-836f, 326f, 685f), 524f, vec4<i32>(1i, -1i, 30581i, 5889i)), Struct_1(vec3<f32>(-942f, -1707f, -460f), 23301u, vec3<f32>(-981f, 343f, -255f), -237f, vec4<i32>(-2719i, -1i, 7970i, 17809i)), Struct_1(vec3<f32>(768f, 131f, 1717f), 20000u, vec3<f32>(-1571f, 1000f, 295f), -148f, vec4<i32>(2147483647i, 1i, 0i, 1i)), Struct_1(vec3<f32>(679f, -708f, -118f), 8925u, vec3<f32>(122f, -1859f, 408f), -670f, vec4<i32>(25081i, 17625i, -95266i, -512i)), Struct_1(vec3<f32>(2203f, -253f, 1000f), 0u, vec3<f32>(196f, 1000f, -493f), 1000f, vec4<i32>(-22825i, 1i, i32(-2147483648), -25323i)), Struct_1(vec3<f32>(-1002f, 186f, -1005f), 0u, vec3<f32>(-1232f, 771f, 423f), 2021f, vec4<i32>(1i, -1i, 1i, 1i)), Struct_1(vec3<f32>(484f, -723f, -1322f), 4294967295u, vec3<f32>(-966f, 2591f, 1000f), -258f, vec4<i32>(-23441i, -4305i, i32(-2147483648), 0i)), Struct_1(vec3<f32>(-2417f, -891f, 2422f), 6581u, vec3<f32>(-203f, -810f, -957f), -1085f, vec4<i32>(29941i, -50973i, i32(-2147483648), 47794i)), Struct_1(vec3<f32>(-1432f, 487f, 1000f), 0u, vec3<f32>(-1592f, -419f, -386f), 1308f, vec4<i32>(-1i, 2147483647i, -37950i, 1i)), Struct_1(vec3<f32>(139f, 680f, 592f), 41869u, vec3<f32>(-1697f, -1236f, -1477f), 527f, vec4<i32>(-1i, 409i, 0i, -1i)), Struct_1(vec3<f32>(1000f, -272f, -1426f), 0u, vec3<f32>(-1166f, -540f, 1507f), 117f, vec4<i32>(2147483647i, i32(-2147483648), 36229i, 18870i)), Struct_1(vec3<f32>(900f, 2541f, 218f), 4294967295u, vec3<f32>(-834f, 2085f, -1263f), 1000f, vec4<i32>(i32(-2147483648), 26297i, -1i, 17085i)), Struct_1(vec3<f32>(1000f, 1645f, 602f), 13304u, vec3<f32>(-1200f, 201f, -1037f), -1000f, vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i)), Struct_1(vec3<f32>(989f, -2027f, 1558f), 27183u, vec3<f32>(1772f, 189f, 259f), 1314f, vec4<i32>(10204i, -27527i, i32(-2147483648), 17212i)), Struct_1(vec3<f32>(-1769f, 267f, 1398f), 21161u, vec3<f32>(563f, 813f, 262f), 564f, vec4<i32>(0i, -16589i, -41828i, -11274i)), Struct_1(vec3<f32>(-1114f, -185f, 1035f), 24706u, vec3<f32>(462f, -1927f, 1660f), 559f, vec4<i32>(-55157i, -30189i, -1i, i32(-2147483648))));

var<private> global1: array<Struct_1, 25>;

var<private> global2: f32 = 430f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<f32> {
    global2 = 538f;
    var var_0 = u_input.c < (arg_1.e.x | _wgslsmith_dot_vec4_i32(arg_1.e, _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_1.e.x, 12037i, u_input.b.x, 91i), vec4<i32>(10316i, 2147483647i, -11808i, u_input.b.x), vec4<bool>(false, false, true, false)), vec4<i32>(u_input.a.x, 0i, 0i, arg_1.e.x) | arg_1.e)));
    let var_1 = 1u;
    global0 = array<Struct_1, 26>();
    var_0 = arg_0.x == arg_0.x;
    return arg_1.c.xy;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> bool {
    let var_0 = ~firstTrailingBit(~_wgslsmith_div_u32(1u, ~11052u));
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(~(~(~(~vec3<u32>(43479u, 0u, var_0)))), global1[_wgslsmith_index_u32(~var_0, 25u)]));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(629f - var_1.x), arg_1.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 642f, -1000f), vec3<f32>(var_1.x, -1731f, 211f))), vec3<f32>(var_1.x, arg_1.x, -2574f))))), ~var_0, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x)), -1180f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_1.x))))) * 187f), -vec4<i32>(1i, arg_0, 0i, _wgslsmith_sub_i32(1i, arg_0 & 4333i)));
    var var_3 = !select(true, !(!any(vec2<bool>(false, true))), select(any(vec4<bool>(false, false, true, true)), select(49567u < var_2.b, true, any(vec2<bool>(true, true))), true));
    return max(0i, abs(-(i32(-1i) * -42443i))) < ~_wgslsmith_mod_i32(-arg_0, _wgslsmith_div_i32(2147483647i, -30671i));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 25>();
    let var_0 = arg_3.e;
    let var_1 = max(arg_3.e.wy, _wgslsmith_div_vec2_i32(vec2<i32>(0i, _wgslsmith_sub_i32(u_input.a.x, var_0.x)), var_0.xw)) << (reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.b, 1u), ~vec2<u32>(arg_3.b, 121u), min(vec2<u32>(60627u, 4294967295u), vec2<u32>(arg_3.b, arg_3.b))), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3.b), ~vec2<u32>(0u, arg_3.b)))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), 374f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, arg_3.c.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.x)), arg_1.yy, -1i <= var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(349f - 710f))), _wgslsmith_f_op_f32(-1862f * _wgslsmith_f_op_f32(arg_0.x - 886f)))));
    global1 = array<Struct_1, 25>();
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 58580u), abs(vec4<u32>(38017u, arg_3.b, 5213u, arg_3.b))), 18672u)), 26u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, -447f, arg_1.d)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * arg_1.a.x), _wgslsmith_f_op_f32(-arg_0.d)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, -260f)), _wgslsmith_f_op_f32(min(1666f, -1671f))))), true, Struct_1(arg_2.a, arg_0.b, vec3<f32>(1000f, _wgslsmith_f_op_f32(1000f + -539f), 1306f), 533f, max(vec4<i32>(u_input.c, 2147483647i, arg_0.e.x, arg_0.e.x), vec4<i32>(firstLeadingBit(u_input.c), 27914i, ~2147483647i, u_input.b.x ^ u_input.b.x))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, 1625f, -2012f))) - arg_2.a), _wgslsmith_f_op_vec3_f32(-arg_2.c), arg_3.x, func_4(vec3<f32>(-249f, _wgslsmith_f_op_f32(min(-431f, _wgslsmith_f_op_f32(var_0.c.x * 1103f))), arg_1.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.c.x, _wgslsmith_f_op_f32(round(var_0.a.x))) + vec3<f32>(-702f, -729f, _wgslsmith_f_op_f32(f32(-1f) * -1445f))), true, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.a, arg_2.c))), arg_0.a, !(!arg_3.x), func_4(vec3<f32>(arg_0.c.x, 762f, arg_1.d), _wgslsmith_f_op_vec3_f32(exp2(arg_1.c)), false, func_4(vec3<f32>(arg_0.d, 1000f, arg_0.a.x), arg_2.c, arg_3.x, Struct_1(vec3<f32>(1000f, arg_0.c.x, 1806f), arg_2.b, vec3<f32>(-785f, arg_1.c.x, var_0.a.x), arg_2.c.x, vec4<i32>(var_0.e.x, arg_2.e.x, arg_2.e.x, 36048i)))))));
    global1 = array<Struct_1, 25>();
    var var_2 = select(select(select(arg_3.yzx, arg_3.yzz, select(arg_3.xzz, select(arg_3.xwy, arg_3.yyy, false), vec3<bool>(true, arg_3.x, false))), arg_3.zyw, select(select(select(arg_3.yww, vec3<bool>(true, true, arg_3.x), arg_3.zxx), select(vec3<bool>(arg_3.x, arg_3.x, false), arg_3.wyx, false), any(arg_3.zz)), select(select(vec3<bool>(true, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, false), arg_3.wxx), select(vec3<bool>(arg_3.x, true, arg_3.x), arg_3.wxz, vec3<bool>(true, false, arg_3.x)), arg_3.x), vec3<bool>(true, !arg_3.x, true))), select(vec3<bool>(func_2(i32(-1i) * -68810i, _wgslsmith_f_op_vec2_f32(-var_0.c.zx)), true, true), select(select(vec3<bool>(arg_3.x, true, arg_3.x), vec3<bool>(false, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), !arg_3.wwx, true), !vec3<bool>(true | arg_3.x, all(arg_3), !arg_3.x)), false);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-314f, arg_0.a.x)), _wgslsmith_f_op_f32(-var_1.c.x))), -452f));
    return func_4(arg_1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(1310f - -731f), var_3)), _wgslsmith_f_op_vec3_f32(floor(func_4(vec3<f32>(895f, var_1.a.x, 616f), vec3<f32>(arg_0.a.x, arg_1.a.x, -1513f), true, Struct_1(vec3<f32>(arg_1.c.x, var_3, var_3), arg_0.b, arg_1.a, -565f, vec4<i32>(arg_1.e.x, -4544i, arg_1.e.x, -20912i))).a))), true, var_1);
}

fn func_1() -> bool {
    global1 = array<Struct_1, 25>();
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-418f, -1190f, -327f), vec3<f32>(-683f, -1128f, -1000f))))), vec3<f32>(-467f, _wgslsmith_f_op_f32(trunc(-576f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-163f)), _wgslsmith_f_op_f32(1212f - -178f))), !func_2(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 674f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~17314u, select(2673u, 19916u, false) ^ select(4294967295u, 51243u, false)), 26u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(10187u), ~_wgslsmith_div_u32(~37534u, ~0u)), 25u)], global0[_wgslsmith_index_u32(firstLeadingBit(32566u), 26u)], vec4<bool>(true, -2147483647i <= -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 8749i, u_input.b.x), vec3<i32>(u_input.c, 2147483647i, 23572i)), !(!any(vec3<bool>(false, true, true))), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var var_1 = func_5(Struct_1(var_0.a, var_0.b, func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.d)), var_0.c, true, func_5(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b, var_0.b), 25u)], global0[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(var_0.b, 25u)], vec4<bool>(true, true, true, true))).c, var_0.a.x, var_0.e), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(84999u, var_0.b), vec2<u32>(var_0.b, var_0.b)) >> ((4294967295u & var_0.b) % 32u)), var_0.a, _wgslsmith_f_op_f32(-var_0.d), var_0.e), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(-1000f, 539f, var_0.a.x))))), ~0u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1414f, _wgslsmith_f_op_f32(floor(962f)), var_0.a.x))), 1f, func_5(Struct_1(vec3<f32>(-2679f, var_0.c.x, -406f), var_0.b, vec3<f32>(-1000f, 236f, -251f), 109f, var_0.e), Struct_1(var_0.a, 4294967295u, vec3<f32>(var_0.c.x, var_0.d, -474f), 141f, var_0.e), func_4(vec3<f32>(var_0.d, var_0.a.x, var_0.d), vec3<f32>(var_0.c.x, 852f, var_0.c.x), true, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(true, false, false, false)).e & reverseBits(vec4<i32>(-7745i, 1969i, var_0.e.x, var_0.e.x))), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, _wgslsmith_f_op_f32(-var_0.d), var_1.c.x) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d + var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(1u, 1u, 0u), Struct_1(vec3<f32>(-1189f, var_0.a.x, 123f), 1u, var_0.a, -1000f, vec4<i32>(41070i, 8626i, u_input.b.x, u_input.c)))).x), -367f)), var_1.a.x, vec4<i32>(abs(1i) & _wgslsmith_mod_i32(var_1.e.x, -10939i), u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, var_0.e.x, -2147483647i), select(var_1.e.wyy, vec3<i32>(var_1.e.x, 28287i, u_input.a.x), true), vec3<i32>(var_0.e.x, var_0.e.x, u_input.c)), min(vec3<i32>(u_input.c, 7790i, var_0.e.x), var_1.e.yxx)), 6662i));
    var var_3 = any(vec3<bool>(all(vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), 1f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 1000f) * 694f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(6202i, abs(1i), !(!(!func_1())));
    let var_1 = func_4(vec3<f32>(2103f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -520f)))), 1907f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(395f, -1000f, 290f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, 596f, -996f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, 1985f, 423f)))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2460f), -1000f), 681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-729f, -176f)) * 1000f))), true, global0[_wgslsmith_index_u32(1u, 26u)]);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-var_2.d));
    let var_4 = (select(var_2.e.x, -1i, select(false, true, true) || all(vec4<bool>(true, false, false, false))) | max(~(-var_1.e.x), min(var_1.e.x & -2100i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_2.e.x, 2147483647i), var_1.e.yzw)))) ^ ~1i;
    var var_5 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(var_2.e) ^ abs(-vec4<i32>(var_4, var_2.e.x, var_2.e.x, 1i)), firstLeadingBit(var_1.e)), ~var_2.e);
    var var_6 = false;
    var_5 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~1u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 0u) ^ ~vec2<u32>(1u, var_1.b), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(90197u, 1u), vec2<u32>(var_2.b, 1u)))) % 32u), reverseBits(min(vec2<u32>(4294967295u, var_2.b), vec2<u32>(1u, var_1.b) >> (vec2<u32>(101671u, 62375u) % vec2<u32>(32u)))) ^ max(vec2<u32>(_wgslsmith_mod_u32(68259u, var_1.b), ~var_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, 4294967295u), vec2<u32>(var_1.b, var_2.b)) << (reverseBits(vec2<u32>(0u, var_2.b)) % vec2<u32>(32u))));
}

