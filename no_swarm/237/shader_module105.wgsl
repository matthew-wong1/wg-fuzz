struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(411f, vec3<f32>(516f, -488f, -1000f), vec3<i32>(-28020i, -1i, i32(-2147483648)), vec2<bool>(true, true), 2147483647i), Struct_1(1621f, vec3<f32>(-1000f, 1000f, 118f), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec2<bool>(true, true), 1i), Struct_1(-719f, vec3<f32>(1503f, 1663f, -1486f), vec3<i32>(i32(-2147483648), 0i, -32859i), vec2<bool>(false, false), 1i), Struct_1(118f, vec3<f32>(813f, -512f, -460f), vec3<i32>(i32(-2147483648), 26502i, 22126i), vec2<bool>(true, false), -3681i), Struct_1(1908f, vec3<f32>(-859f, 1344f, -790f), vec3<i32>(-54330i, 2147483647i, -1i), vec2<bool>(true, true), -23672i), Struct_1(312f, vec3<f32>(152f, 186f, 229f), vec3<i32>(i32(-2147483648), 83243i, 39395i), vec2<bool>(true, true), 21720i), Struct_1(807f, vec3<f32>(-169f, -1011f, 1229f), vec3<i32>(90626i, -63953i, 1i), vec2<bool>(false, false), 44926i), Struct_1(574f, vec3<f32>(-377f, 668f, -1193f), vec3<i32>(-43457i, 0i, 2147483647i), vec2<bool>(true, true), 17782i), Struct_1(-389f, vec3<f32>(-120f, -1543f, 863f), vec3<i32>(-1i, 38813i, i32(-2147483648)), vec2<bool>(true, true), -5595i), Struct_1(-1000f, vec3<f32>(321f, 1000f, -2242f), vec3<i32>(29692i, 1i, 1i), vec2<bool>(false, false), -32431i), Struct_1(491f, vec3<f32>(-401f, 968f, -838f), vec3<i32>(-52719i, -25188i, 37805i), vec2<bool>(false, false), 1i), Struct_1(-146f, vec3<f32>(-1000f, 370f, -274f), vec3<i32>(0i, -33671i, i32(-2147483648)), vec2<bool>(true, false), 42718i), Struct_1(-754f, vec3<f32>(-1170f, -2788f, -542f), vec3<i32>(2147483647i, 0i, 714i), vec2<bool>(false, false), 83666i), Struct_1(-1465f, vec3<f32>(269f, -1573f, -587f), vec3<i32>(6604i, -27005i, -1i), vec2<bool>(true, true), 2147483647i), Struct_1(-629f, vec3<f32>(-274f, -2620f, -880f), vec3<i32>(-41195i, 12680i, i32(-2147483648)), vec2<bool>(false, true), 1i), Struct_1(-997f, vec3<f32>(1000f, -368f, -1466f), vec3<i32>(-26909i, 9982i, i32(-2147483648)), vec2<bool>(true, true), -47951i), Struct_1(218f, vec3<f32>(-554f, -649f, -1596f), vec3<i32>(-1i, 2147483647i, 0i), vec2<bool>(false, false), i32(-2147483648)), Struct_1(2490f, vec3<f32>(1452f, -472f, -840f), vec3<i32>(13350i, 44327i, i32(-2147483648)), vec2<bool>(true, true), -46805i), Struct_1(1164f, vec3<f32>(-183f, 1296f, 620f), vec3<i32>(1i, -25192i, i32(-2147483648)), vec2<bool>(true, false), -74182i), Struct_1(-165f, vec3<f32>(-1545f, 1000f, -961f), vec3<i32>(2147483647i, -10382i, 26505i), vec2<bool>(true, false), -17013i), Struct_1(-694f, vec3<f32>(613f, 694f, -1977f), vec3<i32>(-1i, -63697i, -528i), vec2<bool>(false, false), 0i), Struct_1(-1218f, vec3<f32>(1000f, 666f, -248f), vec3<i32>(i32(-2147483648), 1i, 12248i), vec2<bool>(true, false), 2147483647i), Struct_1(192f, vec3<f32>(-137f, 2430f, -275f), vec3<i32>(-98372i, -15477i, 2147483647i), vec2<bool>(false, true), 1i), Struct_1(1515f, vec3<f32>(-1083f, 354f, -939f), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<bool>(true, false), -1i), Struct_1(-134f, vec3<f32>(184f, -524f, -1524f), vec3<i32>(0i, 0i, 2147483647i), vec2<bool>(true, false), 10584i));

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 14805u);

