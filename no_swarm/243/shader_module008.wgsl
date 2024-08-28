struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<i32>(0i, 11945i, -7467i), vec3<f32>(886f, 819f, -147f), Struct_1(66298i)), Struct_2(vec3<i32>(2147483647i, -79468i, -47535i), vec3<f32>(1276f, -1403f, 1193f), Struct_1(-20810i)), Struct_2(vec3<i32>(1464i, 0i, 55851i), vec3<f32>(-1000f, -377f, -2569f), Struct_1(i32(-2147483648))), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 52716i), vec3<f32>(192f, 771f, -2425f), Struct_1(i32(-2147483648))), Struct_2(vec3<i32>(0i, 0i, -1454i), vec3<f32>(1000f, -718f, 945f), Struct_1(i32(-2147483648))), Struct_2(vec3<i32>(0i, 1i, 0i), vec3<f32>(344f, 1021f, -935f), Struct_1(5859i)), Struct_2(vec3<i32>(19216i, i32(-2147483648), -20755i), vec3<f32>(209f, 118f, 670f), Struct_1(2147483647i)), Struct_2(vec3<i32>(-21501i, 0i, 1i), vec3<f32>(-1654f, 1582f, 1117f), Struct_1(2147483647i)), Struct_2(vec3<i32>(52296i, -34087i, i32(-2147483648)), vec3<f32>(-1150f, -485f, 1036f), Struct_1(-1i)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 54641i), vec3<f32>(1000f, 826f, 1275f), Struct_1(0i)), Struct_2(vec3<i32>(20871i, -1i, 40856i), vec3<f32>(-1414f, 1682f, 561f), Struct_1(23098i)), Struct_2(vec3<i32>(2147483647i, 0i, -33787i), vec3<f32>(347f, 1000f, 286f), Struct_1(-35420i)), Struct_2(vec3<i32>(-326i, -1i, -66234i), vec3<f32>(620f, 616f, 1628f), Struct_1(-67491i)), Struct_2(vec3<i32>(48073i, 0i, 0i), vec3<f32>(579f, 274f, 199f), Struct_1(-15519i)), Struct_2(vec3<i32>(2147483647i, 12758i, i32(-2147483648)), vec3<f32>(-237f, -382f, -1000f), Struct_1(-50284i)), Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<f32>(-979f, 1338f, 639f), Struct_1(i32(-2147483648))), Struct_2(vec3<i32>(43375i, -34689i, 43561i), vec3<f32>(-2208f, -604f, 776f), Struct_1(-8673i)), Struct_2(vec3<i32>(2147483647i, -2439i, 1i), vec3<f32>(-425f, 1205f, -310f), Struct_1(-64350i)), Struct_2(vec3<i32>(18798i, 2147483647i, 0i), vec3<f32>(-488f, 189f, -1840f), Struct_1(-16643i)), Struct_2(vec3<i32>(53130i, -15686i, 50625i), vec3<f32>(-170f, -1000f, 150f), Struct_1(-5861i)), Struct_2(vec3<i32>(-16153i, 2147483647i, 19850i), vec3<f32>(-2126f, -1895f, 183f), Struct_1(-53535i)), Struct_2(vec3<i32>(6840i, -17698i, 112i), vec3<f32>(1079f, -864f, 581f), Struct_1(2147483647i)), Struct_2(vec3<i32>(10524i, -1i, 31206i), vec3<f32>(-807f, 1060f, -1485f), Struct_1(-4548i)), Struct_2(vec3<i32>(12457i, 0i, 0i), vec3<f32>(246f, -784f, -686f), Struct_1(-4854i)), Struct_2(vec3<i32>(47222i, i32(-2147483648), 1i), vec3<f32>(-2537f, -529f, 270f), Struct_1(-54583i)));

