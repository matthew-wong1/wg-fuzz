struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12>;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 0u, 0u, 15182u), vec4<u32>(7320u, 0u, 31455u, 1322u), vec4<u32>(1u, 1u, 4294967295u, 13782u), vec4<u32>(6457u, 8447u, 0u, 0u), vec4<u32>(1u, 59997u, 29866u, 91735u), vec4<u32>(0u, 3756u, 4294967295u, 6361u), vec4<u32>(52715u, 0u, 0u, 1u), vec4<u32>(1u, 1u, 12281u, 1u), vec4<u32>(1u, 1u, 15829u, 24628u), vec4<u32>(45878u, 0u, 42638u, 16372u), vec4<u32>(0u, 4294967295u, 65772u, 13036u), vec4<u32>(24201u, 4294967295u, 130108u, 1u), vec4<u32>(1u, 1u, 4294967295u, 2529u), vec4<u32>(0u, 1u, 18247u, 4294967295u), vec4<u32>(1u, 4294967295u, 10308u, 36618u), vec4<u32>(45709u, 1u, 6608u, 13060u), vec4<u32>(1u, 4294967295u, 82688u, 52946u), vec4<u32>(0u, 4294967295u, 53897u, 0u), vec4<u32>(5694u, 7257u, 4294967295u, 35123u), vec4<u32>(1u, 52663u, 0u, 39650u), vec4<u32>(1u, 1u, 42619u, 17484u), vec4<u32>(46102u, 1u, 0u, 16123u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 70013u), vec4<u32>(29640u, 4294967295u, 0u, 48390u), vec4<u32>(4294967295u, 23726u, 15771u, 1u), vec4<u32>(4294967295u, 22998u, 56822u, 0u), vec4<u32>(4294967295u, 20951u, 19786u, 4566u), vec4<u32>(4294967295u, 0u, 73172u, 0u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_5(select(reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -1i, -828i, -1i), vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, -2147483647i))), vec4<i32>(-2147483647i, ~u_input.a, firstTrailingBit(-1i), u_input.a) ^ (~vec4<i32>(u_input.b.x, u_input.a, 14308i, -2147483647i) | vec4<i32>(u_input.d.x, u_input.a, -2147483647i, 2147483647i)), true && any(vec2<bool>(true, true))));
    let var_1 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), vec2<bool>(!all(vec2<bool>(false, true)), false), vec2<bool>(any(vec3<bool>(true, true, true)), true));
    global0 = array<vec3<u32>, 12>();
    let var_2 = Struct_5(var_0.a);
    let var_3 = select(select(vec4<bool>((true | var_1.x) && (arg_0 < arg_0), any(var_1), false, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-arg_0)), select(select(vec4<bool>(var_1.x, false, true, false), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), any(var_1)), vec4<bool>(true, any(vec2<bool>(var_1.x, var_1.x)), var_1.x, var_1.x), !var_1.x), var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(select(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, select(var_1.x, var_1.x, var_1.x)), true, any(vec4<bool>(true, false, false, var_1.x)) | (var_1.x & var_1.x), var_1.x), !select(!vec4<bool>(false, true, var_1.x, true), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, false, false, true), var_1.x), false), !var_1.x));
    return -125f;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = array<vec3<u32>, 12>();
    var var_0 = 7690i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-766f, 2503f, 1865f))) - _wgslsmith_div_vec3_f32(vec3<f32>(246f, -130f, 947f), vec3<f32>(658f, 186f, 1923f))) + vec3<f32>(-1987f, -1696f, -812f))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1559f, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f - var_1.x) - _wgslsmith_f_op_f32(var_1.x + 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1170f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f + 385f))))), _wgslsmith_div_f32(307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1406f, var_1.x)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_1.x))), -2113f, -295f);
    return Struct_4(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), abs(~u_input.c.x) != ~reverseBits(u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 838f) - var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -430f))))), u_input.c.x);
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = select(func_2(i32(-1i) * -u_input.a).a, select(arg_0.a, arg_0.a, any(!(!vec4<bool>(false, true, arg_0.a.x, arg_0.a.x)))), arg_0.a.x);
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -662f)));
    global0 = array<vec3<u32>, 12>();
    let var_3 = Struct_1(!vec2<bool>(arg_0.a.x, _wgslsmith_mult_u32(u_input.c.x, 17924u) <= 37279u), -507f, _wgslsmith_f_op_vec3_f32(trunc(arg_0.b)), 13985i);
    return func_2((i32(-1i) * -1i) & abs(select(-7453i, 43413i, true) << (~u_input.c.x % 32u)));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_2 {
    global1 = array<vec4<u32>, 28>();
    let var_0 = Struct_2(arg_2.x, i32(-1i) * -7752i);
    var var_1 = Struct_2(select(u_input.c.x, _wgslsmith_mod_u32(countOneBits(max(1u, 4294967295u)), _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), arg_2.x)), false), 42807i);
    var var_2 = Struct_3(arg_0, true);
    let var_3 = Struct_1(arg_1.a.xx, func_4(Struct_4(func_4(Struct_4(vec3<bool>(arg_1.a.x, false, var_2.b), vec3<f32>(-102f, var_2.a, arg_0), 29293u)).a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(var_2.a, arg_0, -515f)))), 1u)).b.x, arg_1.b, _wgslsmith_clamp_i32(-48711i, -_wgslsmith_mod_i32(var_0.b & 35626i, _wgslsmith_mult_i32(var_1.b, var_1.b)), u_input.b.x));
    return var_0;
}

