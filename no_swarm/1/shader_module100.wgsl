struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1878f;

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<vec3<u32>, 12>;

var<private> global3: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = -1713f;
    let var_1 = ~(-vec3<i32>(max(arg_2.d.x, 1i), arg_3.c, reverseBits(-1i)));
    global3 = _wgslsmith_f_op_f32(round(-503f));
    let var_2 = Struct_2(arg_2.a, select(!arg_2.b, select(!vec3<bool>(arg_3.b.b.x, arg_3.b.b.x, arg_3.b.b.x), select(select(vec3<bool>(true, false, true), arg_3.b.b, true), vec3<bool>(true, true, true), arg_3.b.b), arg_3.b.b.x), select(vec3<bool>(30291i == arg_2.d.x, arg_3.b.b.x, !arg_3.b.b.x), select(!arg_2.b, vec3<bool>(arg_3.b.b.x, arg_3.b.b.x, arg_2.b.x), arg_3.b.b.x), _wgslsmith_add_u32(arg_3.a.a, 4294967295u) < arg_2.a)), _wgslsmith_f_op_vec3_f32(-arg_3.b.c), vec4<i32>(-(_wgslsmith_sub_i32(72325i, 24025i) & _wgslsmith_dot_vec3_i32(arg_3.b.d.yyw, var_1)), firstTrailingBit(2147483647i), arg_2.d.x, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_3.b.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, arg_3.a.b.x, arg_3.a.b.x))))))));
    global1 = array<Struct_4, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1393f));
}

fn func_2() -> vec4<f32> {
    global3 = 113f;
    global1 = array<Struct_4, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f * _wgslsmith_f_op_f32(f32(-1f) * -228f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + -420f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, u_input.c, u_input.a, -1i) << (vec4<u32>(4294967295u, 0u, 4294967295u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(1598f * -902f), Struct_2(54010u, vec3<bool>(false, true, false), vec3<f32>(-373f, -614f, -641f), vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.c), vec3<f32>(-1257f, 1427f, 861f)), Struct_3(Struct_1(1221u, vec2<f32>(-983f, 1000f)), Struct_2(1u, vec3<bool>(true, true, true), vec3<f32>(123f, -265f, 470f), vec4<i32>(-31550i, u_input.a, u_input.c, -2147483647i), vec3<f32>(-249f, -808f, -809f)), -29640i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), 680f))));
    var var_1 = vec4<f32>(-1932f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + 862f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-518f, 1310f)) + _wgslsmith_f_op_f32(f32(-1f) * -827f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2886f - _wgslsmith_div_f32(-232f, 458f)) * _wgslsmith_f_op_f32(max(-1000f, 1f))), -2050f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1994f)), -531f)));
    let var_2 = any(vec4<bool>(true, true, true, true)) | true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1137f, var_1.x, -885f, -123f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(301f, -1147f, 477f, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(64948i, -1i, u_input.b.x, -34542i), -1000f, Struct_2(25665u, vec3<bool>(var_2, var_2, true), vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.a, u_input.b.x, u_input.c, -12061i), var_1.zxx), Struct_3(Struct_1(1u, vec2<f32>(1125f, var_1.x)), Struct_2(1u, vec3<bool>(var_2, true, true), vec3<f32>(var_1.x, 2392f, 1344f), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.b.x), var_1.ywx), u_input.c)))), var_1.x, _wgslsmith_div_f32(1230f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.e.x, arg_0, -943f, -899f))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 707f, 172f, 934f), vec4<f32>(533f, arg_0, 138f, arg_3.e.x)))) * _wgslsmith_f_op_vec4_f32(func_2())));
    var var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(47592u, 1u, arg_3.a, arg_3.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3.a, 0u, 1u, arg_3.a), vec4<u32>(42597u, 68544u, 1u, arg_3.a) << (vec4<u32>(22506u, 24518u, 0u, arg_3.a) % vec4<u32>(32u))), abs(select(vec4<u32>(36046u, 57375u, arg_3.a, 1u), vec4<u32>(arg_3.a, 1u, arg_3.a, 4294967295u), false))), ~(~vec4<u32>(arg_3.a & arg_3.a, 48693u & arg_3.a, 1u, ~arg_3.a)));
    let var_2 = vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(floor(arg_0)));
    return arg_2.x;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    let var_0 = ~1u;
    global3 = -302f;
    var var_1 = global1[_wgslsmith_index_u32(var_0, 28u)];
    let var_2 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(50521u, var_0), abs(7731u), var_0, 1u | var_0) ^ vec4<u32>(~1627u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 63251u, 18356u), global2[_wgslsmith_index_u32(4294967295u, 12u)]), var_0, abs(17561u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 26633u), abs(vec2<u32>(0u, var_0))), var_0, var_0 << (_wgslsmith_mod_u32(var_0, var_0) % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(16389u, 4294967295u, 1u, var_0), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, 5451u, 4294967295u), vec4<u32>(var_0, var_0, var_0, 1u))) | ~(~vec4<u32>(69473u, 45527u, var_0, 1u))), ~(~(~vec4<u32>(var_0, var_0, 1u, 1u))), !vec4<bool>(-2210f < arg_1.x, true, var_1.d.x, _wgslsmith_f_op_f32(-var_1.b) >= -222f));
    global0 = -1047f;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(func_4(all(vec4<bool>(any(vec2<bool>(false, true)), select(false, true, true), true, true)) && (_wgslsmith_sub_i32(u_input.c, func_1(843f, vec4<i32>(u_input.c, 3282i, -2147483647i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.b.x, u_input.b.x), Struct_2(6943u, vec3<bool>(false, false, false), vec3<f32>(1030f, -1177f, -739f), vec4<i32>(u_input.c, -24756i, u_input.c, -21135i), vec3<f32>(-1169f, 620f, 301f)))) > u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(1136f * _wgslsmith_f_op_f32(f32(-1f) * -588f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -13030i, u_input.c, u_input.a), vec4<i32>(-9829i, u_input.a, -19740i, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -313f), Struct_2(4294967295u, vec3<bool>(true, true, true), vec3<f32>(-1000f, -340f, -444f), vec4<i32>(u_input.b.x, 2147483647i, 22625i, u_input.c), vec3<f32>(-441f, 1954f, -607f)), Struct_3(Struct_1(881u, vec2<f32>(-729f, -833f)), Struct_2(98519u, vec3<bool>(false, true, true), vec3<f32>(1145f, 1486f, -563f), vec4<i32>(0i, 63635i, 1i, u_input.b.x), vec3<f32>(391f, 159f, -509f)), u_input.a))))), -392f)));
    let var_0 = -13910i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_sub_vec4_i32(vec4<i32>(35295i, u_input.a, var_0, u_input.c), vec4<i32>(1i, 2147483647i, var_0, var_0)) | abs(vec4<i32>(9115i, 0i, u_input.c, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1847f, 532f) + vec3<f32>(-1277f, -708f, -886f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1526f, -347f, -309f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-539f, -312f, 111f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(340f, -659f, 308f))) + vec3<f32>(-543f, 508f, -135f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(685f, 665f, -1000f), vec3<f32>(135f, 1000f, -252f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-126f, 349f, 288f), vec3<f32>(751f, 844f, -746f), vec3<bool>(true, true, false)))))))), vec2<i32>(u_input.c, -50116i) ^ u_input.b);
}

