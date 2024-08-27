struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(-2040f, 40364i, vec3<i32>(i32(-2147483648), -9622i, 2147483647i), -102f)), Struct_2(Struct_1(1000f, 1i, vec3<i32>(-21722i, i32(-2147483648), -35266i), -1188f)), Struct_2(Struct_1(1478f, 58797i, vec3<i32>(1i, 10927i, i32(-2147483648)), -332f)), Struct_2(Struct_1(-229f, -13092i, vec3<i32>(-24139i, 1i, -332i), 1141f)), Struct_2(Struct_1(-173f, 1i, vec3<i32>(-59862i, 2147483647i, -1i), -1000f)), Struct_2(Struct_1(365f, 55786i, vec3<i32>(-12712i, 8750i, -11606i), 1142f)), Struct_2(Struct_1(-915f, 11919i, vec3<i32>(i32(-2147483648), 25008i, -18395i), -2172f)), Struct_2(Struct_1(-873f, i32(-2147483648), vec3<i32>(33355i, i32(-2147483648), -8369i), -716f)), Struct_2(Struct_1(1095f, -31367i, vec3<i32>(-1i, 2147483647i, 41888i), -701f)), Struct_2(Struct_1(264f, -12595i, vec3<i32>(15390i, 1i, -43406i), -312f)), Struct_2(Struct_1(670f, 1i, vec3<i32>(1i, 66049i, -11895i), 1282f)), Struct_2(Struct_1(-625f, 1i, vec3<i32>(2147483647i, i32(-2147483648), 0i), 615f)), Struct_2(Struct_1(1029f, 23967i, vec3<i32>(11155i, 2147483647i, 2147483647i), -1407f)), Struct_2(Struct_1(-1310f, 15553i, vec3<i32>(1i, 0i, 45987i), 197f)), Struct_2(Struct_1(728f, 4799i, vec3<i32>(-19703i, 0i, 18339i), 901f)), Struct_2(Struct_1(-190f, i32(-2147483648), vec3<i32>(i32(-2147483648), 2147483647i, -53334i), -296f)), Struct_2(Struct_1(-1065f, 1i, vec3<i32>(24618i, 0i, 2147483647i), -316f)), Struct_2(Struct_1(-1289f, -1i, vec3<i32>(21559i, 31202i, i32(-2147483648)), 293f)), Struct_2(Struct_1(1192f, 2147483647i, vec3<i32>(-1i, 1i, 2147483647i), 486f)), Struct_2(Struct_1(1126f, -1i, vec3<i32>(0i, -1i, 0i), 131f)), Struct_2(Struct_1(-143f, -30366i, vec3<i32>(-27933i, 1i, 2147483647i), 839f)), Struct_2(Struct_1(1271f, -1i, vec3<i32>(-13498i, 5633i, -1i), 216f)), Struct_2(Struct_1(-1517f, -21230i, vec3<i32>(-715i, i32(-2147483648), -16649i), -569f)), Struct_2(Struct_1(-678f, i32(-2147483648), vec3<i32>(0i, 0i, 10988i), -261f)), Struct_2(Struct_1(-582f, 2147483647i, vec3<i32>(25011i, 1i, -5178i), -669f)), Struct_2(Struct_1(-1000f, 2147483647i, vec3<i32>(i32(-2147483648), 1i, 0i), -1003f)), Struct_2(Struct_1(398f, -1i, vec3<i32>(31602i, i32(-2147483648), -1i), 783f)), Struct_2(Struct_1(-409f, 1i, vec3<i32>(-15223i, i32(-2147483648), -50079i), 302f)));

