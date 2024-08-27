struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, -82011i, 2803i, -1i), vec4<i32>(-9227i, -1i, -26690i, 9812i));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-1i, Struct_1(false, vec2<f32>(-1072f, -891f), vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), vec3<i32>(14020i, -31990i, 0i)), Struct_1(true, vec2<f32>(857f, -115f), vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), vec3<i32>(-1i, -43720i, 48205i)), true), Struct_2(-1i, Struct_1(true, vec2<f32>(1394f, -513f), vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec3<i32>(2147483647i, 10215i, 40850i)), Struct_1(false, vec2<f32>(145f, -572f), vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), vec3<i32>(6518i, -13404i, -16673i)), false), Struct_2(46316i, Struct_1(true, vec2<f32>(195f, -488f), vec4<bool>(true, true, false, true), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 3043i, 0i)), Struct_1(false, vec2<f32>(-174f, 986f), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), vec3<i32>(-1013i, -5417i, -940i)), false), Struct_2(1i, Struct_1(false, vec2<f32>(-1327f, -847f), vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), vec3<i32>(-7624i, 0i, -1i)), Struct_1(true, vec2<f32>(-774f, -234f), vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), vec3<i32>(2147483647i, -1i, 2147483647i)), false), Struct_2(-1i, Struct_1(true, vec2<f32>(437f, -1778f), vec4<bool>(false, true, true, true), vec3<bool>(true, false, false), vec3<i32>(-19610i, 27039i, 0i)), Struct_1(true, vec2<f32>(1076f, -451f), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), vec3<i32>(37257i, -38701i, 0i)), true), Struct_2(2537i, Struct_1(false, vec2<f32>(-672f, -3163f), vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<i32>(35418i, i32(-2147483648), 0i)), Struct_1(true, vec2<f32>(-852f, 644f), vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec3<i32>(1i, 1i, 1655i)), false), Struct_2(0i, Struct_1(true, vec2<f32>(681f, -1477f), vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), vec3<i32>(-14063i, i32(-2147483648), 0i)), Struct_1(false, vec2<f32>(831f, 443f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec3<i32>(11425i, 17880i, 39019i)), true), Struct_2(0i, Struct_1(true, vec2<f32>(-473f, 198f), vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), vec3<i32>(-37587i, 20063i, 98625i)), Struct_1(true, vec2<f32>(-850f, 1396f), vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), vec3<i32>(-1i, i32(-2147483648), 1i)), false), Struct_2(i32(-2147483648), Struct_1(false, vec2<f32>(-1000f, 1594f), vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), vec3<i32>(42236i, 27266i, 77499i)), Struct_1(false, vec2<f32>(-1529f, 500f), vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), vec3<i32>(34902i, -10264i, 0i)), false), Struct_2(34983i, Struct_1(true, vec2<f32>(-448f, 1577f), vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), vec3<i32>(51620i, -35361i, -1i)), Struct_1(true, vec2<f32>(-142f, -1326f), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), vec3<i32>(0i, -19590i, 30795i)), false), Struct_2(2147483647i, Struct_1(true, vec2<f32>(-534f, -1000f), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(false, vec2<f32>(1004f, -1187f), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), vec3<i32>(-1i, 0i, -18795i)), true), Struct_2(8237i, Struct_1(true, vec2<f32>(-433f, -1423f), vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec3<i32>(2147483647i, 1i, -1i)), Struct_1(true, vec2<f32>(-681f, -1163f), vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), -19950i, 67917i)), true), Struct_2(-3168i, Struct_1(true, vec2<f32>(838f, 370f), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), vec3<i32>(50903i, 19042i, 2228i)), Struct_1(true, vec2<f32>(-1088f, -141f), vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<i32>(10106i, -1i, -1i)), false), Struct_2(0i, Struct_1(true, vec2<f32>(1310f, -1461f), vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<i32>(-1i, -1i, 26230i)), Struct_1(false, vec2<f32>(-375f, 1434f), vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), vec3<i32>(-27849i, -1i, 2147483647i)), false), Struct_2(i32(-2147483648), Struct_1(false, vec2<f32>(-1924f, 371f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec3<i32>(-1i, -1i, 0i)), Struct_1(false, vec2<f32>(304f, -2515f), vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), vec3<i32>(-11959i, 0i, -34114i)), false), Struct_2(52509i, Struct_1(true, vec2<f32>(1512f, -1121f), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false), vec3<i32>(0i, 53718i, -25498i)), Struct_1(true, vec2<f32>(-1624f, -513f), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec3<i32>(-31051i, 1i, -7703i)), false), Struct_2(30590i, Struct_1(false, vec2<f32>(-1325f, 904f), vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_1(true, vec2<f32>(2097f, 297f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 23206i, 13010i)), true), Struct_2(197i, Struct_1(true, vec2<f32>(2484f, -1000f), vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<i32>(2147483647i, -1i, -1695i)), Struct_1(false, vec2<f32>(-169f, 1000f), vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<i32>(-15215i, 0i, 2147483647i)), false), Struct_2(22064i, Struct_1(false, vec2<f32>(-2000f, 1797f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), vec3<i32>(0i, -1i, 0i)), Struct_1(false, vec2<f32>(-799f, -305f), vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), vec3<i32>(21257i, i32(-2147483648), -1235i)), false), Struct_2(i32(-2147483648), Struct_1(false, vec2<f32>(-1403f, 1098f), vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), vec3<i32>(29179i, 2147483647i, -22764i)), Struct_1(true, vec2<f32>(-673f, -1499f), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec3<i32>(1i, 1i, 0i)), false), Struct_2(-15360i, Struct_1(true, vec2<f32>(1576f, -160f), vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 0i, -17007i)), Struct_1(true, vec2<f32>(-975f, 1826f), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), vec3<i32>(1i, -19663i, 13833i)), true));

