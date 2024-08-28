struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(429f, vec4<f32>(870f, -1000f, 1746f, -453f), 2147483647i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-1000f, vec4<f32>(548f, 755f, -1737f, -1000f), -1194i), vec3<bool>(false, true, true)), Struct_2(Struct_1(3258f, vec4<f32>(1286f, 277f, -164f, -1675f), 2147483647i), vec3<bool>(false, true, false)), Struct_2(Struct_1(-774f, vec4<f32>(-1379f, -1674f, 1547f, -452f), 1i), vec3<bool>(false, true, true)), Struct_2(Struct_1(-1144f, vec4<f32>(-2540f, -993f, 866f, 1381f), -2142i), vec3<bool>(false, false, true)), Struct_2(Struct_1(1000f, vec4<f32>(-377f, -480f, 2030f, -409f), 32869i), vec3<bool>(true, true, true)), Struct_2(Struct_1(-2121f, vec4<f32>(564f, 343f, -261f, 1642f), 1i), vec3<bool>(false, false, true)), Struct_2(Struct_1(-714f, vec4<f32>(1055f, 556f, 132f, 438f), -12375i), vec3<bool>(true, false, true)), Struct_2(Struct_1(1079f, vec4<f32>(695f, -2123f, 298f, -170f), -1i), vec3<bool>(true, false, true)), Struct_2(Struct_1(755f, vec4<f32>(-2030f, 760f, 1211f, -1093f), 46905i), vec3<bool>(true, true, false)), Struct_2(Struct_1(1000f, vec4<f32>(-411f, 524f, -875f, -239f), -1i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-778f, vec4<f32>(438f, 2195f, 2151f, 1113f), 47548i), vec3<bool>(false, true, false)), Struct_2(Struct_1(-1172f, vec4<f32>(-132f, -964f, -2137f, -1024f), 0i), vec3<bool>(false, true, false)), Struct_2(Struct_1(-639f, vec4<f32>(221f, -186f, -1670f, -1227f), 17928i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-1087f, vec4<f32>(432f, 1263f, 1541f, 2250f), 1i), vec3<bool>(false, true, true)), Struct_2(Struct_1(-1795f, vec4<f32>(-1093f, -978f, -653f, 676f), 0i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-1319f, vec4<f32>(1419f, -187f, 1378f, 232f), 1i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-687f, vec4<f32>(1003f, 1000f, -1034f, 2175f), 0i), vec3<bool>(false, true, false)), Struct_2(Struct_1(1481f, vec4<f32>(-727f, 888f, -610f, 1243f), 0i), vec3<bool>(true, true, true)), Struct_2(Struct_1(1376f, vec4<f32>(-2372f, -369f, 617f, -713f), 19306i), vec3<bool>(true, false, false)), Struct_2(Struct_1(-189f, vec4<f32>(1006f, -606f, 520f, 1000f), 0i), vec3<bool>(true, false, false)));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) * 1f), arg_0.x)));
    var var_1 = Struct_1(1093f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1762f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -1088f), -548f) - vec4<f32>(330f, 982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_0.x) + 753f), _wgslsmith_f_op_f32(trunc(global4.b.x)))), global4.c);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * 1384f), vec4<f32>(-1100f, arg_0.x, _wgslsmith_f_op_f32(select(451f, var_1.b.x, true)), _wgslsmith_f_op_f32(-arg_2)), -23618i), vec3<bool>(all(vec3<bool>(true, true, false)), ~(-1i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(55261u, 18u)], var_1.c, var_1.c), vec4<i32>(-29507i, global1[_wgslsmith_index_u32(1u, 18u)], var_1.c, 2147483647i)), select(true, true, true))), arg_3.x, min(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, 7204u), vec2<u32>(0u, u_input.b.x)), ~vec2<u32>(38073u, arg_1.x)));
    let var_3 = var_2.a.a;
    let var_4 = Struct_2(Struct_1(997f, var_2.a.a.b, _wgslsmith_add_i32(_wgslsmith_add_i32(-12422i, -global1[_wgslsmith_index_u32(8441u, 18u)]), ~(~var_3.c))), !vec3<bool>(any(vec3<bool>(global3.x, arg_3.x, arg_3.x)), false, global3.x));
    return u_input.b;
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 21u)];
    global1 = array<i32, 18>();
    let var_1 = firstLeadingBit(vec4<u32>(countOneBits(0u), ~(~17651u), ~(u_input.b.x << (4294967295u % 32u)), 1u) | func_3(_wgslsmith_f_op_vec4_f32(abs(var_0.a.b)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zz, u_input.b.xz), u_input.b.yz), -120f, !var_0.b));
    var_0 = Struct_2(var_0.a, vec3<bool>(!all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, global3.x, global3.x), var_0.b.x)), global3.x, u_input.b.x > ~115229u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(1176f + global4.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(273f, 235f, var_0.b.x)))) - 556f), -854f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, _wgslsmith_f_op_f32(-var_0.a.b.x), -1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))));
    return min(_wgslsmith_clamp_u32(~1u, max(u_input.b.x, reverseBits(u_input.b.x)), var_1.x), _wgslsmith_mod_u32(var_1.x, ~1u));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_2, 21>();
    let var_0 = Struct_4(Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(210f, _wgslsmith_f_op_f32(abs(global4.b.x)), _wgslsmith_f_op_f32(step(1450f, arg_0.a.a.b.x)), _wgslsmith_f_op_f32(trunc(1680f))), _wgslsmith_div_vec4_f32(global4.b, _wgslsmith_f_op_vec4_f32(-arg_0.a.a.b)), any(!arg_0.a.b))), 0i), select(!(!vec2<bool>(false, arg_0.a.b.x)), arg_0.a.b.yx, !(!select(arg_0.a.b.yy, arg_0.a.b.xx, arg_0.a.b.zz))), arg_0.a.b.yy, arg_0.a.a);
    var var_1 = Struct_3(Struct_2(arg_0.a.a, arg_0.a.b), global3.x, u_input.b.ww);
    global1 = array<i32, 18>();
    var var_2 = _wgslsmith_div_u32(20511u, var_1.c.x);
    return Struct_3(Struct_2(var_1.a.a, !(!var_1.a.b)), true, arg_0.c >> (~vec2<u32>(var_1.c.x, _wgslsmith_mult_u32(6685u, 37119u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = func_4(Struct_3(global2[_wgslsmith_index_u32(func_2(), 21u)], true, ~(~_wgslsmith_clamp_vec2_u32(u_input.b.yz, u_input.b.wy, vec2<u32>(4294967295u, 0u)))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(var_0.a.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(ceil(arg_0.b)), func_4(Struct_3(global2[_wgslsmith_index_u32(88926u, 21u)], true, var_0.c)).a.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_3.a.b)))), ~global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), arg_3.c, func_4(func_4(func_4(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 21u)], false, u_input.b.xz)))).a.b.xy, Struct_1(_wgslsmith_f_op_f32(-func_4(func_4(Struct_3(var_0.a, arg_3.b.x, vec2<u32>(140888u, u_input.b.x)))).a.a.b.x), arg_0.b, firstLeadingBit(_wgslsmith_sub_i32(var_0.a.a.c, -1i) ^ 63756i)));
    global1 = array<i32, 18>();
    var_0 = func_4(Struct_3(var_0.a, !(21902i < ~arg_1), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(var_0.c.x), 81462u), vec2<u32>(u_input.b.x, u_input.b.x))));
    let var_2 = func_4(Struct_3(global2[_wgslsmith_index_u32(23645u, 21u)], any(select(select(vec4<bool>(var_1.b.x, global3.x, var_1.b.x, true), vec4<bool>(global3.x, arg_2, false, arg_3.c.x), var_1.c.x), !vec4<bool>(true, false, arg_3.b.x, var_0.b), vec4<bool>(false, false, global3.x, false))), u_input.b.yx >> (~func_3(var_0.a.a.b, vec2<u32>(var_0.c.x, u_input.b.x), var_0.a.a.b.x, var_0.a.b).xw % vec2<u32>(32u))));
    return 2604f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, global4.a, 123f, global4.b.x) - global4.b) - global4.b), ~global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global4.c), u_input.a.xx) ^ ~_wgslsmith_mult_i32(0i, u_input.a.x), !global3.x, Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(global4.a)), _wgslsmith_f_op_vec4_f32(min(global4.b, global4.b)), global4.c & global1[_wgslsmith_index_u32(35840u, 18u)]), !(!vec2<bool>(false, global3.x)), select(!vec2<bool>(global3.x, true), select(vec2<bool>(false, global3.x), vec2<bool>(true, global3.x), vec2<bool>(true, false)), global3.x | false), Struct_1(_wgslsmith_f_op_f32(1029f * -1552f), vec4<f32>(global4.b.x, 2497f, -1000f, 1397f), _wgslsmith_div_i32(u_input.a.x, -9024i))))));
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, -8651i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, -11222i) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)))), ~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a));
    var var_1 = vec3<u32>(abs(abs(abs(4294967295u))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(63203u), 1u) & ~4294967295u, countOneBits(~u_input.b.x)), firstLeadingBit(u_input.b.x) >> (u_input.b.x % 32u));
    var var_2 = func_4(Struct_3(Struct_2(func_4(func_4(Struct_3(Struct_2(Struct_1(global4.a, vec4<f32>(global4.a, 1768f, -371f, 966f), -1i), vec3<bool>(false, global3.x, global3.x)), true, vec2<u32>(7787u, var_1.x)))).a.a, vec3<bool>(global3.x, any(vec3<bool>(global3.x, global3.x, global3.x)), true)), true, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 0u) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(select(var_1.x, var_1.x, global3.x), _wgslsmith_add_u32(1u, 1u)), firstTrailingBit(vec2<u32>(var_1.x, var_1.x))))).a.a;
    global2 = array<Struct_2, 21>();
    global4 = func_4(Struct_3(Struct_2(Struct_1(-567f, vec4<f32>(global4.a, 281f, 360f, 478f), 1868i), select(!vec3<bool>(global3.x, false, true), vec3<bool>(false, global3.x, true), global3.x)), global3.x == true, abs(_wgslsmith_clamp_vec2_u32(var_1.yx, u_input.b.xw, var_1.yy)) << (max(countOneBits(var_1.zz), var_1.zz) % vec2<u32>(32u)))).a.a;
    var var_3 = _wgslsmith_f_op_f32(1434f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(732f - _wgslsmith_f_op_f32(select(global4.b.x, 732f, global3.x))))), _wgslsmith_f_op_f32(285f + var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.x), global4.a), global4.a, global4.b.x) * var_2.b), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0, _wgslsmith_mod_i32(global4.c, var_2.c)), abs(-11302i), 21276i), global4.c, -2147483647i, _wgslsmith_add_i32(reverseBits(u_input.a.x << (4294967295u % 32u)), _wgslsmith_clamp_i32(~u_input.a.x, 1i, ~0i))), ~vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 18u)], global4.c) << (~18559u % 32u), reverseBits(min(var_0, global1[_wgslsmith_index_u32(1u, 18u)])), select(_wgslsmith_mod_i32(1i, -2147483647i), ~u_input.a.x, true), global4.c << (firstTrailingBit(u_input.b.x) % 32u)), func_4(func_4(func_4(func_4(Struct_3(global2[_wgslsmith_index_u32(var_1.x, 21u)], global3.x, u_input.b.yy))))).a.a.c);
}

