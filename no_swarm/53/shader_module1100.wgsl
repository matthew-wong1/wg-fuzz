struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<i32>(1i, 0i, 0i, i32(-2147483648)), 3673i, vec3<f32>(317f, -237f, 1819f), vec2<i32>(1i, -13245i), -36010i), Struct_2(vec4<i32>(2147483647i, 1i, 7168i, 31679i), -1i, vec3<f32>(158f, 702f, -677f), vec2<i32>(i32(-2147483648), -1i), 2147483647i), Struct_2(vec4<i32>(1i, 1i, -26061i, -1i), -1i, vec3<f32>(-790f, -294f, -619f), vec2<i32>(19303i, 0i), 0i), Struct_2(vec4<i32>(60768i, i32(-2147483648), 0i, -1i), 67690i, vec3<f32>(1522f, -875f, 171f), vec2<i32>(2147483647i, 59107i), -1i), Struct_2(vec4<i32>(-2171i, -2919i, 2147483647i, -53934i), 14105i, vec3<f32>(-1410f, -528f, -1000f), vec2<i32>(-14427i, i32(-2147483648)), -583i), Struct_2(vec4<i32>(1i, 29876i, -33626i, -40383i), -56586i, vec3<f32>(-1213f, 1650f, 945f), vec2<i32>(14678i, -5292i), 0i), Struct_2(vec4<i32>(i32(-2147483648), -37872i, 2147483647i, i32(-2147483648)), 19951i, vec3<f32>(639f, 310f, -1466f), vec2<i32>(i32(-2147483648), 15700i), i32(-2147483648)), Struct_2(vec4<i32>(-26091i, -84559i, -20823i, -8188i), i32(-2147483648), vec3<f32>(828f, 428f, 340f), vec2<i32>(31586i, 32479i), 2147483647i), Struct_2(vec4<i32>(-1i, -31452i, 12952i, 16606i), 52519i, vec3<f32>(-1591f, 1172f, 778f), vec2<i32>(-35497i, -20851i), -4938i), Struct_2(vec4<i32>(i32(-2147483648), 11343i, 1i, 2147483647i), i32(-2147483648), vec3<f32>(1000f, 680f, 1003f), vec2<i32>(23190i, 1i), 44933i), Struct_2(vec4<i32>(i32(-2147483648), -125i, 27801i, 706i), 2147483647i, vec3<f32>(-814f, 742f, 675f), vec2<i32>(40363i, 68924i), 7212i), Struct_2(vec4<i32>(-15883i, -1i, -1599i, 2147483647i), 2147483647i, vec3<f32>(-966f, 632f, -393f), vec2<i32>(-24928i, 63784i), -2899i), Struct_2(vec4<i32>(23837i, i32(-2147483648), -1i, 12984i), 21731i, vec3<f32>(-1804f, -314f, -1000f), vec2<i32>(i32(-2147483648), 2464i), -1i), Struct_2(vec4<i32>(31794i, 65437i, -1i, -4331i), 0i, vec3<f32>(1073f, 1000f, 284f), vec2<i32>(2147483647i, -28415i), 0i), Struct_2(vec4<i32>(60608i, i32(-2147483648), -18303i, 38096i), -60187i, vec3<f32>(-1533f, -1313f, 2351f), vec2<i32>(-23981i, 13825i), -1i), Struct_2(vec4<i32>(-23120i, 3694i, -23235i, -1i), i32(-2147483648), vec3<f32>(536f, -1000f, 354f), vec2<i32>(-1i, -21274i), 7333i), Struct_2(vec4<i32>(-40560i, 43962i, 34448i, -1i), 12491i, vec3<f32>(-390f, -433f, -2279f), vec2<i32>(18476i, 1i), i32(-2147483648)), Struct_2(vec4<i32>(-42414i, 0i, -38394i, -1i), 1i, vec3<f32>(1267f, 1153f, -263f), vec2<i32>(-35198i, -11271i), -21220i), Struct_2(vec4<i32>(-1i, 16970i, 2147483647i, -1i), -44265i, vec3<f32>(-459f, -180f, 972f), vec2<i32>(10887i, 18848i), 0i), Struct_2(vec4<i32>(0i, i32(-2147483648), 0i, -43493i), 45256i, vec3<f32>(-1085f, -208f, -969f), vec2<i32>(i32(-2147483648), i32(-2147483648)), -2230i), Struct_2(vec4<i32>(-43617i, -5650i, 34088i, i32(-2147483648)), 0i, vec3<f32>(933f, 245f, 919f), vec2<i32>(-87024i, 62511i), -5036i), Struct_2(vec4<i32>(0i, 2147483647i, i32(-2147483648), i32(-2147483648)), -1i, vec3<f32>(1972f, -1722f, -489f), vec2<i32>(0i, 0i), i32(-2147483648)), Struct_2(vec4<i32>(1i, 2147483647i, -12692i, 8026i), 0i, vec3<f32>(170f, 1000f, -1055f), vec2<i32>(-17099i, 0i), 9019i), Struct_2(vec4<i32>(-18388i, 14833i, -1i, -6366i), 0i, vec3<f32>(-152f, -1449f, 356f), vec2<i32>(i32(-2147483648), 0i), 9801i), Struct_2(vec4<i32>(2147483647i, -45429i, -16841i, 6244i), -11076i, vec3<f32>(-1000f, 450f, -1345f), vec2<i32>(i32(-2147483648), 18512i), 0i), Struct_2(vec4<i32>(22718i, -33170i, 6i, 0i), 18946i, vec3<f32>(2299f, -117f, 166f), vec2<i32>(-17770i, 36801i), 2147483647i), Struct_2(vec4<i32>(1i, -56610i, -1i, -34051i), i32(-2147483648), vec3<f32>(1000f, -1363f, -598f), vec2<i32>(18033i, -1i), i32(-2147483648)), Struct_2(vec4<i32>(56693i, -52243i, -5396i, 1i), -568i, vec3<f32>(159f, 736f, 1556f), vec2<i32>(10528i, i32(-2147483648)), -38742i), Struct_2(vec4<i32>(-5122i, -38019i, 19011i, 2147483647i), 21882i, vec3<f32>(1526f, -170f, -1000f), vec2<i32>(13684i, 2147483647i), -28567i), Struct_2(vec4<i32>(30776i, 2147483647i, -40360i, 6710i), 0i, vec3<f32>(847f, 1000f, -711f), vec2<i32>(0i, 0i), -2605i), Struct_2(vec4<i32>(-1i, i32(-2147483648), -27285i, 0i), 2849i, vec3<f32>(-1683f, 182f, -1092f), vec2<i32>(-22959i, -14130i), 47155i));

