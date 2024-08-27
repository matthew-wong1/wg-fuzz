struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1000f, -805f, -864f, 247f, 1541f, 1299f, 115f, -166f, -504f, 1000f, -1076f, -2541f, -527f, -490f, -366f, 478f, -2253f, -189f, -102f, 1000f, 147f, -388f, -498f, -807f, 1028f, 1576f, -493f, -875f);

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<f32>(2301f, 764f, 894f, 1453f), true)), Struct_2(Struct_1(vec4<f32>(-1000f, 893f, 1631f, -1616f), false)), Struct_2(Struct_1(vec4<f32>(1670f, 582f, 556f, 142f), false)), Struct_2(Struct_1(vec4<f32>(-442f, 1003f, -1003f, -740f), false)), Struct_2(Struct_1(vec4<f32>(-380f, -2848f, 114f, -134f), false)), Struct_2(Struct_1(vec4<f32>(1071f, 289f, 1054f, -1000f), true)), Struct_2(Struct_1(vec4<f32>(-1000f, -691f, -715f, 2002f), false)), Struct_2(Struct_1(vec4<f32>(1368f, -1532f, -2000f, -785f), false)), Struct_2(Struct_1(vec4<f32>(688f, -486f, -841f, -1417f), false)), Struct_2(Struct_1(vec4<f32>(-629f, 348f, 682f, -1916f), true)), Struct_2(Struct_1(vec4<f32>(262f, 1775f, -1080f, 486f), true)), Struct_2(Struct_1(vec4<f32>(-545f, 130f, 470f, -1317f), true)), Struct_2(Struct_1(vec4<f32>(692f, 472f, -800f, 312f), true)), Struct_2(Struct_1(vec4<f32>(368f, -1000f, -968f, -263f), false)), Struct_2(Struct_1(vec4<f32>(1008f, 199f, 196f, 833f), false)), Struct_2(Struct_1(vec4<f32>(276f, 180f, -1208f, 1318f), true)), Struct_2(Struct_1(vec4<f32>(-498f, 643f, -528f, -1736f), false)), Struct_2(Struct_1(vec4<f32>(-453f, -1437f, 127f, -717f), false)), Struct_2(Struct_1(vec4<f32>(715f, 2278f, 503f, -845f), true)), Struct_2(Struct_1(vec4<f32>(1411f, -1045f, 1113f, -1111f), true)), Struct_2(Struct_1(vec4<f32>(-1578f, 1204f, -356f, -849f), true)), Struct_2(Struct_1(vec4<f32>(898f, 713f, -1521f, 222f), true)), Struct_2(Struct_1(vec4<f32>(1568f, 1060f, 679f, 700f), true)), Struct_2(Struct_1(vec4<f32>(-1551f, 1151f, 1061f, 993f), false)), Struct_2(Struct_1(vec4<f32>(-781f, -1858f, -855f, -130f), false)), Struct_2(Struct_1(vec4<f32>(548f, 700f, -143f, 693f), false)), Struct_2(Struct_1(vec4<f32>(623f, -439f, -355f, -1009f), false)), Struct_2(Struct_1(vec4<f32>(-2610f, -638f, -520f, -834f), false)), Struct_2(Struct_1(vec4<f32>(-1178f, -500f, 160f, -1000f), false)), Struct_2(Struct_1(vec4<f32>(-971f, 1272f, -1526f, -2014f), false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_3(vec2<u32>(1u, ~6514u), arg_3.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-287f, 383f, 634f, _wgslsmith_f_op_f32(sign(arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1000f, 198f, _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_2, arg_2, -346f, 2264f))))), Struct_2(Struct_1(arg_0, true)));
    let var_2 = Struct_3(vec2<u32>(var_1.a.x, ~(~18928u)), -77939i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), global0[_wgslsmith_index_u32(var_1.a.x, 28u)], _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(arg_2))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] - -967f), _wgslsmith_f_op_f32(arg_2 * arg_2))))), var_1.d);
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(450f, var_1.c.x, false)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))), global0[_wgslsmith_index_u32(min(var_2.a.x, ~4294967295u) & arg_1.x, 28u)], _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.a.x) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a.x, 6177u, 1u), vec4<u32>(14451u, 0u, 0u, arg_1.x)), 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(815f)))), var_1.d.a.b);
    let var_4 = vec2<i32>(abs(~min(_wgslsmith_mult_i32(-19828i, 74648i), -2147483647i)), ~(-5403i));
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_3(u_input.a.xz, arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1152f, global0[_wgslsmith_index_u32(49476u, 28u)], 162f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))))), global1[_wgslsmith_index_u32(42340u, 30u)]);
    var var_1 = true;
    var var_2 = var_0.a.x >> (58548u % 32u);
    let var_3 = vec4<bool>(any(select(vec3<bool>(true, arg_0.a.b, arg_0.a.b), !vec3<bool>(arg_0.a.b, true, false), false)) != (((var_0.d.a.b && arg_1.x) & any(vec4<bool>(true, arg_0.a.b, arg_1.x, true))) != true), any(!select(!vec4<bool>(false, true, true, arg_3.x), select(vec4<bool>(true, false, false, arg_3.x), vec4<bool>(arg_0.a.b, true, false, arg_0.a.b), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, arg_3.x), vec4<bool>(false, arg_0.a.b, arg_0.a.b, arg_3.x), vec4<bool>(true, arg_1.x, arg_3.x, false)))), true, true & !any(select(vec4<bool>(true, false, arg_3.x, true), vec4<bool>(false, false, false, var_0.d.a.b), true)));
    global0 = array<f32, 28>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~var_0.a.x & var_0.a.x), 1u), u_input.a.xx);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), global0[_wgslsmith_index_u32(abs(4294967295u), 28u)]), u_input.a.xy, 625f, countOneBits(vec2<i32>(1i, 1i)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20754u, 28u)])))))));
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    var var_1 = vec4<bool>(!(u_input.a.x == ~u_input.a.x) && any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), all(vec2<bool>(any(vec4<bool>(true, true, true, true)), select(any(vec3<bool>(true, true, false)), true, true))));
    var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~max(55448u, 20893u), func_3(Struct_2(Struct_1(vec4<f32>(-1612f, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -2547f), true)), var_1.yz, 0i, var_1.yx), u_input.a.x)), 28u)]);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(min(vec3<i32>(-5937i, select(firstLeadingBit(0i), _wgslsmith_mult_i32(-1i, 46760i), true), min(~(-18381i), max(-2346i, -6117i))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-10074i, 0i, -2147483647i), vec3<i32>(2147483647i, 16836i, 6562i), true), reverseBits(vec3<i32>(-4294i, -1i, -35940i))), -vec3<i32>(33979i, -1i, -2147483647i))), vec3<i32>(min(func_1(), 11919i), 1i, _wgslsmith_mult_i32(-11801i, select(59043i, 2147483647i, false))) | -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, 2147483647i), ~vec3<i32>(-2147483647i, 44735i, -39466i)));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u & u_input.a.x, 28u)]), global0[_wgslsmith_index_u32(~5055u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))), 472f), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, false))));
    var var_2 = select(!vec3<bool>(var_1.b, !all(vec2<bool>(var_1.b, var_1.b)), var_1.b), vec3<bool>(all(select(vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(false, true, false, false), vec4<bool>(var_1.b, true, true, var_1.b))) & any(!vec3<bool>(var_1.b, false, true)), var_1.b, !any(vec2<bool>(true, true))), all(vec2<bool>(var_1.b, true)));
    var_2 = vec3<bool>(!all(select(vec3<bool>(false, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x), true)) | var_2.x, true, true);
    var var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var_2 = select(select(!(!vec3<bool>(var_1.b, false, true)), !vec3<bool>(var_3.a.b, any(vec3<bool>(var_2.x, true, var_2.x)), var_3.a.b), vec3<bool>(any(select(var_2.yx, vec2<bool>(false, false), var_2.yz)), var_1.b || var_2.x, all(vec4<bool>(var_1.b, var_2.x, var_2.x, false)))), !(!select(!vec3<bool>(var_3.a.b, true, var_1.b), select(vec3<bool>(false, true, var_3.a.b), vec3<bool>(var_2.x, true, var_2.x), true), vec3<bool>(true, var_2.x, true))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.x, var_3.a.b, var_2.x), vec3<bool>(var_1.b, false, var_3.a.b)), vec3<bool>(var_1.b, false, true), all(vec4<bool>(false, var_1.b, var_3.a.b, false))), select(vec3<bool>(var_1.b, var_3.a.b, var_3.a.b), vec3<bool>(var_3.a.b, true, true), !vec3<bool>(false, true, var_1.b)), !(var_3.a.a.x >= -775f)), !vec3<bool>(var_0.x >= -1i, var_3.a.b, !var_2.x), vec3<bool>(!(!var_3.a.b), var_2.x, var_2.x)));
    var var_4 = vec3<i32>(var_0.x ^ -30280i, -11975i ^ _wgslsmith_sub_i32(-22345i, select(0i, var_0.x, var_2.x) & _wgslsmith_div_i32(var_0.x, var_0.x)), _wgslsmith_mod_i32(14754i, reverseBits(abs(3011i)) << ((717u >> ((u_input.a.x | u_input.a.x) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~select(~u_input.a.x, ~53508u, var_1.b)), 28u)], ~u_input.a.x, ~(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0.x), vec2<i32>(var_0.x, 17117i)), ~var_0.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a.a.zw + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-945f, var_3.a.a.x), vec2<f32>(var_3.a.a.x, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(var_1.a.zz))) * var_1.a.wy), 0u);
}

