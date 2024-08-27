struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(1i, 12220i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 9308i), vec2<i32>(-35727i, 33512i), vec2<i32>(-28998i, -16171i), vec2<i32>(0i, 0i));

var<private> global1: u32;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-89739i, true, vec3<f32>(-1000f, 140f, 1475f), vec4<i32>(-62318i, 11176i, -1i, 1i), vec4<f32>(1591f, -1488f, -497f, -1159f)), Struct_1(-1i, false, vec3<f32>(1087f, 722f, -127f), vec4<i32>(i32(-2147483648), 28254i, 1i, -1i), vec4<f32>(-1486f, 1000f, 1571f, -691f)), Struct_1(0i, false, vec3<f32>(-2083f, 1243f, -481f), vec4<i32>(6996i, 27577i, 2147483647i, 16868i), vec4<f32>(-2232f, 256f, 404f, 1012f)), Struct_1(-11688i, false, vec3<f32>(-1077f, -798f, -1319f), vec4<i32>(0i, -44744i, 8264i, 1i), vec4<f32>(-595f, -1145f, 284f, 691f)), Struct_1(1i, true, vec3<f32>(502f, -1092f, -1026f), vec4<i32>(20546i, -52619i, i32(-2147483648), 2147483647i), vec4<f32>(1162f, -630f, 623f, 184f)), Struct_1(-14759i, true, vec3<f32>(1000f, 1616f, -1927f), vec4<i32>(2147483647i, -18755i, -9331i, 2147483647i), vec4<f32>(642f, 1010f, 1130f, 2863f)), Struct_1(i32(-2147483648), false, vec3<f32>(-1000f, -1603f, 2322f), vec4<i32>(-21328i, 34320i, -1i, 33053i), vec4<f32>(500f, 1053f, 188f, -312f)), Struct_1(24545i, false, vec3<f32>(1240f, 664f, 1000f), vec4<i32>(1i, 14349i, 0i, 2147483647i), vec4<f32>(269f, -839f, -1205f, 352f)), Struct_1(29323i, true, vec3<f32>(-1000f, 800f, 152f), vec4<i32>(1i, 0i, -62992i, 8484i), vec4<f32>(389f, -1000f, 481f, -1945f)), Struct_1(2147483647i, true, vec3<f32>(893f, 1226f, -1193f), vec4<i32>(2925i, 0i, 1i, 0i), vec4<f32>(-945f, 271f, -1025f, -1957f)), Struct_1(i32(-2147483648), true, vec3<f32>(248f, 946f, -879f), vec4<i32>(i32(-2147483648), -1i, 1i, 57944i), vec4<f32>(-2382f, -708f, 547f, 482f)), Struct_1(i32(-2147483648), true, vec3<f32>(-1000f, -742f, -335f), vec4<i32>(-15965i, 0i, 15115i, 35526i), vec4<f32>(1000f, 847f, -668f, -721f)), Struct_1(-1i, true, vec3<f32>(-155f, -693f, -1288f), vec4<i32>(i32(-2147483648), -1i, 1i, -1i), vec4<f32>(-131f, 179f, 497f, -458f)), Struct_1(62111i, true, vec3<f32>(219f, 269f, 268f), vec4<i32>(2147483647i, 58702i, -19437i, 13363i), vec4<f32>(-698f, -1269f, -739f, 300f)), Struct_1(-7488i, true, vec3<f32>(169f, 751f, 1229f), vec4<i32>(0i, -23861i, 7568i, 1846i), vec4<f32>(-984f, -300f, -512f, 1000f)), Struct_1(-1i, true, vec3<f32>(-527f, -1007f, 417f), vec4<i32>(7632i, -2370i, 1i, 0i), vec4<f32>(-1209f, 398f, -1754f, -1220f)), Struct_1(-42317i, true, vec3<f32>(603f, 462f, 840f), vec4<i32>(66336i, -14182i, -58024i, -19291i), vec4<f32>(1209f, 143f, 861f, 1998f)), Struct_1(i32(-2147483648), true, vec3<f32>(-280f, -635f, 194f), vec4<i32>(19602i, 23004i, 34274i, i32(-2147483648)), vec4<f32>(442f, 1306f, 218f, -822f)), Struct_1(57032i, true, vec3<f32>(-795f, 277f, -1154f), vec4<i32>(-81594i, 1i, -23031i, -41926i), vec4<f32>(-565f, -1431f, 685f, 2420f)), Struct_1(-1i, true, vec3<f32>(-1000f, -336f, -543f), vec4<i32>(1i, -18671i, 37953i, -13969i), vec4<f32>(-1000f, -155f, 1196f, -709f)), Struct_1(i32(-2147483648), true, vec3<f32>(1747f, -764f, -679f), vec4<i32>(-40102i, i32(-2147483648), -36336i, -5347i), vec4<f32>(-2207f, 278f, -1670f, -1047f)), Struct_1(-1i, false, vec3<f32>(346f, 710f, 1679f), vec4<i32>(32646i, 1i, 2147483647i, 0i), vec4<f32>(-1000f, -182f, 413f, 1283f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = vec2<bool>(any(select(select(select(arg_1.zz, arg_1.xy, arg_1.zx), select(arg_1.yx, arg_1.yx, arg_1.yz), !arg_1.x), vec2<bool>(true, !arg_1.x), any(!arg_1))), false);
    var var_1 = 0i;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c.x, 13362i, arg_2.a.a, -2147483647i), u_input.c, select(true, arg_1.x, true)) & _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), firstTrailingBit(arg_2.e.a.d)), arg_2.b.a.d & arg_2.b.a.d), !all(vec3<bool>(true, all(vec4<bool>(true, arg_2.b.a.b, var_0.x, true)), any(vec4<bool>(var_0.x, var_0.x, true, arg_1.x)))), vec3<f32>(arg_0, arg_2.b.a.e.x, -839f), countOneBits(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(39014i, arg_2.e.b.x, 1i, -26339i), vec4<i32>(-5047i, 1i, arg_2.b.a.d.x, 11826i)), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 9641i, -13868i), vec3<i32>(0i, 0i, -1i))), _wgslsmith_mult_i32(min(2147483647i, -28029i), ~u_input.d), 10472i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c.x, arg_0, -351f, -464f))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), -2333f, _wgslsmith_f_op_f32(abs(1364f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1460f, 854f) + -350f))));
    global1 = ~(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 0u, 11514u)), firstLeadingBit(select(u_input.a.wwy, u_input.a.wwy, arg_1))) >> (8614u % 32u));
    let var_3 = arg_2.a.d.wz;
    return vec4<i32>(arg_2.b.c.x, _wgslsmith_dot_vec2_i32(~(var_3 << (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(arg_2.e.a.d.wy, vec2<i32>(1i, 2147483647i))), ~(-max(var_3.x, -2147483647i)), arg_2.e.c.x) << (u_input.a % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = u_input.c.x;
    var var_1 = Struct_3(Struct_1(u_input.d, !all(vec2<bool>(false, arg_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x), _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)) - vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.e.x), 241f)), func_3(_wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(-2379f + -641f)), !select(vec3<bool>(false, arg_0.b, true), vec3<bool>(true, arg_0.b, false), vec3<bool>(false, false, arg_0.b)), Struct_3(global2[_wgslsmith_index_u32(u_input.b, 22u)], Struct_2(global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<i32>(-1i, u_input.d, 44076i), u_input.c.xz, -476f), arg_1, u_input.e, Struct_2(Struct_1(-6050i, false, vec3<f32>(arg_0.c.x, arg_0.c.x, -1000f), vec4<i32>(-2147483647i, 18544i, arg_0.d.x, -2147483647i), arg_0.e), arg_0.d.xwz, vec2<i32>(2147483647i, 6524i), arg_0.e.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.x, arg_0.e.x, -701f, -1000f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-636f, 1000f, -1878f, arg_0.c.x))), vec4<bool>(arg_1, arg_1, arg_1, arg_1)))))), Struct_2(Struct_1(firstTrailingBit(-2876i), all(vec3<bool>(arg_1, arg_1, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1347f, arg_0.c.x, arg_0.e.x) - arg_0.c), _wgslsmith_sub_vec4_i32(u_input.c, arg_0.d), _wgslsmith_f_op_vec4_f32(arg_0.e + _wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, 1401f, 474f, arg_0.e.x)))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.c.yxy, arg_0.d.zzw, ~vec3<i32>(arg_0.a, 2147483647i, -43593i))), vec2<i32>(arg_0.a, u_input.c.x) | global0[_wgslsmith_index_u32(u_input.b >> (~u_input.a.x % 32u), 7u)], arg_0.e.x), arg_1, ~(~vec2<u32>(u_input.b, max(4294967295u, 1u))), Struct_2(Struct_1(-1i, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.e.wyy))), vec4<i32>(~u_input.d, ~u_input.c.x, -u_input.d, select(-33955i, u_input.d, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e) - arg_0.e)), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(arg_0.a, 2147483647i, u_input.d)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1454i, arg_0.d.x, arg_0.d.x), arg_0.d.zwy)), vec3<i32>(~u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(-24701i, u_input.c.x)), abs(13125i))), u_input.c.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, ~abs(u_input.b))), var_1.d.x), 22u)];
    return true;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = select(select(vec4<bool>(true, any(vec4<bool>(true, true, arg_0.a.b, arg_0.a.b)) && func_2(Struct_1(-11996i, arg_0.a.b, arg_0.a.c, vec4<i32>(-22974i, arg_0.a.d.x, 2240i, 42956i), arg_0.a.e), false), any(!vec4<bool>(false, arg_0.a.b, false, arg_0.a.b)), reverseBits(u_input.e.x) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 78864u, u_input.b, 4294967295u), u_input.a)), !vec4<bool>(true, all(vec4<bool>(true, false, arg_0.a.b, arg_0.a.b)), !arg_0.a.b, arg_0.a.b), true), !(!select(select(vec4<bool>(true, arg_0.a.b, arg_0.a.b, true), vec4<bool>(false, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<bool>(false, false, arg_0.a.b, arg_0.a.b)), select(vec4<bool>(true, arg_0.a.b, true, arg_0.a.b), vec4<bool>(true, true, arg_0.a.b, true), arg_0.a.b), select(vec4<bool>(false, true, arg_0.a.b, false), vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, true), vec4<bool>(arg_0.a.b, false, arg_0.a.b, true)))), vec4<bool>(arg_0.d >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(select(1000f, arg_0.d, false)))), arg_0.d <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.e.x))), any(vec3<bool>(true, true, true)), (any(vec3<bool>(true, arg_0.a.b, arg_0.a.b)) & true) && true));
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    var var_1 = -1168f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -332f);
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, ~(-49592i)), arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 7>();
    var var_0 = Struct_1(1i, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec4<i32>(~(-2147483647i) | func_1(Struct_2(global2[_wgslsmith_index_u32(36847u, 22u)], u_input.c.xyx, global0[_wgslsmith_index_u32(0u, 7u)], -543f)), u_input.d, abs(u_input.d), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, -470f, 1649f, 243f)))))));
    let var_1 = ~(-_wgslsmith_mult_vec2_i32(u_input.c.yy, u_input.c.yz));
    let var_2 = u_input.a.x;
    var var_3 = -1i;
    let var_4 = vec3<f32>(161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(414f * var_0.c.x), -2950f)) - _wgslsmith_div_f32(1162f, 425f)), 1128f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec3<i32>(-2147483647i, var_1.x, 7554i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 181f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_f32(abs(var_4.x))))))), firstLeadingBit(~(~0u)), vec3<f32>(218f, var_4.x, var_0.e.x));
}

