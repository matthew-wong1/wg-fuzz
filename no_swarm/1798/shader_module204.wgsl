struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2133f, -981f, -1094f, -1271f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(281f, 1410f, -2302f, -1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(757f, 524f, 189f, 184f))), _wgslsmith_div_vec4_f32(vec4<f32>(228f, 745f, -633f, 1065f), vec4<f32>(-1182f, 1123f, -965f, -1542f))), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-103f * -911f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, _wgslsmith_f_op_f32(floor(1000f))))))));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var var_1 = -1i;
    var var_2 = Struct_3(vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, 20565i, u_input.b.x), u_input.b.yyx), vec3<i32>(16487i, u_input.a.x, 0i)), -23114i), var_0.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1436f, -1277f, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -2126f, var_0.x, -1152f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-934f, var_0.x, var_0.x, var_0.x) + vec4<f32>(606f, -895f, -522f, -278f)))))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), any(vec3<bool>(true, true, true)))), 0i);
    return select(vec3<bool>(true, !((var_0.x < -927f) && true), true), !vec3<bool>(false, any(vec2<bool>(false, true)), true), true);
}

fn func_4(arg_0: vec3<bool>) -> bool {
    global0 = array<u32, 11>();
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)]), u_input.c, vec3<u32>(55472u, 15635u, 50945u)), ~u_input.c), vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(-1i, u_input.b.x, -42248i)), 1i))), 3778u);
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(vec3<i32>(2147483647i, firstLeadingBit(-(~(-30i))), u_input.a.x), 936f, vec4<f32>(-913f, 429f, 1f, 1000f), _wgslsmith_f_op_f32(trunc(-1050f)), var_1);
    global0 = array<u32, 11>();
    return arg_0.x;
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = vec3<bool>(func_4(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), func_3(u_input.b.wyx, Struct_2(Struct_1(u_input.c.x, u_input.b.xxw, u_input.d), arg_0.e)), select(false, true, false)), any(vec2<bool>(true, true)))), any(select(vec3<bool>(true, true, true), func_3(countOneBits(vec3<i32>(arg_0.e, arg_0.a.x, -2147483647i)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_0.a, 0u), arg_0.a.x)), vec3<bool>(true, true, true))), select(arg_0.e > -13652i, !(!select(true, true, true)), !all(vec2<bool>(false, true))));
    let var_1 = var_0.x;
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(abs(u_input.c.x), 11u)], arg_0.a, ~1u);
    var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~min(u_input.c << (u_input.c % vec3<u32>(32u)), u_input.c), ~u_input.c), firstLeadingBit(vec3<i32>(arg_0.e, firstTrailingBit(~var_2.b.x), firstLeadingBit(arg_0.e))), 24503u);
    var var_3 = Struct_4(1379f);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.c.yz * vec2<f32>(var_3.a, 687f)), vec2<f32>(-1000f, var_3.a), false)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.a, -522f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(822f, -1749f))), any(vec4<bool>(false, var_0.x, var_1, var_1)))))), arg_0.c.zx));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = (u_input.b.wz >> (u_input.c.zx % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(~u_input.b.xw, abs(vec2<i32>(firstLeadingBit(-1i), 1i >> (0u % 32u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), -159f, 1000f);
    var var_3 = Struct_4(-175f);
    return Struct_2(Struct_1(16153u, select(~select(vec3<i32>(u_input.b.x, 8817i, 0i), u_input.b.wxy, vec3<bool>(true, true, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.x, -9153i), u_input.b.zxz >> (u_input.c % vec3<u32>(32u))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), u_input.d), min(abs(-var_1.x), 0i));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    global0 = array<u32, 11>();
    let var_0 = func_3(~arg_1.a.b, Struct_2(Struct_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], 11u)] ^ 4294967295u, vec3<i32>(-arg_1.b, firstLeadingBit(-39856i), _wgslsmith_dot_vec3_i32(u_input.b.zzz, vec3<i32>(arg_0.x, 2147483647i, u_input.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.a, 4294967295u, 1u, 36917u), vec4<u32>(93339u, u_input.c.x, global0[_wgslsmith_index_u32(37225u, 11u)], 9334u)), vec4<u32>(9859u, arg_1.a.a, u_input.c.x, global0[_wgslsmith_index_u32(arg_1.a.c, 11u)]))), -44342i));
    var var_1 = firstLeadingBit(u_input.c.yy);
    var var_2 = Struct_3(~(u_input.b.yzy << (~vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], var_1.x) % vec3<u32>(32u))), arg_2, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(449f, arg_2, arg_2, 171f), vec4<f32>(1576f, arg_2, arg_2, arg_2), vec4<bool>(true, var_0.x, false, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -417f, 934f)))), vec4<f32>(-309f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 734f)), arg_2, -1000f), vec4<bool>(any(vec2<bool>(false, true)) | false, var_0.x, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1506f, _wgslsmith_div_f32(1110f, 2879f))))) + _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(abs(arg_2)))), 2147483647i);
    let var_3 = select(4294967295u, firstLeadingBit(u_input.c.x), !(!any(vec4<bool>(true, true, var_0.x, var_0.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1179f, 1f, 409f) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-616f, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - var_2.c.x), var_2.c.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, -235f, 2163f)) + vec3<f32>(607f, -757f, 264f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-188f, -1308f, -282f), vec3<f32>(-1108f, -160f, -362f)))), _wgslsmith_f_op_vec3_f32(func_6(vec3<i32>(u_input.b.x >> (61541u % 32u), 5951i, u_input.b.x), func_5(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec3<i32>(u_input.a.x, u_input.b.x, -35370i), -1312f, vec4<f32>(-765f, -558f, 136f, -1124f), 1000f, u_input.a.x))), Struct_4(492f)), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec3<i32>(-1i, 9243i, u_input.b.x), -234f, vec4<f32>(-1221f, 1220f, 2638f, -158f), -940f, -2147483647i))).x))));
    var var_1 = 0u << (global0[_wgslsmith_index_u32(abs(~reverseBits(u_input.d)), 11u)] % 32u);
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var var_2 = vec2<i32>(-u_input.b.x, ~_wgslsmith_sub_i32(abs(-40913i), -1i));
    return Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xzz, u_input.a.ywz), 17082i, ~(-26659i)) | _wgslsmith_add_vec3_i32(~max(u_input.a.wyy, vec3<i32>(var_2.x, var_2.x, -2147483647i)), select(u_input.a.zyz ^ vec3<i32>(u_input.a.x, -20358i, var_2.x), vec3<i32>(53908i, 1i, u_input.b.x), true)), -600f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-668f)), _wgslsmith_f_op_f32(1000f - 159f), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-1246f - 471f))))), var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(289f + -1425f))))), var_2.x & -_wgslsmith_add_i32(u_input.b.x, ~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_0 = func_1();
    global0 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], 1u, 1u);
}

