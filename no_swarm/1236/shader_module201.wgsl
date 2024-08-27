struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(firstTrailingBit(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -980f), ~(~vec4<u32>(u_input.a, 1u, 11148u, 2938u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 763f, 692f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -464f, -1711f))) * vec3<f32>(-1000f, -1301f, -1223f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(613f, -749f, 351f, 1189f) - vec4<f32>(1153f, -575f, -115f, 444f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(308f, -1242f, -994f, -1459f), vec4<f32>(1245f, -1239f, -1425f, 1630f)))))), -161i);
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_1 = !vec2<bool>(true, _wgslsmith_f_op_f32(min(-1439f, -1086f)) > _wgslsmith_f_op_f32(-var_0.c.a));
    let var_2 = !vec2<bool>(~firstTrailingBit(u_input.d) != ~1u, false);
    return -950f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, 910f, -2156f, 131f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-809f, 423f, -915f, 797f), vec4<f32>(270f, 367f, -1575f, -122f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, 1323f, -246f, 1507f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(512f * 2811f) * _wgslsmith_f_op_f32(select(1072f, -276f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f * 981f) - _wgslsmith_f_op_f32(func_3())), true)), -700f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f), 511f), _wgslsmith_f_op_f32(min(-1734f, 392f))));
    global0 = array<Struct_2, 7>();
    var var_1 = 958f;
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    var var_0 = (arg_0 == true) & true;
    return arg_1.x;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_0 = vec2<u32>(abs(~107u), min(4294967295u, 20182u));
    var var_1 = Struct_3(_wgslsmith_sub_i32(-u_input.c, ~(-(~u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(false, select(false, true, false), func_2(vec4<u32>(arg_0.x, 1u, var_0.x, u_input.a), vec4<i32>(u_input.e, u_input.c, u_input.c, -27051i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1168f, 203f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -622f) * vec2<f32>(-528f, 395f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -182f))))), vec4<u32>(1u, arg_0.x, u_input.b, _wgslsmith_clamp_u32(36375u, var_0.x, arg_0.x << (var_0.x % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1763f, _wgslsmith_f_op_f32(724f - 1317f), _wgslsmith_div_f32(-675f, 539f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1299f, 110f, -989f, -1017f), vec4<f32>(-1000f, -1540f, 1041f, 2061f), vec4<bool>(true, true, false, false))), vec4<f32>(564f, 491f, -359f, -150f))))), firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(u_input.e, u_input.c))), vec2<i32>(-1i, 0i))));
    global0 = array<Struct_2, 7>();
    return ~51049u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_0 = ((_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 25477u, u_input.d, u_input.a), vec4<u32>(u_input.d, 96236u, u_input.d, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(50499u, 0u, 43275u, 1u))) >> (abs(abs(vec4<u32>(4294967295u, 79129u, 4294967295u, u_input.d))) % vec4<u32>(32u))) | reverseBits(vec4<u32>(max(u_input.b, 0u), ~u_input.d, 4294967295u, ~1u))) ^ (vec4<u32>(~abs(60691u), ~func_1(vec4<u32>(u_input.a, 51629u, 1u, u_input.b)), _wgslsmith_div_u32(~u_input.b, u_input.a), 29131u) & (~vec4<u32>(1u, 0u, 11639u, 0u) << (~(~vec4<u32>(30206u, u_input.d, 4294967295u, 5544u)) % vec4<u32>(32u))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1847f, 1000f, -477f) - vec3<f32>(227f, -1205f, 1587f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1701f, -286f, 1741f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1582f, -383f), vec3<f32>(218f, 546f, 518f))), vec3<f32>(-1215f, -870f, 1302f)), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -598f, -145f) - vec3<f32>(297f, 644f, 1332f))) + vec3<f32>(-547f, -865f, _wgslsmith_f_op_f32(ceil(1114f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, ~_wgslsmith_add_i32(u_input.e, -33398i)), ~vec2<i32>(u_input.c, 0i)), var_0.xxy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, var_2.x, -343f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1414f, var_2.x, 167f, var_2.x) - vec4<f32>(-505f, 121f, -1000f, -540f))))), u_input.e, ~(~(~firstLeadingBit(20334u))));
}

