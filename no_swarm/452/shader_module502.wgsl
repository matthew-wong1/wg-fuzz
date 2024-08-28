struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec3<bool>(true, false, false), -603f, vec4<i32>(0i, -16304i, 2147483647i, 2147483647i), Struct_2(Struct_1(-19347i, vec3<bool>(false, true, false), vec4<i32>(86403i, 35135i, 0i, -40158i), vec2<f32>(-631f, -124f)), vec2<u32>(4294967295u, 28745u), vec2<bool>(false, false), -764f, vec3<bool>(false, false, false)), vec2<bool>(false, false)), Struct_4(vec3<bool>(false, true, false), 394f, vec4<i32>(-1335i, -13394i, -6437i, -1i), Struct_2(Struct_1(i32(-2147483648), vec3<bool>(false, false, true), vec4<i32>(37516i, 1i, 1i, 0i), vec2<f32>(308f, 285f)), vec2<u32>(52389u, 19015u), vec2<bool>(true, false), -1000f, vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_4(vec3<bool>(false, true, false), -517f, vec4<i32>(-1i, -6322i, 46161i, i32(-2147483648)), Struct_2(Struct_1(-32874i, vec3<bool>(true, true, true), vec4<i32>(19151i, 4880i, 1i, -13117i), vec2<f32>(-745f, -145f)), vec2<u32>(28211u, 4294967295u), vec2<bool>(false, true), 209f, vec3<bool>(false, true, false)), vec2<bool>(false, false)), Struct_4(vec3<bool>(true, false, false), 538f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 2147483647i), Struct_2(Struct_1(-26733i, vec3<bool>(false, false, false), vec4<i32>(0i, -32759i, 6326i, 0i), vec2<f32>(305f, 560f)), vec2<u32>(660u, 83471u), vec2<bool>(true, true), -577f, vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_4(vec3<bool>(true, false, true), 398f, vec4<i32>(-54375i, 0i, 67958i, -21438i), Struct_2(Struct_1(50547i, vec3<bool>(false, false, false), vec4<i32>(2147483647i, 59899i, i32(-2147483648), -49661i), vec2<f32>(1836f, 1023f)), vec2<u32>(24265u, 0u), vec2<bool>(true, false), -455f, vec3<bool>(false, true, false)), vec2<bool>(true, true)), Struct_4(vec3<bool>(false, false, false), 888f, vec4<i32>(i32(-2147483648), 3877i, 1252i, 0i), Struct_2(Struct_1(1i, vec3<bool>(true, true, true), vec4<i32>(0i, -1i, -7520i, 1i), vec2<f32>(280f, -809f)), vec2<u32>(38714u, 1u), vec2<bool>(true, true), 769f, vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_4(vec3<bool>(true, false, false), 2143f, vec4<i32>(-1836i, 2147483647i, 0i, 16286i), Struct_2(Struct_1(21444i, vec3<bool>(true, true, true), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i), vec2<f32>(-1932f, -1000f)), vec2<u32>(1u, 0u), vec2<bool>(false, true), 1559f, vec3<bool>(true, true, true)), vec2<bool>(false, true)), Struct_4(vec3<bool>(true, true, false), -2194f, vec4<i32>(-1i, -17523i, 24262i, 0i), Struct_2(Struct_1(0i, vec3<bool>(true, true, false), vec4<i32>(-1i, -1i, -29443i, 0i), vec2<f32>(739f, 1015f)), vec2<u32>(57312u, 4294967295u), vec2<bool>(true, false), -392f, vec3<bool>(false, false, true)), vec2<bool>(false, false)), Struct_4(vec3<bool>(true, false, true), -671f, vec4<i32>(26759i, 2147483647i, -51369i, i32(-2147483648)), Struct_2(Struct_1(2565i, vec3<bool>(true, true, false), vec4<i32>(10686i, 2147483647i, 0i, -1i), vec2<f32>(-606f, 1000f)), vec2<u32>(92554u, 66399u), vec2<bool>(true, true), -1140f, vec3<bool>(false, false, false)), vec2<bool>(false, false)), Struct_4(vec3<bool>(true, false, true), 280f, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i), Struct_2(Struct_1(1i, vec3<bool>(true, true, false), vec4<i32>(1i, 1561i, -49990i, -1i), vec2<f32>(-289f, 500f)), vec2<u32>(56997u, 1u), vec2<bool>(false, false), -1570f, vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_4(vec3<bool>(false, true, true), -1015f, vec4<i32>(8691i, 0i, 18701i, 56340i), Struct_2(Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec4<i32>(70736i, -85594i, 2147483647i, -1i), vec2<f32>(-1525f, 382f)), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), -443f, vec3<bool>(true, true, false)), vec2<bool>(false, true)), Struct_4(vec3<bool>(true, true, true), -1454f, vec4<i32>(0i, -10911i, 2147483647i, -1i), Struct_2(Struct_1(51017i, vec3<bool>(false, true, false), vec4<i32>(-1i, -1i, 1249i, -36493i), vec2<f32>(199f, -1483f)), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), -785f, vec3<bool>(true, false, false)), vec2<bool>(false, true)), Struct_4(vec3<bool>(true, true, true), -343f, vec4<i32>(41614i, -28132i, 21786i, -56801i), Struct_2(Struct_1(0i, vec3<bool>(false, true, false), vec4<i32>(-37719i, i32(-2147483648), 1i, 30249i), vec2<f32>(667f, 625f)), vec2<u32>(16543u, 4294967295u), vec2<bool>(false, false), -1000f, vec3<bool>(false, true, true)), vec2<bool>(true, false)), Struct_4(vec3<bool>(false, true, true), 1550f, vec4<i32>(i32(-2147483648), 0i, -13041i, -11851i), Struct_2(Struct_1(-50120i, vec3<bool>(false, true, true), vec4<i32>(-46374i, -24227i, -5582i, 328i), vec2<f32>(-343f, -900f)), vec2<u32>(0u, 11285u), vec2<bool>(true, false), 1000f, vec3<bool>(false, true, false)), vec2<bool>(false, true)), Struct_4(vec3<bool>(true, false, false), -511f, vec4<i32>(-11670i, 2147483647i, 10264i, 0i), Struct_2(Struct_1(2902i, vec3<bool>(true, false, true), vec4<i32>(0i, -1i, 2147483647i, -43404i), vec2<f32>(-1853f, 664f)), vec2<u32>(20634u, 44727u), vec2<bool>(true, false), 1464f, vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_4(vec3<bool>(true, false, false), -133f, vec4<i32>(-1i, 2147483647i, 1i, 703i), Struct_2(Struct_1(-1i, vec3<bool>(true, true, true), vec4<i32>(8107i, -33078i, -1i, i32(-2147483648)), vec2<f32>(-160f, 849f)), vec2<u32>(4294967295u, 53662u), vec2<bool>(true, false), -556f, vec3<bool>(false, false, true)), vec2<bool>(false, false)), Struct_4(vec3<bool>(false, false, false), -670f, vec4<i32>(-34053i, 0i, -1i, -1i), Struct_2(Struct_1(-37628i, vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), 1i, 11730i, -1753i), vec2<f32>(1621f, 323f)), vec2<u32>(42392u, 0u), vec2<bool>(false, false), 876f, vec3<bool>(true, true, false)), vec2<bool>(true, false)), Struct_4(vec3<bool>(false, false, true), 499f, vec4<i32>(2147483647i, -4354i, 2147483647i, i32(-2147483648)), Struct_2(Struct_1(55155i, vec3<bool>(true, true, false), vec4<i32>(1i, 32771i, 0i, i32(-2147483648)), vec2<f32>(-1274f, 471f)), vec2<u32>(4294967295u, 111678u), vec2<bool>(false, true), -1067f, vec3<bool>(false, false, false)), vec2<bool>(false, true)), Struct_4(vec3<bool>(false, false, false), 565f, vec4<i32>(9158i, 0i, 2147483647i, 52453i), Struct_2(Struct_1(-67133i, vec3<bool>(false, false, false), vec4<i32>(-20195i, 1i, -1i, -2918i), vec2<f32>(-1222f, 1192f)), vec2<u32>(4294967295u, 60098u), vec2<bool>(false, false), -556f, vec3<bool>(false, false, true)), vec2<bool>(true, false)), Struct_4(vec3<bool>(true, false, true), -372f, vec4<i32>(3575i, 41958i, 5300i, -808i), Struct_2(Struct_1(-1i, vec3<bool>(true, false, false), vec4<i32>(21389i, -21993i, 21690i, 0i), vec2<f32>(1312f, -644f)), vec2<u32>(0u, 26521u), vec2<bool>(true, true), -1417f, vec3<bool>(true, false, true)), vec2<bool>(true, false)), Struct_4(vec3<bool>(true, true, true), 617f, vec4<i32>(-1i, 2147483647i, 0i, -1i), Struct_2(Struct_1(-10152i, vec3<bool>(false, false, true), vec4<i32>(-5250i, 2147483647i, 2147483647i, 0i), vec2<f32>(-1621f, 1122f)), vec2<u32>(0u, 7272u), vec2<bool>(false, true), 2709f, vec3<bool>(true, true, true)), vec2<bool>(false, true)));

var<private> global2: array<f32, 30> = array<f32, 30>(-763f, 948f, -1050f, 141f, 1380f, 298f, -1219f, -326f, -1237f, -1272f, -199f, -1466f, 2537f, 275f, 498f, -635f, 1487f, -1441f, -520f, -1292f, -1000f, 1209f, -1000f, -643f, 1764f, -1099f, -1557f, -1183f, 319f, -654f);

var<private> global3: array<Struct_4, 27>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 5454u, 12654u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 27048u, 38883u), vec4<u32>(48452u, u_input.b.x, 117125u, u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32576u, u_input.b.x, 26059u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, 16598u)), ~u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(7950u, 60917u)))), vec4<u32>(firstLeadingBit(57286u), 0u, u_input.b.x, countOneBits(~67292u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(55242u, ~23972u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x ^ u_input.b.x), 1u), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, ~4294967295u), u_input.b.x, (u_input.b.x ^ u_input.b.x) << (u_input.b.x % 32u), ~min(u_input.b.x, 4294967295u)));
    global2 = array<f32, 30>();
    let var_1 = Struct_4(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), vec3<bool>(all(vec3<bool>(false, false, true)), !(var_0.x < 1u), true), all(vec3<bool>(all(vec3<bool>(true, true, true)), 1u > var_0.x, all(vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~0u, 45659u), _wgslsmith_mult_u32(var_0.x, u_input.b.x) ^ u_input.b.x), 19u)]), vec4<i32>(~min(~43063i, firstLeadingBit(79275i)), (u_input.a << (27782u % 32u)) << (0u % 32u), min(-(~(-1i)), countOneBits(firstTrailingBit(u_input.a))), -1i), Struct_2(Struct_1(u_input.a, vec3<bool>(true, true, true), vec4<i32>(min(-9484i, -1i), ~u_input.a, 2147483647i, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-150f, global2[_wgslsmith_index_u32(50277u, 30u)]))))), (vec2<u32>(13559u, var_0.x) & (vec2<u32>(var_0.x, var_0.x) | vec2<u32>(u_input.b.x, var_0.x))) & abs(var_0.zz), vec2<bool>(true, true), -569f, vec3<bool>(true, true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global2 = array<f32, 30>();
    var var_2 = select(vec2<bool>(all(vec3<bool>(-8982i <= var_1.c.x, any(vec3<bool>(var_1.a.x, true, false)), var_1.e.x)), var_1.d.a.b.x), vec2<bool>(true, false), !var_1.d.c);
    return var_1.e.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec3<bool> {
    let var_0 = -1i;
    global3 = array<Struct_4, 27>();
    var var_1 = _wgslsmith_sub_vec3_u32(arg_0, firstLeadingBit(~arg_0));
    global1 = array<Struct_4, 21>();
    var var_2 = arg_1;
    return vec3<bool>(var_2.c.x == !arg_2, select(arg_3, !arg_3, false), arg_2);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec3<u32> {
    global2 = array<f32, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(arg_0.a.b.x), arg_3.x >> (1u % 32u)), 19u)])), arg_0.a.d)));
    let var_1 = arg_0.a.a.b;
    var var_2 = ~41741u;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.d) + vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 30u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(650f, 116f))))));
    return ~(~(~vec3<u32>(_wgslsmith_mult_u32(arg_3.x, u_input.b.x), 7062u, _wgslsmith_dot_vec2_u32(u_input.b, arg_0.a.b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = func_5(Struct_3(Struct_2(Struct_1(12734i, arg_0.ywz, ~vec4<i32>(u_input.a, u_input.a, u_input.a, -17264i), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 713f) * vec2<f32>(696f, 874f))), vec2<u32>(select(arg_1.x, 29497u, false), ~arg_1.x), arg_0.xw, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -705f)), func_4(~arg_1.yzx, Struct_2(Struct_1(19253i, arg_0.yxx, vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec2<f32>(global2[_wgslsmith_index_u32(0u, 30u)], -345f)), arg_1.wx, vec2<bool>(arg_0.x, arg_0.x), 427f, arg_0.xzz), func_3(), any(arg_0))), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), !arg_0.yw, vec2<i32>(1i, countOneBits(~(-1i))), arg_1);
    global1 = array<Struct_4, 21>();
    let var_1 = Struct_4(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, func_3(), false & arg_0.x), false), -1000f, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, ~0i), _wgslsmith_clamp_i32(14629i, u_input.a, -1i) & u_input.a), -2147483647i, -51896i, -reverseBits(u_input.a)), Struct_2(Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(36932i, 76189i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -46871i, u_input.a), vec4<i32>(u_input.a, -11055i, u_input.a, u_input.a))), arg_0.wyy, ~vec4<i32>(-3099i, -2458i, u_input.a, 26020i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), -1917f)), u_input.b, vec2<bool>(!arg_0.x, ~u_input.a > min(u_input.a, u_input.a)), _wgslsmith_f_op_f32(1072f - 1212f), !vec3<bool>(global2[_wgslsmith_index_u32(46039u, 30u)] >= -176f, !arg_0.x, var_0.x >= u_input.b.x)), select(select(!arg_0.xz, vec2<bool>(false, false), arg_0.xx), !vec2<bool>(arg_0.x, false | arg_0.x), !(arg_1.x >= 1u)));
    global0 = array<f32, 19>();
    var var_2 = vec4<u32>(u_input.b.x, 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x | 4294967295u, 33649u, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(var_0.x, 0u, var_0.x) ^ vec3<u32>(13481u, arg_1.x, 30185u))), reverseBits(var_1.d.b.x));
    return arg_0;
}

