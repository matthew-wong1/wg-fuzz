struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-1266f, -1000f, 1000f), vec3<f32>(-2162f, 1144f, -1025f), vec3<f32>(-597f, -547f, -1563f), vec3<f32>(636f, -760f, -842f), vec3<f32>(818f, 529f, 1371f), vec3<f32>(335f, -777f, 370f), vec3<f32>(1579f, -219f, 230f), vec3<f32>(974f, -1377f, -843f), vec3<f32>(1074f, 1153f, -522f), vec3<f32>(-1250f, 268f, 945f), vec3<f32>(1427f, 604f, -859f), vec3<f32>(127f, 1185f, -444f), vec3<f32>(-352f, 1140f, 1000f), vec3<f32>(-1000f, 1000f, -246f), vec3<f32>(-624f, 1868f, 1000f), vec3<f32>(-767f, 2228f, -480f), vec3<f32>(105f, 259f, -1023f), vec3<f32>(-816f, 286f, 826f), vec3<f32>(-776f, 1136f, 729f), vec3<f32>(-1732f, 1583f, 1308f), vec3<f32>(296f, 120f, -1075f), vec3<f32>(1394f, -645f, -412f), vec3<f32>(-333f, -881f, 1003f), vec3<f32>(-427f, -658f, -247f), vec3<f32>(-352f, -1876f, -985f), vec3<f32>(-1033f, 466f, 311f), vec3<f32>(-1240f, 981f, -1477f), vec3<f32>(-379f, -379f, 1920f), vec3<f32>(1000f, 932f, -219f), vec3<f32>(542f, -800f, -507f), vec3<f32>(-345f, 1364f, -109f), vec3<f32>(-822f, -1000f, 978f));