var<private> global2: array<f32, 11> = array<f32, 11>(1545f, 317f, 1032f, -1089f, 239f, 329f, -1736f, -370f, 218f, -1448f, -1000f);

var<private> global3: vec3<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    return vec4<bool>(global3.x, true, any(!vec2<bool>(global3.x || global3.x, u_input.b.x >= global1.x)), global3.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    global1 = vec3<u32>(~u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(47110u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)));
    let var_0 = select(select(vec4<bool>(any(vec2<bool>(false, true)), false, global3.x, global3.x), !func_3(_wgslsmith_add_i32(u_input.a, -10636i)), vec4<bool>(!global3.x, any(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, false), false)), global3.x, all(!vec3<bool>(false, false, global3.x)))), select(!select(!vec4<bool>(false, global3.x, false, global3.x), !vec4<bool>(false, true, global3.x, global3.x), !vec4<bool>(global3.x, global3.x, true, global3.x)), select(select(vec4<bool>(true, false, false, global3.x), vec4<bool>(true, true, global3.x, true), vec4<bool>(true, false, global3.x, global3.x)), select(!vec4<bool>(true, global3.x, true, true), !vec4<bool>(false, true, true, global3.x), vec4<bool>(false, false, global3.x, global3.x)), global2[_wgslsmith_index_u32(u_input.b.x, 11u)] > _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 11u)]))), !(!(!vec4<bool>(global3.x, true, global3.x, true)))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_1, u_input.c, -36778i), vec3<i32>(50693i, 0i, -16001i)), vec3<i32>(u_input.d, u_input.a, u_input.d) & vec3<i32>(u_input.d, 0i, -1i)) >= min(21504i, -u_input.c | ~18067i));
    global2 = array<f32, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(185f, _wgslsmith_f_op_f32(step(-213f, -123f)), _wgslsmith_f_op_f32(sign(-255f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, global2[_wgslsmith_index_u32(arg_0.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -783f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(899f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], -947f)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], -284f, global2[_wgslsmith_index_u32(1u, 11u)], var_1.x))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -2362f)), _wgslsmith_f_op_f32(871f - _wgslsmith_f_op_f32(sign(var_1.x))), global2[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_f_op_f32(var_1.x + 478f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 11u)], var_1.x, 1000f, -273f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_0.x, 11u)])))))));
    return Struct_1(-824f, vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(28808u >> (u_input.b.x % 32u)), 11u)]), var_1.x, global2[_wgslsmith_index_u32(~1u, 11u)]), countOneBits(~(~(vec3<i32>(u_input.d, 62034i, 1i) >> (arg_0 % vec3<u32>(32u))))), func_3(-1i).zx, -countOneBits(-(-1i >> (u_input.b.x % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.b.x;
    global1 = ~u_input.b.wyw;
    return _wgslsmith_f_op_f32(f32(-1f) * -513f);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    global3 = select(!vec3<bool>(arg_2.d.x, all(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), false), !(!(!func_3(1i).wyw)), !global3.x);
    let var_0 = arg_2;
    global1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~4294967295u, global1.x << (u_input.b.x % 32u)), _wgslsmith_mult_u32(46154u, min(53615u, u_input.b.x)), u_input.b.x), _wgslsmith_clamp_vec3_u32(u_input.b.ywz, vec3<u32>(global1.x, 1u, u_input.b.x), u_input.b.wyy));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(382f - arg_2.a))), _wgslsmith_f_op_f32(func_4(Struct_1(var_0.b.x, vec3<f32>(213f, 1262f, -372f), vec3<i32>(47641i, u_input.c, u_input.c), select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), arg_2.d), u_input.d), var_0, var_0)))), _wgslsmith_f_op_vec3_f32(sign(arg_2.b)), ~vec3<i32>(-_wgslsmith_div_i32(0i, arg_1.x), arg_2.c.x, _wgslsmith_add_i32(arg_1.x, 60066i)), global3.xy, ~_wgslsmith_clamp_i32(-681i, var_0.e, ~(-36617i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c, arg_2.e), u_input.a, var_0.e), vec3<i32>(_wgslsmith_mod_i32(0i, arg_2.c.x), -arg_2.c.x, -4266i)));
    let var_2 = func_2(vec3<u32>(~min(16928u << (global1.x % 32u), countOneBits(0u)), ~u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(31567i, 8267i), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(1i, arg_1.x, u_input.c, -37211i)), ~var_0.e), var_0.c), func_2(u_input.b.xzw, 0i).c));
    return var_2.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.b.x, 11u)];
    let var_1 = vec3<bool>(true, arg_3, global3.x);
    let var_2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_2(vec3<u32>(u_input.b.x, 5941u, 22234u), 26933i), func_2(u_input.b.xyy, 11598i), Struct_1(845f, vec3<f32>(global2[_wgslsmith_index_u32(48984u, 11u)], -577f, 1303f), vec3<i32>(arg_0.x, u_input.a, arg_2), arg_1.ww, -30134i))), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.b.x, 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f + _wgslsmith_f_op_f32(-1115f * global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))), -597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(global1.x), 11u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(44544u, 11u)])))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-43607i, arg_0.x, u_input.a, 2147483647i), vec4<i32>(-30284i, arg_0.x, u_input.c, arg_0.x)), vec4<i32>(-2147483647i, 2715i, -40589i, 37706i)), vec4<i32>(reverseBits(arg_2), 1i ^ arg_2, arg_2, firstLeadingBit(-10926i))), Struct_1(global2[_wgslsmith_index_u32(countOneBits(58066u), 11u)], vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_f_op_f32(-1f), 900f), vec3<i32>(select(-32506i, ~1i, select(arg_3, global3.x, arg_1.x)), _wgslsmith_clamp_i32(0i >> (u_input.b.x % 32u), _wgslsmith_add_i32(33910i, u_input.c), 739i), func_2(~vec3<u32>(global1.x, 80490u, u_input.b.x), -60122i).c.x), !vec2<bool>(func_2(vec3<u32>(22296u, 0u, u_input.b.x), 0i).d.x, !global3.x), arg_2));
    var var_3 = u_input.b.xyy;
    var_3 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 5981u, 34938u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(vec3<bool>(true, (false & any(vec3<bool>(true, false, true))) & true, global3.x), vec3<bool>(true, global3.x, all(!vec4<bool>(global3.x, false, false, global3.x))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)] * -209f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1807f * -1000f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), !select(func_1(vec2<i32>(-10355i, 26801i), vec4<bool>(false, global3.x, false, false), u_input.d, global3.x), global3.x, false), false));
    global0 = array<Struct_1, 25>();
    global1 = u_input.b.zzw;
    let var_0 = vec4<bool>(func_2(~(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << (u_input.b.wzx % vec3<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.a), 246i)).a < _wgslsmith_f_op_f32(-1782f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-564f)) + _wgslsmith_f_op_f32(-213f * global2[_wgslsmith_index_u32(1u, 11u)]))), false, u_input.d >= ~u_input.c, func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))), _wgslsmith_f_op_f32(-1002f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 11u)] * -143f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(258f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]) + _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(20444u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, 46889u, select(global1.x, global1.x, true)), 11u)]), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -15806i), vec3<i32>(u_input.d, u_input.d, u_input.a)) >> (u_input.b.x % 32u), -20403i, ~u_input.a, (u_input.a | 2147483647i) | _wgslsmith_mod_i32(-1i, 2689i)), global0[_wgslsmith_index_u32(abs(1u), 25u)]).x);
    var var_1 = _wgslsmith_mod_i32(u_input.d & u_input.c, -2147483647i);
    global1 = u_input.b.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(~1u, firstTrailingBit(u_input.b.x)), 11u)]), global2[_wgslsmith_index_u32(u_input.b.x, 11u)]));
}

