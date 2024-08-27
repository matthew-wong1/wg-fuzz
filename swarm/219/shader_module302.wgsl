struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 21> = array<u32, 21>(28377u, 1u, 104347u, 20432u, 4294967295u, 0u, 1u, 76091u, 19731u, 1u, 12502u, 23478u, 8256u, 102765u, 1u, 0u, 8961u, 1u, 3975u, 47992u, 31509u);

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(1034f, -538f, 335f), vec3<f32>(-460f, -155f, -543f), vec3<f32>(-1126f, 1000f, 1758f), vec3<f32>(-2077f, 574f, 956f), vec3<f32>(-1000f, -1457f, -312f), vec3<f32>(239f, 188f, -218f), vec3<f32>(996f, 1198f, 773f), vec3<f32>(-1000f, -996f, -1031f), vec3<f32>(-666f, -340f, -2003f), vec3<f32>(583f, -743f, -233f), vec3<f32>(-248f, -863f, 982f), vec3<f32>(1000f, -1000f, 360f), vec3<f32>(-510f, 527f, 182f));

var<private> global3: bool;

var<private> global4: vec4<i32> = vec4<i32>(-1i, 19386i, -41884i, i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: f32) -> vec4<f32> {
    global0 = true;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) + _wgslsmith_f_op_vec2_f32(vec2<f32>(719f, 1159f) + vec2<f32>(672f, arg_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, 594f), vec2<f32>(arg_0.c, 1494f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, 406f), vec2<f32>(arg_0.c, arg_0.c)))), select(vec2<bool>(false, arg_0.b.x), select(vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, arg_0.b.x)), false))))));
    global0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, 1339f)), _wgslsmith_f_op_f32(arg_0.c - -184f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c, var_0.x)) + _wgslsmith_f_op_f32(arg_0.c - 248f))), _wgslsmith_f_op_f32(abs(611f)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3)))), var_1.x, -468f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-908f, 1456f)), _wgslsmith_f_op_f32(184f - -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-625f * arg_3))), 994f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -894f, var_0.x, arg_0.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1183f, arg_0.c, arg_0.c) + vec4<f32>(-2136f, var_0.x, var_0.x, 1141f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 595f, arg_3), vec4<f32>(331f, var_1.x, -640f, -300f), arg_0.b)))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71229u, 21u)], 21u)], 3168u, 14345u, 40819u), vec4<bool>(false, true, true, false), 129f, true), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 21u)], 0u, 0u, u_input.a.x), vec3<bool>(true, false, false), 861f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-259f))), _wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(min(-291f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f) + _wgslsmith_f_op_f32(max(-1235f, -1072f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), vec4<bool>(true, true, false, true), 434f, false), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(5668u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<bool>(true, true, false), -1245f)).x)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(387f, 285f, -2167f, -1788f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1074f, -1000f, 408f, -803f), vec4<f32>(1147f, -993f, 1081f, -417f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(916f, -327f, -594f, 1103f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1641f, 1000f, -1004f, 1000f) + vec4<f32>(1084f, 429f, -1355f, 106f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, 314f, 1973f, 343f) * vec4<f32>(2435f, -357f, 1000f, -2321f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-610f, -545f, -171f, 1000f) + vec4<f32>(-856f, 317f, 801f, 781f)))))))));
    global1 = array<u32, 21>();
    var var_1 = Struct_1(vec4<u32>(u_input.a.x, ~25242u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4041u, 21u)], 29434u), 21u)], 21u)], ~1u | ~u_input.a.x), !vec4<bool>(select(true, true, all(vec3<bool>(true, false, false))), true, _wgslsmith_mod_i32(global4.x, global4.x) <= 0i, any(vec3<bool>(true, false, false)) || false), 1415f, true);
    var var_2 = Struct_2(Struct_1(var_1.a, select(select(var_1.b, !vec4<bool>(false, var_1.d, var_1.d, true), true), !var_1.b, !all(vec4<bool>(false, var_1.b.x, var_1.d, false))), _wgslsmith_f_op_f32(var_0.x * 1137f), (true && all(var_1.b.xwz)) || true), Struct_1(vec4<u32>(abs(var_1.a.x), ~var_1.a.x, 33408u, firstLeadingBit(1u)), var_1.b, _wgslsmith_div_f32(var_0.x, var_0.x), !(!(!var_1.d))), firstTrailingBit(firstLeadingBit(vec4<i32>(global4.x, min(52945i, -1i), global4.x, 33708i))), ~(~(~var_1.a)));
    let var_3 = Struct_3(Struct_1(vec4<u32>(abs(1u), ~u_input.a.x, max(1u, _wgslsmith_add_u32(121798u, u_input.a.x)), u_input.a.x), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-283f)) - _wgslsmith_f_op_f32(f32(-1f) * -1439f)), !var_2.a.b.x), vec3<bool>(all(var_1.b.xxx) == true, all(select(vec2<bool>(true, var_1.d), var_2.a.b.xy, !vec2<bool>(var_2.b.d, var_1.b.x))), !all(vec3<bool>(true, var_1.b.x, false)) | any(select(var_1.b.zyz, vec3<bool>(false, false, false), false))));
    return min(~(~(countOneBits(0u) & max(62515u, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(var_3.a.a.x, 21u)]));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = -914f;
    let var_1 = ~(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-11187i, global4.x, -2147483647i, -27234i)), min(vec4<i32>(global4.x, 42437i, 2147483647i, global4.x), vec4<i32>(-4349i, global4.x, global4.x, global4.x))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-8459i, -3007i, global4.x, global4.x)), -vec4<i32>(-7122i, -1i, 8704i, -34225i))) ^ select(_wgslsmith_mod_vec4_i32(-vec4<i32>(global4.x, global4.x, global4.x, 25032i), vec4<i32>(30279i, global4.x, global4.x, global4.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, global4.x, global4.x), vec4<i32>(-1412i, 1i, global4.x, -1160i)), !vec4<bool>(true, arg_0.b.x, true, arg_0.d)));
    let var_2 = arg_0.b.x;
    let var_3 = arg_0.b.yxz;
    let var_4 = -15176i;
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_3(func_4(Struct_1(vec4<u32>(~4294967295u, firstLeadingBit(global1[_wgslsmith_index_u32(75703u, 21u)]), ~71661u, func_2()), vec4<bool>(any(vec2<bool>(arg_1.x, true)), arg_1.x, true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f * 353f)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1237f)) - _wgslsmith_f_op_f32(ceil(-406f)))))), vec3<bool>(arg_1.x, true, false));
    let var_1 = 26194u;
    let var_2 = Struct_3(func_4(Struct_1(~var_0.a.a, var_0.a.b, -306f, any(func_4(var_0.a, var_0.a.c).b)), -1565f), !vec3<bool>(true, func_4(Struct_1(var_0.a.a, vec4<bool>(false, var_0.a.b.x, var_0.b.x, true), var_0.a.c, false), -1000f).b.x, any(vec3<bool>(false, arg_1.x, arg_1.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.c))), -1242f, true)), _wgslsmith_f_op_f32(var_2.a.c * -1246f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(var_0.a.c - -1141f)))));
    global3 = var_0.a.b.x;
    return !(!any(!var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~1i), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(max(vec3<i32>(2147483647i, global4.x, 0i), vec3<i32>(global4.x, global4.x, 2147483647i)), vec3<i32>(36893i, 0i, -2147483647i)), ~vec3<i32>(-1i, 2147483647i, -2147483647i)), global4.xw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1501f, 1255f) + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(143f, -1108f)), 328f)), vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~0u, 21u)] & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 21u)], u_input.a.x), 0u, u_input.b.x >> (~4294967295u % 32u)), select(~(~40570u), u_input.b.x, func_1(4406i, vec4<bool>(true, true, true, true))), ~global1[_wgslsmith_index_u32(~17536u, 21u)]));
}

