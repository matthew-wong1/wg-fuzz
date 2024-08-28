struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, false, false);

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false));

var<private> global3: i32 = -32431i;

var<private> global4: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global4.b;
    global2 = array<vec4<bool>, 11>();
    global4 = Struct_2(select(-(global4.a << (abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)) % vec4<u32>(32u))), -_wgslsmith_sub_vec4_i32(countOneBits(global4.a), firstTrailingBit(vec4<i32>(global4.a.x, -2147483647i, 2147483647i, global4.a.x))), vec4<bool>(all(!global2[_wgslsmith_index_u32(u_input.b, 11u)]), true, all(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 5u)], false)), false)), (((80860u | u_input.a.x) >= 10763u) && all(select(vec3<bool>(global4.b, true, false), vec3<bool>(true, global4.b, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), global1[_wgslsmith_index_u32(u_input.b, 5u)]))) & global1[_wgslsmith_index_u32(7311u, 5u)]);
    let var_1 = vec4<i32>(countOneBits(reverseBits(abs(0i))), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(global4.a.x, max(global4.a.x, global4.a.x)), -21651i), 0i, global4.a.x);
    global1 = array<bool, 5>();
    return vec4<i32>(var_1.x, -countOneBits(firstLeadingBit(var_1.x)), 2147483647i, var_1.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = Struct_1(-_wgslsmith_div_vec4_i32(global4.a, select(~vec4<i32>(36797i, 16439i, 41533i, 12721i), func_3(), any(vec2<bool>(true, false)))), ~(-((arg_1.d.b | global4.a.x) << (~14457u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -870f), arg_1.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b))), _wgslsmith_f_op_f32(-1577f - _wgslsmith_f_op_f32(floor(arg_1.a.e.x)))), max(vec3<i32>(arg_1.d.a.x, global4.a.x, 50458i), firstLeadingBit(reverseBits(vec3<i32>(1i, 24837i, arg_1.d.a.x)))), _wgslsmith_f_op_vec4_f32(max(arg_1.a.e, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e.x)), -450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -583f))));
    let var_1 = 1000f;
    global3 = 1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(var_0.c.xy));
    global4 = Struct_2(firstTrailingBit(~vec4<i32>(2147483647i, ~var_0.b, -20019i, 34226i)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1, -1089f, true)), -1013f, !arg_0.x))));
    return ~u_input.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = true;
    let var_1 = vec4<bool>(!(false & all(vec4<bool>(var_0, global4.b, global1[_wgslsmith_index_u32(0u, 5u)], true))), arg_0.c, !(arg_0.a.e.x > -947f), true);
    let var_2 = min(abs(~vec2<u32>(func_2(vec2<bool>(true, false), arg_0, -1000f), ~1u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 0u, u_input.a.x), u_input.a), reverseBits(2926u)) << (_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a.yx), ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 54385u)))));
    global1 = array<bool, 5>();
    let var_3 = ~vec4<i32>(arg_1, arg_1, 42719i, countOneBits(max(_wgslsmith_dot_vec4_i32(arg_0.a.a, arg_2.a), firstLeadingBit(3289i))));
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    global3 = 2147483647i;
    global1 = array<bool, 5>();
    return _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(func_1(Struct_3(Struct_1(arg_0.a.a, arg_0.a.a.x, vec4<f32>(2462f, -868f, 1164f, -1580f), arg_0.d.d, vec4<f32>(arg_0.a.c.x, -774f, arg_0.d.e.x, arg_0.b)), arg_0.a.c.x, global4.b, Struct_1(global4.a, arg_0.d.d.x, arg_0.d.e, global4.a.yxz, vec4<f32>(arg_0.a.e.x, -1417f, arg_0.a.c.x, arg_0.d.e.x))), 7250i, Struct_1(vec4<i32>(6237i, 46032i, -48538i, global4.a.x), -2147483647i, arg_0.d.c, arg_0.d.d, vec4<f32>(arg_0.d.e.x, arg_0.a.c.x, arg_0.a.e.x, arg_0.b)), u_input.b).d.d.x, arg_0.d.b), -29186i, -15914i, 18523i) ^ -global4.a, vec4<i32>(reverseBits(21880i), firstTrailingBit(~arg_0.a.a.x) | countOneBits(abs(0i)), _wgslsmith_div_i32(-(~arg_0.a.b), 5557i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec4_i32(reverseBits(abs(func_4(func_1(Struct_3(Struct_1(vec4<i32>(global4.a.x, -23590i, global4.a.x, global4.a.x), global4.a.x, vec4<f32>(-557f, 416f, 377f, 481f), global4.a.wxy, vec4<f32>(-1191f, -130f, -2416f, -982f)), -584f, false, Struct_1(vec4<i32>(global4.a.x, global4.a.x, global4.a.x, global4.a.x), -2147483647i, vec4<f32>(-437f, -712f, -2090f, 838f), global4.a.xxx, vec4<f32>(-943f, 213f, -663f, -679f))), global4.a.x, Struct_1(global4.a, 2147483647i, vec4<f32>(710f, 753f, -645f, 1740f), global4.a.wzz, vec4<f32>(-1643f, 871f, 1104f, -939f)), 1229u)))), vec4<i32>(~_wgslsmith_add_i32(31958i, 0i), 32724i, max(~global4.a.x, _wgslsmith_div_i32(-13517i, global4.a.x)) >> ((276u ^ var_0) % 32u), 18738i));
    global0 = all(vec2<bool>(global4.b, any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 5u)], true))));
    let var_2 = !select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 5u)]), !vec2<bool>(true, global4.b), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, true)), true), true & (!global4.b | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, 1u), 5u)]));
    var var_3 = Struct_3(func_1(Struct_3(func_1(Struct_3(Struct_1(global4.a, 17195i, vec4<f32>(-1311f, -1436f, -1384f, -634f), vec3<i32>(global4.a.x, -2147483647i, -1i), vec4<f32>(-457f, 281f, -1845f, -240f)), 1796f, true, Struct_1(vec4<i32>(global4.a.x, -16603i, global4.a.x, 2147483647i), -26364i, vec4<f32>(-1583f, 1596f, 483f, -849f), vec3<i32>(7081i, global4.a.x, 2147483647i), vec4<f32>(-1104f, 1000f, -1505f, 1411f))), -2147483647i, Struct_1(vec4<i32>(global4.a.x, global4.a.x, -70617i, -1i), -2147483647i, vec4<f32>(-471f, 2398f, -163f, -1316f), global4.a.zxw, vec4<f32>(-710f, 531f, 1289f, 447f)), ~36905u).a, _wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_mod_u32(var_0, 4294967295u) == ~u_input.b, func_1(func_1(Struct_3(Struct_1(global4.a, global4.a.x, vec4<f32>(-1000f, 1000f, -104f, 466f), global4.a.www, vec4<f32>(-245f, -1263f, -634f, 1373f)), -551f, true, Struct_1(global4.a, global4.a.x, vec4<f32>(1836f, -1166f, -384f, -1000f), vec3<i32>(global4.a.x, 21788i, -3145i), vec4<f32>(-302f, 408f, 399f, 2263f))), global4.a.x, Struct_1(global4.a, global4.a.x, vec4<f32>(180f, -722f, -1068f, -1000f), vec3<i32>(-2147483647i, global4.a.x, global4.a.x), vec4<f32>(-575f, -2026f, -496f, 1066f)), 15665u), ~28522i, func_1(Struct_3(Struct_1(global4.a, -1i, vec4<f32>(-1000f, -397f, 1000f, 641f), global4.a.zxx, vec4<f32>(1000f, 213f, 1000f, 1806f)), -318f, global1[_wgslsmith_index_u32(1u, 5u)], Struct_1(global4.a, -15479i, vec4<f32>(590f, -1000f, -341f, -1150f), global4.a.wxy, vec4<f32>(-875f, 989f, 1666f, 1364f))), global4.a.x, Struct_1(global4.a, 2147483647i, vec4<f32>(1370f, 645f, -877f, 410f), vec3<i32>(-2147483647i, 31059i, global4.a.x), vec4<f32>(-1268f, -877f, -897f, 2091f)), 1u).a, var_0).d), global4.a.x, Struct_1(vec4<i32>(~2147483647i, -global4.a.x, global4.a.x | global4.a.x, countOneBits(-1i)), 34734i, vec4<f32>(1f, _wgslsmith_f_op_f32(floor(542f)), _wgslsmith_f_op_f32(ceil(-415f)), _wgslsmith_f_op_f32(1129f - 1242f)), global4.a.zww << (~u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(295f, 650f, 624f, -292f) - vec4<f32>(-1573f, 895f, -365f, 606f))), 0u).d, _wgslsmith_f_op_f32(floor(266f)), (-1554f != _wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(select(-158f, -1091f, false)))) & (~var_0 > (_wgslsmith_add_u32(u_input.b, u_input.b) & ~u_input.a.x)), Struct_1(~func_4(func_1(Struct_3(Struct_1(global4.a, global4.a.x, vec4<f32>(440f, -1000f, -1991f, -1000f), vec3<i32>(1i, -5594i, global4.a.x), vec4<f32>(-609f, 749f, 1236f, -266f)), -1251f, global1[_wgslsmith_index_u32(61928u, 5u)], Struct_1(vec4<i32>(global4.a.x, 0i, 0i, 0i), global4.a.x, vec4<f32>(384f, -881f, 302f, -716f), global4.a.yzx, vec4<f32>(595f, 1573f, -1671f, 976f))), -2147483647i, Struct_1(vec4<i32>(-1i, 5685i, global4.a.x, 9984i), global4.a.x, vec4<f32>(-1000f, -1619f, -854f, 257f), global4.a.wzw, vec4<f32>(-126f, 1197f, -355f, 701f)), 6577u)), max(_wgslsmith_sub_i32(-2147483647i >> (var_0 % 32u), _wgslsmith_mod_i32(0i, global4.a.x)), -_wgslsmith_mod_i32(-1i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(407f, -172f, -834f, 163f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 612f, 748f, 571f) * vec4<f32>(-2247f, 167f, -298f, -1280f))) + vec4<f32>(-620f, _wgslsmith_f_op_f32(f32(-1f) * -219f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), max(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a.x, global4.a.x, -1i), vec3<i32>(30275i, -10634i, 2147483647i), global4.a.xyx)), vec3<i32>(global4.a.x >> (var_0 % 32u), global4.a.x, global4.a.x)), vec4<f32>(-1755f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1166f)))), _wgslsmith_f_op_f32(abs(-2275f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -989f))))));
    var var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), ~(-var_3.a.d.x)), _wgslsmith_div_vec2_i32(var_3.a.a.xw, -func_1(Struct_3(var_3.d, var_3.a.c.x, var_2.x, var_3.d), ~(-15063i), Struct_1(var_3.a.a, 18918i, vec4<f32>(717f, -347f, var_3.a.c.x, var_3.b), vec3<i32>(44843i, var_3.d.d.x, -59237i), vec4<f32>(574f, -543f, var_3.d.c.x, var_3.d.e.x)), func_2(vec2<bool>(false, true), Struct_3(var_3.d, var_3.b, global1[_wgslsmith_index_u32(4294967295u, 5u)], var_3.d), 1343f)).a.d.yz), abs(~(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.a.x, -43220i), global4.a.xw) & (global4.a.zw >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))))));
    var var_5 = ~func_3().xw;
    var var_6 = !global2[_wgslsmith_index_u32(abs(1u), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(var_3.d.c.x, var_3.d.c.x)), _wgslsmith_div_vec4_i32(func_1(func_1(Struct_3(var_3.a, var_3.a.e.x, true, Struct_1(global4.a, -330i, vec4<f32>(1000f, 1000f, var_3.a.c.x, -189f), vec3<i32>(var_3.a.d.x, var_5.x, 1i), var_3.d.e)), firstLeadingBit(var_3.d.d.x), Struct_1(vec4<i32>(global4.a.x, 30091i, -1i, 1i), 0i, vec4<f32>(var_3.d.e.x, var_3.b, var_3.a.c.x, 1454f), var_3.a.a.xwx, var_3.d.e), ~u_input.a.x), -1i, func_1(Struct_3(var_3.a, -552f, true, Struct_1(vec4<i32>(0i, var_3.a.b, var_5.x, global4.a.x), var_5.x, vec4<f32>(var_3.b, var_3.a.e.x, var_3.a.c.x, var_3.b), vec3<i32>(var_5.x, global4.a.x, 1i), vec4<f32>(1413f, var_3.b, var_3.b, -704f))), var_4.x, func_1(Struct_3(var_3.d, -655f, var_2.x, Struct_1(var_3.d.a, var_3.a.d.x, vec4<f32>(var_3.a.e.x, -1103f, var_3.b, 254f), global4.a.yxy, vec4<f32>(1000f, var_3.a.e.x, var_3.b, 1839f))), global4.a.x, var_3.a, 5774u).a, 1u).a, var_0).d.a, vec4<i32>(_wgslsmith_sub_i32(var_5.x | var_4.x, ~var_5.x), 1i, 6446i, _wgslsmith_mod_i32(var_3.d.b, -var_5.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.d.e.xzx + _wgslsmith_f_op_vec3_f32(ceil(var_3.d.c.zwz))))));
}

