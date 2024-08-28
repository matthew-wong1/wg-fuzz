struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, true, false, true, false, true, true, false, false);

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(1447f, vec4<u32>(35390u, 4294967295u, 4294967295u, 0u), Struct_1(vec3<f32>(-612f, 1123f, -1161f), 4294967295u, -182f, vec2<i32>(2147483647i, 0i), -161f), Struct_2(1u), -1i), Struct_3(-793f, vec4<u32>(0u, 10260u, 30326u, 4294967295u), Struct_1(vec3<f32>(407f, -497f, 488f), 3568u, 275f, vec2<i32>(2147483647i, 1i), 263f), Struct_2(4294967295u), 2147483647i), Struct_3(-515f, vec4<u32>(4294967295u, 99631u, 42625u, 15523u), Struct_1(vec3<f32>(-910f, 547f, 1430f), 43563u, 665f, vec2<i32>(i32(-2147483648), 49684i), 2433f), Struct_2(1u), 41513i), Struct_3(-1023f, vec4<u32>(51560u, 0u, 4294967295u, 1u), Struct_1(vec3<f32>(1090f, 502f, -2904f), 53564u, 888f, vec2<i32>(-1i, 0i), -1437f), Struct_2(43420u), 0i), Struct_3(1085f, vec4<u32>(37576u, 4294967295u, 54226u, 24391u), Struct_1(vec3<f32>(732f, -1133f, 1487f), 111735u, -465f, vec2<i32>(28988i, -42826i), 1645f), Struct_2(0u), -45494i), Struct_3(1639f, vec4<u32>(0u, 43590u, 1u, 1985u), Struct_1(vec3<f32>(-121f, 138f, -102f), 1u, -147f, vec2<i32>(-7162i, i32(-2147483648)), -188f), Struct_2(50586u), -1i), Struct_3(1028f, vec4<u32>(33475u, 1u, 0u, 12200u), Struct_1(vec3<f32>(369f, -351f, 667f), 1u, -1000f, vec2<i32>(-58380i, -20586i), 385f), Struct_2(4294967295u), 21608i), Struct_3(-211f, vec4<u32>(39498u, 0u, 1u, 4294967295u), Struct_1(vec3<f32>(2739f, -320f, -1444f), 39388u, 525f, vec2<i32>(-4819i, 1i), -736f), Struct_2(20592u), 48785i), Struct_3(-817f, vec4<u32>(70079u, 4294967295u, 0u, 57551u), Struct_1(vec3<f32>(-505f, 318f, 1592f), 4294967295u, -1634f, vec2<i32>(-21513i, 6488i), 651f), Struct_2(0u), -23148i), Struct_3(-1000f, vec4<u32>(6681u, 6050u, 2204u, 24961u), Struct_1(vec3<f32>(1000f, 1472f, 1798f), 4294967295u, -1105f, vec2<i32>(-23833i, -25065i), -257f), Struct_2(27171u), 0i), Struct_3(1444f, vec4<u32>(17635u, 49712u, 15485u, 21910u), Struct_1(vec3<f32>(1212f, -1630f, -804f), 0u, -637f, vec2<i32>(-1i, -12565i), 240f), Struct_2(0u), -5538i), Struct_3(-896f, vec4<u32>(1u, 4294967295u, 0u, 1u), Struct_1(vec3<f32>(-1004f, -842f, 1828f), 10325u, 1491f, vec2<i32>(i32(-2147483648), 1i), 1000f), Struct_2(29720u), -7278i), Struct_3(-443f, vec4<u32>(11569u, 1u, 0u, 1u), Struct_1(vec3<f32>(504f, -344f, -584f), 5091u, 1972f, vec2<i32>(i32(-2147483648), 0i), -1000f), Struct_2(1u), 0i), Struct_3(255f, vec4<u32>(24696u, 1u, 0u, 0u), Struct_1(vec3<f32>(-1000f, -527f, -1593f), 4294967295u, -117f, vec2<i32>(i32(-2147483648), -1i), -740f), Struct_2(55418u), 27406i), Struct_3(1561f, vec4<u32>(3365u, 1u, 4294967295u, 10245u), Struct_1(vec3<f32>(922f, 809f, 646f), 62018u, -1000f, vec2<i32>(80288i, -6843i), 239f), Struct_2(78227u), 20992i), Struct_3(423f, vec4<u32>(4294967295u, 0u, 0u, 6545u), Struct_1(vec3<f32>(666f, -838f, -105f), 4294967295u, -832f, vec2<i32>(-33790i, 27488i), 648f), Struct_2(1u), -32086i), Struct_3(-1913f, vec4<u32>(27224u, 15991u, 4294967295u, 1u), Struct_1(vec3<f32>(-1000f, 884f, -1067f), 16770u, 940f, vec2<i32>(-26893i, 0i), -1000f), Struct_2(4294967295u), -45136i), Struct_3(-1000f, vec4<u32>(38741u, 4294967295u, 1u, 0u), Struct_1(vec3<f32>(-1393f, 1045f, 481f), 4294967295u, 730f, vec2<i32>(-1i, -9591i), -1355f), Struct_2(77377u), -13404i), Struct_3(1410f, vec4<u32>(5154u, 3431u, 1u, 1u), Struct_1(vec3<f32>(-805f, -1034f, -258f), 118970u, 1303f, vec2<i32>(32108i, -1i), -1424f), Struct_2(74870u), 5035i), Struct_3(1226f, vec4<u32>(28454u, 0u, 779u, 11634u), Struct_1(vec3<f32>(1000f, -1376f, -416f), 74054u, -1519f, vec2<i32>(397i, i32(-2147483648)), 1445f), Struct_2(67668u), -1i), Struct_3(-316f, vec4<u32>(4294967295u, 17728u, 22261u, 3757u), Struct_1(vec3<f32>(-210f, -542f, -140f), 23346u, -1000f, vec2<i32>(-1i, 45327i), -1084f), Struct_2(0u), 1i), Struct_3(2825f, vec4<u32>(43950u, 1u, 8054u, 28278u), Struct_1(vec3<f32>(-1522f, -601f, -389f), 1u, -1259f, vec2<i32>(2147483647i, 1i), 769f), Struct_2(40754u), i32(-2147483648)), Struct_3(1788f, vec4<u32>(0u, 9217u, 1u, 203u), Struct_1(vec3<f32>(973f, -439f, 343f), 46743u, -279f, vec2<i32>(-1852i, 1i), 1201f), Struct_2(1u), 0i), Struct_3(306f, vec4<u32>(4294967295u, 2453u, 0u, 75762u), Struct_1(vec3<f32>(105f, -1000f, 238f), 0u, -513f, vec2<i32>(-12681i, 1i), 1110f), Struct_2(4294967295u), 62924i), Struct_3(-591f, vec4<u32>(18670u, 43598u, 0u, 51402u), Struct_1(vec3<f32>(-565f, -644f, -1197f), 68748u, 593f, vec2<i32>(6526i, 0i), -577f), Struct_2(45973u), 31846i), Struct_3(-1424f, vec4<u32>(1u, 4294967295u, 1u, 0u), Struct_1(vec3<f32>(-1102f, 855f, -1988f), 4294967295u, 656f, vec2<i32>(0i, -1i), -671f), Struct_2(4294967295u), 31903i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + -1439f)), any(select(!select(vec4<bool>(true, true, global3.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(58618u, 10u)], true), true), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], (global3.x & false) | global2[_wgslsmith_index_u32(max(u_input.a.x, 57199u), 10u)])), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]);
    global3 = vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(42401u, 0u, u_input.a.x >> (u_input.a.x % 32u)), select(vec3<u32>(61987u, u_input.a.x, 1u), select(vec3<u32>(u_input.a.x, 3610u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<bool>(global3.x, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), !global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), vec3<u32>((u_input.a.x | u_input.a.x) ^ u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x)), 10u)], all(select(!var_0.zy, !var_0.zx, vec2<bool>(all(var_0.yz), !var_0.x))));
    var var_1 = vec3<i32>(2575i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(22744i, -16164i), abs(70867i), 14665i), -reverseBits(vec4<i32>(-2147483647i, -4542i, 0i, 30508i))) << (u_input.a.x % 32u), i32(-1i) * -1i);
    var var_2 = abs(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(66542u, 1u, 0u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 16791u, u_input.a.x, 1u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 514u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 593u))), ~u_input.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(58743u, u_input.a.x, 28397u, 1u)), (vec4<u32>(69449u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 98353u), vec4<u32>(8818u, 40402u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), ~43315u));
    var_0 = vec3<bool>(var_0.x, true, abs(firstLeadingBit(1u)) == (~0u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_2.x), var_2.wx)));
    return 1u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-200f, arg_2, arg_2), vec3<f32>(arg_2, 922f, 659f)))) - vec3<f32>(arg_2, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 1256f) + vec3<f32>(159f, arg_2, 291f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, -1713f, arg_2)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1294f, arg_2, -1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1008f, arg_2, -1040f), vec3<f32>(-180f, arg_2, 878f)))))), 12735u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-654f))))), arg_0, -521f);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~(~(~arg_1) | _wgslsmith_mod_u32(4294967295u, u_input.a.x))), 8u)];
    let var_2 = global4[_wgslsmith_index_u32(25773u, 26u)];
    var var_3 = arg_2;
    var_0 = Struct_1(vec3<f32>(457f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), 182f, false)), arg_2), ~_wgslsmith_div_u32(select(~u_input.a.x, 4294967295u, global3.x), var_2.c.b), 464f, vec2<i32>(-_wgslsmith_sub_i32(1i, arg_0.x), (var_0.d.x << (15962u % 32u)) << (32633u % 32u)) >> (~(~firstLeadingBit(vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), var_0.a.x);
    return vec3<bool>(all(select(vec3<bool>(!global3.x, global2[_wgslsmith_index_u32(arg_1 >> (var_2.d.a % 32u), 10u)], true), select(select(vec3<bool>(global3.x, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(53251u, 10u)], true), vec3<bool>(global3.x, false, global2[_wgslsmith_index_u32(var_0.b, 10u)])), select(vec3<bool>(true, true, true), vec3<bool>(false, global3.x, global3.x), global3.x), any(vec2<bool>(false, global3.x))), true)), global2[_wgslsmith_index_u32(~var_1.a, 10u)], false);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2166f * 924f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) + -611f), 189f, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(-794f, -1022f), any(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 10u)], global2[_wgslsmith_index_u32(arg_1, 10u)], global3.x)))))))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -575f))), var_0, _wgslsmith_f_op_f32(-1543f + 1711f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_2.a, var_1.x)))))));
    var var_4 = !select(!(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.x, 10u)])), select(func_4(vec2<i32>(var_2.c.d.x, 15942i), func_3(), 1013f), !(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_1, 10u)])), !all(vec4<bool>(global3.x, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(arg_1, 10u)], false))), !vec3<bool>(true, select(global2[_wgslsmith_index_u32(var_2.b.x, 10u)], true, false), all(vec3<bool>(global2[_wgslsmith_index_u32(4492u, 10u)], global2[_wgslsmith_index_u32(75934u, 10u)], false))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, -424f)), var_2.c.d, _wgslsmith_add_i32(var_2.c.d.x, _wgslsmith_clamp_i32(~max(2147483647i, -2147483647i), -39181i, ~select(var_2.c.d.x, 1i, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(24362i, ~var_2.c.d.x << (~57700u % 32u), 29034i, var_2.c.d.x), -vec4<i32>(var_2.e, 0i, var_2.c.d.x, -var_2.c.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(~56664i, var_2.e & 2147483647i, _wgslsmith_add_i32(var_2.e, var_2.c.d.x), -2147483647i), -vec4<i32>(var_2.c.d.x, var_2.c.d.x, var_2.c.d.x, -39161i))), _wgslsmith_dot_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c.d.x, var_2.c.d.x, -2168i, 4531i), vec4<i32>(0i, var_2.c.d.x, -1i, var_2.c.d.x)) & ~vec4<i32>(var_2.c.d.x, var_2.c.d.x, var_2.c.d.x, var_2.c.d.x)) & vec4<i32>(-41845i, _wgslsmith_div_i32(2147483647i, -1i), abs(var_2.e), reverseBits(var_2.e)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, -31242i, 18401i, -2147483647i), vec4<i32>(var_2.e, -45689i, -15510i, -1i), vec4<bool>(true, global2[_wgslsmith_index_u32(55278u, 10u)], false, true)), firstTrailingBit(vec4<i32>(var_2.e, var_2.e, var_2.c.d.x, var_2.c.d.x))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, -52879i, var_2.c.d.x), vec4<i32>(9257i, -12307i, var_2.e, var_2.e) ^ vec4<i32>(-7886i, 27363i, 2147483647i, -27828i)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_1(arg_1.c.a, arg_1.b.x, -643f, vec2<i32>(firstTrailingBit(~38292i), arg_3.e), arg_1.a);
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    global2 = array<bool, 10>();
    var var_1 = arg_0.d;
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> StorageBuffer {
    global1 = array<vec4<bool>, 16>();
    global0 = array<Struct_2, 8>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(806f, _wgslsmith_f_op_f32(arg_0.c.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(657f, arg_0.a)))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) + _wgslsmith_f_op_f32(-arg_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.x + -249f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_4(vec2<f32>(arg_0.a, -1000f), arg_0.c.d, arg_0.c.d.x, vec4<i32>(2147483647i, arg_1.x, 2147483647i, 41882i), -2147483647i), arg_0, _wgslsmith_f_op_f32(288f - -705f), func_2(arg_0.b, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.c), _wgslsmith_f_op_f32(f32(-1f) * -287f))) + arg_0.c.a.x)));
    let var_1 = countOneBits(arg_0.b.x);
    let var_2 = arg_0.c;
    return StorageBuffer(abs(vec4<u32>(44062u, u_input.a.x, 1u, ~var_2.b)), _wgslsmith_f_op_f32(trunc(-290f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -680f);
    var var_2 = ~4294967295u << (_wgslsmith_mod_u32(reverseBits(u_input.a.x), 12284u) % 32u);
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), i32(-1i) * -17999i), min(_wgslsmith_mod_i32(-2147483647i, -1i), -18759i), -51920i), min(vec3<i32>(-10649i, -3926i, ~(-12136i)), select(vec3<i32>(2147483647i, 2147483647i, 1i), firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, -1i)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(75577u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global3.x, true), false)))), firstLeadingBit(0i));
    global1 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = func_1(global4[_wgslsmith_index_u32(4294967295u, 26u)], -vec4<i32>(var_3, firstTrailingBit(var_3 << (1929u % 32u)), -24982i, 2147483647i));
}

