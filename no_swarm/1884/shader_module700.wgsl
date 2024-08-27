struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec3<bool>(false, false, false), 2147483647i, vec2<f32>(-1243f, -858f), Struct_1(vec2<i32>(2783i, i32(-2147483648)), vec2<bool>(false, true), -257f), 2952u)), vec3<bool>(false, true, false), vec4<i32>(0i, 19514i, 1i, 5440i)), Struct_5(Struct_3(vec4<bool>(true, true, false, true), Struct_2(vec3<bool>(false, false, false), -28730i, vec2<f32>(-388f, -1000f), Struct_1(vec2<i32>(2147483647i, -10167i), vec2<bool>(false, true), -391f), 4294967295u)), vec3<bool>(false, false, false), vec4<i32>(2147483647i, -25374i, 26866i, 2147483647i)), Struct_5(Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec3<bool>(false, false, false), -40090i, vec2<f32>(-484f, 716f), Struct_1(vec2<i32>(1i, -1i), vec2<bool>(false, true), 1142f), 4294967295u)), vec3<bool>(true, true, true), vec4<i32>(-63508i, 0i, 1i, i32(-2147483648))), Struct_5(Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec3<bool>(false, false, false), 0i, vec2<f32>(-861f, -1098f), Struct_1(vec2<i32>(-10320i, 1i), vec2<bool>(true, false), -641f), 54106u)), vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), -47798i, 87492i)), Struct_5(Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec3<bool>(false, false, false), i32(-2147483648), vec2<f32>(-270f, 611f), Struct_1(vec2<i32>(6357i, -1i), vec2<bool>(false, false), -1000f), 6093u)), vec3<bool>(false, true, true), vec4<i32>(-9658i, 2147483647i, i32(-2147483648), -7522i)), Struct_5(Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec3<bool>(true, false, false), 1i, vec2<f32>(1043f, -654f), Struct_1(vec2<i32>(34706i, 49639i), vec2<bool>(false, true), 1000f), 32107u)), vec3<bool>(false, false, false), vec4<i32>(-40632i, -16912i, -90637i, -5601i)), Struct_5(Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec3<bool>(false, false, true), 6319i, vec2<f32>(700f, 2711f), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(true, true), -424f), 96851u)), vec3<bool>(true, true, false), vec4<i32>(21438i, 0i, 1i, 1i)), Struct_5(Struct_3(vec4<bool>(false, false, true, false), Struct_2(vec3<bool>(true, true, true), 2147483647i, vec2<f32>(-314f, 494f), Struct_1(vec2<i32>(-38821i, i32(-2147483648)), vec2<bool>(false, true), -1365f), 48163u)), vec3<bool>(false, true, true), vec4<i32>(0i, 5696i, 2147483647i, 42023i)), Struct_5(Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec3<bool>(false, true, false), -42776i, vec2<f32>(-1438f, -328f), Struct_1(vec2<i32>(-19061i, -10081i), vec2<bool>(true, true), 227f), 1u)), vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 13769i, -10618i, 20425i)), Struct_5(Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec3<bool>(true, false, false), 33809i, vec2<f32>(-1189f, -1411f), Struct_1(vec2<i32>(0i, -1660i), vec2<bool>(false, false), 1668f), 25158u)), vec3<bool>(false, false, false), vec4<i32>(-32168i, i32(-2147483648), 2147483647i, 76623i)), Struct_5(Struct_3(vec4<bool>(false, true, false, true), Struct_2(vec3<bool>(true, false, true), -53561i, vec2<f32>(1750f, -772f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true), 620f), 0u)), vec3<bool>(true, false, true), vec4<i32>(50194i, 8964i, -2949i, 15288i)), Struct_5(Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec3<bool>(true, false, true), 1i, vec2<f32>(-1666f, -142f), Struct_1(vec2<i32>(7852i, 2147483647i), vec2<bool>(false, true), -1000f), 1u)), vec3<bool>(false, true, true), vec4<i32>(-72253i, 2147483647i, i32(-2147483648), -1i)), Struct_5(Struct_3(vec4<bool>(false, true, true, false), Struct_2(vec3<bool>(false, true, true), 1i, vec2<f32>(579f, -939f), Struct_1(vec2<i32>(47205i, -1i), vec2<bool>(false, false), -218f), 0u)), vec3<bool>(false, false, true), vec4<i32>(-21923i, 8234i, -9155i, 75503i)), Struct_5(Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec3<bool>(false, false, false), 39493i, vec2<f32>(133f, 2438f), Struct_1(vec2<i32>(56301i, i32(-2147483648)), vec2<bool>(false, true), -528f), 4294967295u)), vec3<bool>(false, false, true), vec4<i32>(0i, 35072i, -1i, i32(-2147483648))), Struct_5(Struct_3(vec4<bool>(true, false, true, true), Struct_2(vec3<bool>(true, true, true), 80159i, vec2<f32>(-1470f, 1000f), Struct_1(vec2<i32>(-1i, 49384i), vec2<bool>(true, true), -370f), 59513u)), vec3<bool>(true, false, true), vec4<i32>(0i, 14562i, 64363i, 16558i)), Struct_5(Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec3<bool>(true, false, false), 0i, vec2<f32>(1061f, -1000f), Struct_1(vec2<i32>(2147483647i, -1682i), vec2<bool>(true, false), 943f), 10278u)), vec3<bool>(true, true, false), vec4<i32>(-1i, 2147483647i, -1i, 0i)), Struct_5(Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(true, true, true), 1i, vec2<f32>(425f, -1112f), Struct_1(vec2<i32>(23185i, -23861i), vec2<bool>(false, false), -283f), 1u)), vec3<bool>(true, false, true), vec4<i32>(12623i, -12286i, i32(-2147483648), 0i)), Struct_5(Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(true, false, true), 0i, vec2<f32>(-1059f, 990f), Struct_1(vec2<i32>(71286i, 0i), vec2<bool>(true, false), 806f), 65059u)), vec3<bool>(true, true, true), vec4<i32>(9276i, -36525i, 2147483647i, -1i)), Struct_5(Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec3<bool>(true, false, false), 2147483647i, vec2<f32>(-741f, 325f), Struct_1(vec2<i32>(44098i, -11301i), vec2<bool>(false, true), 982f), 59037u)), vec3<bool>(false, false, true), vec4<i32>(-5722i, 1i, 1i, -1i)), Struct_5(Struct_3(vec4<bool>(true, true, false, false), Struct_2(vec3<bool>(false, false, true), -22383i, vec2<f32>(-1000f, -382f), Struct_1(vec2<i32>(-12733i, 1i), vec2<bool>(true, true), -1260f), 0u)), vec3<bool>(false, false, true), vec4<i32>(-8168i, 2516i, -6156i, i32(-2147483648))), Struct_5(Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec3<bool>(true, false, false), 10277i, vec2<f32>(-940f, 1000f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), 1355f), 0u)), vec3<bool>(true, true, true), vec4<i32>(39172i, 0i, 1i, -1i)), Struct_5(Struct_3(vec4<bool>(true, true, true, false), Struct_2(vec3<bool>(false, false, true), -1i, vec2<f32>(-255f, 1154f), Struct_1(vec2<i32>(-26005i, -19356i), vec2<bool>(false, false), 402f), 4294967295u)), vec3<bool>(true, false, true), vec4<i32>(-5681i, -9082i, 0i, -1i)), Struct_5(Struct_3(vec4<bool>(false, false, true, true), Struct_2(vec3<bool>(false, true, true), 36068i, vec2<f32>(-1000f, -699f), Struct_1(vec2<i32>(11807i, 2147483647i), vec2<bool>(false, true), 610f), 10773u)), vec3<bool>(true, true, true), vec4<i32>(-2453i, 0i, 2147483647i, 21231i)), Struct_5(Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec3<bool>(true, false, true), 14666i, vec2<f32>(507f, -1417f), Struct_1(vec2<i32>(-1067i, -50005i), vec2<bool>(false, true), 1188f), 0u)), vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 49661i, 0i, -3802i)), Struct_5(Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec3<bool>(false, true, true), -3530i, vec2<f32>(2428f, 570f), Struct_1(vec2<i32>(-25917i, -1i), vec2<bool>(true, false), 849f), 59003u)), vec3<bool>(false, true, false), vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i)), Struct_5(Struct_3(vec4<bool>(false, true, false, false), Struct_2(vec3<bool>(false, false, true), i32(-2147483648), vec2<f32>(1000f, 758f), Struct_1(vec2<i32>(8258i, 0i), vec2<bool>(true, false), 827f), 45348u)), vec3<bool>(true, false, true), vec4<i32>(-20598i, 15034i, -10084i, 1i)), Struct_5(Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec3<bool>(true, true, false), -25974i, vec2<f32>(1034f, -1501f), Struct_1(vec2<i32>(0i, 1i), vec2<bool>(false, false), 122f), 138836u)), vec3<bool>(true, false, true), vec4<i32>(0i, 2147483647i, -1i, 10012i)), Struct_5(Struct_3(vec4<bool>(false, false, false, false), Struct_2(vec3<bool>(false, false, true), -1i, vec2<f32>(584f, 474f), Struct_1(vec2<i32>(-1i, 34770i), vec2<bool>(false, true), -1226f), 0u)), vec3<bool>(true, true, false), vec4<i32>(5296i, 0i, 2147483647i, 21196i)), Struct_5(Struct_3(vec4<bool>(true, true, true, false), Struct_2(vec3<bool>(false, true, true), 1i, vec2<f32>(-525f, 542f), Struct_1(vec2<i32>(0i, -10115i), vec2<bool>(false, true), -1781f), 11289u)), vec3<bool>(false, false, false), vec4<i32>(0i, 1i, -5393i, -16293i)));

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(reverseBits(vec2<i32>(u_input.b.x, (-1i >> (u_input.d % 32u)) ^ -u_input.a)), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(vec2<bool>(true, u_input.a >= 14856i), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), false), -389f);
    let var_1 = _wgslsmith_div_i32(-5017i, var_0.a.x);
    let var_2 = !(!select(vec4<bool>(var_0.c != -249f, true, false, any(vec3<bool>(true, false, var_0.b.x))), select(!vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<bool>(true, true, var_0.b.x, true), !var_0.b.x), true));
    global0 = array<Struct_5, 29>();
    global0 = array<Struct_5, 29>();
    return 2147483647i;
}

