struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-105f, 693f, 361f, 457f), true, vec2<f32>(1603f, -124f), 19712i)), Struct_3(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1469f, 494f, 968f, -722f), false, vec2<f32>(1562f, -428f), -4361i)), Struct_3(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1328f, -2108f, -509f, -1341f), false, vec2<f32>(-388f, 736f), 31796i)), Struct_3(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-312f, -461f, 1205f, -197f), true, vec2<f32>(427f, -285f), -1i)), Struct_3(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-140f, -1171f, -142f, -1010f), false, vec2<f32>(-1000f, 1253f), i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec4<f32>(281f, -930f, 1202f, 1000f), true, vec2<f32>(-1000f, 372f), i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(126f, -652f, 1000f, -587f), true, vec2<f32>(-1982f, 1566f), -41740i)));

var<private> global1: array<u32, 2> = array<u32, 2>(25735u, 4294967295u);

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(1937f, 724f, -186f, 747f), false, vec2<f32>(1649f, 347f), -32624i)), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-172f, 1209f, -458f, 875f), false, vec2<f32>(-1000f, -277f), 0i)), Struct_3(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-1024f, 896f, -1099f, 1000f), false, vec2<f32>(184f, -1092f), -21915i)), Struct_3(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-2147f, -603f, 1325f, 241f), true, vec2<f32>(233f, -110f), i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, false, true), vec4<f32>(373f, 376f, 1000f, -405f), true, vec2<f32>(-254f, -1517f), 1i)), Struct_3(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1000f, -1049f, -569f, -405f), false, vec2<f32>(108f, -758f), 2147483647i)), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(691f, 481f, -924f, -390f), true, vec2<f32>(-710f, 150f), i32(-2147483648))), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(114f, -755f, -276f, 105f), true, vec2<f32>(-583f, 1000f), 70651i)), Struct_3(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1458f, -762f, -616f, -920f), false, vec2<f32>(323f, -451f), -1i)), Struct_3(Struct_1(vec3<bool>(false, false, true), vec4<f32>(1728f, 954f, -744f, -630f), false, vec2<f32>(-861f, 338f), -39506i)), Struct_3(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1293f, -638f, 1597f, 1375f), true, vec2<f32>(-1301f, 782f), -69424i)), Struct_3(Struct_1(vec3<bool>(true, true, false), vec4<f32>(379f, -545f, -1389f, -1039f), false, vec2<f32>(474f, -643f), 1054i)), Struct_3(Struct_1(vec3<bool>(false, false, false), vec4<f32>(925f, 1000f, 742f, 1000f), false, vec2<f32>(-214f, 1430f), 1599i)), Struct_3(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-267f, -464f, -634f, -112f), true, vec2<f32>(-230f, 1292f), 2147483647i)), Struct_3(Struct_1(vec3<bool>(false, true, false), vec4<f32>(526f, -637f, -470f, 292f), false, vec2<f32>(-718f, -218f), 43663i)));