var<private> global1: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(468f, 85386u, i32(-2147483648)), Struct_4(1189f, 57906u, 91390i), Struct_4(1066f, 53996u, -1i), Struct_4(-1000f, 24492u, -7293i), Struct_4(-1115f, 1u, 13761i), Struct_4(-100f, 69166u, i32(-2147483648)), Struct_4(-803f, 0u, 2147483647i), Struct_4(-621f, 0u, -42335i), Struct_4(151f, 38186u, -50187i), Struct_4(352f, 0u, 1i), Struct_4(1000f, 1114u, 1i), Struct_4(-1169f, 39170u, 0i), Struct_4(-843f, 0u, i32(-2147483648)), Struct_4(2170f, 60762u, 6949i), Struct_4(354f, 4294967295u, 0i), Struct_4(217f, 1u, -14612i), Struct_4(-511f, 775u, 19297i), Struct_4(818f, 4294967295u, 38856i), Struct_4(275f, 67505u, 0i), Struct_4(1187f, 1u, 2147483647i), Struct_4(385f, 0u, 0i), Struct_4(-457f, 56728u, 0i), Struct_4(-161f, 24283u, -1i), Struct_4(-926f, 0u, -1i), Struct_4(-169f, 4294967295u, 1i), Struct_4(-335f, 3275u, 0i), Struct_4(-336f, 29363u, i32(-2147483648)), Struct_4(-2124f, 0u, -46558i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<bool>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.a, -769f)), -1473f);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.a, false, vec4<bool>(true, arg_2, false, false))))), !any(vec4<bool>(arg_2, false, true, arg_2)), u_input.b.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(912f, arg_1.x, arg_1.x, arg_1.x) * vec4<f32>(arg_1.x, arg_1.x, -1673f, -310f))))), Struct_1(vec3<f32>(-215f, arg_1.x, _wgslsmith_f_op_f32(976f - arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 894f), _wgslsmith_f_op_f32(max(1136f, arg_1.x))), arg_2, u_input.b.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, 717f, -1015f), vec4<f32>(arg_1.x, arg_1.x, -1561f, arg_1.x)))))), select(arg_2, true, true), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-1214f + -1320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(255f * arg_1.x))) - arg_1.x)), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), firstTrailingBit(55008u), u_input.a.x), _wgslsmith_mult_vec3_i32(-u_input.a, select(vec3<i32>(u_input.a.x, -32161i, u_input.a.x), u_input.a, vec3<bool>(false, arg_2, true))) & -(~u_input.a), true, !select(!vec4<bool>(true, arg_2, true, true), !vec4<bool>(true, true, arg_2, arg_2), true && arg_2))).x, !(!vec2<bool>(false, arg_2)));
    global0 = array<vec3<f32>, 32>();
    let var_1 = global1[_wgslsmith_index_u32(arg_0 << (_wgslsmith_div_u32(abs(~arg_0), 4294967295u) % 32u), 28u)];
    let var_2 = select(var_1.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, countOneBits(u_input.a.x), max(-1i, 0i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, var_1.c, u_input.a.x), vec3<i32>(var_1.c, 1i, u_input.a.x)) ^ -u_input.a), var_0.a.b.c);
    var_0 = Struct_5(Struct_3(var_0.a.a, var_0.a.a, true, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, 1000f)), _wgslsmith_f_op_f32(-var_1.a)), var_0.b), _wgslsmith_f_op_f32(select(-894f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(arg_0, 28u)], vec3<i32>(-1i, u_input.a.x, -30756i), var_0.a.b.c, vec4<bool>(arg_2, var_0.c.x, false, true))).x * _wgslsmith_f_op_f32(ceil(var_0.a.a.b.x))), true))), _wgslsmith_f_op_f32(floor(var_1.a)), !var_0.c);
    return _wgslsmith_f_op_f32(max(-1012f, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(abs(arg_1.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, -2110f)) * vec2<f32>(-1137f, -426f)), true)), 1f, _wgslsmith_f_op_f32(step(-359f, -428f)), 339f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2206f, 1167f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) * _wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(0u, 28u)], vec3<i32>(u_input.a.x, -1i, -1i), false, vec4<bool>(false, false, false, true))).x), 1f, _wgslsmith_f_op_f32(f32(-1f) * -666f))), false));
    global0 = array<vec3<f32>, 32>();
    var var_1 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true))));
    let var_2 = ~1u;
    let var_3 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-126f * _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.xx, var_1.x, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2368f, 1040f, var_0.x, var_0.x)), vec4<f32>(1310f, var_0.x, var_0.x, -504f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.wwz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(561f)), -129f), var_0.xx)), true, 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_0.x), 366f, -226f, -491f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f + 2129f)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_2(1u, _wgslsmith_f_op_vec2_f32(max(var_3.b.a.xx, var_3.a.a.yy)), all(vec3<bool>(true, var_1.x, true)))), _wgslsmith_f_op_f32(max(-997f, _wgslsmith_div_f32(-1028f, -873f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e, -983f, -1771f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1170f, var_0.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_3.a.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1167f, -498f)))))))), var_1.x, 96469u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_3.a.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.b;
    global0 = array<vec3<f32>, 32>();
    let var_2 = Struct_2(u_input.b.yz, _wgslsmith_clamp_vec4_i32(vec4<i32>(min(u_input.a.x << (var_1.x % 32u), u_input.a.x ^ u_input.a.x), ~(-1i), -18743i, _wgslsmith_sub_i32(u_input.a.x, -27852i)), -(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x) << (max(vec4<u32>(19606u, var_0.d, var_0.d, var_1.x), u_input.b) % vec4<u32>(32u))), select(max(~vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i), -vec4<i32>(u_input.a.x, 5715i, -7739i, u_input.a.x)), abs(vec4<i32>(-40216i, 1i, u_input.a.x, -67818i)), any(!vec3<bool>(var_0.c, true, var_0.c)))));
    let var_3 = var_0.c;
    var var_4 = vec2<u32>(~_wgslsmith_clamp_u32(u_input.b.x, max(_wgslsmith_sub_u32(29299u, u_input.b.x), ~u_input.b.x), func_1().d), 4294967295u);
    global1 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-909f, 1494f, !(true && var_0.c))), _wgslsmith_mult_vec2_i32(vec2<i32>(-5326i, var_2.b.x), max(vec2<i32>(~(-7061i), u_input.a.x), _wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, u_input.a.x), u_input.a.zy))), 1u, var_2.b.yxw);
}

