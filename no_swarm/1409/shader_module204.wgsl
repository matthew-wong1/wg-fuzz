struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(794f, 453f, 402f, -737f), vec2<i32>(-1i, 0i), -285f, true), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-210f, -743f, -742f, -355f), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1067f, true), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(619f, -1031f, 436f, 483f), vec2<i32>(-13808i, i32(-2147483648)), 707f, false), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-1427f, 1316f, -547f, 697f), vec2<i32>(8110i, -19773i), 1000f, false), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(658f, -1379f, 323f, -2036f), vec2<i32>(-43551i, -31880i), -336f, false), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-825f, 347f, -248f, -1497f), vec2<i32>(15580i, -1i), -613f, false), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1070f, -1206f, -514f, 825f), vec2<i32>(0i, 2147483647i), 1135f, true), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(162f, -1460f, -1105f, -744f), vec2<i32>(0i, 38927i), 1078f, true), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(611f, 1000f, 1000f, 615f), vec2<i32>(-29927i, 1i), -462f, false), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(760f, 1568f, 1000f, 133f), vec2<i32>(12249i, -1i), 196f, true), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-140f, -290f, 369f, -1000f), vec2<i32>(-11506i, 2147483647i), -435f, true), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1685f, 2075f, 1000f, -258f), vec2<i32>(2147483647i, 21847i), -201f, true), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-149f, -530f, -384f, -205f), vec2<i32>(i32(-2147483648), 26089i), 290f, true), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-546f, -869f, -958f, -775f), vec2<i32>(0i, -1i), -311f, true), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1218f, -1045f, -1813f, 854f), vec2<i32>(-17112i, -48105i), -407f, true), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-2473f, 1000f, -1267f, -1098f), vec2<i32>(-45412i, -1i), -120f, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = array<bool, 13>();
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -271f))), var_0, -795f, _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 330f, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - 1297f))), _wgslsmith_f_op_f32(221f * _wgslsmith_f_op_f32(f32(-1f) * -686f))))));
    global0 = array<bool, 13>();
    return _wgslsmith_mod_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, ~u_input.a), u_input.c)), vec2<i32>(-12516i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, 38392i)), ~(vec4<i32>(u_input.a, 0i, u_input.c.x, u_input.a) >> (vec4<u32>(74072u, 1u, 1u, 1u) % vec4<u32>(32u))))));
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 16>();
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 16>();
    var var_0 = vec4<u32>(~(~4294967295u), u_input.b, 21292u, 1u);
    return Struct_2(Struct_1(vec4<bool>(_wgslsmith_f_op_f32(sign(-863f)) != _wgslsmith_div_f32(615f, 1000f), any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 13u)], true, true)), any(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 13u)])), !(!global0[_wgslsmith_index_u32(u_input.b, 13u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2033f, -208f, -1118f, -174f))) + vec4<f32>(_wgslsmith_f_op_f32(-397f * 1910f), _wgslsmith_f_op_f32(max(-1531f, 1023f)), 1f, 1176f)), func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2304f, 2610f, 290f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, 925f, -2207f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(960f, -143f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1656f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(33419u, 0u, 15355u), var_0.wxw), vec3<u32>(11858u, u_input.b, 24266u) >> (select(var_0.zxx, var_0.yzy, false) % vec3<u32>(32u))), 13u)]));
}

fn func_1() -> u32 {
    global0 = array<bool, 13>();
    global1 = array<Struct_1, 16>();
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.b, 16u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.d, var_0.a.d)));
    var_0 = func_2();
    return u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = !vec2<bool>(arg_0.a.x, true == (arg_3.x == arg_2.x));
    global1 = array<Struct_1, 16>();
    global0 = array<bool, 13>();
    let var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(max(-1i, -33102i), 2147483647i, -1i) & vec3<i32>(arg_0.c.x, _wgslsmith_div_i32(arg_0.c.x, -60199i), arg_1.a.c.x), max(firstLeadingBit(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(-vec3<i32>(-50838i, u_input.a, 74505i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + 322f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + 1000f)))));
    return Struct_2(Struct_1(vec4<bool>((var_1.x & 22939i) != _wgslsmith_dot_vec3_i32(var_1, var_1), !all(vec2<bool>(false, arg_0.e)), all(arg_0.a.zww), !arg_0.e), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.b.x, 1834f, 823f, 1669f), _wgslsmith_div_vec4_f32(arg_0.b, arg_1.a.b))), vec4<f32>(func_2().a.b.x, -293f, _wgslsmith_f_op_f32(round(arg_0.b.x)), arg_1.a.d), !arg_1.a.a)), vec2<i32>(-1i) * -(~arg_1.a.c), func_2().a.d, true != select(true, arg_2.x > 0u, !var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(85145u, 13u)], false, global0[_wgslsmith_index_u32(u_input.b, 13u)], true)), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])), select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.b, 13u)])), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)]), select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(22956u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(169f, -714f, -711f, -340f), vec4<f32>(-215f, 781f, -1238f, -1705f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(401f, -1000f, 1362f, -625f)))), _wgslsmith_mult_vec2_i32(select(u_input.c << (vec2<u32>(1u, 61240u) % vec2<u32>(32u)), vec2<i32>(12862i, u_input.c.x), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 13u)])), u_input.c), -357f, select(true, true, global0[_wgslsmith_index_u32(min(34452u, ~u_input.b), 13u)])), Struct_2(Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(43817u, 13u)], global0[_wgslsmith_index_u32(5006u, 13u)], true, global0[_wgslsmith_index_u32(u_input.b, 13u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(25088u, 13u)], false, true), !global0[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, -632f, 1294f, -1000f)), u_input.c, _wgslsmith_f_op_f32(417f - _wgslsmith_f_op_f32(max(-573f, 482f))), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 13u)])), vec3<u32>(~8227u, _wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(~0u, u_input.b)), vec4<u32>(func_1(), ~max(firstLeadingBit(43438u), 81082u >> (u_input.b % 32u)), 1u, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.b, 4294967295u), 1u >> (abs(0u) % 32u))));
    let var_1 = func_4(var_0.a, Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, -393f, var_0.a.d, var_0.a.b.x)), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-1i, u_input.a), max(vec2<i32>(-8062i, var_0.a.c.x), var_0.a.c)), _wgslsmith_f_op_f32(-1361f * var_0.a.b.x), global0[_wgslsmith_index_u32(62148u, 13u)])), reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(60322u, u_input.b, 4294967295u), vec3<u32>(1u, 18254u, u_input.b))) << (~vec3<u32>(u_input.b >> (u_input.b % 32u), u_input.b ^ u_input.b, firstLeadingBit(u_input.b)) % vec3<u32>(32u)), vec4<u32>(min(70857u, u_input.b), 4294967295u, firstLeadingBit(1u), ~(~(49728u ^ u_input.b))));
    global0 = array<bool, 13>();
    let var_2 = _wgslsmith_add_u32(((65161u ^ (u_input.b << (u_input.b % 32u))) << (u_input.b % 32u)) | 72272u, 0u);
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    var var_3 = 236f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.a.b.xx, _wgslsmith_f_op_vec2_f32(var_0.a.b.yx - var_1.a.b.yx)))))));
}