var<private> global3: array<f32, 25> = array<f32, 25>(203f, -627f, 519f, -463f, -1000f, 878f, -539f, -1650f, -195f, -1049f, 739f, 532f, -339f, -1068f, -716f, 332f, -394f, 126f, -488f, 317f, 483f, -602f, 1000f, -1000f, -989f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<u32>) -> vec3<bool> {
    global3 = array<f32, 25>();
    var var_0 = 71641u;
    let var_1 = -179f;
    let var_2 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(min(u_input.b, u_input.b), _wgslsmith_add_i32(arg_1.x, u_input.a), i32(-1i) * -2147483647i) << (select(vec3<u32>(arg_0.x, arg_3.x, 0u), ~vec3<u32>(15746u, 38360u, 4294967295u), true) % vec3<u32>(32u))), vec3<i32>(select(0i, i32(-1i) * -2147483647i, var_1 >= _wgslsmith_f_op_f32(-var_1)), _wgslsmith_clamp_i32(-min(u_input.b, -24960i), (-9439i << (arg_3.x % 32u)) >> (~59948u % 32u), -2147483647i), ~(arg_1.x ^ u_input.b) & ~(-27583i)));
    var var_3 = 1u;
    return vec3<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -603f) == arg_2, true);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> vec2<i32> {
    global1 = array<u32, 2>();
    let var_0 = Struct_3(Struct_1(func_3(vec3<u32>(4926u, 0u, arg_1.x) << ((vec3<u32>(global1[_wgslsmith_index_u32(63110u, 2u)], arg_0, 4294967295u) ^ vec3<u32>(arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57126u, 2u)], 2u)], 92308u)) % vec3<u32>(32u)), vec3<i32>(53338i, u_input.b, u_input.a) & -vec3<i32>(-3878i, 1i, -1i), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(56680u, 25u)])), _wgslsmith_sub_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_f_op_f32(712f - -1330f), _wgslsmith_f_op_f32(f32(-1f) * -885f))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, global3[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(arg_1.x, 25u)], 447f), vec2<f32>(-678f, 232f), true)), func_3(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 2u)], 2u)], 4294967295u, arg_1.x), vec3<i32>(u_input.b, -1i, 2147483647i), global3[_wgslsmith_index_u32(arg_1.x, 25u)], vec2<u32>(79334u, global1[_wgslsmith_index_u32(arg_1.x, 2u)])).xz))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-17658i, u_input.b, 2147483647i), -30894i, ~u_input.b, u_input.b), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, u_input.a, u_input.b))));
    let var_1 = var_0.a.c;
    var var_2 = var_0.a.b.zw;
    var var_3 = select(select(select(vec4<bool>(arg_0 >= 4294967295u, var_0.a.e == var_0.a.e, var_1, var_1), vec4<bool>(true, true, true, true), var_1 != !var_0.a.a.x), vec4<bool>(_wgslsmith_add_i32(u_input.a, -21137i) == 0i, !(var_2.x != var_0.a.d.x), any(!var_0.a.a), !all(vec4<bool>(true, false, false, var_1))), true), select(vec4<bool>(false, !(!var_1), !(var_0.a.c | var_0.a.c), false), select(select(!vec4<bool>(false, var_0.a.a.x, true, var_0.a.c), select(vec4<bool>(false, var_0.a.c, true, false), vec4<bool>(true, true, var_0.a.a.x, var_1), var_0.a.a.x), !var_0.a.a.x), vec4<bool>(!var_1, true, false, !var_0.a.a.x), var_1 || var_1), select(vec4<bool>(all(vec4<bool>(var_1, false, true, var_0.a.a.x)), all(vec4<bool>(var_0.a.c, false, false, var_1)), u_input.a >= u_input.b, var_1 & false), !select(vec4<bool>(var_1, var_0.a.c, var_1, var_1), vec4<bool>(true, var_0.a.a.x, true, true), vec4<bool>(var_1, var_1, false, false)), vec4<bool>(false, true, var_0.a.d.x == -410f, var_0.a.c != true))), true);
    return _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(0i, 0i), 23837i), vec2<i32>(-33480i, -2147483647i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(37975i, -15167i), vec2<i32>(u_input.b, 1i) ^ vec2<i32>(u_input.b, u_input.a)), countOneBits(vec2<i32>(-2147483647i, -2147483647i)))), _wgslsmith_mult_vec2_i32(abs(firstTrailingBit(vec2<i32>(var_0.a.e, u_input.b))), -(~vec2<i32>(var_0.a.e, var_0.a.e) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(func_2(reverseBits(~_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44148u, 2u)], 2u)])), ~(~(~vec2<u32>(32109u, 34604u)))), vec2<i32>(u_input.a, 36264i));
    let var_1 = vec2<u32>(abs(countOneBits(4294967295u)), 30536u);
    var_0 = max(select(vec2<i32>(firstLeadingBit(0i), -(var_0.x << (var_1.x % 32u))), ~func_2(~0u, _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(0u, var_1.x))), any(select(!vec4<bool>(arg_1, arg_1, true, arg_1), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1), arg_1), true))), -vec2<i32>(u_input.a, func_2(~global1[_wgslsmith_index_u32(17959u, 2u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70522u, 2u)], 2u)], 2u)], 58777u), var_1, vec2<u32>(var_1.x, global1[_wgslsmith_index_u32(12689u, 2u)]))).x));
    let var_2 = ~_wgslsmith_div_u32(var_1.x, abs(4294967295u));
    let var_3 = -(firstTrailingBit(vec3<i32>(1i, _wgslsmith_mod_i32(u_input.a, -2147483647i), _wgslsmith_add_i32(1i, var_0.x))) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(19600u, 4294967295u, 0u), vec3<u32>(var_1.x, var_2, global1[_wgslsmith_index_u32(650u, 2u)])) % vec3<u32>(32u)));
    return vec4<u32>(_wgslsmith_clamp_u32(min(1u, ~1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1019u, var_2) | ~30167u, max(1715u, 4294967295u)), global1[_wgslsmith_index_u32(min(1u, _wgslsmith_clamp_u32(var_2, 8447u, 0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(18940u, 2u)], global1[_wgslsmith_index_u32(var_1.x, 2u)]), var_1)), 2u)]), ~global1[_wgslsmith_index_u32(69631u, 2u)], firstTrailingBit(var_1.x), 15175u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(var_2, var_1.x, 1u)), 2u)], 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, _wgslsmith_div_f32(-279f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94566u, 2u)], 25u)]), global3[_wgslsmith_index_u32(24377u, 25u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1059f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 25u)], 808f) * vec3<f32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19719u, 2u)], 25u)], 612f, 905f))))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 125601u), 25u)]), -143f, 1000f)));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37843u, 2u)], 2u)], 25u)] + 448f), 259f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)]), 2u)], 25u)]), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30169u, 2u)], 25u)]), _wgslsmith_f_op_f32(var_0.x - global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 25u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(97361u, 2u)], 25u)])))) * var_0), min(abs(-2147483647i), min(~1i, i32(-1i) * -36390i)) != u_input.a, global3[_wgslsmith_index_u32(~(((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)] & global1[_wgslsmith_index_u32(4294967295u, 2u)]) << (0u % 32u)) & _wgslsmith_div_u32(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 2u)]), ~global1[_wgslsmith_index_u32(10337u, 2u)])), 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(875f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(29271u, 2u)], 37776u, var_1.x), var_1, false), abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(var_1.x, 2u)], 9817u, 21838u))), 2u)]), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 25u)])))), global3[_wgslsmith_index_u32(1413u, 25u)]), var_1.yw, vec4<i32>(abs(u_input.b), ~firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.b)), -1i, 0i), 1211f);
}

