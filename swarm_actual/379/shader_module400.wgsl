struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec3<f32>(1368f, -1026f, 393f), vec2<f32>(1572f, -241f), vec4<i32>(i32(-2147483648), 0i, 30077i, 2147483647i)), Struct_1(vec3<f32>(-933f, 1000f, 900f), vec2<f32>(204f, -1000f), vec4<i32>(17573i, 16757i, 9921i, 0i)), Struct_2(Struct_1(vec3<f32>(1000f, -286f, -2216f), vec2<f32>(-327f, -762f), vec4<i32>(-12175i, 0i, 19745i, 30285i)), -31770i), Struct_1(vec3<f32>(-391f, 2622f, -999f), vec2<f32>(-1761f, 1000f), vec4<i32>(1i, 2147483647i, -17960i, i32(-2147483648)))), Struct_3(Struct_1(vec3<f32>(-1000f, 459f, -617f), vec2<f32>(-1168f, -378f), vec4<i32>(778i, 0i, 0i, 0i)), Struct_1(vec3<f32>(1639f, -1459f, 1515f), vec2<f32>(1211f, 1125f), vec4<i32>(0i, 0i, 11589i, -1i)), Struct_2(Struct_1(vec3<f32>(1576f, 1522f, 1027f), vec2<f32>(-1451f, -128f), vec4<i32>(2147483647i, -1i, 0i, -15018i)), -7184i), Struct_1(vec3<f32>(1000f, 1049f, -272f), vec2<f32>(-159f, 1074f), vec4<i32>(-5898i, -30252i, 5258i, 71192i))), Struct_3(Struct_1(vec3<f32>(-190f, -337f, 1288f), vec2<f32>(-384f, -871f), vec4<i32>(2147483647i, 1i, -8797i, -1i)), Struct_1(vec3<f32>(-759f, -1456f, -1701f), vec2<f32>(2259f, 615f), vec4<i32>(i32(-2147483648), 36597i, 0i, 8534i)), Struct_2(Struct_1(vec3<f32>(-1240f, -257f, 787f), vec2<f32>(-2216f, 624f), vec4<i32>(1i, 1i, -60705i, -4146i)), i32(-2147483648)), Struct_1(vec3<f32>(725f, 340f, 647f), vec2<f32>(567f, 1698f), vec4<i32>(1i, 1i, 14119i, 2147483647i))), Struct_3(Struct_1(vec3<f32>(157f, 374f, -1408f), vec2<f32>(810f, -146f), vec4<i32>(-1i, -1i, -37802i, i32(-2147483648))), Struct_1(vec3<f32>(-1461f, -596f, 801f), vec2<f32>(-1428f, -293f), vec4<i32>(-1i, 0i, 0i, -20804i)), Struct_2(Struct_1(vec3<f32>(-121f, -1701f, 956f), vec2<f32>(824f, -209f), vec4<i32>(31777i, -68637i, -1i, i32(-2147483648))), 2147483647i), Struct_1(vec3<f32>(-1817f, 264f, -886f), vec2<f32>(-746f, -132f), vec4<i32>(1i, 2147483647i, -8951i, 19818i))), Struct_3(Struct_1(vec3<f32>(-1030f, 1478f, 299f), vec2<f32>(1436f, 1000f), vec4<i32>(-50840i, 2147483647i, -57438i, 0i)), Struct_1(vec3<f32>(-2005f, 197f, 153f), vec2<f32>(1220f, 1559f), vec4<i32>(20023i, -33681i, 49i, 1i)), Struct_2(Struct_1(vec3<f32>(202f, 1144f, -185f), vec2<f32>(2647f, -149f), vec4<i32>(1i, -20177i, 33730i, 25425i)), 22912i), Struct_1(vec3<f32>(-399f, 987f, -1675f), vec2<f32>(-318f, -551f), vec4<i32>(-1i, -18133i, 81729i, -16997i))), Struct_3(Struct_1(vec3<f32>(696f, 389f, -904f), vec2<f32>(546f, -1225f), vec4<i32>(1i, 18734i, 25562i, 49959i)), Struct_1(vec3<f32>(-448f, 890f, -209f), vec2<f32>(-1060f, 1901f), vec4<i32>(-37851i, -53008i, i32(-2147483648), 29321i)), Struct_2(Struct_1(vec3<f32>(951f, 142f, -1464f), vec2<f32>(-309f, -274f), vec4<i32>(40733i, 11311i, i32(-2147483648), 46275i)), 11308i), Struct_1(vec3<f32>(1000f, -1512f, -772f), vec2<f32>(-1434f, -391f), vec4<i32>(1i, 0i, -1470i, -4280i))), Struct_3(Struct_1(vec3<f32>(647f, -1000f, -414f), vec2<f32>(1937f, -218f), vec4<i32>(2147483647i, -30510i, 1i, i32(-2147483648))), Struct_1(vec3<f32>(1065f, -526f, -1236f), vec2<f32>(514f, -719f), vec4<i32>(i32(-2147483648), 0i, 0i, -14722i)), Struct_2(Struct_1(vec3<f32>(-833f, -1000f, 420f), vec2<f32>(1719f, -1000f), vec4<i32>(-22417i, 2257i, -40550i, -5603i)), 0i), Struct_1(vec3<f32>(1776f, -1442f, -1062f), vec2<f32>(1330f, -1470f), vec4<i32>(1i, -11461i, 17313i, 1i))), Struct_3(Struct_1(vec3<f32>(-1727f, -925f, -167f), vec2<f32>(527f, -1066f), vec4<i32>(0i, -3835i, -1i, -1i)), Struct_1(vec3<f32>(2234f, 1008f, 1293f), vec2<f32>(-489f, 1528f), vec4<i32>(14566i, 0i, -4273i, 0i)), Struct_2(Struct_1(vec3<f32>(769f, 1515f, -295f), vec2<f32>(486f, 685f), vec4<i32>(-1i, 45330i, -25507i, -22990i)), i32(-2147483648)), Struct_1(vec3<f32>(-1185f, -1479f, 989f), vec2<f32>(-1686f, -481f), vec4<i32>(14024i, -1i, 5209i, 0i))));

