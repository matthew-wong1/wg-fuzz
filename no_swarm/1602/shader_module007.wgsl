struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(206f, vec4<u32>(52015u, 1u, 76018u, 20779u), true, vec4<f32>(-1375f, -855f, 544f, 933f), false), Struct_1(-1254f, vec4<u32>(4294967295u, 17687u, 52501u, 1u), false, vec4<f32>(-275f, -397f, -1000f, 537f), true), Struct_1(-311f, vec4<u32>(4294967295u, 0u, 80119u, 54187u), true, vec4<f32>(769f, -238f, -633f, 494f), true), Struct_1(-280f, vec4<u32>(0u, 1u, 1u, 1u), false, vec4<f32>(-1353f, -899f, 686f, 1860f), false), Struct_1(644f, vec4<u32>(1u, 3378u, 387u, 4294967295u), false, vec4<f32>(777f, 198f, -338f, 834f), false), Struct_1(-157f, vec4<u32>(7707u, 1195u, 71602u, 26412u), true, vec4<f32>(241f, 1374f, -2374f, 485f), true), Struct_1(-891f, vec4<u32>(89512u, 1u, 4294967295u, 0u), false, vec4<f32>(-1055f, 131f, -510f, -571f), false), Struct_1(376f, vec4<u32>(4294967295u, 52416u, 71004u, 26u), true, vec4<f32>(-932f, 1461f, 1453f, 254f), false), Struct_1(677f, vec4<u32>(94893u, 45618u, 81472u, 1u), false, vec4<f32>(-1367f, -1084f, -268f, -1196f), false), Struct_1(-727f, vec4<u32>(1u, 18594u, 4294967295u, 1u), true, vec4<f32>(-1410f, 467f, 672f, -452f), true), Struct_1(-758f, vec4<u32>(2147u, 1u, 37671u, 4294967295u), true, vec4<f32>(1874f, 227f, -1000f, 1000f), true), Struct_1(-1714f, vec4<u32>(22299u, 43331u, 1u, 0u), true, vec4<f32>(489f, -521f, -905f, 1781f), false), Struct_1(249f, vec4<u32>(4294967295u, 8546u, 34440u, 0u), false, vec4<f32>(317f, -863f, -1139f, -269f), false), Struct_1(1206f, vec4<u32>(4007u, 4294967295u, 0u, 0u), true, vec4<f32>(-1000f, 986f, 1360f, -2636f), false), Struct_1(872f, vec4<u32>(1u, 57600u, 73721u, 558u), false, vec4<f32>(409f, 1507f, -911f, 245f), false), Struct_1(-423f, vec4<u32>(1u, 0u, 12857u, 58066u), false, vec4<f32>(-1137f, 367f, -1759f, -761f), true), Struct_1(136f, vec4<u32>(0u, 1626u, 19029u, 1u), true, vec4<f32>(309f, -1000f, -1325f, -651f), false), Struct_1(-556f, vec4<u32>(55127u, 1u, 1u, 44839u), false, vec4<f32>(-389f, -109f, 418f, 664f), true), Struct_1(679f, vec4<u32>(17195u, 4294967295u, 37319u, 1u), false, vec4<f32>(-1536f, 266f, -954f, 143f), false), Struct_1(522f, vec4<u32>(1666u, 0u, 4294967295u, 13293u), false, vec4<f32>(617f, 864f, -1011f, -1576f), true), Struct_1(-196f, vec4<u32>(0u, 14912u, 1716u, 1u), true, vec4<f32>(-1066f, -1192f, -908f, 1000f), false), Struct_1(1000f, vec4<u32>(21654u, 4294967295u, 3657u, 26297u), false, vec4<f32>(-382f, 164f, -367f, 1165f), true), Struct_1(403f, vec4<u32>(27472u, 2811u, 4475u, 105522u), false, vec4<f32>(218f, 432f, 134f, -272f), false), Struct_1(515f, vec4<u32>(31559u, 10804u, 2095u, 4752u), false, vec4<f32>(-1257f, 234f, -137f, 542f), false), Struct_1(-523f, vec4<u32>(4294967295u, 1u, 1u, 0u), false, vec4<f32>(1863f, -435f, -671f, 398f), false), Struct_1(-749f, vec4<u32>(1u, 28775u, 11682u, 0u), true, vec4<f32>(-1000f, -530f, 1477f, -1077f), true), Struct_1(-2140f, vec4<u32>(0u, 37147u, 39054u, 89189u), false, vec4<f32>(1082f, 1203f, -306f, -912f), false), Struct_1(-604f, vec4<u32>(4294967295u, 37055u, 1u, 0u), false, vec4<f32>(1238f, 1417f, 528f, -348f), true), Struct_1(-1717f, vec4<u32>(59210u, 29314u, 1u, 4294967295u), false, vec4<f32>(-952f, -808f, 872f, 1462f), false), Struct_1(-1823f, vec4<u32>(63514u, 0u, 4294967295u, 18557u), true, vec4<f32>(596f, -673f, -334f, -542f), true));

