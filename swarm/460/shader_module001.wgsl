struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<i32>(-1i, 0i, -17916i), vec4<bool>(true, true, true, true), vec3<f32>(-716f, 427f, -1527f)), Struct_3(vec3<i32>(24998i, 0i, -9586i), vec4<bool>(false, true, true, true), vec3<f32>(-203f, 959f, 213f)), Struct_3(vec3<i32>(23453i, i32(-2147483648), -1i), vec4<bool>(false, true, true, false), vec3<f32>(1833f, -1188f, -563f)), Struct_3(vec3<i32>(-1i, 7279i, 2147483647i), vec4<bool>(true, false, true, true), vec3<f32>(1650f, -1078f, 674f)), Struct_3(vec3<i32>(1i, 8934i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec3<f32>(-202f, 143f, -1000f)), Struct_3(vec3<i32>(28424i, 29685i, 11851i), vec4<bool>(false, true, false, false), vec3<f32>(1388f, -406f, -488f)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<bool>(false, false, true, true), vec3<f32>(-724f, 1086f, -789f)), Struct_3(vec3<i32>(0i, 30493i, 0i), vec4<bool>(true, true, true, true), vec3<f32>(-1641f, 766f, -2116f)), Struct_3(vec3<i32>(0i, 46318i, 1i), vec4<bool>(false, false, true, false), vec3<f32>(-1994f, 335f, 488f)), Struct_3(vec3<i32>(1i, -18977i, -25917i), vec4<bool>(false, true, true, true), vec3<f32>(-1251f, 790f, -537f)), Struct_3(vec3<i32>(22436i, i32(-2147483648), -18797i), vec4<bool>(true, false, false, true), vec3<f32>(1000f, -617f, -356f)), Struct_3(vec3<i32>(i32(-2147483648), 12749i, -1i), vec4<bool>(false, true, false, true), vec3<f32>(-466f, -485f, 582f)), Struct_3(vec3<i32>(26291i, i32(-2147483648), -18014i), vec4<bool>(false, true, true, true), vec3<f32>(761f, -227f, -1020f)), Struct_3(vec3<i32>(0i, 2734i, -5357i), vec4<bool>(true, true, false, false), vec3<f32>(924f, 432f, 1000f)), Struct_3(vec3<i32>(-1i, -14868i, -28831i), vec4<bool>(true, false, false, true), vec3<f32>(-448f, 1000f, -593f)), Struct_3(vec3<i32>(-30962i, 22058i, -3508i), vec4<bool>(true, true, false, true), vec3<f32>(-291f, 244f, 867f)), Struct_3(vec3<i32>(2147483647i, 1i, 60940i), vec4<bool>(false, false, true, false), vec3<f32>(1035f, 710f, 445f)), Struct_3(vec3<i32>(-23615i, -1i, -52001i), vec4<bool>(false, false, false, true), vec3<f32>(102f, -1927f, 477f)), Struct_3(vec3<i32>(-32880i, 2147483647i, -18015i), vec4<bool>(false, true, false, true), vec3<f32>(221f, 1000f, -1096f)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, -66167i), vec4<bool>(false, true, true, false), vec3<f32>(470f, 797f, -393f)), Struct_3(vec3<i32>(13319i, i32(-2147483648), 9648i), vec4<bool>(true, true, true, false), vec3<f32>(-1240f, 1000f, 1006f)), Struct_3(vec3<i32>(3126i, 1i, 1i), vec4<bool>(true, true, false, true), vec3<f32>(-338f, -157f, 1072f)), Struct_3(vec3<i32>(2147483647i, 2147483647i, 0i), vec4<bool>(true, false, true, false), vec3<f32>(1359f, 466f, -692f)), Struct_3(vec3<i32>(28328i, -1i, 0i), vec4<bool>(false, true, true, false), vec3<f32>(637f, -2005f, -1302f)), Struct_3(vec3<i32>(-1i, 23414i, -20518i), vec4<bool>(false, false, true, true), vec3<f32>(-1569f, 667f, 359f)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> i32 {
    return ~(~(~(-29990i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<bool> {
    global1 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, arg_0.a.x, 1u, 1u), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 12058u, arg_1.x, 42033u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, u_input.c.x, arg_0.a.x, 1u), vec4<u32>(0u, 11356u, u_input.b, arg_1.x)))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a.x, ~arg_1.x, ~u_input.c.x, _wgslsmith_mult_u32(44744u, arg_0.a.x))), vec4<u32>(1u, ~(u_input.b & 0u), arg_1.x, ~arg_1.x)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, arg_0.a.x), vec2<u32>(var_0.x, arg_0.a.x) | vec2<u32>(u_input.c.x, u_input.b)), u_input.c, u_input.c) ^ max(vec2<u32>(arg_1.x, u_input.c.x), vec2<u32>(29536u & u_input.b, _wgslsmith_mod_u32(u_input.b, var_0.x))), arg_2.b.xxx);
    let var_2 = arg_2.b.zwx;
    let var_3 = Struct_2(arg_0.a.x | var_0.x, arg_0, max(_wgslsmith_add_u32(1u, abs(22768u) & arg_0.a.x), 22232u), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_2.a.xy, countOneBits(vec2<i32>(-3787i, u_input.d)))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.x, u_input.e.x), vec2<i32>(0i, 2147483647i))), _wgslsmith_div_f32(arg_2.c.x, arg_2.c.x));
    return var_3.b.b;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.e.zz;
    var var_1 = countOneBits(vec3<i32>(i32(-1i) * -41857i, ~(-2147483647i), -func_2()));
    let var_2 = 1425f;
    global1 = array<Struct_3, 25>();
    var_0 = u_input.e.zx;
    return Struct_1(u_input.c, vec3<bool>(any(!func_3(Struct_1(u_input.c, vec3<bool>(true, global0.x, global0.x)), vec2<u32>(24188u, 87494u), global1[_wgslsmith_index_u32(u_input.c.x, 25u)])), global0.x, false));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u ^ max(max(~50634u, ~u_input.c.x), ~(~arg_1)), 25u)];
    let var_1 = Struct_2(~4294967295u, Struct_1(u_input.c, !(!select(vec3<bool>(false, false, false), arg_2.b, arg_3.b.x))), abs(63677u), reverseBits(-vec2<i32>(37098i, arg_3.a.x) | var_0.a.xz), _wgslsmith_f_op_f32(-var_0.c.x));
    global1 = array<Struct_3, 25>();
    var var_2 = Struct_2(_wgslsmith_div_u32(arg_1 & _wgslsmith_div_u32(arg_1, arg_1), ~_wgslsmith_sub_u32(4294967295u, 0u)) | arg_2.a.x, Struct_1(u_input.c | countOneBits(~arg_2.a), !select(!vec3<bool>(false, global0.x, false), func_3(var_1.b, u_input.c, Struct_3(arg_3.a, var_0.b, var_0.c)), !arg_2.b)), _wgslsmith_mod_u32(~1029u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(30342u, 1u) & vec2<u32>(u_input.b, arg_2.a.x), vec2<u32>(9586u, 9162u), abs(var_1.b.a)), func_1(vec4<f32>(arg_3.c.x, -667f, arg_3.c.x, var_0.c.x)).a)), ~min(_wgslsmith_mod_vec2_i32(max(vec2<i32>(15376i, var_1.d.x), vec2<i32>(-2147483647i, -16357i)), min(arg_0.xy, arg_0.xx)), vec2<i32>(-arg_3.a.x, var_0.a.x)), _wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(1557f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.e, 357f)), _wgslsmith_f_op_f32(-1000f * var_1.e), false)) - var_2.e), -608f, 602f)).b;
    return ~(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(66941u, var_1.c, 0u, 11799u)), vec4<u32>(var_1.a, 4294967295u, arg_1, arg_1) & vec4<u32>(4294967295u, arg_2.a.x, arg_2.a.x, arg_2.a.x))) | vec4<u32>(1u, ~arg_2.a.x, 9951u, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(reverseBits((vec4<u32>(4294967295u, 72554u, 4294967295u, u_input.b) | vec4<u32>(4567u, u_input.c.x, u_input.c.x, u_input.b)) & firstLeadingBit(vec4<u32>(u_input.c.x, 33650u, u_input.c.x, 62922u))), ~reverseBits(vec4<u32>(u_input.b, 58886u, u_input.b, u_input.c.x))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 50292u, 1u, ~u_input.b), vec4<u32>(~4294967295u, ~u_input.b, 1u, u_input.c.x ^ u_input.c.x)), ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) << (4294967295u % 32u), ~(~u_input.b), u_input.b);
    global1 = array<Struct_3, 25>();
    let var_1 = -593f;
    var_0 = vec4<u32>(4294967295u, var_0.x << (u_input.c.x % 32u), ~min(743u, 27102u) ^ u_input.b, ~u_input.b) & _wgslsmith_div_vec4_u32(func_4(abs(u_input.e), var_0.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1719f, -933f, var_1, var_1))), Struct_3(u_input.e, !vec4<bool>(global0.x, global0.x, true, false), vec3<f32>(var_1, 542f, var_1))), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 9689u, 23820u, var_0.x), vec4<u32>(var_0.x, u_input.b, var_0.x, u_input.c.x), vec4<u32>(var_0.x, 14634u, 48714u, u_input.c.x)) >> (~vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) % vec4<u32>(32u))));
    global0 = !(!vec3<bool>(!(!global0.x), any(vec2<bool>(true, global0.x)) || (u_input.a.x >= 26989i), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d, -2147483647i), -23947i >> (countOneBits(~var_0.x) % 32u)), vec4<i32>(~u_input.a.x, 1i, -29741i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, countOneBits(u_input.a.x)), 1i)));
}

