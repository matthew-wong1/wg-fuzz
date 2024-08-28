struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(vec2<f32>(-364f, -127f), -1i, -2523f), vec2<i32>(25879i, i32(-2147483648)), Struct_2(vec2<i32>(-17081i, 1i), vec2<i32>(i32(-2147483648), -10885i)), i32(-2147483648), vec2<u32>(13165u, 1u)), Struct_3(Struct_1(vec2<f32>(-1095f, 629f), i32(-2147483648), 213f), vec2<i32>(-72578i, 0i), Struct_2(vec2<i32>(-43893i, -12461i), vec2<i32>(i32(-2147483648), -59135i)), 0i, vec2<u32>(36965u, 78946u)), Struct_3(Struct_1(vec2<f32>(-116f, 611f), -10655i, 223f), vec2<i32>(7103i, 2600i), Struct_2(vec2<i32>(1i, -1i), vec2<i32>(31051i, -47i)), 7501i, vec2<u32>(31746u, 1u)), Struct_3(Struct_1(vec2<f32>(-630f, 177f), 31135i, 380f), vec2<i32>(-50105i, 0i), Struct_2(vec2<i32>(58412i, 18242i), vec2<i32>(1i, -36183i)), -32445i, vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(vec2<f32>(-2269f, -1076f), 33956i, -1787f), vec2<i32>(14644i, 2410i), Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(3234i, i32(-2147483648))), -3991i, vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(vec2<f32>(443f, 1000f), 33800i, 1407f), vec2<i32>(-12725i, 0i), Struct_2(vec2<i32>(2147483647i, -21342i), vec2<i32>(i32(-2147483648), 1i)), i32(-2147483648), vec2<u32>(0u, 0u)), Struct_3(Struct_1(vec2<f32>(1000f, -241f), 2147483647i, -1028f), vec2<i32>(i32(-2147483648), 95i), Struct_2(vec2<i32>(2147483647i, 3256i), vec2<i32>(1i, -1i)), -96473i, vec2<u32>(0u, 75649u)), Struct_3(Struct_1(vec2<f32>(650f, 1637f), -1932i, 994f), vec2<i32>(-13408i, 10536i), Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 54i)), 26959i, vec2<u32>(1377u, 56231u)), Struct_3(Struct_1(vec2<f32>(608f, -495f), -9977i, -1299f), vec2<i32>(3614i, -48271i), Struct_2(vec2<i32>(64922i, 1i), vec2<i32>(-13233i, 0i)), 55432i, vec2<u32>(54767u, 31249u)), Struct_3(Struct_1(vec2<f32>(795f, -892f), -25123i, 1000f), vec2<i32>(1i, i32(-2147483648)), Struct_2(vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -66574i)), 21861i, vec2<u32>(1u, 6750u)), Struct_3(Struct_1(vec2<f32>(-1597f, 1663f), -1i, 935f), vec2<i32>(33722i, -1i), Struct_2(vec2<i32>(-34915i, 2147483647i), vec2<i32>(1i, 1i)), -11i, vec2<u32>(38426u, 4294967295u)), Struct_3(Struct_1(vec2<f32>(225f, 370f), -41724i, 272f), vec2<i32>(-24140i, 0i), Struct_2(vec2<i32>(1i, 0i), vec2<i32>(1i, i32(-2147483648))), -1i, vec2<u32>(24479u, 1u)), Struct_3(Struct_1(vec2<f32>(1605f, -1727f), -1i, 700f), vec2<i32>(1i, -20011i), Struct_2(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(6256i, 1i)), -4937i, vec2<u32>(1u, 52102u)), Struct_3(Struct_1(vec2<f32>(-357f, -499f), 28662i, -1000f), vec2<i32>(i32(-2147483648), -25965i), Struct_2(vec2<i32>(2147483647i, -90850i), vec2<i32>(-465i, 24712i)), 2601i, vec2<u32>(1u, 0u)), Struct_3(Struct_1(vec2<f32>(684f, 1150f), -47146i, 1386f), vec2<i32>(-20157i, 1i), Struct_2(vec2<i32>(0i, 2147483647i), vec2<i32>(-28689i, -11715i)), 1i, vec2<u32>(47277u, 0u)), Struct_3(Struct_1(vec2<f32>(184f, 1011f), 56560i, 743f), vec2<i32>(i32(-2147483648), -1883i), Struct_2(vec2<i32>(0i, -26547i), vec2<i32>(-1i, -1i)), 0i, vec2<u32>(0u, 0u)), Struct_3(Struct_1(vec2<f32>(-845f, 1000f), -1i, 380f), vec2<i32>(-20176i, 0i), Struct_2(vec2<i32>(58120i, 2147483647i), vec2<i32>(16355i, 1164i)), i32(-2147483648), vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(vec2<f32>(649f, 733f), 1i, -959f), vec2<i32>(1i, 26124i), Struct_2(vec2<i32>(29382i, -1i), vec2<i32>(-37576i, 2147483647i)), 1i, vec2<u32>(1u, 87448u)), Struct_3(Struct_1(vec2<f32>(-897f, -182f), 54792i, -1357f), vec2<i32>(0i, -3923i), Struct_2(vec2<i32>(1143i, -27981i), vec2<i32>(0i, 40543i)), -49778i, vec2<u32>(56160u, 18474u)), Struct_3(Struct_1(vec2<f32>(1260f, -501f), 21197i, -407f), vec2<i32>(4451i, -92669i), Struct_2(vec2<i32>(1i, 33447i), vec2<i32>(-53440i, 2147483647i)), 1486i, vec2<u32>(0u, 0u)), Struct_3(Struct_1(vec2<f32>(-571f, -1548f), -41013i, 1137f), vec2<i32>(0i, i32(-2147483648)), Struct_2(vec2<i32>(0i, -30993i), vec2<i32>(925i, 7778i)), -8537i, vec2<u32>(0u, 0u)), Struct_3(Struct_1(vec2<f32>(-545f, 379f), -1i, -1461f), vec2<i32>(1i, -28005i), Struct_2(vec2<i32>(0i, -26698i), vec2<i32>(-1i, -1751i)), -1i, vec2<u32>(6037u, 0u)), Struct_3(Struct_1(vec2<f32>(-408f, -502f), -16432i, -307f), vec2<i32>(0i, -7662i), Struct_2(vec2<i32>(24255i, -550i), vec2<i32>(4020i, -55884i)), -1i, vec2<u32>(4294967295u, 0u)), Struct_3(Struct_1(vec2<f32>(-881f, -2266f), 1i, -1708f), vec2<i32>(i32(-2147483648), 9321i), Struct_2(vec2<i32>(-1i, -50116i), vec2<i32>(0i, -28669i)), 2147483647i, vec2<u32>(61171u, 19774u)), Struct_3(Struct_1(vec2<f32>(500f, 892f), -13023i, 303f), vec2<i32>(8289i, 1i), Struct_2(vec2<i32>(-1i, 61860i), vec2<i32>(2147483647i, 0i)), i32(-2147483648), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(vec2<f32>(-1313f, -374f), 1i, 737f), vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(vec2<i32>(1i, 1i), vec2<i32>(13832i, -25697i)), -1i, vec2<u32>(15826u, 1u)), Struct_3(Struct_1(vec2<f32>(758f, -1665f), 2147483647i, 462f), vec2<i32>(-11824i, -26791i), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(9102i, 0i)), 1i, vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(vec2<f32>(-1813f, 1255f), 47038i, 618f), vec2<i32>(-9722i, -14888i), Struct_2(vec2<i32>(2147483647i, -20651i), vec2<i32>(1234i, i32(-2147483648))), -1i, vec2<u32>(4294967295u, 30330u)));

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1046u), vec3<u32>(0u, 55170u, 5055u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 31535u, 1270u), vec3<u32>(4278u, 0u, 9449u), vec3<u32>(36784u, 4294967295u, 15459u), vec3<u32>(1u, 66390u, 1u), vec3<u32>(4294967295u, 66421u, 23923u), vec3<u32>(1u, 1u, 33393u), vec3<u32>(0u, 106434u, 0u), vec3<u32>(4294967295u, 66655u, 0u), vec3<u32>(4294967295u, 4294967295u, 9934u), vec3<u32>(23894u, 4122u, 104230u), vec3<u32>(22589u, 4294967295u, 1u), vec3<u32>(15823u, 3051u, 45720u), vec3<u32>(1u, 28912u, 0u), vec3<u32>(1u, 4294967295u, 59953u), vec3<u32>(42372u, 37966u, 4294967295u), vec3<u32>(11341u, 19082u, 0u), vec3<u32>(40891u, 12728u, 1u), vec3<u32>(26291u, 17731u, 25672u), vec3<u32>(1u, 36541u, 22493u), vec3<u32>(1u, 15575u, 4294967295u), vec3<u32>(0u, 25270u, 53766u), vec3<u32>(1u, 0u, 0u), vec3<u32>(30305u, 47248u, 23710u));

