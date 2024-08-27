struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(26659u, 42545u, 4294967295u, 33140u), vec4<f32>(1295f, -388f, -838f, -775f), false, false, vec4<f32>(809f, -2225f, -241f, -941f)), Struct_1(vec4<u32>(10262u, 4294967295u, 4294967295u, 36366u), vec4<f32>(-728f, 1418f, 664f, -1585f), true, true, vec4<f32>(-768f, 1398f, -163f, 725f)), Struct_1(vec4<u32>(33980u, 32582u, 17054u, 1u), vec4<f32>(-713f, -1948f, 1250f, 879f), true, true, vec4<f32>(-226f, -1418f, -587f, -576f)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 13756u), vec4<f32>(485f, 1339f, -209f, -605f), true, false, vec4<f32>(1547f, 1024f, -369f, 343f)), Struct_1(vec4<u32>(4294967295u, 55210u, 1u, 4294967295u), vec4<f32>(298f, -452f, 131f, -433f), false, true, vec4<f32>(838f, -865f, -643f, 1052f)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 5823u), vec4<f32>(-313f, 474f, -427f, 1483f), false, false, vec4<f32>(1190f, 335f, 166f, -324f)), Struct_1(vec4<u32>(5727u, 58056u, 11579u, 1u), vec4<f32>(-1765f, -1247f, -1609f, -1914f), true, true, vec4<f32>(713f, 315f, -164f, 547f)), Struct_1(vec4<u32>(1u, 0u, 51942u, 4294967295u), vec4<f32>(-403f, -1737f, -1508f, -835f), true, false, vec4<f32>(-843f, 792f, -1000f, 155f)), Struct_1(vec4<u32>(0u, 0u, 17368u, 3282u), vec4<f32>(-1741f, -1480f, 1585f, -773f), true, true, vec4<f32>(863f, -977f, -1441f, 908f)), Struct_1(vec4<u32>(1u, 31775u, 4294967295u, 1u), vec4<f32>(-248f, 1271f, 907f, -158f), false, true, vec4<f32>(-1195f, 570f, -970f, 315f)), Struct_1(vec4<u32>(2265u, 3104u, 48605u, 1u), vec4<f32>(-902f, -2721f, -1135f, -807f), true, true, vec4<f32>(2269f, 1088f, 790f, -1158f)), Struct_1(vec4<u32>(45818u, 21759u, 20757u, 14880u), vec4<f32>(168f, -1263f, 1631f, -586f), false, false, vec4<f32>(1669f, -656f, 532f, -1233f)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 74373u), vec4<f32>(816f, 757f, 415f, 657f), true, false, vec4<f32>(342f, 1000f, -690f, 253f)), Struct_1(vec4<u32>(4294967295u, 19617u, 0u, 3580u), vec4<f32>(-1845f, -630f, -169f, -753f), true, false, vec4<f32>(1000f, -330f, -669f, -1000f)), Struct_1(vec4<u32>(0u, 0u, 0u, 4672u), vec4<f32>(-1760f, 689f, 2090f, -1077f), false, true, vec4<f32>(-908f, -1697f, 538f, 149f)), Struct_1(vec4<u32>(17829u, 4294967295u, 1u, 1u), vec4<f32>(-1000f, 911f, 721f, -447f), true, false, vec4<f32>(-1366f, 464f, -1000f, -1296f)), Struct_1(vec4<u32>(55713u, 41852u, 36748u, 0u), vec4<f32>(-773f, -1637f, 207f, -1540f), true, false, vec4<f32>(-1127f, 223f, 1000f, -1655f)), Struct_1(vec4<u32>(32496u, 0u, 35172u, 52410u), vec4<f32>(699f, 568f, 1000f, 379f), false, false, vec4<f32>(-1699f, -1610f, -145f, 909f)), Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec4<f32>(1394f, -1000f, -455f, 782f), true, true, vec4<f32>(1151f, -990f, -1949f, 1249f)), Struct_1(vec4<u32>(51663u, 1u, 0u, 0u), vec4<f32>(-1799f, -995f, -1310f, 1026f), false, true, vec4<f32>(-1135f, -1007f, 162f, -986f)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 45611u), vec4<f32>(1381f, 1310f, 1076f, -584f), true, true, vec4<f32>(580f, -1129f, 1643f, 545f)), Struct_1(vec4<u32>(44694u, 11711u, 4294967295u, 1u), vec4<f32>(-385f, -850f, -1000f, 396f), true, true, vec4<f32>(776f, -695f, 372f, 279f)), Struct_1(vec4<u32>(29994u, 19040u, 0u, 44357u), vec4<f32>(-595f, 258f, -680f, -1119f), true, true, vec4<f32>(482f, 2606f, -1085f, -509f)), Struct_1(vec4<u32>(4294967295u, 4502u, 0u, 73240u), vec4<f32>(-467f, 483f, -757f, 1064f), false, false, vec4<f32>(-320f, -126f, -352f, -743f)), Struct_1(vec4<u32>(27226u, 0u, 5125u, 1u), vec4<f32>(-1540f, 2498f, -1038f, 1231f), false, false, vec4<f32>(241f, 568f, -462f, 455f)), Struct_1(vec4<u32>(22643u, 37600u, 23928u, 4294967295u), vec4<f32>(394f, 1115f, 1000f, -1000f), false, false, vec4<f32>(941f, 1000f, -294f, 138f)), Struct_1(vec4<u32>(4658u, 123228u, 6526u, 46924u), vec4<f32>(658f, 788f, -129f, 2364f), false, true, vec4<f32>(707f, 427f, -282f, 1200f)), Struct_1(vec4<u32>(50398u, 31202u, 4294967295u, 45601u), vec4<f32>(-1243f, -143f, 1000f, 829f), true, true, vec4<f32>(-121f, -1611f, -246f, -728f)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 12680u), vec4<f32>(-965f, 1616f, 635f, 1187f), false, false, vec4<f32>(-2059f, -906f, 411f, 1572f)), Struct_1(vec4<u32>(72764u, 4294967295u, 0u, 0u), vec4<f32>(-494f, -1108f, 245f, 396f), true, false, vec4<f32>(826f, -1873f, -299f, -324f)), Struct_1(vec4<u32>(1u, 48813u, 2694u, 4294967295u), vec4<f32>(-399f, 762f, -764f, 644f), true, true, vec4<f32>(952f, -1811f, -448f, 1088f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = vec3<bool>(true, false, -882f == global0[_wgslsmith_index_u32(select(~(33961u << (0u % 32u)), abs(1u), true), 16u)]);
    var var_1 = var_0;
    return ~(~firstTrailingBit(~58639u) | (46633u >> (_wgslsmith_mod_u32(~1u, ~1u) % 32u)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(66704u, ~(49552u << (0u % 32u)), 4294967295u), select(vec3<u32>(func_3(-47602i), ~0u, ~32899u), ~(~vec3<u32>(4294967295u, 1u, 63832u)), true), ~firstTrailingBit(vec3<u32>(67894u, 12940u, 4294967295u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    let var_1 = false;
    global0 = array<f32, 16>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 16u)]), 917f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1559f)) * _wgslsmith_f_op_f32(-561f * -790f)))), 1239f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 16u)])), arg_0)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(-1000f + -1046f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1752u, 16u)]))));
    global0 = array<f32, 16>();
    global1 = array<Struct_1, 31>();
    var_0 = arg_1.e.x;
    let var_1 = Struct_1((arg_1.a >> (vec4<u32>(_wgslsmith_clamp_u32(8879u, arg_1.a.x, 3424u), arg_1.a.x >> (arg_1.a.x % 32u), ~arg_1.a.x, 1u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~arg_1.a.x, arg_1.a.x, 77543u), ~(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 0u) << (vec4<u32>(1790u, arg_1.a.x, 4294967295u, arg_1.a.x) % vec4<u32>(32u)))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-arg_1.e.x))), global0[_wgslsmith_index_u32(36155u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(ceil(840f)))).x)), arg_1.c, any(select(vec2<bool>(true, arg_1.c && arg_0), !select(vec2<bool>(arg_0, arg_1.c), vec2<bool>(arg_1.c, arg_0), true), vec2<bool>(44967u != arg_1.a.x, false))), _wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -741f, -439f, global0[_wgslsmith_index_u32(3356u, 16u)]) - vec4<f32>(496f, 1000f, arg_1.e.x, -1600f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + arg_1.e))));
    return vec4<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_1.b.x))) > arg_2.x), !any(vec3<bool>(any(vec2<bool>(arg_0, true)), !arg_1.c, all(vec4<bool>(false, var_1.c, false, arg_0)))), true | var_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    var var_1 = ~0u;
    var var_2 = select(select(select(vec4<bool>(var_0, var_0 | var_0, !var_0, true), !vec4<bool>(false, var_0, true, false), false), select(!vec4<bool>(false, var_0, true, var_0), !select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, var_0, false)), !(!vec4<bool>(var_0, var_0, var_0, var_0))), select(!vec4<bool>(var_0, var_0, true, var_0), select(vec4<bool>(true, false, true, true), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, var_0, false, true), vec4<bool>(false, var_0, true, var_0)), select(false, true, var_0)), any(select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(var_0, true))))), !vec4<bool>(false, !var_0, all(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), false)), var_0 | (var_0 || var_0)), !func_4(var_0, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(40643u, 10997u, 1u, 42153u), vec4<u32>(0u, 25007u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 28397u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1657f, global0[_wgslsmith_index_u32(4294967295u, 16u)], -2468f, 382f)), var_0, any(vec2<bool>(var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, -1374f, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -777f, global0[_wgslsmith_index_u32(1u, 16u)])) + _wgslsmith_f_op_vec3_f32(func_2(global0[_wgslsmith_index_u32(22894u, 16u)])))));
    let var_3 = 1u;
    let var_4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(select(0u & var_3, ~reverseBits(abs(var_3)), !(1228f >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3, 16u)]))), 16u)] + global0[_wgslsmith_index_u32(~min(max(firstLeadingBit(44296u), ~var_3), var_3), 16u)]);
    return global1[_wgslsmith_index_u32(0u, 31u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-10400i, -2147483647i, _wgslsmith_clamp_i32(u_input.b.x << (arg_0.a.x % 32u), _wgslsmith_sub_i32(0i, u_input.a), ~u_input.b.x), _wgslsmith_div_i32(_wgslsmith_div_i32(12116i, u_input.a), -u_input.a)), abs(vec4<i32>(-48778i, 27072i, -7193i, u_input.a))), countOneBits(~(~_wgslsmith_add_vec4_i32(vec4<i32>(221i, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(31766i, u_input.a, u_input.b.x, -2147483647i)))));
    let var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(min(arg_0.a, arg_0.a) >> (~arg_1.a % vec4<u32>(32u)), ~abs(vec4<u32>(33122u, 30488u, arg_1.a.x, arg_1.a.x))), vec4<u32>(~arg_1.a.x & 79500u, ~(~1u), arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(812u, 0u, 46052u, 74329u), firstTrailingBit(vec4<u32>(arg_0.a.x, arg_1.a.x, arg_0.a.x, 78636u)))));
    var var_2 = ~var_1.x;
    var var_3 = Struct_1(~abs((vec4<u32>(0u, arg_1.a.x, 76903u, var_1.x) & vec4<u32>(arg_0.a.x, arg_0.a.x, arg_1.a.x, arg_1.a.x)) >> (~arg_0.a % vec4<u32>(32u))), arg_0.e, arg_1.d, false, _wgslsmith_f_op_vec4_f32(-arg_0.e));
    var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~min(vec4<i32>(-2513i, 833i, 38718i, 6219i), vec4<i32>(-1i, u_input.a, 6350i, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, -1i, -1i) | vec4<i32>(var_0.x, 2147483647i, 2147483647i, -1i), -vec4<i32>(u_input.a, u_input.b.x, -33513i, 0i), vec4<i32>(u_input.b.x, var_0.x, var_0.x, u_input.a) | vec4<i32>(var_0.x, -22150i, 22732i, u_input.a))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 34355i, var_0.x, u_input.a) | vec4<i32>(u_input.b.x, -21193i, 1350i, u_input.a), select(-vec4<i32>(u_input.a, 0i, u_input.a, 1i), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -2147483647i)), true), countOneBits(vec4<i32>(11244i, 0i, var_0.x, var_0.x)))) << (abs(~var_3.a) % vec4<u32>(32u));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 364f;
    let var_1 = func_5(func_1(), Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, 350f, 3021f, 362f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(6184u, 16u)], 1797f, global0[_wgslsmith_index_u32(27813u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))))), all(!func_4(false, Struct_1(vec4<u32>(4294967295u, 3343u, 4294967295u, 0u), vec4<f32>(global0[_wgslsmith_index_u32(26968u, 16u)], -1206f, 338f, global0[_wgslsmith_index_u32(30241u, 16u)]), false, true, vec4<f32>(-701f, global0[_wgslsmith_index_u32(100871u, 16u)], 624f, 309f)), vec3<f32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], 388f))), abs(select(36932u, 1u, false)) <= _wgslsmith_div_u32(1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 16u)] - global0[_wgslsmith_index_u32(7149u, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)] + global0[_wgslsmith_index_u32(7984u, 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(647f, -726f))))));
    let var_2 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_1.a.x), 31u)], var_1);
    let var_3 = any(vec3<bool>(var_1.c, true, any(func_4(var_1.c, func_1(), _wgslsmith_f_op_vec3_f32(step(var_2.e.zxy, var_1.b.xxy))))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.a.x, ~var_2.a.x, ~_wgslsmith_mult_u32(0u, select(4294967295u, var_2.a.x, var_3))), (var_2.a.x & reverseBits(47851u)) << ((~firstLeadingBit(var_4.a.x) | ~reverseBits(0u)) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1().e.x - var_1.b.x), global0[_wgslsmith_index_u32(61125u, 16u)]) - var_4.e.ww), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-26692i, countOneBits(-2147483647i), u_input.b.x << (0u % 32u))), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x & u_input.a)));
}

