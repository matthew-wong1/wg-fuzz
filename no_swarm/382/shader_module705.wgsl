struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(606f, -623f), vec3<f32>(-726f, 870f, 466f), true, 59574i), Struct_1(vec2<f32>(-1075f, 1208f), vec3<f32>(208f, 2579f, -718f), true, i32(-2147483648)), Struct_1(vec2<f32>(-824f, 1023f), vec3<f32>(-575f, -218f, -531f), false, 33778i), Struct_1(vec2<f32>(-550f, -1614f), vec3<f32>(407f, 430f, 1000f), true, 7869i), Struct_1(vec2<f32>(217f, 110f), vec3<f32>(-637f, -1326f, -125f), false, -8520i), Struct_1(vec2<f32>(656f, -1466f), vec3<f32>(2150f, -565f, -458f), false, i32(-2147483648)), Struct_1(vec2<f32>(-1423f, 289f), vec3<f32>(-780f, -1000f, -793f), true, -13792i), Struct_1(vec2<f32>(-636f, 517f), vec3<f32>(-1085f, 1411f, -276f), false, 0i), Struct_1(vec2<f32>(-352f, -1722f), vec3<f32>(-1725f, 1000f, -1000f), true, 0i), Struct_1(vec2<f32>(-515f, -547f), vec3<f32>(-1298f, 790f, 139f), false, 38944i), Struct_1(vec2<f32>(552f, -1117f), vec3<f32>(-1972f, 551f, -716f), true, -31666i), Struct_1(vec2<f32>(-1876f, -468f), vec3<f32>(1000f, 597f, -1000f), true, -1i), Struct_1(vec2<f32>(-517f, -1138f), vec3<f32>(-1000f, 180f, 993f), false, 1i), Struct_1(vec2<f32>(-683f, 538f), vec3<f32>(388f, 648f, 734f), false, i32(-2147483648)), Struct_1(vec2<f32>(-1213f, -145f), vec3<f32>(503f, 672f, 1119f), true, 0i), Struct_1(vec2<f32>(2076f, -596f), vec3<f32>(-408f, -1160f, -2885f), false, -26515i), Struct_1(vec2<f32>(168f, -1413f), vec3<f32>(-1000f, 908f, -809f), false, i32(-2147483648)), Struct_1(vec2<f32>(-1264f, -1000f), vec3<f32>(1850f, 1276f, 1013f), false, 0i), Struct_1(vec2<f32>(-123f, 314f), vec3<f32>(-1334f, 190f, 171f), true, -1i), Struct_1(vec2<f32>(-946f, 1300f), vec3<f32>(-335f, 1500f, -1022f), true, -1i), Struct_1(vec2<f32>(2335f, 802f), vec3<f32>(2074f, -334f, -1640f), true, 0i), Struct_1(vec2<f32>(374f, 323f), vec3<f32>(567f, 1557f, -311f), true, 1i), Struct_1(vec2<f32>(3009f, -369f), vec3<f32>(164f, -124f, 959f), true, 2147483647i), Struct_1(vec2<f32>(-418f, -1528f), vec3<f32>(-592f, -304f, -691f), false, -1i), Struct_1(vec2<f32>(1041f, 157f), vec3<f32>(650f, -976f, -1508f), false, 952i), Struct_1(vec2<f32>(164f, 182f), vec3<f32>(139f, -181f, -1324f), false, 1i), Struct_1(vec2<f32>(-1933f, -208f), vec3<f32>(-1683f, -515f, -1358f), true, -14313i), Struct_1(vec2<f32>(1183f, -1412f), vec3<f32>(273f, -545f, 798f), false, 73611i), Struct_1(vec2<f32>(122f, -849f), vec3<f32>(446f, 1140f, -2189f), true, -1i), Struct_1(vec2<f32>(-1000f, 168f), vec3<f32>(-1000f, -1574f, -1634f), true, 2147483647i), Struct_1(vec2<f32>(-2172f, -382f), vec3<f32>(-482f, 1000f, 373f), true, 1i));

var<private> global2: array<u32, 9> = array<u32, 9>(33398u, 1u, 60760u, 4294967295u, 1u, 8912u, 1u, 1u, 39391u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return arg_0.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = firstTrailingBit(u_input.a);
    global1 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(1999f, arg_1.b.x), arg_1.b, arg_3.x, arg_0.x)));
    var_1 = _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u ^ global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 21u)], arg_1.b.x));
    let var_2 = true;
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1431f, -760f) * arg_1.a), _wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_1.b.x, arg_1.a.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, 569f, -479f), vec3<f32>(arg_1.a.x, 1117f, arg_1.b.x), true))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1795f + 1124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.b.x)))), !(!all(select(vec3<bool>(var_2, arg_1.c, var_2), vec3<bool>(var_2, arg_3.x, false), vec3<bool>(true, false, false)))), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~((vec3<i32>(-1i) * -(vec3<i32>(u_input.a.x, -22706i, u_input.a.x) | u_input.a)) | u_input.a);
    global1 = array<Struct_1, 31>();
    let var_1 = ~global2[_wgslsmith_index_u32(0u, 9u)];
    global1 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(func_2(vec2<i32>(var_0.x, -3215i), func_2(vec2<i32>(0i, arg_0.d), arg_1, u_input.a.x, vec2<bool>(arg_1.c, true)), min(arg_1.d, u_input.a.x), !vec2<bool>(arg_1.c, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1 & 1u, 21u)], 2113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1640u, 21u)], 1121f, false)))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-991f)))), true == any(!vec3<bool>(arg_1.c, arg_0.c, true)))));
    return _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(min(0u, var_1)), var_1, ~global2[_wgslsmith_index_u32(var_1, 9u)]), 9u)], global2[_wgslsmith_index_u32(var_1, 9u)]);
}