fn func_2(arg_0: Struct_5) -> vec3<u32> {
    global1 = _wgslsmith_mod_i32(func_3(), -3469i);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1650f, -1557f, arg_0.a.b.d.c, -617f))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.b.d.c, 1079f, arg_0.b.x)), _wgslsmith_f_op_f32(round(1558f)), 115f, 1327f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 1000f, arg_0.a.b.d.c, 241f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-151f, arg_0.a.b.c.x, arg_0.a.b.c.x, arg_0.a.b.c.x))), !arg_0.a.a))))));
    global1 = 10203i;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-461f, 336f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1542f + 947f))), select(any(vec4<bool>(arg_0.a.b.a.x, false, arg_0.a.b.a.x, arg_0.b.x)), all(arg_0.b), arg_0.a.a.x || true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b.d.c))), -174f)) + var_0.yw);
    global0 = array<Struct_5, 29>();
    return vec3<u32>(u_input.e, _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.d), abs(_wgslsmith_div_u32(u_input.e | 25366u, u_input.c)), arg_0.a.b.e), ~_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(0u, 4294967295u, arg_0.a.b.e, arg_0.a.b.e)), select(vec4<u32>(u_input.d, arg_0.a.b.e, arg_0.a.b.e, 0u), vec4<u32>(48605u, 0u, 0u, 4294967295u), arg_0.a.a), vec4<bool>(arg_0.a.a.x, false, true, arg_0.b.x)), ~(~vec4<u32>(arg_0.a.b.e, 19384u, arg_0.a.b.e, 96116u))));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_2(vec3<bool>(true, true, true), u_input.b.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 73499u, 479u) >> (func_2(Struct_5(Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(true, false, true), -38090i, vec2<f32>(941f, 532f), Struct_1(u_input.b.yw, vec2<bool>(false, true), -1000f), 17424u)), vec3<bool>(true, false, true), vec4<i32>(u_input.a, -23168i, 0i, -56632i))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 51300u), ~vec3<u32>(u_input.c, u_input.d, 18553u))) % 32u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-799f, -1139f) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1616f, 1375f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, -366f) + vec2<f32>(347f, -525f))))), Struct_1(~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.b.yy)), vec2<bool>(select(u_input.d == u_input.d, true, true), true), 893f), select(select(1u, firstTrailingBit(_wgslsmith_mult_u32(96072u, u_input.e)), all(vec3<bool>(true, false, true))), u_input.c, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = vec2<bool>(!all(!(!var_0.a.yy)), var_0.d.b.x);
    var var_2 = ~1u;
    var_2 = ~(_wgslsmith_mult_u32(5950u, ~var_0.e) | (_wgslsmith_clamp_u32(4294967295u, ~var_0.e, u_input.d) >> (~4294967295u % 32u)));
    let var_3 = select(vec4<bool>(false, !(var_0.d.a.x >= _wgslsmith_sub_i32(-37191i, -31887i)), true, any(select(vec4<bool>(var_0.a.x, var_1.x, true, var_1.x), select(vec4<bool>(var_0.d.b.x, true, var_0.a.x, false), vec4<bool>(var_0.d.b.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, false)), vec4<bool>(false, false, var_0.a.x, var_0.a.x)))), !(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, var_0.a.x, false, true), var_0.d.b.x), false)), !any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -1749f, var_0.d.c), vec4<f32>(var_0.c.x, 704f, -302f, var_0.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(542f, var_0.d.c, -1000f, 431f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2940f))), _wgslsmith_div_f32(1810f, var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - var_0.d.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x * var_0.d.c), -249f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -2147483647i) & (u_input.a & -2147483647i), _wgslsmith_dot_vec2_i32(u_input.b.yw | vec2<i32>(u_input.a, -59807i), -vec2<i32>(1i, u_input.b.x))), _wgslsmith_mod_i32(u_input.a, u_input.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -10996i), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(13844i, u_input.b.x)), abs(vec2<i32>(u_input.b.x, -1i) << (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))))));
    let var_1 = -950f;
    global1 = u_input.b.x;
    var var_2 = Struct_3(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true))), Struct_2(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)), -1496f > var_1, any(vec4<bool>(false, false, false, true))), -firstTrailingBit(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1145f, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, 868f) + vec2<f32>(334f, 441f))))), Struct_1(-(~u_input.b.wx), vec2<bool>(false, true), var_1), ~u_input.d));
    global1 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    var var_3 = Struct_5(Struct_3(select(vec4<bool>(!var_2.b.a.x, all(var_2.b.a.zz), true, all(var_2.b.a)), var_2.a, any(!var_2.a)), Struct_2(select(!var_2.b.a, var_2.a.zwx, !var_2.b.a), -8071i, vec2<f32>(_wgslsmith_f_op_f32(var_2.b.c.x + var_1), _wgslsmith_f_op_f32(var_1 * 663f)), var_2.b.d, 48206u)), var_2.b.a, vec4<i32>(1i, ~_wgslsmith_clamp_i32(-var_2.b.d.a.x, u_input.b.x, _wgslsmith_mult_i32(var_2.b.d.a.x, -1i)), _wgslsmith_mult_i32(0i, -_wgslsmith_add_i32(var_2.b.d.a.x, var_2.b.b)), min(~(-17107i), -20714i)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), var_3.a.b.c.x), -1487f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1378f)), _wgslsmith_f_op_f32(840f - var_3.a.b.c.x)))))));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.c, u_input.b.xyw, vec4<u32>(1u, 21395u, 1u, 0u), reverseBits(countOneBits(vec3<u32>(~var_3.a.b.e, var_2.b.e, ~var_5))), vec2<u32>(func_2(Struct_5(var_3.a, var_3.b, vec4<i32>(var_2.b.d.a.x, u_input.a, u_input.a, var_3.c.x))).x & countOneBits(var_3.a.b.e & 40303u), ~_wgslsmith_mod_u32(var_2.b.e, 0u)));
}