var<private> global2: f32 = 427f;

var<private> global3: Struct_1 = Struct_1(true, vec2<f32>(606f, 837f), vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)));

var<private> global4: array<u32, 31> = array<u32, 31>(0u, 1u, 17224u, 16683u, 0u, 51424u, 1u, 88561u, 59909u, 47601u, 27553u, 0u, 3761u, 4294967295u, 4294967295u, 4294967295u, 0u, 56268u, 11159u, 0u, 0u, 84877u, 8488u, 15361u, 4294967295u, 26542u, 0u, 1u, 0u, 14261u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<vec4<i32>, 2>();
    var var_0 = Struct_1(true, vec2<f32>(240f, 2711f), global3.c, global3.d, -_wgslsmith_clamp_vec3_i32(global3.e, vec3<i32>(-14869i, ~global3.e.x, global3.e.x << (36357u % 32u)), vec3<i32>(-1i & global3.e.x, ~global3.e.x, _wgslsmith_clamp_i32(2147483647i, -1087i, 41094i))));
    var var_1 = false;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(515f * global3.b.x), _wgslsmith_f_op_f32(-1551f * var_0.b.x), false)))), -2127f);
    var var_2 = !(!select(!var_0.c.xyz, select(!global3.d, vec3<bool>(var_0.d.x, var_0.c.x, true), select(false, global3.c.x, global3.d.x)), select(global3.d, !vec3<bool>(global3.d.x, false, var_0.a), var_0.c.x | var_0.a)));
    return (6863u ^ min(_wgslsmith_add_u32(firstLeadingBit(global4[_wgslsmith_index_u32(7475u, 31u)]), 25422u), 1u >> (~global4[_wgslsmith_index_u32(0u, 31u)] % 32u))) & _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 31u)])), ~(~(~vec2<u32>(20031u, 31786u))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_u32(4294967295u, ~countOneBits(~1u)) < u_input.a;
    global1 = array<Struct_2, 21>();
    let var_1 = ~vec4<u32>(~(countOneBits(u_input.a) >> (select(u_input.a, 1u, true) % 32u)), 0u, u_input.a, reverseBits(reverseBits(8043u)));
    let var_2 = global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(select(~1u, ~func_3(), !arg_0.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_1.zw, vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(63731u, 31u)]) >> (vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a) % vec2<u32>(32u))), ~(var_1.xw >> (var_1.wz % vec2<u32>(32u)))))), 21u)];
    let var_3 = _wgslsmith_div_vec4_i32(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(var_1.x, 31u)], 81792u, var_1.x), ~var_1.zww), 2u)], _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(-2147483647i, arg_0.e.x, 0i, global3.e.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global3.e.x, arg_0.e.x, arg_0.e.x, 2487i), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2049u, 31u)], 2u)])), !(var_1.x == 32618u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(4294967295u & var_1.x), 4294967295u), 2u)]);
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(1i, global3.e.x)), arg_0.e.x) ^ _wgslsmith_dot_vec3_i32(~(~vec3<i32>(2147483647i, var_2.a, var_2.a)), reverseBits(reverseBits(arg_0.e))), _wgslsmith_clamp_i32(var_2.c.e.x, _wgslsmith_sub_i32(2796i, var_3.x), abs(~(global3.e.x & var_2.a))));
}

fn func_1() -> Struct_1 {
    let var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(-countOneBits(global3.e.x), global3.e.x, func_2(Struct_1(false, vec2<f32>(-966f, -252f), vec4<bool>(true, global3.c.x, global3.a, false), vec3<bool>(false, true, true), global3.e))), _wgslsmith_mod_vec3_i32(global3.e, global3.e));
    global1 = array<Struct_2, 21>();
    let var_1 = !global3.c;
    global4 = array<u32, 31>();
    var var_2 = !var_1.x;
    return Struct_1(select(true, !any(select(global3.d.xx, vec2<bool>(global3.a, var_1.x), vec2<bool>(false, global3.c.x))), any(global3.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1238f, global3.b.x))), global3.a)), select(vec4<bool>(!var_1.x, true, !global3.d.x && var_1.x, true), vec4<bool>(any(select(vec3<bool>(global3.c.x, global3.d.x, global3.a), var_1.yyx, vec3<bool>(var_1.x, global3.c.x, var_1.x))), var_1.x, false, _wgslsmith_f_op_f32(select(global3.b.x, 1263f, false)) == global3.b.x), !vec4<bool>(!var_1.x, all(vec4<bool>(true, true, false, var_1.x)), true, !var_1.x)), !vec3<bool>(!all(var_1.zyz), 1u <= _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 31u)], u_input.a), all(global3.d.yy) | var_1.x), _wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global3.e.x, 41851i), ~vec3<i32>(global3.e.x, -1i, global3.e.x)), vec3<i32>(i32(-1i) * -25999i, var_0.x, ~countOneBits(global3.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    let var_0 = func_1();
    let var_1 = func_1().d.xy;
    var var_2 = true;
    var var_3 = -1626f;
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1544f, global3.b.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(571f, global3.b.x, global3.b.x, global3.b.x))))) * vec4<f32>(-340f, var_0.b.x, 528f, _wgslsmith_f_op_f32(global3.b.x + -782f)))), ~72106u, var_0.e.xz, global3.b.x);
}

