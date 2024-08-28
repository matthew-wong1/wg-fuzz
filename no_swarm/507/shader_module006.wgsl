struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(1i, -39718i, 27950i, i32(-2147483648))), Struct_1(vec4<i32>(-1001i, 2147483647i, 16225i, 1i)), Struct_1(vec4<i32>(2147483647i, 0i, 44694i, -1i)), Struct_1(vec4<i32>(-18557i, 1i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(14277i, -1i, 91018i, 0i)), Struct_1(vec4<i32>(-3570i, -1i, 2147483647i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 7678i, 36402i)), Struct_1(vec4<i32>(0i, 0i, -6182i, 1i)), Struct_1(vec4<i32>(2147483647i, 30922i, -33979i, 2147483647i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -11312i, 52462i)), Struct_1(vec4<i32>(i32(-2147483648), 17229i, -20124i, i32(-2147483648))), Struct_1(vec4<i32>(25654i, 4587i, 6097i, 22848i)), Struct_1(vec4<i32>(i32(-2147483648), 20627i, -7144i, 27457i)), Struct_1(vec4<i32>(17785i, 61747i, 10390i, 1i)), Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), 24205i)), Struct_1(vec4<i32>(31461i, -22147i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(i32(-2147483648), -24358i, 23968i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 31078i)), Struct_1(vec4<i32>(20242i, i32(-2147483648), 2147483647i, -6707i)), Struct_1(vec4<i32>(-1i, 1i, -1i, -49937i)), Struct_1(vec4<i32>(0i, 1i, 2147483647i, 1i)), Struct_1(vec4<i32>(36034i, i32(-2147483648), 0i, 18296i)));

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(40745u, vec4<f32>(1127f, -1869f, 1289f, 476f), Struct_1(vec4<i32>(0i, 1i, 1i, -22728i)), -1173f, Struct_3(Struct_1(vec4<i32>(0i, -9972i, -40777i, 1i)), 0u)), Struct_4(4294967295u, vec4<f32>(159f, -1520f, 1297f, 1052f), Struct_1(vec4<i32>(1i, -58114i, -17723i, 2147483647i)), -766f, Struct_3(Struct_1(vec4<i32>(-1i, -47721i, i32(-2147483648), -50325i)), 1u)), Struct_4(11880u, vec4<f32>(-1072f, -168f, 611f, -1000f), Struct_1(vec4<i32>(-46490i, 1i, 0i, -46795i)), -1000f, Struct_3(Struct_1(vec4<i32>(-21073i, 13634i, i32(-2147483648), i32(-2147483648))), 49333u)), Struct_4(1633u, vec4<f32>(-338f, -1000f, -1293f, -152f), Struct_1(vec4<i32>(-31062i, -42623i, i32(-2147483648), -1i)), -166f, Struct_3(Struct_1(vec4<i32>(-24263i, 1i, 0i, -1i)), 0u)), Struct_4(4294967295u, vec4<f32>(565f, -379f, 702f, 776f), Struct_1(vec4<i32>(-54027i, 0i, -9029i, -4421i)), 340f, Struct_3(Struct_1(vec4<i32>(-1i, 2147483647i, -5916i, -1i)), 27031u)), Struct_4(76083u, vec4<f32>(303f, 1000f, 198f, 1103f), Struct_1(vec4<i32>(1i, 2147483647i, 41077i, i32(-2147483648))), 1549f, Struct_3(Struct_1(vec4<i32>(-14710i, 2147483647i, 7694i, -37063i)), 0u)), Struct_4(26888u, vec4<f32>(-1102f, 1000f, -1547f, -913f), Struct_1(vec4<i32>(i32(-2147483648), 1450i, i32(-2147483648), 0i)), 108f, Struct_3(Struct_1(vec4<i32>(9929i, i32(-2147483648), i32(-2147483648), -1i)), 0u)), Struct_4(29275u, vec4<f32>(2313f, 1010f, 608f, -764f), Struct_1(vec4<i32>(1i, 255i, -46059i, 43370i)), -1000f, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 0i, -1054i, -5580i)), 0u)), Struct_4(13213u, vec4<f32>(660f, -348f, -1387f, -122f), Struct_1(vec4<i32>(1i, -25085i, -33731i, 0i)), -1000f, Struct_3(Struct_1(vec4<i32>(6384i, -1i, -26476i, 37134i)), 1u)), Struct_4(1u, vec4<f32>(173f, -101f, -709f, 1469f), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, 0i)), -1155f, Struct_3(Struct_1(vec4<i32>(-15257i, 2147483647i, i32(-2147483648), -1i)), 19164u)), Struct_4(14968u, vec4<f32>(-689f, 185f, 1000f, 962f), Struct_1(vec4<i32>(-18995i, 41805i, 20557i, -34462i)), 487f, Struct_3(Struct_1(vec4<i32>(-10949i, -33420i, 1i, 1i)), 67581u)), Struct_4(27756u, vec4<f32>(-228f, 247f, -516f, 177f), Struct_1(vec4<i32>(-26904i, -52339i, 1i, -8952i)), 460f, Struct_3(Struct_1(vec4<i32>(0i, -12181i, 2147483647i, -47793i)), 0u)), Struct_4(0u, vec4<f32>(-390f, 1568f, -1073f, 3111f), Struct_1(vec4<i32>(1i, 1i, 7164i, -8980i)), -1357f, Struct_3(Struct_1(vec4<i32>(-43511i, -18615i, 50344i, 2147483647i)), 49572u)), Struct_4(0u, vec4<f32>(694f, -1368f, -1049f, 976f), Struct_1(vec4<i32>(1i, 5955i, i32(-2147483648), -1i)), 417f, Struct_3(Struct_1(vec4<i32>(50034i, -10267i, 1i, -23128i)), 1u)), Struct_4(85272u, vec4<f32>(-640f, 290f, 621f, 1031f), Struct_1(vec4<i32>(30682i, -5515i, -1i, 0i)), -919f, Struct_3(Struct_1(vec4<i32>(-4123i, 1588i, -1809i, 9600i)), 1u)), Struct_4(0u, vec4<f32>(-1697f, 651f, -675f, 569f), Struct_1(vec4<i32>(32407i, 41290i, 104973i, 58959i)), -1323f, Struct_3(Struct_1(vec4<i32>(-45931i, 0i, 42374i, 1i)), 23896u)), Struct_4(0u, vec4<f32>(-210f, 1218f, -528f, 1000f), Struct_1(vec4<i32>(-31815i, -1272i, 1i, -33112i)), -829f, Struct_3(Struct_1(vec4<i32>(-69643i, 36190i, 16585i, 2147483647i)), 34997u)), Struct_4(14754u, vec4<f32>(1959f, 561f, -749f, 760f), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 0i)), 251f, Struct_3(Struct_1(vec4<i32>(0i, 1i, 0i, 42845i)), 0u)), Struct_4(106991u, vec4<f32>(767f, 2215f, -948f, -392f), Struct_1(vec4<i32>(19766i, 1i, 1719i, 0i)), -358f, Struct_3(Struct_1(vec4<i32>(13970i, 45789i, -12509i, 43044i)), 99341u)), Struct_4(74127u, vec4<f32>(235f, -354f, 507f, 695f), Struct_1(vec4<i32>(12627i, 1i, 1i, -26028i)), 282f, Struct_3(Struct_1(vec4<i32>(25176i, 2147483647i, -1i, -61303i)), 0u)), Struct_4(87058u, vec4<f32>(1465f, -404f, 897f, 1226f), Struct_1(vec4<i32>(15701i, i32(-2147483648), 0i, -16468i)), -1678f, Struct_3(Struct_1(vec4<i32>(0i, -51715i, -15505i, 57041i)), 38625u)), Struct_4(4294967295u, vec4<f32>(-1348f, -410f, 1255f, 405f), Struct_1(vec4<i32>(1325i, -4680i, -5375i, i32(-2147483648))), 1372f, Struct_3(Struct_1(vec4<i32>(2147483647i, 50486i, -16651i, -21814i)), 34931u)), Struct_4(0u, vec4<f32>(-1100f, 226f, 627f, 216f), Struct_1(vec4<i32>(0i, i32(-2147483648), -10264i, 18275i)), -592f, Struct_3(Struct_1(vec4<i32>(2147483647i, -1i, -31467i, i32(-2147483648))), 40283u)), Struct_4(34965u, vec4<f32>(726f, -508f, -1606f, -356f), Struct_1(vec4<i32>(1783i, 31712i, -1i, 1i)), -1753f, Struct_3(Struct_1(vec4<i32>(-60263i, -47971i, 28013i, 2147483647i)), 9079u)), Struct_4(0u, vec4<f32>(-856f, 816f, 921f, -828f), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 12729i, 22469i)), -1544f, Struct_3(Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648))), 4294967295u)));

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), -65585i)), 1u), Struct_3(Struct_1(vec4<i32>(2622i, 35435i, i32(-2147483648), 2147483647i)), 67479u), Struct_3(Struct_1(vec4<i32>(48203i, i32(-2147483648), -1i, -1i)), 73824u), Struct_3(Struct_1(vec4<i32>(-4220i, 0i, 2147483647i, 15079i)), 34348u), Struct_3(Struct_1(vec4<i32>(0i, 1i, -50548i, -14200i)), 23950u), Struct_3(Struct_1(vec4<i32>(2147483647i, -36054i, 2147483647i, 1i)), 17261u), Struct_3(Struct_1(vec4<i32>(50271i, 1i, -1i, 2147483647i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -3931i, -37043i, -1i)), 20824u), Struct_3(Struct_1(vec4<i32>(-20868i, 14799i, i32(-2147483648), 1i)), 42244u), Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i)), 1207u), Struct_3(Struct_1(vec4<i32>(-34904i, -1i, 2147483647i, 26852i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 81447i, i32(-2147483648))), 21329u));

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(1i, -1i, -1364i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-60194i, 7316i, 55082i), vec3<i32>(1i, -1i, -8505i), vec3<i32>(-2925i, -9587i, -1i), vec3<i32>(25760i, 2147483647i, 46558i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(-8988i, -24826i, -20636i), vec3<i32>(-4803i, i32(-2147483648), -14609i), vec3<i32>(1i, -41233i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 16754i), vec3<i32>(-1i, -1i, -4158i), vec3<i32>(-1817i, 1i, 0i), vec3<i32>(i32(-2147483648), 53105i, 183i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    return -(~u_input.d.x);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec3<u32> {
    global1 = array<Struct_4, 25>();
    var var_0 = !(!(all(vec4<bool>(true, true, true, true)) && true));
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(21523u, 53473u, 53834u), vec3<u32>(arg_1.a, arg_1.a, 11646u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, arg_1.a, u_input.c), vec3<u32>(arg_1.a, arg_1.e.b, arg_1.e.b)), select(~vec3<u32>(4294967295u, 1u, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(41388u, 0u, 4294967295u), vec3<u32>(u_input.c, 1u, arg_1.a)), vec3<bool>(true, true, true))), ~vec3<u32>(~83758u, arg_1.a, firstTrailingBit(3730u)), ~(~max(vec3<u32>(0u, u_input.c, 0u), vec3<u32>(arg_1.a, arg_1.a, 65959u)))), Struct_1(arg_1.e.a.a));
    let var_2 = arg_1.c.a.xxw;
    var_0 = !(!(false || (var_1.a.x > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 0u, 0u), var_1.a))));
    return abs(min(vec3<u32>(u_input.c, 55994u | _wgslsmith_mult_u32(var_1.a.x, arg_1.e.b), _wgslsmith_clamp_u32(u_input.c >> (9995u % 32u), 1u, arg_1.a)), var_1.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_0 = func_4(_wgslsmith_clamp_i32(func_3(vec2<u32>(4294967295u, 14553u) >> (vec2<u32>(u_input.c, 100227u) % vec2<u32>(32u))), 43645i, arg_0.x), global1[_wgslsmith_index_u32(~(~reverseBits(u_input.c)) ^ u_input.c, 25u)]);
    let var_1 = abs(-_wgslsmith_sub_i32(func_3(var_0.yz & vec2<u32>(7046u, var_0.x)), abs(arg_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-411f, -664f, -507f, -695f))))))));
    return u_input.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_div_u32(func_2(global3[_wgslsmith_index_u32(~u_input.c, 14u)], true), 50026u), firstLeadingBit(~(~48238u)), arg_2.e.b), arg_2.e.a);
    let var_1 = vec4<bool>(!all(vec3<bool>(all(vec3<bool>(false, false, true)), -809f >= arg_2.b.x, true)), 445f < arg_2.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * arg_2.b.x)))) < 1000f, true);
    global1 = array<Struct_4, 25>();
    var var_2 = vec3<u32>(var_0.a.x, ~_wgslsmith_dot_vec2_u32(abs(select(var_0.a.zz, var_0.a.yx, var_1.zx)), firstTrailingBit(firstTrailingBit(var_0.a.yy))), 9717u);
    var var_3 = Struct_3(arg_2.e.a, ~var_0.a.x);
    return Struct_2(vec3<u32>(11459u, _wgslsmith_dot_vec3_u32(var_0.a | ~vec3<u32>(1u, 40020u, var_0.a.x), vec3<u32>(firstTrailingBit(var_3.b), ~u_input.c, 4294967295u)), 16601u), Struct_1(~vec4<i32>(arg_2.e.a.a.x, arg_2.c.a.x, ~arg_0.x, ~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 25>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_vec4_i32(-(~vec4<i32>(44840i, 66693i, 17755i, 1i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.d.x, 13362i, -1i))), _wgslsmith_mult_u32(78u, 5789u));
    var var_1 = func_1(var_0.a.a.xy, countOneBits(var_0.a.a.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~1u), 25u)]);
    var var_2 = Struct_2(~var_1.a, func_1(vec2<i32>((var_1.b.a.x | -4121i) & func_1(vec2<i32>(1i, var_0.a.a.x), 1i, global1[_wgslsmith_index_u32(69779u, 25u)]).b.a.x, var_0.a.a.x), _wgslsmith_add_i32(-_wgslsmith_add_i32(-45906i, var_1.b.a.x), firstTrailingBit(-1i) ^ var_1.b.a.x), Struct_4(u_input.c & (1u >> (var_0.b % 32u)), vec4<f32>(-1548f, _wgslsmith_f_op_f32(1711f + 587f), _wgslsmith_f_op_f32(594f * 289f), 194f), Struct_1(var_1.b.a ^ var_1.b.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1723f, 1000f)), global2[_wgslsmith_index_u32(~4294967295u << (var_0.b % 32u), 12u)])).b);
    var var_3 = ~_wgslsmith_sub_u32(~var_1.a.x, 1u);
    global3 = array<vec3<i32>, 14>();
    var var_4 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -var_2.b.a, var_1.b.a)), 63928u);
    var var_5 = reverseBits(select(2147483647i, firstTrailingBit(1i), !(true == select(true, true, true))));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f - 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a.a, var_4.a.a << (~vec4<u32>(var_1.a.x, 0u, 0u, 0u) % vec4<u32>(32u))), vec4<i32>(~reverseBits(u_input.b), firstTrailingBit(_wgslsmith_add_i32(-67686i, u_input.a.x)), var_2.b.a.x ^ _wgslsmith_dot_vec3_i32(var_0.a.a.xzy, vec3<i32>(-51979i, var_0.a.a.x, var_2.b.a.x)), var_1.b.a.x)), 479f, var_2.b.a.x, var_2.b.a.xyz);
}