var<private> global2: bool = true;

var<private> global3: vec4<f32> = vec4<f32>(1544f, -1714f, -1000f, 1260f);

var<private> global4: array<vec3<f32>, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global1 = array<Struct_3, 8>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_vec3_f32(-global3.xzz))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global4[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec3_f32(abs(global3.zwz)))), global3.zy, -vec4<i32>(_wgslsmith_sub_i32(75625i, -5348i), -1i, -1i, u_input.d | -1i)), Struct_1(global3.xww, global3.zz, ~_wgslsmith_clamp_vec4_i32(~u_input.c, countOneBits(vec4<i32>(u_input.d, 1800i, u_input.a.x, u_input.d)), vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, u_input.c.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, global3.x, -487f))) - global3.zxz), global3.ww, _wgslsmith_div_vec4_i32(-u_input.c, vec4<i32>(0i, u_input.a.x, 28734i, u_input.c.x))), u_input.c.x & 9441i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.ywz * global3.wzy)) + _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 984f, 646f), vec3<f32>(global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3.x, 194f), _wgslsmith_f_op_f32(-global3.x)) + global3.ww), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, 2147483647i, -2147483647i, 41614i)) & max(vec4<i32>(u_input.a.x, -5998i, u_input.c.x, u_input.d), u_input.c), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -9787i), vec4<i32>(-2147483647i, u_input.a.x, u_input.d, 6611i), vec4<i32>(2147483647i, 33587i, 8157i, u_input.a.x)))));
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_f32(var_1.b.x + var_0.a.a.x);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(2019u, u_input.b), ~41117u), 0u) >> (_wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(0u, 30347u, u_input.b, u_input.b))), max(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, 51248u, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(75313u, 0u, u_input.b, 1u)))) % 32u), 8u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f + 784f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1054f, -110f, false)))) + -420f)));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(464f, _wgslsmith_f_op_f32(select(563f, 450f, true))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(344f, arg_0)))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(~27182u, 13u)] + vec3<f32>(arg_0, global3.x, global3.x))))), _wgslsmith_f_op_vec2_f32(-global3.yw), -u_input.c);
    global4 = array<vec3<f32>, 13>();
    let var_1 = var_0;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(round(494f))) + -680f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(min(1688f, 1000f)))), _wgslsmith_f_op_f32(var_1.a.x + arg_0)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -167f, global3.x, global3.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-841f, 1870f, -471f, 1430f) - vec4<f32>(arg_0, -1937f, var_1.a.x, 1331f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1660f, 1154f, -1000f) - vec4<f32>(506f, global3.x, global3.x, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1847f, var_1.b.x, -679f, 1251f)))));
    return vec3<i32>(var_0.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(var_0.c.x, var_0.c.x, 2147483647i, var_0.c.x))), vec4<i32>(~0i, var_0.c.x | var_1.c.x, select(-19857i, 1734i, false), 2147483647i)), ~vec4<i32>(-var_1.c.x, abs(1i), ~var_0.c.x, _wgslsmith_add_i32(-64616i, -61995i))), -_wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_1.c.x, var_1.c.x, -2147483647i, var_1.c.x))), abs(1i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(arg_0.x, arg_2)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), global0[_wgslsmith_index_u32(0u, 6u)])), arg_2), u_input.d, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), firstTrailingBit(u_input.c))), ~u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.zx, global0[_wgslsmith_index_u32(min(~1u, 1u), 6u)]), -arg_0.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), select(arg_2 | arg_0.x, -18105i, select(true, arg_1, arg_1))), ~(~u_input.d)));
    let var_1 = ~(~u_input.b);
    let var_2 = select(~select(_wgslsmith_add_vec3_u32(vec3<u32>(4477u, 34656u, 4294967295u), vec3<u32>(4395u, u_input.b, var_1)), ~vec3<u32>(u_input.b, 34627u, u_input.b), select(vec3<bool>(false, arg_1, true), vec3<bool>(false, false, true), vec3<bool>(false, arg_1, false))), vec3<u32>(min(var_1, ~var_1), ~4294967295u, _wgslsmith_mult_u32(~38866u, ~u_input.b)), true) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~(~25776u), abs(var_1), ~1u), vec3<u32>(abs(33308u << (var_1 % 32u)), u_input.b, u_input.b)) % vec3<u32>(32u));
    var_0 = u_input.c;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-599f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1280f))), -847f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -572f))), -(~u_input.c));
    return Struct_2(var_3, 21670i);
}