var<private> global2: array<i32, 6> = array<i32, 6>(-59142i, 67340i, i32(-2147483648), i32(-2147483648), 9114i, -45814i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = Struct_1(-2147483647i);
    var var_0 = -129f;
    let var_1 = Struct_1(-2147483647i);
    var var_2 = global1[_wgslsmith_index_u32(40459u, 25u)];
    var var_3 = !(!select(vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return vec2<bool>(select(!all(vec2<bool>(var_3.x, var_3.x)), true, true), any(vec2<bool>(var_3.x, var_2.b.x < var_2.b.x)) || var_3.x);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = u_input.b;
    var var_1 = arg_0.zxw;
    global0 = Struct_1(select(firstTrailingBit(2147483647i), min(select(u_input.e, global0.a, true), i32(-1i) * -1i), true) ^ max(_wgslsmith_mult_i32(1i, -44184i), -2147483647i));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(24106i, u_input.b, global0.a), vec3<i32>(-1i, var_1.x, global0.a), vec3<i32>(1i, var_1.x, -2147483647i)))), -vec3<i32>(u_input.e, _wgslsmith_sub_i32(-1i, arg_0.x), -2548i | u_input.e)));
    var_1 = ~vec3<i32>(0i & (-arg_0.x ^ abs(-36228i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, -34640i, -20262i, global2[_wgslsmith_index_u32(u_input.a, 6u)]), arg_0), 16821i);
    return min(_wgslsmith_div_i32(0i, arg_0.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(2147483647i), ~global2[_wgslsmith_index_u32(41164u, 6u)]), firstTrailingBit(var_1.x), -1i)) >= _wgslsmith_div_i32(var_2.a, ~(~_wgslsmith_mod_i32(-2147483647i, 12760i)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1974f, -856f, 855f, -405f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(415f, 421f, 241f, 644f), vec4<f32>(642f, -1460f, -1000f, 366f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, 1019f, -840f, 935f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1989f, _wgslsmith_f_op_f32(-685f + -1435f), -578f, 451f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(765f, -972f, 424f, 470f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, 428f, -516f, 958f) * vec4<f32>(-526f, 556f, -968f, -1757f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-654f)), _wgslsmith_div_f32(694f, 287f), _wgslsmith_f_op_f32(floor(1232f)), -580f) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-1465f)), _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(f32(-1f) * -775f), -476f))));
    let var_1 = select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.x < var_0.x), !(!func_2(u_input.c)), vec2<bool>(!func_3(vec4<i32>(global0.a, 1i, global0.a, global0.a)), true)), (reverseBits(u_input.b & u_input.b) << (u_input.c % 32u)) == reverseBits(0i));
    global2 = array<i32, 6>();
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-426f, 1323f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), 151f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(581f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), -355f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(128f, -717f, var_0.x, -735f) - vec4<f32>(-542f, var_0.x, -1543f, 497f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, -1359f))))))));
    let var_3 = vec4<u32>(6721u, 50308u, abs(1u), 0u);
    return global1[_wgslsmith_index_u32(u_input.d, 25u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> vec3<u32> {
    var var_0 = func_1().c;
    global0 = arg_0.c;
    let var_1 = arg_1.x;
    let var_2 = vec4<u32>(~55884u, ~arg_2, reverseBits(max(_wgslsmith_mult_u32(4294967295u, u_input.d), _wgslsmith_mod_u32(57559u << (u_input.c % 32u), u_input.d))), min(~(~1u), u_input.a));
    var var_3 = _wgslsmith_mult_u32(~countOneBits(var_2.x), ~abs(~firstLeadingBit(arg_2)));
    return var_2.xwz;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(arg_2.x, any(arg_2.xy), all(select(select(arg_2, arg_2, select(arg_2, vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, false))), !select(arg_2, vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x), !vec3<bool>(true, arg_2.x, arg_2.x))), true);
    var var_1 = 14386u;
    var var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.b) + vec3<f32>(_wgslsmith_div_f32(333f, -1065f), _wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(sign(arg_1.b.x))))), arg_1.c);
    var var_3 = arg_0.yx;
    let var_4 = select(var_0, vec4<bool>(var_3.x > 0u, var_0.x && all(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), arg_2.yx)), !func_3(vec4<i32>(-12343i, u_input.e, u_input.b, -13218i)), select(all(!var_0.yy), false, !(!var_0.x))), select(select(!select(vec4<bool>(var_0.x, arg_2.x, true, false), vec4<bool>(true, var_0.x, arg_2.x, arg_2.x), vec4<bool>(true, var_0.x, var_0.x, true)), var_0, var_0.x), select(select(var_0, select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), true), !arg_2.x), var_0, false), vec4<bool>(arg_2.x, var_0.x, true, false)));
    return func_1();
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(2147483647i, u_input.b, arg_0.a.x) << (vec3<u32>(19281u, 0u, 50964u) % vec3<u32>(32u))) | arg_0.a, ~arg_0.a ^ vec3<i32>(global0.a, -25445i, 2147483647i)), 0i, 2147483647i), arg_2.b, Struct_1(-8985i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global1[_wgslsmith_index_u32(~u_input.c, 25u)], 61883u, func_5(((vec3<u32>(4294967295u, u_input.c, 63325u) >> (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(u_input.d, 10095u, u_input.d)) % vec3<u32>(32u))) << (func_4(func_1(), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), u_input.a) % vec3<u32>(32u)), Struct_2(max(abs(vec3<i32>(global0.a, -19036i, global2[_wgslsmith_index_u32(u_input.a, 6u)])), ~vec3<i32>(22853i, 0i, u_input.b)), vec3<f32>(-997f, -1799f, _wgslsmith_f_op_f32(sign(-426f))), Struct_1(_wgslsmith_mod_i32(-1i, 1i))), vec3<bool>(true, true, true)));
    var_0 = Struct_2(~(-select(vec3<i32>(global0.a, global0.a, var_0.c.a), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.d, 6u)], var_0.a.x) >> (vec3<u32>(u_input.a, u_input.d, 0u) % vec3<u32>(32u)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1294f, var_0.b.x, 1184f) + vec3<f32>(var_0.b.x, 1970f, var_0.b.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1807f, 1885f, var_0.b.x) - var_0.b)), var_0.b) * vec3<f32>(909f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-348f, -648f)), var_0.b.x), 783f)), func_6(global1[_wgslsmith_index_u32(~u_input.c | (20766u | u_input.c), 25u)], ~max(4294967295u, ~u_input.a), func_1()).c);
    let var_1 = 47118i;
    global1 = array<Struct_2, 25>();
    var var_2 = (vec2<i32>(1i & var_0.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, var_1), vec4<i32>(global0.a, global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], 26530i)))) ^ ~(-var_0.a.zz)) ^ vec2<i32>(var_1, global0.a);
    let var_3 = func_2(_wgslsmith_add_u32(~u_input.a, u_input.d ^ 53319u)).x;
    var_2 = var_0.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1164f * _wgslsmith_f_op_f32(-var_0.b.x)))), global2[_wgslsmith_index_u32(firstTrailingBit(112247u), 6u)], ~vec3<i32>(abs(var_2.x), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -20479i, global0.a, 0i), vec4<i32>(1i, 0i, -1i, global2[_wgslsmith_index_u32(0u, 6u)]))) >> (~(~countOneBits(vec3<u32>(u_input.a, 54550u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, -974f, func_6(Struct_2(vec3<i32>(var_2.x, -2147483647i, global0.a), vec3<f32>(var_0.b.x, 537f, 138f), Struct_1(-38826i)), ~59582u, global1[_wgslsmith_index_u32(u_input.a & u_input.c, 25u)]).b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), 343f, _wgslsmith_f_op_f32(f32(-1f) * -1179f), var_0.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(915f, var_0.b.x, 165f, var_0.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1227f, var_0.b.x, var_0.b.x, var_0.b.x) - vec4<f32>(var_0.b.x, var_0.b.x, 1510f, 1296f))))), 2485f);
}

