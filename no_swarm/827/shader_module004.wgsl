struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(true, Struct_3(Struct_1(false, -2551f, 37648u, vec4<i32>(-1i, 544i, 19072i, 1i))), Struct_3(Struct_1(true, 980f, 51076u, vec4<i32>(1i, 40528i, 18420i, 0i))), Struct_1(true, -796f, 1u, vec4<i32>(-8309i, -51416i, 22407i, 59726i)), Struct_1(false, 1452f, 24403u, vec4<i32>(-1i, 25677i, i32(-2147483648), 42696i))), Struct_5(true, Struct_3(Struct_1(true, 247f, 0u, vec4<i32>(-49732i, -2600i, 0i, 12582i))), Struct_3(Struct_1(false, -1108f, 683u, vec4<i32>(i32(-2147483648), 2147483647i, 10351i, i32(-2147483648)))), Struct_1(true, 199f, 0u, vec4<i32>(i32(-2147483648), -10753i, 48568i, 1i)), Struct_1(false, -1321f, 1u, vec4<i32>(0i, 0i, -30881i, -10099i))), Struct_5(false, Struct_3(Struct_1(true, 1985f, 10226u, vec4<i32>(-17378i, 41111i, 2147483647i, 6800i))), Struct_3(Struct_1(false, 463f, 54476u, vec4<i32>(1i, 17429i, 0i, 1i))), Struct_1(false, 615f, 1409u, vec4<i32>(i32(-2147483648), 3015i, -1i, -54927i)), Struct_1(true, 1000f, 14637u, vec4<i32>(61410i, 30243i, -3181i, 22215i))), Struct_5(true, Struct_3(Struct_1(true, 1000f, 1u, vec4<i32>(2147483647i, -4663i, -41119i, 1i))), Struct_3(Struct_1(true, -600f, 0u, vec4<i32>(i32(-2147483648), -1i, 0i, 28794i))), Struct_1(false, -674f, 1u, vec4<i32>(0i, -22244i, -64739i, i32(-2147483648))), Struct_1(true, -851f, 12674u, vec4<i32>(1i, 0i, 2147483647i, 2951i))), Struct_5(true, Struct_3(Struct_1(false, 959f, 4294967295u, vec4<i32>(-30549i, i32(-2147483648), -15136i, 12199i))), Struct_3(Struct_1(false, -268f, 76764u, vec4<i32>(50687i, -46185i, 0i, 0i))), Struct_1(false, 1603f, 11690u, vec4<i32>(50070i, i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(false, -343f, 1u, vec4<i32>(42021i, 6431i, 23715i, 3333i))), Struct_5(true, Struct_3(Struct_1(false, 510f, 15260u, vec4<i32>(-23831i, -34128i, 73434i, 2147483647i))), Struct_3(Struct_1(true, 1070f, 51142u, vec4<i32>(32515i, 1i, -31514i, i32(-2147483648)))), Struct_1(true, -1000f, 1u, vec4<i32>(-3828i, -18888i, 49627i, -36368i)), Struct_1(false, 1270f, 13338u, vec4<i32>(2147483647i, 0i, 2147483647i, -1363i))), Struct_5(false, Struct_3(Struct_1(true, 1797f, 58364u, vec4<i32>(-48299i, 0i, -1i, -22081i))), Struct_3(Struct_1(true, 351f, 0u, vec4<i32>(1i, -1i, 802i, i32(-2147483648)))), Struct_1(false, 539f, 0u, vec4<i32>(60918i, -33234i, 8354i, -1i)), Struct_1(true, 1370f, 0u, vec4<i32>(-46494i, 10244i, 2147483647i, 2147483647i))), Struct_5(true, Struct_3(Struct_1(false, 156f, 53709u, vec4<i32>(0i, -1i, 2147483647i, -1i))), Struct_3(Struct_1(false, 840f, 4294967295u, vec4<i32>(-35794i, 0i, -24165i, i32(-2147483648)))), Struct_1(true, 157f, 13177u, vec4<i32>(-35432i, 2147483647i, -1i, 25835i)), Struct_1(false, 244f, 0u, vec4<i32>(-43930i, i32(-2147483648), 13041i, 2147483647i))), Struct_5(true, Struct_3(Struct_1(true, 1460f, 0u, vec4<i32>(i32(-2147483648), -84248i, -5380i, 18769i))), Struct_3(Struct_1(false, 1367f, 1u, vec4<i32>(-1i, -58371i, 2147483647i, 35616i))), Struct_1(false, 1756f, 4294967295u, vec4<i32>(2147483647i, 24835i, 0i, i32(-2147483648))), Struct_1(true, -1070f, 1213u, vec4<i32>(-6291i, i32(-2147483648), 2147483647i, 0i))), Struct_5(true, Struct_3(Struct_1(true, 557f, 4294967295u, vec4<i32>(-5706i, 2147483647i, 18294i, 1i))), Struct_3(Struct_1(true, -130f, 443u, vec4<i32>(-46484i, 13267i, i32(-2147483648), -1i))), Struct_1(true, 1226f, 40275u, vec4<i32>(0i, 0i, -33406i, 0i)), Struct_1(false, 2472f, 8513u, vec4<i32>(-1i, -6929i, -13547i, i32(-2147483648)))), Struct_5(false, Struct_3(Struct_1(false, -1000f, 36693u, vec4<i32>(0i, i32(-2147483648), -1i, -7089i))), Struct_3(Struct_1(false, -421f, 0u, vec4<i32>(1i, 1439i, 0i, 26313i))), Struct_1(true, 1085f, 88821u, vec4<i32>(-30469i, 37315i, -18660i, 2147483647i)), Struct_1(false, 874f, 5192u, vec4<i32>(-48048i, 2147483647i, i32(-2147483648), 1i))), Struct_5(false, Struct_3(Struct_1(false, -1572f, 44421u, vec4<i32>(i32(-2147483648), 0i, 44090i, 0i))), Struct_3(Struct_1(true, 155f, 96787u, vec4<i32>(1i, 2351i, 1i, 43378i))), Struct_1(false, -815f, 4294967295u, vec4<i32>(1i, -1i, i32(-2147483648), -15079i)), Struct_1(true, -554f, 43627u, vec4<i32>(0i, 2147483647i, 1i, -38898i))), Struct_5(true, Struct_3(Struct_1(false, -1027f, 4294967295u, vec4<i32>(0i, 38602i, 16056i, 22593i))), Struct_3(Struct_1(true, -2112f, 0u, vec4<i32>(0i, 12718i, 0i, 1i))), Struct_1(false, -873f, 23496u, vec4<i32>(2147483647i, -1i, -38600i, 0i)), Struct_1(false, 1388f, 0u, vec4<i32>(672i, -25938i, 0i, 2147483647i))), Struct_5(true, Struct_3(Struct_1(true, -260f, 1u, vec4<i32>(-20968i, 2147483647i, -12754i, -1i))), Struct_3(Struct_1(true, -403f, 581u, vec4<i32>(14645i, -286i, -58267i, -1i))), Struct_1(true, -1000f, 4294967295u, vec4<i32>(3914i, 2755i, -12245i, 2147483647i)), Struct_1(true, -683f, 18356u, vec4<i32>(2147483647i, 3405i, -1i, i32(-2147483648)))), Struct_5(true, Struct_3(Struct_1(true, 973f, 67559u, vec4<i32>(-22672i, 42347i, -2059i, 45615i))), Struct_3(Struct_1(true, -315f, 4294967295u, vec4<i32>(1i, 0i, 2147483647i, 1i))), Struct_1(true, 223f, 29155u, vec4<i32>(-27648i, -27033i, -1i, 1i)), Struct_1(true, 662f, 1u, vec4<i32>(-1i, 2147483647i, 0i, 1942i))), Struct_5(false, Struct_3(Struct_1(false, 1533f, 1u, vec4<i32>(1i, -33606i, 1i, 1i))), Struct_3(Struct_1(true, -1654f, 34146u, vec4<i32>(2147483647i, 12104i, 28592i, -1i))), Struct_1(false, 341f, 0u, vec4<i32>(1i, 0i, 13286i, 2147483647i)), Struct_1(false, 358f, 69991u, vec4<i32>(-1i, -26404i, 1i, -24278i))), Struct_5(true, Struct_3(Struct_1(false, 1000f, 51072u, vec4<i32>(59965i, i32(-2147483648), -53633i, 28792i))), Struct_3(Struct_1(true, 1000f, 4294967295u, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 14941i))), Struct_1(true, 299f, 37266u, vec4<i32>(-76133i, 0i, -13975i, 20069i)), Struct_1(true, 650f, 1u, vec4<i32>(2147483647i, 1i, 2147483647i, -17579i))), Struct_5(true, Struct_3(Struct_1(true, 203f, 1u, vec4<i32>(170i, 2147483647i, i32(-2147483648), 19451i))), Struct_3(Struct_1(false, 572f, 12682u, vec4<i32>(-11903i, -1i, i32(-2147483648), 14901i))), Struct_1(true, 443f, 1u, vec4<i32>(i32(-2147483648), 14086i, 0i, 2147483647i)), Struct_1(true, -751f, 0u, vec4<i32>(4669i, 2147483647i, 1i, -2637i))), Struct_5(false, Struct_3(Struct_1(true, 964f, 47437u, vec4<i32>(i32(-2147483648), -32546i, -52780i, 22295i))), Struct_3(Struct_1(true, -1000f, 1u, vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)))), Struct_1(false, 1000f, 33365u, vec4<i32>(-13143i, 56519i, 0i, 2147483647i)), Struct_1(false, 501f, 1u, vec4<i32>(34664i, 10083i, 8072i, 1i))));

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(true, 1000f, 1u, vec4<i32>(62629i, -16945i, 2147483647i, 1i))), Struct_3(Struct_1(false, 467f, 1u, vec4<i32>(0i, -51338i, -26969i, 0i))), Struct_3(Struct_1(true, 1534f, 0u, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i))), Struct_3(Struct_1(false, 1000f, 41286u, vec4<i32>(-4805i, 39200i, -10984i, 19206i))), Struct_3(Struct_1(false, 436f, 0u, vec4<i32>(-1i, 0i, i32(-2147483648), 11377i))), Struct_3(Struct_1(false, -1000f, 46107u, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i))), Struct_3(Struct_1(false, -175f, 36020u, vec4<i32>(0i, -2130i, 1i, -1i))), Struct_3(Struct_1(false, -129f, 1u, vec4<i32>(60277i, 6063i, -31187i, 2665i))), Struct_3(Struct_1(true, 2276f, 16208u, vec4<i32>(-1i, -28529i, 2147483647i, -49428i))));