var<private> global1: u32 = 0u;

var<private> global2: vec2<i32> = vec2<i32>(-79i, 5830i);

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = reverseBits(countOneBits(1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(416f, arg_0.c.x, -148f, arg_0.c.x) + vec4<f32>(591f, 867f, 533f, -772f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)), 379f, _wgslsmith_f_op_f32(step(-1740f, -580f)), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(min(arg_0.c.x, 1000f)))), select(select(global3[_wgslsmith_index_u32(~35390u, 29u)], vec4<bool>(false, true, false, false), -1i == global2.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), global3[_wgslsmith_index_u32(3372u, 29u)]))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1873f)), _wgslsmith_f_op_f32(ceil(-1548f)))), -195f, arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(411f, arg_0.c.x, -501f, arg_0.c.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.x, 542f, 625f, 516f))))))));
    let var_2 = vec2<u32>(0u, reverseBits(29963u & min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 34256u), vec3<u32>(12684u, 4294967295u, 0u)), ~50112u)));
    var var_3 = Struct_2(-vec4<i32>(min(min(arg_0.b, u_input.a), countOneBits(0i)), arg_0.d.x, -31893i, abs(_wgslsmith_mult_i32(u_input.a, u_input.a))), 2147483647i, _wgslsmith_f_op_vec3_f32(arg_0.c + var_1.wxz), arg_0.a.wx, -25992i);
    let var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return 1u | var_2.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    global1 = ~(1u << (arg_2.x % 32u)) | abs(0u);
    var var_0 = vec4<i32>(max(max(_wgslsmith_mod_i32(global2.x, global2.x << (27507u % 32u)), -(~arg_3)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global2.x, u_input.a, -2147483647i), vec4<i32>(arg_3, -26925i, -2147483647i, 1i) | vec4<i32>(242i, global2.x, global2.x, u_input.a)), -2147483647i)), 1i << (func_3(global0[_wgslsmith_index_u32(reverseBits(1u), 31u)]) % 32u), u_input.a, ~(-31127i));
    var var_1 = min(var_0.xzx, ~var_0.zxx);
    var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, var_1.x, 1401i, global2.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, var_0.x, -27710i, 2147483647i), vec4<i32>(arg_3, -19750i, 43373i, -60444i)), vec4<i32>(var_1.x >> (4294967295u % 32u), _wgslsmith_sub_i32(arg_3, var_0.x), i32(-1i) * -2147483647i, -22022i | var_1.x)), 2147483647i), select(_wgslsmith_clamp_vec3_i32(var_0.wwx, var_0.xxz, vec3<i32>(var_0.x, -8967i, 90105i) << (~arg_2.yzz % vec3<u32>(32u))), vec3<i32>(var_1.x, min(-2147483647i, 2147483647i) ^ -var_0.x, global2.x), select(vec3<bool>(select(true, arg_1, false), false, arg_0), vec3<bool>(all(vec3<bool>(false, true, true)), arg_1 & arg_0, !arg_0), all(global3[_wgslsmith_index_u32(85345u, 29u)]) != false)));
    global3 = array<vec4<bool>, 29>();
    return Struct_1(any(select(select(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_0, true)), true)), false, var_0.zzx, vec4<bool>(false, any(select(!vec2<bool>(arg_1, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false)), !arg_1)), false, arg_1), _wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1440f, -1045f))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec2_u32(countOneBits(~select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 15962u), arg_0.d.zx)), (firstTrailingBit(vec2<u32>(4294967295u, 15285u)) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(13729u, 13074u), vec2<u32>(52852u, 1u)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_clamp_u32(1u, 21697u, 35453u >> (1u % 32u)), ~firstLeadingBit(6395u)) % vec2<u32>(32u)));
    let var_1 = ~vec2<u32>(abs(1476u), ~var_0.x);
    let var_2 = func_2(!(1u >= ~_wgslsmith_dot_vec2_u32(var_1, vec2<u32>(var_1.x, 4294967295u))), true, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 529u, var_0.x, var_1.x), vec4<u32>(0u, 0u, 1u, var_0.x)), _wgslsmith_sub_u32(1u, var_0.x)), ~vec4<u32>(max(var_0.x, 24540u), _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x)), 4294967295u, 1u)), -18373i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(495f)) * var_2.e), 327f, arg_0.e));
    var var_4 = !any(vec3<bool>(true, true, arg_0.d.x));
    return var_3.xy;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1883f);
    global3 = array<vec4<bool>, 29>();
    global3 = array<vec4<bool>, 29>();
    global0 = array<Struct_2, 31>();
    global2 = arg_0.c.xx;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0.a, false, vec4<u32>(0u, 3112u, 4294967295u, 4294967295u), 2147483647i), 1494f <= var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 872f) * vec2<f32>(-470f, var_0))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.e, var_0), vec2<f32>(arg_0.e, -1035f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.e, -554f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-471f)), -1000f), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(true, true, vec3<i32>(66549i, -11904i, global2.x) | vec3<i32>(14155i, u_input.a, global2.x), select(global3[_wgslsmith_index_u32(15408u, 29u)], vec4<bool>(true, true, false, false), false), _wgslsmith_div_f32(-867f, -423f)))), vec2<bool>(true, true)))));
    let var_1 = any(!vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, true)), true != all(global3[_wgslsmith_index_u32(42528u, 29u)]), false));
    var var_2 = func_2(true, !(!(countOneBits(7309u) == select(1u, 4294967295u, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(51988u, 13086u), vec2<u32>(0u, 50986u)), 1u), abs(select(101190u, 1u, true)), abs(8137u), 14105u), vec4<u32>(firstTrailingBit(0u), 1u, 58482u << (1u % 32u), 0u)), u_input.a ^ -32426i);
    global0 = array<Struct_2, 31>();
    var var_3 = Struct_1(var_1, true, max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-9524i, 2147483647i, 0i), abs(var_2.c), vec3<i32>(var_2.c.x, var_2.c.x, 1i) << (vec3<u32>(4294967295u, 27370u, 103332u) % vec3<u32>(32u))) | var_2.c, var_2.c), !select(vec4<bool>(true, all(vec2<bool>(var_1, false)), true, var_1 | true), !func_2(var_2.a, var_2.b, vec4<u32>(49190u, 63192u, 12550u, 1u), u_input.a).d, var_1), 1492f);
    let var_4 = ~firstLeadingBit(select(select(vec3<u32>(1u, 1u, 16272u), vec3<u32>(80433u, 0u, 101321u), vec3<bool>(var_1, var_1, true)), vec3<u32>(1u, 1u, 1u), !var_2.d.wyz)) >> (~select(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), abs(~vec3<u32>(1u, 18627u, 45437u)), !(!var_1)) % vec3<u32>(32u));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e * _wgslsmith_f_op_f32(f32(-1f) * -791f)) * var_3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f * 318f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(981f, var_0.x)))) * 923f)));
    global2 = -vec2<i32>(~func_2(true, true, vec4<u32>(133079u, 1u, var_4.x, var_4.x) << (vec4<u32>(4294967295u, var_4.x, 93207u, 42157u) % vec4<u32>(32u)), ~u_input.a).c.x, _wgslsmith_div_i32(-53520i | _wgslsmith_mod_i32(global2.x, 12950i), var_3.c.x | _wgslsmith_mult_i32(global2.x, -28466i)));
    let var_6 = global0[_wgslsmith_index_u32(var_4.x >> (min(var_4.x, _wgslsmith_mod_u32(~var_4.x, 1u)) % 32u), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, 4294967295u ^ (var_4.x >> (abs(_wgslsmith_mult_u32(var_4.x, 8397u)) % 32u)), ~min(var_4.xz, ~max(vec2<u32>(var_4.x, var_4.x), var_4.zy)), min(firstLeadingBit(_wgslsmith_clamp_vec2_i32(var_3.c.xx, vec2<i32>(var_2.c.x, global2.x), vec2<i32>(-2147483647i, u_input.a))), var_3.c.xy) | var_3.c.yx, var_6.c.xy);
}