var<private> global2: array<bool, 7> = array<bool, 7>(false, true, true, true, true, true, true);

var<private> global3: vec2<i32>;

var<private> global4: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-205f, -440f, -892f), vec3<f32>(-319f, -513f, -900f), vec3<f32>(-382f, 730f, -1969f), vec3<f32>(1214f, 471f, -630f), vec3<f32>(440f, 1000f, 1021f), vec3<f32>(-1000f, -339f, -2076f), vec3<f32>(-1122f, -456f, -298f), vec3<f32>(210f, 555f, 847f), vec3<f32>(-143f, -488f, 737f), vec3<f32>(-671f, -948f, -184f), vec3<f32>(952f, -962f, -1720f), vec3<f32>(1675f, -2496f, 226f), vec3<f32>(-1000f, -1316f, 1180f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_div_f32(arg_0.a.a.x, -917f))), arg_0.a.c), global3.x, arg_0.a.c);
    var var_2 = -716f;
    var var_3 = 2147483647i;
    global4 = array<vec3<f32>, 13>();
    return all(!select(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(188u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], false), arg_0.b.x < -60003i), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.e.x, 7u)], false), true));
}

fn func_2() -> vec2<bool> {
    var var_0 = min(vec4<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(22790i, global3.x, 3732i), vec3<i32>(937i, 28835i, u_input.b)), select(vec3<i32>(36050i, -49941i, 2147483647i), vec3<i32>(0i, 1i, -8275i), global2[_wgslsmith_index_u32(1u, 7u)]) & -vec3<i32>(-10232i, global3.x, u_input.b)), _wgslsmith_add_i32(u_input.b, global3.x), -2147483647i, global3.x), ~vec4<i32>(global3.x, 0i, (-2147483647i >> (u_input.a % 32u)) << ((u_input.a & 1u) % 32u), abs(u_input.b) & min(-25030i, -1i)));
    let var_1 = vec3<i32>(u_input.b, -reverseBits(var_0.x) | u_input.b, global3.x);
    let var_2 = Struct_5(Struct_2(-(_wgslsmith_sub_vec2_i32(var_1.zy, var_0.ww) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), ~var_0.wx), global4[_wgslsmith_index_u32(u_input.a, 13u)]);
    let var_3 = vec4<bool>(all(!select(!vec3<bool>(false, global2[_wgslsmith_index_u32(46230u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], true, global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(11426u, 7u)], global2[_wgslsmith_index_u32(26970u, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(83008u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)])), func_3(Struct_3(Struct_1(vec2<f32>(var_2.b.x, -1462f), var_2.a.b.x, var_2.b.x), var_2.a.b, Struct_2(vec2<i32>(1i, var_1.x), var_1.zy), 1i, vec2<u32>(u_input.a, 48795u))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - var_2.b.x))) + var_2.b.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(812f)) * -1000f), !global2[_wgslsmith_index_u32(u_input.a | max(~u_input.a, u_input.a), 7u)]);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -877f)))) - var_2.b.zy), 5191i | u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-755f)), 1162f));
    return !select(var_3.zy, vec2<bool>(!all(vec3<bool>(global2[_wgslsmith_index_u32(52406u, 7u)], false, false)), any(vec4<bool>(var_3.x, true, true, global2[_wgslsmith_index_u32(4294967295u, 7u)]))), vec2<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 70461u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 7u)], true || var_3.x));
}