fn func_1() -> u32 {
    global0 = array<f32, 19>();
    global1 = array<Struct_4, 21>();
    let var_0 = !(!select(vec4<bool>(true, true, true, true), func_2(vec4<bool>(true, true, true, true), ~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), vec4<bool>(any(vec4<bool>(true, true, false, false)), u_input.b.x != u_input.b.x, true, true)));
    var var_1 = Struct_2(Struct_1(reverseBits(-1i ^ max(u_input.a, 0i)), var_0.www, max(abs(vec4<i32>(0i, 0i, u_input.a, u_input.a)) & vec4<i32>(u_input.a, u_input.a, -15644i, -41956i), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, u_input.a, 23498i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(215f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec2<f32>(global2[_wgslsmith_index_u32(11292u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)])) - _wgslsmith_div_vec2_f32(vec2<f32>(1124f, global2[_wgslsmith_index_u32(0u, 30u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(34354u, 19u)])))))), u_input.b, vec2<bool>(all(!var_0), (true & func_4(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(Struct_1(-28078i, vec3<bool>(var_0.x, false, var_0.x), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec2<f32>(-484f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), u_input.b, var_0.yw, global0[_wgslsmith_index_u32(956u, 19u)], var_0.zxz), var_0.x, var_0.x).x) & var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -576f)))), var_0.zwx);
    let var_2 = -185f;
    return ~max(~17345u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 21>();
    let var_0 = abs(func_1());
    let var_1 = reverseBits(_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a << (u_input.b.x % 32u), -6899i, 1i), min(~vec3<i32>(u_input.a, 50639i, u_input.a), reverseBits(vec3<i32>(u_input.a, u_input.a, 2147483647i)))), abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, 28692i)), u_input.a, 32505i))));
    global3 = array<Struct_4, 27>();
    global3 = array<Struct_4, 27>();
    var var_2 = global3[_wgslsmith_index_u32(var_0 << (_wgslsmith_add_u32(~(var_0 << (27852u % 32u)) ^ var_0, func_1()) % 32u), 27u)];
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-594f, var_2.b, -1013f, global2[_wgslsmith_index_u32(4294967295u, 30u)]))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1399f, -778f, global2[_wgslsmith_index_u32(1u, 30u)], 666f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(604f, -395f, global0[_wgslsmith_index_u32(76203u, 19u)], global2[_wgslsmith_index_u32(var_2.d.b.x, 30u)]) + vec4<f32>(-455f, var_2.b, global2[_wgslsmith_index_u32(0u, 30u)], -663f)) - vec4<f32>(-1167f, 890f, global2[_wgslsmith_index_u32(var_2.d.b.x, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)])) + vec4<f32>(global2[_wgslsmith_index_u32(31512u, 30u)], -1618f, _wgslsmith_f_op_f32(f32(-1f) * -452f), -1000f))));
}