var<private> global3: array<vec3<i32>, 20>;

var<private> global4: array<f32, 20> = array<f32, 20>(-1962f, 1535f, 1779f, 152f, -276f, -442f, 563f, -3055f, 1340f, -381f, 209f, -350f, -1003f, -1072f, 1227f, -497f, -1587f, 1000f, 266f, 200f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<vec2<bool>, 10>();
    let var_0 = arg_3;
    var var_1 = select(countOneBits(-(~1i)), -39200i, var_0.c);
    global0 = 2147483647i;
    var var_2 = var_0;
    return !select(select(arg_0, vec4<bool>(var_2.b.x < arg_3.b.x, false, select(true, false, arg_0.x), false), vec4<bool>(true, true, !arg_3.e, arg_0.x)), vec4<bool>(true, true, true, var_2.c), !(!vec4<bool>(arg_3.e, var_0.e, false, arg_3.c)));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(1463f, vec4<u32>(countOneBits(1927u << (u_input.a.x % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(4848u, u_input.b.x), _wgslsmith_add_u32(52088u, 55959u)), u_input.b.x, 52135u), all(!select(vec4<bool>(true, true, true, true), func_3(vec4<bool>(false, true, false, false), vec4<f32>(610f, -1132f, -357f, -1673f), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<bool>(false, true, false, false))), vec4<f32>(global4[_wgslsmith_index_u32(abs(u_input.b.x), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.b.x, 20u)], global4[_wgslsmith_index_u32(28088u, 20u)]))) - -497f), global4[_wgslsmith_index_u32(~(18713u ^ u_input.a.x), 20u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u ^ reverseBits(u_input.b.x), 20u)])), !(!(func_3(vec4<bool>(false, false, true, true), vec4<f32>(-446f, global4[_wgslsmith_index_u32(1u, 20u)], -1867f, 513f), vec3<bool>(false, false, false), Struct_1(-1000f, vec4<u32>(48915u, u_input.b.x, u_input.b.x, 55329u), false, vec4<f32>(288f, global4[_wgslsmith_index_u32(u_input.b.x, 20u)], -200f, 665f), false)).x & false)));
    var var_1 = max(~_wgslsmith_add_u32(u_input.b.x, ~26212u), u_input.a.x);
    global3 = array<vec3<i32>, 20>();
    global1 = array<vec2<bool>, 10>();
    global3 = array<vec3<i32>, 20>();
    return _wgslsmith_mod_vec4_i32(reverseBits(abs(vec4<i32>(i32(-1i) * -1i, 1i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1393i, 0i, -2722i), global3[_wgslsmith_index_u32(4294967295u, 20u)])))), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, 2147483647i, 1i, -2147483647i), reverseBits(vec4<i32>(-25857i, -1i, -1i, 1i)), false), vec4<i32>(-12765i, -4673i, ~18061i, i32(-1i) * -2147483647i), reverseBits(vec4<i32>(1i, 1i, 1i, 1i))));
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    let var_0 = 1066f;
    var var_1 = !(!(!select(global1[_wgslsmith_index_u32(max(u_input.a.x, 16169u), 10u)], vec2<bool>(true, true), global1[_wgslsmith_index_u32(~u_input.b.x, 10u)])));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0);
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(11883u, 1u), vec2<u32>(0u, u_input.b.x)), u_input.a.x), u_input.b >> (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u)))), 30u)];
    let var_4 = _wgslsmith_f_op_f32(step(1272f, _wgslsmith_f_op_f32(-525f + -238f)));
    return 63021u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = ~vec2<i32>(~select(15714i, -18351i, true) | -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -80490i, _wgslsmith_div_i32(1i, 1i), abs(-23057i)), global3[_wgslsmith_index_u32(22506u, 20u)]));
    global0 = -3488i;
    var var_1 = global2[_wgslsmith_index_u32(1u, 30u)];
    global2 = array<Struct_1, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_clamp_vec4_u32(abs(~firstTrailingBit(arg_1.b)), ~abs(vec4<u32>(arg_1.b.x, var_1.b.x, 4294967295u, var_1.b.x)), max(arg_2.b, reverseBits(arg_0.b))), arg_2.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(-969f, 1235f, arg_0.d.x, -1265f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1150f, var_1.a, -968f, -923f), vec4<f32>(-535f, -1084f, arg_0.a, var_1.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.b.x, 20u)], -1803f)), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(16302u, 20u)])), _wgslsmith_f_op_f32(abs(358f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.d))), _wgslsmith_f_op_vec4_f32(select(arg_0.d, _wgslsmith_f_op_vec4_f32(trunc(arg_1.d)), false))))), arg_3);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), vec4<u32>(~(~4294967295u), func_4(vec4<i32>(-1i, -16463i, _wgslsmith_sub_i32(var_0.x, var_0.x), min(-41021i, var_0.x))), _wgslsmith_sub_u32(abs(1u), _wgslsmith_mod_u32(firstLeadingBit(55128u), firstTrailingBit(85267u))), _wgslsmith_add_u32(~u_input.b.x, arg_1.b.x)), arg_3, arg_2.d, all(!global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.b.x, ~21372u, ~var_2.b.x), 10u)]));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = func_5(arg_0, global2[_wgslsmith_index_u32(func_4(func_2()), 30u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(3084u, _wgslsmith_div_u32(arg_3.x, 59205u)), 30u)], any(!vec4<bool>(arg_0.c && true, true, true, !arg_0.e)));
    let var_1 = ~arg_2.x;
    global4 = array<f32, 20>();
    var var_2 = firstTrailingBit(var_0.b);
    global1 = array<vec2<bool>, 10>();
    return _wgslsmith_f_op_f32(490f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -880f))), _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], 467f, 936f))), vec2<i32>(-2147483647i, -2147483647i) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 0u) << (u_input.b % vec2<u32>(32u)))), _wgslsmith_f_op_f32(1291f - 1168f))));
    var var_1 = func_5(func_5(global2[_wgslsmith_index_u32(~((1u >> (u_input.b.x % 32u)) & u_input.a.x), 30u)], global2[_wgslsmith_index_u32(abs(countOneBits(u_input.a.x)) | 1u, 30u)], func_5(global2[_wgslsmith_index_u32(1u, 30u)], func_5(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], func_5(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_1(var_0.x, vec4<u32>(u_input.b.x, 1u, 18562u, 4294967295u), true, vec4<f32>(282f, 713f, var_0.x, 855f), false), Struct_1(720f, vec4<u32>(u_input.a.x, 4294967295u, 37072u, u_input.b.x), false, vec4<f32>(383f, global4[_wgslsmith_index_u32(u_input.a.x, 20u)], global4[_wgslsmith_index_u32(20266u, 20u)], -773f), true), false), func_5(Struct_1(620f, vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 98583u), true, vec4<f32>(var_0.x, var_0.x, var_0.x, global4[_wgslsmith_index_u32(92729u, 20u)]), true), Struct_1(1207f, vec4<u32>(26154u, 78427u, 0u, u_input.b.x), false, vec4<f32>(var_0.x, -701f, var_0.x, var_0.x), true), Struct_1(-2488f, vec4<u32>(72428u, u_input.b.x, u_input.a.x, 0u), true, vec4<f32>(875f, var_0.x, 234f, global4[_wgslsmith_index_u32(21908u, 20u)]), false), false), true), func_5(func_5(global2[_wgslsmith_index_u32(1u, 30u)], Struct_1(261f, vec4<u32>(48063u, u_input.b.x, u_input.b.x, 59082u), true, vec4<f32>(var_0.x, global4[_wgslsmith_index_u32(u_input.a.x, 20u)], -764f, 811f), true), Struct_1(-828f, vec4<u32>(4294967295u, 44358u, 28054u, u_input.a.x), false, vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], global4[_wgslsmith_index_u32(33703u, 20u)], var_0.x, 834f), false), true), Struct_1(2024f, vec4<u32>(31546u, 1u, u_input.a.x, u_input.b.x), true, vec4<f32>(506f, -393f, global4[_wgslsmith_index_u32(u_input.a.x, 20u)], 1234f), false), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], vec4<u32>(4294967295u, u_input.a.x, 53535u, 0u), true, vec4<f32>(-512f, global4[_wgslsmith_index_u32(1u, 20u)], -885f, global4[_wgslsmith_index_u32(2081u, 20u)]), true), true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(376u, 20u)])))) > _wgslsmith_f_op_f32(-1482f * -990f)), global2[_wgslsmith_index_u32(firstTrailingBit(0u), 30u)], Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(204f - var_0.x), _wgslsmith_f_op_f32(-var_0.x))))), ~reverseBits(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -60802i), vec2<i32>(-12961i, -62180i)) > select(~(-17125i), _wgslsmith_div_i32(1i, 1i), all(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 504f, -531f) - vec4<f32>(var_0.x, 959f, var_0.x, -494f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 20u)], var_0.x, var_0.x, var_0.x)))), any(vec2<bool>(true, any(vec3<bool>(true, false, false))))), false);
    global1 = array<vec2<bool>, 10>();
    let var_2 = select(func_3(vec4<bool>(~u_input.b.x < var_1.b.x, true | !var_1.c, all(select(vec4<bool>(var_1.e, false, var_1.c, var_1.c), vec4<bool>(var_1.c, false, true, var_1.e), var_1.e)), any(!vec4<bool>(var_1.e, var_1.e, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, _wgslsmith_div_f32(-519f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_div_f32(var_1.d.x, -574f)) + var_1.d), !func_3(select(vec4<bool>(true, var_1.c, var_1.e, var_1.c), vec4<bool>(var_1.c, true, var_1.e, false), var_1.c), var_1.d, select(vec3<bool>(var_1.c, var_1.e, var_1.e), vec3<bool>(var_1.c, true, true), false), func_5(Struct_1(var_0.x, var_1.b, true, var_1.d, false), Struct_1(var_1.d.x, var_1.b, var_1.e, var_1.d, false), Struct_1(961f, vec4<u32>(var_1.b.x, var_1.b.x, 1u, var_1.b.x), false, vec4<f32>(1693f, global4[_wgslsmith_index_u32(28043u, 20u)], global4[_wgslsmith_index_u32(u_input.a.x, 20u)], 1000f), var_1.e), true)).xyw, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.a.x, var_1.b.x) << (_wgslsmith_mod_vec2_u32(var_1.b.xy, u_input.b) % vec2<u32>(32u))), 30u)]).zw, select(vec2<bool>(false, any(vec3<bool>(var_1.e, true, var_1.c)) | !var_1.c), select(global1[_wgslsmith_index_u32(~var_1.b.x, 10u)], !select(vec2<bool>(var_1.e, true), vec2<bool>(var_1.c, true), global1[_wgslsmith_index_u32(1u, 10u)]), !any(vec4<bool>(false, var_1.c, var_1.c, true))), var_1.e), func_5(global2[_wgslsmith_index_u32(31576u, 30u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(295f, var_1.d.x)), var_1.b | countOneBits(var_1.b), any(!vec2<bool>(var_1.e, false)), var_1.d, !(var_1.a > -278f)), Struct_1(-1084f, vec4<u32>(firstTrailingBit(u_input.a.x), var_1.b.x | u_input.b.x, _wgslsmith_mod_u32(37524u, u_input.b.x), 52690u), true, _wgslsmith_div_vec4_f32(vec4<f32>(-1133f, var_0.x, 1306f, var_1.a), _wgslsmith_f_op_vec4_f32(-var_1.d)), var_1.c), !var_1.c).c);
    global0 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(20859i, ~(~83460i)), 49347i);
    let var_3 = global2[_wgslsmith_index_u32(~var_1.b.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.b.wyz, firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_1.b.x, 71657u), vec3<u32>(var_3.b.x, u_input.b.x, var_1.b.x)))), ~(~u_input.b.x) | u_input.a.x, 41067u, var_1.b.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mod_u32(~(~27309u), _wgslsmith_sub_u32(func_4(~vec4<i32>(-2147483647i, -2147483647i, 1i, -1i)), var_3.b.x)));
}

