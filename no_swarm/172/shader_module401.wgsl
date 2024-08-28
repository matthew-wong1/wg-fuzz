struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 1i), 220f, vec2<u32>(0u, 47696u), Struct_2(Struct_1(-1i, 1u, vec2<i32>(-3595i, -45931i), vec4<f32>(729f, -1000f, -179f, -585f)), Struct_1(1i, 8152u, vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-1502f, -1031f, 856f, -1496f)))), Struct_3(vec3<i32>(-17889i, 0i, -21631i), -1419f, vec2<u32>(57492u, 4294967295u), Struct_2(Struct_1(-1i, 4294967295u, vec2<i32>(i32(-2147483648), -1i), vec4<f32>(128f, 1371f, 305f, 516f)), Struct_1(-29699i, 0u, vec2<i32>(1i, -1i), vec4<f32>(-1446f, 549f, -469f, -484f)))), Struct_3(vec3<i32>(-5934i, 2147483647i, -19815i), 1069f, vec2<u32>(0u, 21623u), Struct_2(Struct_1(1i, 47921u, vec2<i32>(21044i, 2147483647i), vec4<f32>(156f, -214f, -710f, 2257f)), Struct_1(-1i, 18570u, vec2<i32>(46798i, 2147483647i), vec4<f32>(-282f, -453f, -292f, 391f)))), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -11657i), -1706f, vec2<u32>(71924u, 0u), Struct_2(Struct_1(2147483647i, 28180u, vec2<i32>(i32(-2147483648), 87328i), vec4<f32>(-1822f, -531f, 1464f, -1907f)), Struct_1(0i, 4294967295u, vec2<i32>(2147483647i, 0i), vec4<f32>(214f, 2260f, -428f, -409f)))), Struct_3(vec3<i32>(16663i, 2147483647i, 0i), -1110f, vec2<u32>(6658u, 1u), Struct_2(Struct_1(i32(-2147483648), 0u, vec2<i32>(-1i, -8783i), vec4<f32>(945f, -1000f, -521f, -921f)), Struct_1(43107i, 72540u, vec2<i32>(-23336i, -1i), vec4<f32>(-918f, 1000f, 1701f, -972f)))), Struct_3(vec3<i32>(1i, 20478i, -26857i), 1794f, vec2<u32>(48206u, 1u), Struct_2(Struct_1(10538i, 73337u, vec2<i32>(i32(-2147483648), 1i), vec4<f32>(426f, 470f, -2492f, -593f)), Struct_1(40908i, 29581u, vec2<i32>(7967i, -33203i), vec4<f32>(-409f, -568f, 957f, 1000f)))), Struct_3(vec3<i32>(i32(-2147483648), 0i, 67287i), 105f, vec2<u32>(15626u, 90311u), Struct_2(Struct_1(21742i, 44953u, vec2<i32>(18260i, 9424i), vec4<f32>(1473f, 937f, 768f, 875f)), Struct_1(-26574i, 0u, vec2<i32>(11141i, -1i), vec4<f32>(-2105f, 341f, -387f, -522f)))), Struct_3(vec3<i32>(20428i, 41118i, 0i), 584f, vec2<u32>(1u, 28341u), Struct_2(Struct_1(i32(-2147483648), 4294967295u, vec2<i32>(i32(-2147483648), 1i), vec4<f32>(369f, 1527f, -1592f, -721f)), Struct_1(i32(-2147483648), 1u, vec2<i32>(5883i, i32(-2147483648)), vec4<f32>(-542f, 235f, 1423f, -512f)))), Struct_3(vec3<i32>(i32(-2147483648), 1i, -18154i), 600f, vec2<u32>(4294967295u, 1u), Struct_2(Struct_1(1i, 1u, vec2<i32>(-15917i, 459i), vec4<f32>(-1519f, -549f, -1513f, 2311f)), Struct_1(-1i, 1u, vec2<i32>(0i, -8602i), vec4<f32>(-529f, -368f, 100f, -525f)))), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), -4954i), -250f, vec2<u32>(0u, 10815u), Struct_2(Struct_1(1i, 1u, vec2<i32>(2147483647i, 15809i), vec4<f32>(296f, -609f, -1000f, -699f)), Struct_1(2147483647i, 4294967295u, vec2<i32>(0i, 2147483647i), vec4<f32>(203f, 2489f, -1693f, 884f)))), Struct_3(vec3<i32>(-3912i, 1899i, -2365i), 1349f, vec2<u32>(19780u, 37837u), Struct_2(Struct_1(1i, 0u, vec2<i32>(-1i, -17387i), vec4<f32>(1091f, 1787f, 883f, 977f)), Struct_1(2147483647i, 145377u, vec2<i32>(-1i, -1i), vec4<f32>(-1339f, 610f, 260f, 136f)))), Struct_3(vec3<i32>(1i, 0i, -1i), -2298f, vec2<u32>(58635u, 4294967295u), Struct_2(Struct_1(-13056i, 14221u, vec2<i32>(0i, 41864i), vec4<f32>(-130f, 236f, -133f, -540f)), Struct_1(-29578i, 59605u, vec2<i32>(1i, 12243i), vec4<f32>(802f, 494f, 797f, -478f)))), Struct_3(vec3<i32>(2147483647i, 2147483647i, 1i), -953f, vec2<u32>(0u, 1u), Struct_2(Struct_1(0i, 7676u, vec2<i32>(7324i, 2147483647i), vec4<f32>(1518f, 723f, -755f, -2149f)), Struct_1(1i, 2141u, vec2<i32>(44892i, -18009i), vec4<f32>(-451f, -303f, -2634f, 1000f)))), Struct_3(vec3<i32>(1i, 42829i, i32(-2147483648)), 1114f, vec2<u32>(10121u, 37236u), Struct_2(Struct_1(0i, 98769u, vec2<i32>(-10432i, 20841i), vec4<f32>(-158f, -562f, 138f, 660f)), Struct_1(1i, 4294967295u, vec2<i32>(60527i, 1i), vec4<f32>(-1091f, 1170f, -262f, 454f)))), Struct_3(vec3<i32>(-36165i, 0i, 90977i), -1189f, vec2<u32>(4846u, 0u), Struct_2(Struct_1(44189i, 1u, vec2<i32>(i32(-2147483648), -70275i), vec4<f32>(-1029f, -1172f, 1000f, 1000f)), Struct_1(-60118i, 40754u, vec2<i32>(75671i, 2147483647i), vec4<f32>(-153f, 1534f, -262f, -2385f)))));

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = 1u;
    global0 = array<Struct_3, 21>();
    global1 = array<Struct_3, 15>();
    var var_1 = all(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), arg_2.a.x >= -26054i)));
    var var_2 = arg_0.x;
    return select(arg_2.d.b.c, abs(select(vec2<i32>(~45380i, _wgslsmith_sub_i32(25533i, arg_2.d.a.a)), select(firstTrailingBit(arg_2.a.zz), -vec2<i32>(arg_2.a.x, 24563i), true), -2271f != _wgslsmith_f_op_f32(-arg_0.x))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_add_i32(_wgslsmith_mult_i32(~13099i, i32(-1i) * -1i), -26543i), countOneBits(u_input.a), ~(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(22614i, 2147483647i), vec2<i32>(-1i, -2147483647i)), vec2<i32>(1i, 1i), vec2<i32>(12627i, 1i)) | func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -121f, -358f), vec3<f32>(arg_2.a, arg_2.a, 569f), vec3<bool>(false, arg_0, arg_0))), -324f, Struct_3(vec3<i32>(-1i, -1738i, -1i), 1547f, u_input.d.zx, Struct_2(Struct_1(-2147483647i, u_input.a, vec2<i32>(1i, 2147483647i), vec4<f32>(-252f, -1693f, arg_1, arg_1)), Struct_1(1i, 37095u, vec2<i32>(-2147483647i, 27547i), vec4<f32>(arg_2.a, arg_1, arg_1, arg_1)))), reverseBits(vec2<u32>(u_input.c, 73482u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(f32(-1f) * -1304f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a, 1216f, arg_0)), -1045f), -707f, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -605f, -1334f, arg_1) * vec4<f32>(arg_1, 1678f, 210f, 1000f))), true)));
    global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.c.x, select(_wgslsmith_add_i32(abs(var_0.a), -2147483647i), -45192i, arg_0), _wgslsmith_mod_i32(_wgslsmith_add_i32(26361i, var_0.a), ~(-2147483647i))), vec4<i32>(-36763i, var_0.c.x >> (var_0.b % 32u), ~var_0.c.x, -1i));
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_1 = -select(abs(vec3<i32>(var_0.a, var_0.a, var_0.c.x) | -vec3<i32>(-24290i, var_0.a, var_0.a)), -(~vec3<i32>(11189i, var_0.c.x, -80052i)) >> ((u_input.d & u_input.d) % vec3<u32>(32u)), !select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, true)), !vec3<bool>(true, arg_0, true), arg_0));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_3, 21>();
    global2 = 2147483647i;
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 2147483647i, -1i, firstLeadingBit(-2147483647i & arg_0)), vec4<i32>(reverseBits(arg_3.b.a), reverseBits(1i), arg_0, 13762i)), reverseBits(~select(vec4<i32>(1i, arg_0, arg_3.b.c.x, 2147483647i) ^ vec4<i32>(arg_0, -1i, 1i, 28947i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -3283i, 1i, 0i), vec4<i32>(arg_0, arg_0, -2147483647i, 0i)), true)));
    global2 = 14292i;
    global0 = array<Struct_3, 21>();
    return -func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.d.x, 1920f, _wgslsmith_f_op_f32(trunc(128f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a.d.wxy + vec3<f32>(arg_3.b.d.x, 1246f, -524f)))), arg_3.b.d.x, global0[_wgslsmith_index_u32(1u, 21u)], ~vec2<u32>(arg_1.x, 1u)).x;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    let var_0 = ~vec3<i32>(-26672i, select(~1i, -12369i, true), ~abs(1i)) | ~(~abs(vec3<i32>(-32487i, 97476i, 1i)));
    var var_1 = !vec2<bool>(arg_1.x, all(!vec2<bool>(true, arg_2.x)));
    let var_2 = _wgslsmith_clamp_i32(-67158i, func_4(21992i, abs(abs(vec4<u32>(0u, u_input.d.x, 88404u, 53868u))) << (vec4<u32>(1u, u_input.a & 4294967295u, u_input.a, abs(35026u)) % vec4<u32>(32u)), u_input.d.x, Struct_2(func_2(false, -1000f, Struct_4(arg_0, u_input.d.x)), func_2(var_1.x != false, _wgslsmith_f_op_f32(527f - 1009f), Struct_4(-1069f, u_input.c)))), ~var_0.x);
    global2 = firstTrailingBit(var_2);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(539f, 1415f)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    global1 = array<Struct_3, 15>();
    let var_0 = ~vec3<u32>(~1u, firstTrailingBit(_wgslsmith_add_u32(54100u << (1u % 32u), u_input.a >> (u_input.a % 32u))), ~(~u_input.a) | _wgslsmith_clamp_u32(u_input.c & 0u, u_input.a ^ 21691u, ~103765u));
    global0 = array<Struct_3, 21>();
    let var_1 = !(!vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true)), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), -49339i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -40928i)), _wgslsmith_add_vec2_i32(vec2<i32>(-16040i, -96028i), vec2<i32>(1i, 10962i))) ^ -12754i, _wgslsmith_mod_i32(7242i, countOneBits(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -477f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-648f))))), 164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-699f * -1672f), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x), false), !var_1))), -704f));
}