fn func_1() -> Struct_2 {
    return func_4(_wgslsmith_div_vec3_i32(-min(vec3<i32>(1i, u_input.c.x, u_input.c.x), func_2(global3.x)), u_input.c.wwx), false, abs(~func_2(-1044f).x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-940f + global3.x), 354f))), arg_1.a.b, arg_1.a.c);
    let var_1 = var_0.a.x;
    var var_2 = true;
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(-1f), -1000f, global3.x);
    let var_3 = global3.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.a.x - 514f))))));
    return vec3<u32>(1u, u_input.b, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 13>();
    let var_0 = u_input.d;
    var var_1 = global3.yx;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((~vec3<u32>(21543u, u_input.b, 0u) | _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 57183u, u_input.b)), abs(vec3<u32>(1u, u_input.b, 1u)))) ^ func_5(~(vec4<u32>(4294967295u, u_input.b, 119388u, 1u) | vec4<u32>(u_input.b, 1u, 12098u, 44527u)), func_1()), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, 1u), countOneBits(vec3<u32>(u_input.b, 33302u, 60682u))))), 8u)];
    var var_3 = vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(all(vec2<bool>(true, true)), true, select(true, false, false), true)) & !(_wgslsmith_f_op_f32(global3.x * var_1.x) <= _wgslsmith_f_op_f32(f32(-1f) * -130f)));
    global0 = array<vec2<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 13509u, 52704u, 21597u) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), ~vec4<u32>(0u, u_input.b, u_input.b, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(1u, u_input.b), select(4356u, u_input.b, var_3.x), ~u_input.b), abs(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(474f, 416f)))), vec3<f32>(-443f, 1920f, 1233f), firstTrailingBit(vec2<u32>(select(_wgslsmith_add_u32(u_input.b, u_input.b), ~88120u, true), min(50814u, 1u))));
}