var<private> global2: array<vec2<i32>, 20>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<Struct_5, 19>();
    global2 = array<vec2<i32>, 20>();
    let var_0 = Struct_4(Struct_1(27945u <= u_input.b.x, -1474f, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 5149u), ~0u), firstTrailingBit(max(-vec4<i32>(-2147483647i, -1i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, -1i)))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(step(var_0.a.b, -1497f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(-var_0.a.b)) * 1666f), _wgslsmith_f_op_f32(abs(var_0.a.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b - 556f), _wgslsmith_div_f32(var_0.a.b, var_0.a.b), _wgslsmith_f_op_f32(select(-1271f, 1000f, false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-111f, 121f, var_0.a.b), vec3<f32>(var_0.a.b, var_0.a.b, var_0.a.b))) * vec3<f32>(845f, -234f, -408f)))));
    global0 = array<Struct_5, 19>();
    return arg_0;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = !select(vec3<bool>(true, 1i != (-1i >> (arg_0 % 32u)), false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, ~arg_0 <= (arg_0 >> (1u % 32u))));
    let var_1 = var_0;
    var var_2 = func_3(max(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-17710i, -37142i, -58501i, -13162i), vec4<i32>(0i, 1i, -20376i, 0i))), abs(max(1i, -2147483647i))));
    let var_3 = Struct_4(Struct_1(var_1.x, _wgslsmith_f_op_f32(999f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1201f - 906f), _wgslsmith_f_op_f32(f32(-1f) * -677f), var_1.x))), 33472u, vec4<i32>(_wgslsmith_sub_i32(-1i >> (arg_0 % 32u), -53054i), _wgslsmith_clamp_i32(max(-1i, -72030i), 1i, -2147483647i), _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, -6097i), ~0i), (i32(-1i) * -2147483647i) >> (u_input.a.x % 32u))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~var_3.a.c), u_input.b.xz), 19u)];
    return !select(vec3<bool>(true, !(!var_0.x), -1i != (17107i | var_4.e.d.x)), vec3<bool>(!(180f >= var_3.a.b), var_3.a.a, false), !var_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = select(7509u, 4294967295u, !(_wgslsmith_add_u32(u_input.b.x ^ 1u, ~u_input.a.x) != u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = firstTrailingBit(~abs(~(u_input.a.x & u_input.a.x)));
    global2 = array<vec2<i32>, 20>();
    let var_3 = arg_0.x;
    return Struct_4(Struct_1(false, _wgslsmith_f_op_f32(select(1875f, 287f, all(arg_1.zx))), 0u, firstLeadingBit(countOneBits(max(vec4<i32>(0i, -40116i, -6758i, -3475i), vec4<i32>(-1i, -1i, 41710i, -40091i))))));
}

fn func_1() -> u32 {
    let var_0 = 35972i;
    let var_1 = func_4(func_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(~4294967295u, ~u_input.b.x), 1u)), select(vec3<bool>((var_0 > var_0) & true, min(var_0, var_0) > abs(var_0), true), vec3<bool>(true, true, true), true));
    let var_2 = var_1.a.d.x;
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(select(var_1.a.c, var_1.a.c << (u_input.a.x % 32u), all(vec4<bool>(false, var_1.a.a, true, var_1.a.a))), min(var_1.a.c, 0u)), ~4294967295u, 1u, ~(~var_1.a.c) | 0u), u_input.b);
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b))));
    return 25114u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(u_input.b.x | func_1(), 20u)], _wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(~4294967295u, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -6813i), i32(-1i) * -8419i, abs(59620i)) | min(-11981i, i32(-1i) * -26690i)), -2147483647i, -2147483647i);
    var_0 = -(_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), vec4<i32>(2147483647i, -var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), var_0.ywx), -1i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, reverseBits(-2147483647i), var_0.x, 11251i), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, var_0.x, 32115i, -758i), vec4<i32>(37658i, var_0.x, 0i, var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -552f);
    var var_2 = Struct_4(func_4(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, func_2(firstTrailingBit(u_input.b.x)).x, func_2(u_input.a.x).x)).a);
    global0 = array<Struct_5, 19>();
    global0 = array<Struct_5, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yyw);
}