var<private> global1: vec4<f32> = vec4<f32>(1293f, -1454f, -494f, 869f);

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1889f, 1000f, -1805f, 1363f), vec4<f32>(-1225f, 167f, 264f, 702f), vec4<f32>(-2059f, 524f, -574f, -1690f), vec4<f32>(1096f, 1440f, -1639f, 303f), vec4<f32>(-641f, -647f, 133f, -1702f), vec4<f32>(-208f, -976f, 1432f, 1553f), vec4<f32>(-944f, 662f, 362f, 163f), vec4<f32>(-648f, -350f, -1146f, -1177f), vec4<f32>(-1485f, 507f, 1142f, 2156f), vec4<f32>(-547f, 423f, 180f, -162f), vec4<f32>(1000f, -1465f, 629f, -1000f), vec4<f32>(2827f, -931f, -566f, 778f), vec4<f32>(1263f, -715f, -1549f, 1603f), vec4<f32>(-722f, 387f, 1459f, 1673f), vec4<f32>(-1394f, 1000f, 1534f, 1000f), vec4<f32>(911f, 848f, 1000f, -181f), vec4<f32>(666f, 1000f, -1000f, 800f), vec4<f32>(484f, -1000f, 194f, -1000f), vec4<f32>(-818f, 2554f, 487f, 874f), vec4<f32>(278f, -969f, 158f, 1014f), vec4<f32>(121f, 1000f, 381f, -1000f), vec4<f32>(272f, 1241f, 626f, 668f), vec4<f32>(1407f, -1110f, 944f, 182f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec3<bool> {
    global3 = array<vec4<f32>, 23>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 28u)];
    var var_1 = ~var_0.a.b;
    var_1 = _wgslsmith_mod_i32(u_input.a, ~abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a.c, vec3<i32>(global2.x, global2.x, u_input.a)), vec3<i32>(1i, 1i, var_0.a.b))));
    var var_2 = max(~(vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(11309u, u_input.b.x)) ^ (vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(1u, 0u)) >> (~(~u_input.b.zy) % vec2<u32>(32u))), ~u_input.b.yz);
    return vec3<bool>(!(true | (-12037i == u_input.a)), any(vec3<bool>(true, true, true)), true);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = false && (_wgslsmith_clamp_i32(_wgslsmith_mod_i32(13867i, -65207i), 2147483647i << (min(u_input.b.x, 108661u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, u_input.a), ~vec2<i32>(-2224i, u_input.a))) == -_wgslsmith_mod_i32(~2147483647i, global2.x));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(726f)), global2.x, vec3<i32>(~_wgslsmith_mult_i32(-1i, global2.x), -global2.x, select(1i, global2.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * arg_1.x)), Struct_1(global1.x, -(abs(global2.x) >> (arg_2.x % 32u)), _wgslsmith_clamp_vec3_i32(~min(global2.yyx, vec3<i32>(-11292i, global2.x, 0i)), ~max(global2.ywx, arg_0), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(round(841f))) - _wgslsmith_f_op_f32(f32(-1f) * -394f))), Struct_3(Struct_1(-632f, 86780i, abs(vec3<i32>(-18590i, -16250i, u_input.a) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))))), ~1u);
    global3 = array<vec4<f32>, 23>();
    var var_2 = ~_wgslsmith_sub_vec2_u32(min(u_input.b.xx, vec2<u32>(~var_1.d, _wgslsmith_sub_u32(arg_2.x, u_input.b.x))), u_input.b.zz);
    var var_3 = global1.x;
    return func_2();
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = var_0.a;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true & (u_input.b.x >= u_input.b.x), arg_0.a.b <= 1i), true), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(func_2(), vec3<bool>(true, true, true), true), !(!func_3(vec3<i32>(-4204i, u_input.a, var_1.b), vec2<f32>(505f, var_0.a.a), vec2<u32>(40568u, 15920u)))), vec3<bool>(true, true, true));
    global3 = array<vec4<f32>, 23>();
    let var_3 = Struct_5(Struct_3(Struct_1(-688f, var_0.a.c.x, _wgslsmith_div_vec3_i32(arg_0.a.c, vec3<i32>(-1i, 75378i, arg_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.a, -179f)) - _wgslsmith_f_op_f32(-global1.x)))), ~(max(vec3<i32>(arg_0.a.c.x, global2.x, u_input.a), -var_0.a.c) << (_wgslsmith_div_vec3_u32(u_input.b, select(u_input.b, vec3<u32>(u_input.b.x, 9709u, 72696u), vec3<bool>(true, false, true))) % vec3<u32>(32u))), var_1.c.zx, var_0.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, 25742u, u_input.b.x)), u_input.b), reverseBits(u_input.b)), 28u)]);
    return _wgslsmith_f_op_f32(f32(-1f) * -177f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xw) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(global1.x, global2.x, vec3<i32>(1i, global2.x, 3996i), global1.x)))), global1.x), vec2<f32>(-1463f, -257f)))));
    var var_1 = _wgslsmith_dot_vec2_i32(global2.wy, abs(global2.wz)) << (u_input.b.x % 32u);
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(-24952i)), global2.x), _wgslsmith_add_vec2_i32(global2.zz, vec2<i32>(u_input.a, global2.x))) << (select(3779u, u_input.b.x, 15206u <= _wgslsmith_mod_u32(u_input.b.x, min(u_input.b.x, 37145u))) % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), -global2.x, firstTrailingBit(max(countOneBits(vec3<i32>(2147483647i, global2.x, global2.x)), global2.xwy)), global1.x);
    var_1 = 1i;
    var var_3 = _wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_mod_vec3_u32(~u_input.b & reverseBits(vec3<u32>(0u, u_input.b.x, 25619u)), vec3<u32>(~u_input.b.x, u_input.b.x ^ 85519u, ~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1250f)))));
}

