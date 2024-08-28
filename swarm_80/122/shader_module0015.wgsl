struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, true, false, true, true, true, false, true, true, false, true, false, false, true, false, false, true, true, false, true, true, true, false, true, true, false);

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(2143f, 289f, -648f, -584f), vec4<f32>(-1836f, -1000f, 178f, -433f), vec4<f32>(-1000f, -144f, -832f, 932f), vec4<f32>(1838f, -890f, 220f, -1243f), vec4<f32>(1171f, -716f, 1000f, -1621f));

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<f32>(2066f, 937f), 32833u, Struct_1(vec4<f32>(1000f, 108f, 921f, -1021f), vec3<i32>(5910i, -11272i, 2147483647i), vec4<f32>(1000f, -1679f, 363f, 712f), true, vec3<u32>(4294967295u, 46093u, 4294967295u))), Struct_3(vec2<f32>(-977f, -207f), 8200u, Struct_1(vec4<f32>(773f, -1678f, 1081f, -1051f), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec4<f32>(-1000f, -1136f, 1632f, -1525f), true, vec3<u32>(69102u, 4294967295u, 4294967295u))), Struct_3(vec2<f32>(1095f, -687f), 4294967295u, Struct_1(vec4<f32>(-1423f, 403f, -295f, -1358f), vec3<i32>(-45733i, i32(-2147483648), 2147483647i), vec4<f32>(1000f, 569f, 906f, -1115f), false, vec3<u32>(1u, 62556u, 15793u))), Struct_3(vec2<f32>(-1293f, 1364f), 42066u, Struct_1(vec4<f32>(-503f, -354f, 904f, 642f), vec3<i32>(i32(-2147483648), 20279i, 1i), vec4<f32>(1000f, -785f, 604f, -308f), false, vec3<u32>(17350u, 4294967295u, 1u))), Struct_3(vec2<f32>(-663f, -1571f), 0u, Struct_1(vec4<f32>(-559f, 566f, 215f, -1270f), vec3<i32>(-1i, 24365i, 4820i), vec4<f32>(-560f, -2585f, 667f, -1731f), false, vec3<u32>(4294967295u, 4294967295u, 1768u))), Struct_3(vec2<f32>(-498f, -830f), 0u, Struct_1(vec4<f32>(1000f, 201f, -1000f, -1125f), vec3<i32>(0i, 1i, -48916i), vec4<f32>(-1420f, -182f, -1193f, 218f), true, vec3<u32>(63757u, 0u, 50031u))), Struct_3(vec2<f32>(1000f, -959f), 31157u, Struct_1(vec4<f32>(-988f, 937f, -1243f, 1043f), vec3<i32>(-10955i, 1i, 26922i), vec4<f32>(2958f, 662f, 602f, 1229f), true, vec3<u32>(7962u, 9095u, 0u))), Struct_3(vec2<f32>(1804f, -1000f), 116674u, Struct_1(vec4<f32>(1250f, -1307f, -1137f, -407f), vec3<i32>(9691i, -24947i, -3533i), vec4<f32>(-1550f, -285f, -729f, 933f), false, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_3(vec2<f32>(-670f, -1592f), 29962u, Struct_1(vec4<f32>(-750f, -1059f, -1599f, 159f), vec3<i32>(1i, 1i, 1i), vec4<f32>(-448f, -1000f, 351f, -639f), false, vec3<u32>(0u, 4294967295u, 0u))), Struct_3(vec2<f32>(-731f, 152f), 1u, Struct_1(vec4<f32>(-494f, -697f, -441f, 172f), vec3<i32>(1i, 1i, 2147483647i), vec4<f32>(-1000f, -1993f, -551f, -334f), false, vec3<u32>(20919u, 8996u, 0u))), Struct_3(vec2<f32>(756f, -422f), 0u, Struct_1(vec4<f32>(-1000f, -1000f, 246f, -838f), vec3<i32>(-1i, -27632i, 2147483647i), vec4<f32>(-254f, -231f, -348f, -158f), true, vec3<u32>(73100u, 1u, 4294967295u))), Struct_3(vec2<f32>(623f, -1000f), 11633u, Struct_1(vec4<f32>(-647f, 874f, 741f, 1211f), vec3<i32>(-15512i, -1i, i32(-2147483648)), vec4<f32>(1526f, -1331f, -880f, -1000f), true, vec3<u32>(0u, 0u, 0u))), Struct_3(vec2<f32>(1000f, 352f), 7624u, Struct_1(vec4<f32>(1759f, -356f, 406f, -1731f), vec3<i32>(-13492i, 1i, -45892i), vec4<f32>(861f, 969f, 672f, 1026f), false, vec3<u32>(0u, 57611u, 43523u))), Struct_3(vec2<f32>(782f, 1150f), 12140u, Struct_1(vec4<f32>(458f, 777f, 1286f, 319f), vec3<i32>(23783i, 0i, 28383i), vec4<f32>(681f, 200f, 1098f, -850f), true, vec3<u32>(0u, 0u, 0u))), Struct_3(vec2<f32>(-603f, -1000f), 9783u, Struct_1(vec4<f32>(-664f, 257f, -1240f, -432f), vec3<i32>(i32(-2147483648), -37472i, -1i), vec4<f32>(340f, -731f, -224f, -135f), true, vec3<u32>(28742u, 58552u, 23126u))), Struct_3(vec2<f32>(237f, -1441f), 16594u, Struct_1(vec4<f32>(-264f, 780f, 1785f, 778f), vec3<i32>(-7865i, 0i, i32(-2147483648)), vec4<f32>(964f, -849f, 376f, 832f), false, vec3<u32>(30308u, 35683u, 4294967295u))), Struct_3(vec2<f32>(-561f, -324f), 0u, Struct_1(vec4<f32>(462f, 912f, -402f, -222f), vec3<i32>(54916i, -116198i, i32(-2147483648)), vec4<f32>(-278f, -129f, 146f, 564f), false, vec3<u32>(11616u, 0u, 0u))), Struct_3(vec2<f32>(-884f, -312f), 1185u, Struct_1(vec4<f32>(-1310f, 1466f, -946f, -1533f), vec3<i32>(11868i, -30363i, i32(-2147483648)), vec4<f32>(329f, 100f, 287f, -859f), true, vec3<u32>(31635u, 0u, 63943u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec4<f32>, 5>();
    global0 = array<bool, 31>();
    return Struct_1(vec4<f32>(arg_1.c.c.x, arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1155f, arg_1.a.x)) + 574f)), arg_1.c.b, arg_1.c.c, (80987u << (_wgslsmith_add_u32(arg_1.b, arg_1.c.e.x ^ 1u) % 32u)) >= ~(~abs(u_input.e)), _wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(arg_1.c.e.x, arg_1.c.e.x, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(76258u, arg_1.b, 0u), vec3<u32>(arg_1.b, arg_1.b, arg_1.b), arg_1.c.e), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b, 31u)], global0[_wgslsmith_index_u32(6510u, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)]))), abs(vec3<u32>(abs(602u), 0u, arg_1.b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global1 = array<vec4<f32>, 5>();
    let var_0 = Struct_2(arg_0);
    global0 = array<bool, 31>();
    let var_1 = !vec4<bool>(false, true, true || global0[_wgslsmith_index_u32(51791u, 31u)], arg_0.d);
    global1 = array<vec4<f32>, 5>();
    return any(vec3<bool>(~var_0.a.b.x >= -14941i, !arg_0.d, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, arg_1.a.e.x), var_0.a.e.zz, vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.e.x, 31u)])), ~arg_0.e.yz) >= firstLeadingBit(21936u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<u32> {
    global1 = array<vec4<f32>, 5>();
    global0 = array<bool, 31>();
    let var_0 = all(select(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(false, false, false, arg_0.x), false), vec4<bool>(func_3(func_2(0i, Struct_3(vec2<f32>(1757f, 697f), u_input.c, Struct_1(global1[_wgslsmith_index_u32(1u, 5u)], u_input.b, vec4<f32>(1730f, -790f, -494f, 989f), arg_0.x, vec3<u32>(u_input.c, 13427u, u_input.e)))), Struct_2(Struct_1(global1[_wgslsmith_index_u32(93728u, 5u)], arg_1, global1[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], vec3<u32>(u_input.e, 49106u, u_input.c)))), arg_0.x, any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 31u)], true, arg_0.x)), global0[_wgslsmith_index_u32(~1u, 31u)]), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 31u)], false, arg_0.x, global0[_wgslsmith_index_u32(u_input.e, 31u)]), false), all(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(50472u, 31u)], true, true)))));
    global2 = array<Struct_3, 18>();
    global2 = array<Struct_3, 18>();
    return ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(min(22480u, u_input.e), ~u_input.c), ~(~vec2<u32>(u_input.d, u_input.c))), vec2<u32>(27016u >> (1u % 32u), 1u), vec2<bool>(true, _wgslsmith_f_op_f32(round(-283f)) >= _wgslsmith_f_op_f32(ceil(1644f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a, u_input.b.x) >> (func_1(vec3<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 31u)] | false), false, 4819u >= reverseBits(u_input.d)), min(~vec3<i32>(u_input.a, -17065i, 0i) & vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), ~(~u_input.b))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u << (0u % 32u), 5u)] - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(74396u, 5u)], global1[_wgslsmith_index_u32(125543u, 5u)], global0[_wgslsmith_index_u32(u_input.d, 31u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) - 687f), _wgslsmith_f_op_f32(min(-1093f, _wgslsmith_div_f32(613f, 482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f - -508f) - 279f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -363f), 1000f))))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -1008f, var_1.x, -507f)) * global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, u_input.c), 5u)]) - global1[_wgslsmith_index_u32(~u_input.c, 5u)]), vec4<f32>(func_2(~1i, global2[_wgslsmith_index_u32(u_input.c, 18u)]).c.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~u_input.b, global1[_wgslsmith_index_u32(~30464u, 5u)], global0[_wgslsmith_index_u32(77809u, 31u)], vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~4294967295u, ~u_input.d), _wgslsmith_add_u32(u_input.d << (7200u % 32u), abs(u_input.c))), 0u));
    var var_3 = func_2(~reverseBits(_wgslsmith_div_i32(~var_2.b.x, 2147483647i)), Struct_3(var_1.yz, 54355u, func_2(var_0.x, global2[_wgslsmith_index_u32(30499u, 18u)])));
    let var_4 = -(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.x, -2836i, -17865i), vec4<i32>(var_2.b.x, -2292i, var_3.b.x, 1i)) >> (~(vec4<u32>(4294967295u, 45359u, u_input.e, 0u) << (vec4<u32>(var_3.e.x, var_2.e.x, 4294967295u, 12513u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_5 = _wgslsmith_sub_vec3_i32(var_3.b | var_4.zwy, countOneBits(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(abs(var_2.b.x & 2147483647i), -2147483647i), _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_3.e.x, 3073u, 0u)), ~(~vec4<u32>(4294967295u, var_2.e.x, var_3.e.x, var_3.e.x))) >> (abs(~(~vec4<u32>(var_3.e.x, 82789u, 13254u, 26802u))) % vec4<u32>(32u)));
}

