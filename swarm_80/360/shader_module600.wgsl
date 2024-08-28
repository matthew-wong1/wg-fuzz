struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-515f, -1000f), vec2<f32>(1044f, 213f), vec2<f32>(-871f, 174f), vec2<f32>(-584f, -959f), vec2<f32>(-629f, -339f), vec2<f32>(582f, -1027f), vec2<f32>(1000f, -1228f), vec2<f32>(-415f, 806f), vec2<f32>(627f, -1882f), vec2<f32>(-280f, -851f), vec2<f32>(-852f, -2000f));

var<private> global1: vec3<u32>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(14956u, vec3<i32>(-8773i, -1200i, 1i), vec4<f32>(1203f, -459f, -679f, 1384f), 45365u), -116f, vec3<u32>(0u, 21731u, 1683u), vec4<i32>(1i, 0i, -852i, 1i)), Struct_3(Struct_1(4294967295u, vec3<i32>(4642i, -1i, -37841i), vec4<f32>(307f, -784f, -426f, 1046f), 94075u), -351f, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<i32>(9751i, -1i, -1i, 21803i)), Struct_3(Struct_1(0u, vec3<i32>(i32(-2147483648), 4919i, 0i), vec4<f32>(-588f, -441f, -566f, 132f), 4294967295u), 3138f, vec3<u32>(27226u, 4294967295u, 4294967295u), vec4<i32>(0i, 21629i, 1i, -54212i)), Struct_3(Struct_1(4497u, vec3<i32>(0i, i32(-2147483648), 1i), vec4<f32>(-1755f, -321f, 2493f, -356f), 28977u), -204f, vec3<u32>(4294967295u, 53006u, 1u), vec4<i32>(20835i, 16222i, 1i, 2147483647i)), Struct_3(Struct_1(0u, vec3<i32>(38579i, i32(-2147483648), 0i), vec4<f32>(1000f, 1343f, -406f, -435f), 4294967295u), 256f, vec3<u32>(58745u, 103892u, 1u), vec4<i32>(i32(-2147483648), 0i, -6423i, 31892i)), Struct_3(Struct_1(1169u, vec3<i32>(-1i, 1i, 41620i), vec4<f32>(149f, 315f, 887f, -231f), 0u), 150f, vec3<u32>(0u, 0u, 1u), vec4<i32>(-1i, i32(-2147483648), 6684i, i32(-2147483648))), Struct_3(Struct_1(4294967295u, vec3<i32>(i32(-2147483648), -9374i, 0i), vec4<f32>(-988f, 1609f, -990f, 1089f), 9836u), 801f, vec3<u32>(31441u, 0u, 32756u), vec4<i32>(i32(-2147483648), 1i, 27528i, 2147483647i)), Struct_3(Struct_1(24277u, vec3<i32>(0i, 19786i, -1i), vec4<f32>(-1000f, -1000f, -951f, 1781f), 4294967295u), -143f, vec3<u32>(16934u, 25091u, 0u), vec4<i32>(-24575i, i32(-2147483648), 5343i, i32(-2147483648))), Struct_3(Struct_1(1u, vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec4<f32>(-399f, 115f, -470f, 936f), 0u), 351f, vec3<u32>(57564u, 19008u, 25422u), vec4<i32>(6007i, 41842i, 0i, -1i)), Struct_3(Struct_1(11242u, vec3<i32>(39526i, i32(-2147483648), -1623i), vec4<f32>(-1000f, -311f, 871f, -567f), 6565u), 468f, vec3<u32>(19522u, 37455u, 37035u), vec4<i32>(1i, 26188i, -1i, -2780i)));