fn func_1() -> i32 {
    var var_0 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.a, 7u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4184u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), !global2[_wgslsmith_index_u32(18956u, 7u)]), vec2<bool>(_wgslsmith_f_op_f32(-554f + -146f) > _wgslsmith_f_op_f32(select(-1537f, 462f, true)), ~(-1i) <= (global3.x >> (u_input.a % 32u))), true);
    let var_1 = _wgslsmith_add_vec3_i32(-min(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, -2147483647i, u_input.b), vec3<i32>(0i, -19906i, 5120i))), vec3<i32>(1i, -1i, 0i)), ~(-vec3<i32>(_wgslsmith_div_i32(u_input.b, 6170i), -14078i, global3.x >> (30035u % 32u))));
    global1 = array<vec3<u32>, 27>();
    let var_2 = -1000f;
    let var_3 = func_2();
    return 1i;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec2<i32> {
    global1 = array<vec3<u32>, 27>();
    global1 = array<vec3<u32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-315f, -723f))));
    global1 = array<vec3<u32>, 27>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 22561u, ~38971u & u_input.a, _wgslsmith_clamp_u32(firstLeadingBit(u_input.a), max(u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_div_u32(u_input.a, u_input.a))), vec4<u32>(~(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], vec3<u32>(1u, 1u, 4277u)) ^ _wgslsmith_add_u32(u_input.a, 33036u)), (~85025u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(12080u, 50581u, u_input.a, u_input.a), vec4<u32>(23560u, 0u, 4294967295u, u_input.a))) ^ u_input.a, 56086u, abs(33406u))), 28u)];
    return select(var_1.b, _wgslsmith_mod_vec2_i32(select(arg_1.b, ~var_1.c.a >> (~var_1.e % vec2<u32>(32u)), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(16552u, 7u)], true), global2[_wgslsmith_index_u32(var_1.e.x, 7u)])), arg_1.a), any(!select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_1.e.x, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_1.e.x, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(var_1.e.x, 7u)]), global2[_wgslsmith_index_u32(u_input.a, 7u)])) | !any(vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_5 {
    global2 = array<bool, 7>();
    var var_0 = select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], !all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)]))), vec2<bool>(true, (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, 16664i), arg_1) <= (global3.x << (1u % 32u))) | global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 7u)]), !vec2<bool>(!(!global2[_wgslsmith_index_u32(10350u, 7u)]), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(563f)), -893f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(502f, -538f) - vec2<f32>(181f, 1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(574f, 676f), vec2<f32>(474f, -171f))))), 0i, -232f);
    let var_2 = false;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-322f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(904f, 515f))))), Struct_3(Struct_1(var_1.a, arg_1.x, _wgslsmith_f_op_f32(select(var_1.a.x, 107f, any(vec2<bool>(true, false))))), vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.b), Struct_2(-arg_1.xy, arg_0.a), -1i, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(60017u, u_input.a), vec2<u32>(1u, 0u)), vec2<u32>(u_input.a, abs(u_input.a)), vec2<u32>(~u_input.a, 1u))));
    return Struct_5(var_3.b.c, global4[_wgslsmith_index_u32(firstTrailingBit((var_3.b.e.x & var_3.b.e.x) | 8371u), 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(-(~_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, -23740i), vec2<i32>(u_input.b, -2147483647i))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(vec2<i32>(global3.x, -9029i))), func_4(func_1(), Struct_2(vec2<i32>(-1i, global3.x), vec2<i32>(2147483647i, global3.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 691i), vec2<i32>(global3.x, -35509i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(39144u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(93321u, u_input.a)) % vec2<u32>(32u)))), vec3<i32>(-global3.x, u_input.b, func_4(global3.x >> (u_input.a % 32u), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -20018i), vec2<i32>(2147483647i, 1i)), vec2<i32>(global3.x, -1i))).x));
    var var_1 = abs(reverseBits(vec2<u32>(~u_input.a, 12819u)) ^ abs(vec2<u32>(97507u, 0u)));
    let var_2 = var_0.b.yy;
    global4 = array<vec3<f32>, 13>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) * _wgslsmith_f_op_f32(var_2.x - var_0.b.x)), -882f) - var_2.x);
    global4 = array<vec3<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec2<u32>(u_input.a, var_1.x) | vec2<u32>(80275u, u_input.a))) | vec2<u32>(1u, 1u));
}