fn func_1() -> i32 {
    var var_0 = func_5(916f, func_4(func_2(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x))), vec2<u32>(58693u, _wgslsmith_sub_u32(47150u, _wgslsmith_add_u32(54024u, u_input.c.x))));
    var var_1 = u_input.b;
    var var_2 = var_0.b;
    global1 = array<vec4<u32>, 28>();
    global1 = array<vec4<u32>, 28>();
    return _wgslsmith_div_i32(-35109i, u_input.d.x ^ _wgslsmith_mult_i32(reverseBits(1809i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(max(-19119i, 13650i), u_input.d.x, -func_1());
    global1 = array<vec4<u32>, 28>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(405f, 1133f, -2135f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, -1047f, 1512f, 798f) * vec4<f32>(169f, -107f, 906f, 615f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1880f, 188f, 1000f, -755f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(241f, -188f, 221f, 779f), vec4<f32>(398f, -696f, 527f, -732f))))) + vec4<f32>(_wgslsmith_f_op_f32(-861f + -571f), 1f, 1f, _wgslsmith_f_op_f32(-1763f - 310f))));
    let var_2 = _wgslsmith_dot_vec3_i32(-var_0, vec3<i32>(func_1(), 33303i, u_input.a) >> ((firstTrailingBit(vec3<u32>(1u, u_input.c.x, 43643u)) | u_input.c) % vec3<u32>(32u))) >= ((max(_wgslsmith_clamp_i32(u_input.b.x, var_0.x, -18254i), u_input.d.x) << (0u % 32u)) & firstTrailingBit(_wgslsmith_mult_i32(i32(-1i) * -1i, 1i)));
    var_1 = vec4<f32>(-675f, -1312f, -763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1933f + var_1.x))))));
    let var_3 = vec4<i32>(~(-36860i), u_input.b.x, ~(-_wgslsmith_mod_i32(36564i, func_5(var_1.x, Struct_4(vec3<bool>(var_2, var_2, var_2), var_1.yzw, 1u), u_input.c.zy).b)), (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-24789i, 59145i, u_input.b.x, -37537i)), ~vec4<i32>(-1666i, var_0.x, u_input.d.x, 9005i)) & 28421i) >> (firstLeadingBit(~4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(func_2(1i).b.x)), u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~(~49802u), func_5(_wgslsmith_div_f32(var_1.x, var_1.x), func_4(Struct_4(vec3<bool>(var_2, false, var_2), var_1.wwx, u_input.c.x)), reverseBits(u_input.c.xx)).a), u_input.c.x));
}