var<private> global4: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(451f, -1693f), vec2<f32>(-1461f, -513f), vec2<f32>(316f, 618f), vec2<f32>(1066f, 494f), vec2<f32>(-907f, -1849f), vec2<f32>(-320f, -1000f), vec2<f32>(-959f, 2880f), vec2<f32>(-124f, -1000f), vec2<f32>(-2449f, 903f), vec2<f32>(641f, 347f), vec2<f32>(1052f, 2028f), vec2<f32>(194f, -1378f), vec2<f32>(-910f, -1000f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<f32>, 11>();
    let var_0 = !global2.zy;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1336f, 1606f, -393f, -1000f))))) + vec4<f32>(_wgslsmith_div_f32(217f, 767f), 203f, _wgslsmith_f_op_f32(-477f + -129f), -1129f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(678f + 1094f), _wgslsmith_f_op_f32(318f * -1194f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(927f, 292f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 402f), -818f))), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), max(vec3<i32>(-1i, 0i, -44040i), vec3<i32>(-9555i, u_input.a.x, -1i))), max(min(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, -74869i, 2147483647i)), ~vec3<i32>(u_input.a.x, u_input.a.x, -3208i)))), Struct_3(Struct_1(~_wgslsmith_mod_u32(56516u, global1.x), max(-vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(14625i, -26176i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1750f, 1000f, -688f, 268f), _wgslsmith_div_vec4_f32(vec4<f32>(1837f, -322f, -271f, 1281f), vec4<f32>(2018f, -1435f, 1668f, 701f)), all(vec2<bool>(var_0.x, true)))), ~_wgslsmith_div_u32(1u, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1053f - _wgslsmith_f_op_f32(sign(-212f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f))), vec3<u32>(reverseBits(global1.x), global1.x, global1.x) | abs(vec3<u32>(0u, 16556u, 1u)), vec4<i32>(1i, countOneBits(~u_input.a.x), u_input.a.x, -3582i)), Struct_2(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a, u_input.a) & -u_input.a), abs(1i), vec2<bool>(any(select(vec2<bool>(false, true), var_0, vec2<bool>(var_0.x, true))), all(vec3<bool>(var_0.x, false, var_0.x))), false, ~global1.x));
    var var_2 = abs(~abs(var_1.e.e));
    let var_3 = ~var_1.d.d;
    return vec3<bool>(true, any(vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, var_0.x), true)), false, false)), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = -1000f;
    let var_1 = var_0;
    global2 = vec3<bool>(global2.x, arg_1.x, func_3().x);
    var var_2 = arg_0.a;
    var_2 = arg_0.a;
    return vec2<bool>(true, func_3().x && arg_1.x);
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.a.d;
    var var_1 = Struct_2(vec2<i32>(-2147483647i, ~_wgslsmith_clamp_i32(arg_0.a.b.x, u_input.a.x, -u_input.a.x)), arg_0.d.x, func_4(Struct_3(Struct_1(reverseBits(var_0), arg_0.a.b, arg_0.a.c, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)), ~min(vec3<u32>(var_0, arg_0.a.d, 4294967295u), arg_0.c), vec4<i32>(-22385i, -10277i, ~arg_0.d.x, _wgslsmith_mult_i32(arg_0.a.b.x, arg_0.d.x))), select(!func_3(), !vec3<bool>(false, global2.x, global2.x), func_3().x)), global2.x, _wgslsmith_add_u32(~(arg_0.c.x << (global1.x % 32u)), 120304u));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.a.c, arg_0.a.c, vec4<bool>(var_1.c.x, false, true, global2.x)))), arg_0.a.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.c) * _wgslsmith_f_op_vec4_f32(-arg_0.a.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)), arg_0.b), var_1.c.x)), vec3<i32>(firstTrailingBit(-min(var_1.a.x, -2147483647i)), -(~1i), abs(u_input.a.x)), global3[_wgslsmith_index_u32(~arg_0.c.x, 10u)], Struct_2(vec2<i32>(var_1.a.x, -var_1.b), 56925i, !var_1.c, var_1.d, 1u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1402f + 1f));
    global4 = array<vec2<f32>, 13>();
    return ~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_0, 0u), 45091u);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = select(!(!select(!vec2<bool>(global2.x, false), global2.xx, global2.x != global2.x)), select(!vec2<bool>(arg_0.x <= 1742f, any(vec2<bool>(global2.x, global2.x))), select(global2.zz, global2.yz, select(true, !global2.x, true)), global2.x), global2.yy);
    var var_1 = func_2(Struct_3(Struct_1(34263u, ~arg_1.d.xwz, _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(arg_1.b, arg_2.x, arg_2.x, 1486f)), ~32420u), _wgslsmith_f_op_f32(-643f - -1000f), countOneBits(~arg_1.c), vec4<i32>(arg_1.a.b.x | arg_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, arg_1.a.b.x), vec4<i32>(u_input.a.x, arg_1.a.b.x, arg_1.a.b.x, arg_1.d.x)), -1i, u_input.a.x))) ^ ~107553u;
    var_0 = vec2<bool>(true, false);
    let var_2 = min(i32(-1i) * -8689i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_1.d.x, arg_1.d.x), arg_1.a.b.zx) ^ vec2<i32>(-1374i, -1i), arg_1.a.b.yz), u_input.a.x));
    var_1 = global1.x;
    return Struct_2(-vec2<i32>(firstTrailingBit(var_2 | -1i), _wgslsmith_div_i32(arg_1.a.b.x, u_input.a.x)), -2147483647i, func_3().xx, global2.x, 0u >> (global1.x % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    return func_1(vec2<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1121f, -1457f))))), arg_2.x), Struct_3(Struct_1(4294967295u, (vec3<i32>(arg_0.b, 45892i, 0i) << (vec3<u32>(arg_0.e, global1.x, global1.x) % vec3<u32>(32u))) | vec3<i32>(u_input.a.x, arg_3, -11003i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1553f, 548f, -1000f, arg_2.x) * arg_2) * vec4<f32>(1000f, arg_2.x, 1701f, arg_2.x)), arg_0.e), _wgslsmith_f_op_f32(-arg_2.x), ~(~vec3<u32>(0u, global1.x, global1.x) & vec3<u32>(arg_0.e, arg_0.e, arg_0.e)), reverseBits(firstLeadingBit(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-326f, _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(219f))), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 10>();
    let var_0 = func_5(func_1(global4[_wgslsmith_index_u32(25227u, 13u)], global3[_wgslsmith_index_u32(~(~global1.x | (global1.x & 68674u)), 10u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-156f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2520f, 530f) - _wgslsmith_f_op_f32(1208f + 969f)), -320f, 1f)), func_1(vec2<f32>(-258f, _wgslsmith_f_op_f32(min(-100f, _wgslsmith_f_op_f32(round(-1932f))))), Struct_3(Struct_1(_wgslsmith_mult_u32(0u, 4294967295u), ~vec3<i32>(443i, -1i, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1885f, -1255f, 986f, -169f) + vec4<f32>(-1296f, 1000f, -1802f, -1204f)), ~0u), 1346f, vec3<u32>(global1.x, global1.x, global1.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(43970i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(6528i, -35072i, 1i, -1i))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1365f), 1f)), 1f, -1000f, _wgslsmith_f_op_f32(848f * -486f))).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f) - 1f), _wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(sign(-287f))))), countOneBits(0i));
    global3 = array<Struct_3, 10>();
    global0 = array<vec2<f32>, 11>();
    var var_1 = select(0u, ~min(~_wgslsmith_sub_u32(global1.x, var_0.e), 89363u), false);
    global2 = !func_3();
    var var_2 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-775f, 1000f, -1385f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(184f, 296f, -1000f), vec3<f32>(-517f, -1211f, -231f), true)))) + vec3<f32>(-161f, -826f, 1f))));
}