fn func_1() -> vec3<i32> {
    let var_0 = max(vec2<i32>(~(~(-1i)), u_input.a.x), vec2<i32>(-1i, countOneBits(-_wgslsmith_mult_i32(u_input.a.x, -69154i))));
    let var_1 = ~(~max(~reverseBits(1u), global2[_wgslsmith_index_u32(func_4(func_2(var_0, Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1157f), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61369u, 9u)], 9u)], 21u)], -1450f), true, 93i), -77467i, vec2<bool>(false, true)), func_2(vec2<i32>(var_0.x, 1i), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76208u, 9u)], 21u)], -1181f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 21u)], -121f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71645u, 9u)], 9u)], 9u)], 9u)], 21u)]), false, 1i), -1i, vec2<bool>(false, true))), 9u)]));
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f))) <= _wgslsmith_f_op_f32(ceil(1000f));
    return vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(u_input.a.x, 1i, var_0.x)), vec3<i32>(_wgslsmith_add_i32(~var_0.x, u_input.a.x >> (4294967295u % 32u)), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(37146i, var_0.x, u_input.a.x, -8478i) ^ vec4<i32>(var_0.x, 40016i, 28307i, u_input.a.x), vec4<i32>(-49511i, -1i, u_input.a.x, var_0.x)))), ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 9>();
    let var_0 = _wgslsmith_sub_vec3_i32(func_1(), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x ^ abs(_wgslsmith_mod_i32(-15701i, u_input.a.x))));
    let var_1 = func_2(select(var_0.xx, var_0.zy, false), func_2(var_0.yz >> (~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3909u, 9u)], 9u)], 9u)]) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(4517u, 21u)], global0[_wgslsmith_index_u32(41616u, 21u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30721u, 9u)], 9u)], 21u)], global0[_wgslsmith_index_u32(49445u, 21u)], global0[_wgslsmith_index_u32(91894u, 21u)])), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), var_0.x << (abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60443u, 9u)], 9u)]) % 32u)), u_input.a.x, vec2<bool>(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(287u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]) <= (global2[_wgslsmith_index_u32(4294967295u, 9u)] | 32364u), any(vec2<bool>(true, true)))), 2147483647i, select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<bool>(!(798f < global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30952u, 9u)], 9u)], 21u)]), any(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), any(vec3<bool>(false, false, true))), vec2<bool>(all(vec4<bool>(true, true, false, true)), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)))));
    global2 = array<u32, 9>();
    let var_2 = false;
    let var_3 = func_2(vec2<i32>(i32(-1i) * -2147483647i, var_0.x), func_2(~vec2<i32>(-var_0.x, 14229i), Struct_1(var_1.a, var_1.b, false, ~(-55546i)), var_1.d, vec2<bool>(true, var_2)), _wgslsmith_mod_i32(reverseBits(u_input.a.x) | ~_wgslsmith_add_i32(1i, var_1.d), u_input.a.x), select(!vec2<bool>(var_1.c, true), !vec2<bool>(all(vec3<bool>(var_1.c, var_2, true)), var_2 || var_1.c), select(vec2<bool>(true, true), vec2<bool>(true, true), select(!vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, var_2), vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_2, true)), !var_2))));
    global2 = array<u32, 9>();
    let var_4 = func_2(select(-var_0.yy & vec2<i32>(firstTrailingBit(var_1.d), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -1i)), (vec2<i32>(-1i) * -vec2<i32>(0i, u_input.a.x)) >> (((vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 1u) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 6566u) % vec2<u32>(32u))) >> (max(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27278u, 9u)], 9u)], 9u)], 4294967295u), vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)])) % vec2<u32>(32u))) % vec2<u32>(32u)), true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.x), -803f)), _wgslsmith_f_op_vec3_f32(sign(var_1.b)), false, select(i32(-1i) * -u_input.a.x, func_2(vec2<i32>(-2147483647i, -1i), Struct_1(var_3.a, vec3<f32>(var_1.a.x, var_3.a.x, 1540f), false, var_0.x), 30718i, !vec2<bool>(false, var_1.c)).d, true)), _wgslsmith_dot_vec4_i32(-vec4<i32>(962i, 139i, firstLeadingBit(var_1.d), select(-47499i, -1i, var_3.c)), ~(vec4<i32>(12126i, var_1.d, u_input.a.x, var_0.x) | (vec4<i32>(var_1.d, var_0.x, var_3.d, var_0.x) | vec4<i32>(-2147483647i, var_1.d, var_3.d, var_1.d)))), vec2<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(var_3.c, true, var_1.c), vec3<bool>(var_1.c, false, var_2)), select(vec3<bool>(true, var_2, var_1.c), vec3<bool>(var_3.c, var_2, false), vec3<bool>(var_2, var_2, var_2)), vec3<bool>(true, false, var_2))), false));
    var var_5 = vec3<bool>(var_4.c, var_3.c, any(select(!vec2<bool>(false, var_4.c), vec2<bool>(true, true), vec2<bool>(true, true))) && (_wgslsmith_f_op_f32(round(-1233f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(533f)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~20196u), global2[_wgslsmith_index_u32(29754u, 9u)]));
}

