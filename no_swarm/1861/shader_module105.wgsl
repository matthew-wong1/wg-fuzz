struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec2<bool>, 19>();
    let var_0 = arg_2;
    global0 = array<vec2<bool>, 19>();
    let var_1 = true;
    var var_2 = _wgslsmith_div_i32(30587i, _wgslsmith_clamp_i32(15821i, arg_1, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b.x, 17033i, arg_1)), ~vec3<i32>(arg_1, arg_1, arg_2.b.x))) & var_0.a.x);
    return vec4<bool>(select(false, !var_1, var_1), false, false, true);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<vec2<bool>, 19>();
    var var_0 = Struct_1(vec3<i32>(1i, 1i, 1i), firstTrailingBit(~vec3<i32>(_wgslsmith_mult_i32(15839i, -52881i), 1i, ~(-26465i))));
    let var_1 = _wgslsmith_sub_u32(u_input.c, u_input.b);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1266f, arg_0)) * 877f) * _wgslsmith_f_op_f32(f32(-1f) * -1076f)) * 840f)));
    var var_3 = Struct_1(vec3<i32>(~2147483647i, -1i, var_0.b.x), var_0.a);
    return Struct_2(Struct_1(vec3<i32>(var_0.b.x, ~(-5405i), var_3.a.x), abs(vec3<i32>(abs(var_0.b.x), 0i, var_3.b.x))), firstTrailingBit(vec3<i32>(-2147483647i, -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.a.x, var_0.b.x, var_0.a.x), var_3.b & var_0.a))), Struct_1(-reverseBits(-vec3<i32>(var_0.a.x, var_0.b.x, -6943i)), ~max(-var_3.b, var_3.a)));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, 1i, 1i), (vec3<i32>(-13723i, -1i, -3475i) << (vec3<u32>(4779u, 0u, u_input.d) % vec3<u32>(32u))) ^ select(vec3<i32>(-1i, 57939i, -8193i), vec3<i32>(0i, 0i, -2147483647i), false)), -select(vec3<i32>(-1i, -25200i, 2147483647i), ~vec3<i32>(43006i, 1i, -38513i), vec3<bool>(true, true, true))), _wgslsmith_sub_i32(~(~2147483647i), _wgslsmith_clamp_i32(4258i, _wgslsmith_dot_vec4_i32(~vec4<i32>(42557i, -41481i, -21637i, -2147483647i), -vec4<i32>(-1i, -20962i, 18325i, 69868i)), ~min(-31090i, 2147483647i))), 51314i);
    let var_1 = vec3<bool>(true, true, (((69687u | u_input.a) == ~u_input.b) && select(true, true, true)) != false);
    var_0 = abs(_wgslsmith_mult_vec4_i32(max(-vec4<i32>(1i, 0i, 29519i, var_0.x), select(vec4<i32>(var_0.x, -34370i, 1i, var_0.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, 1i), vec4<bool>(true, var_1.x, var_1.x, var_1.x))), -vec4<i32>(var_0.x, var_0.x, var_0.x, 16781i))) | ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 41826i, var_0.x, 1i), vec4<i32>(var_0.x, 1i, var_0.x, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x)));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(251f, -342f)) + -1000f))), func_2(var_0.x, -1097f, 0u), func_3(Struct_1(vec3<i32>(~27904i, ~2147483647i, -44694i), firstTrailingBit(vec3<i32>(29102i, var_0.x, var_0.x))), var_0.x, Struct_1(-var_0.zyw << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(u_input.d, u_input.d, 1u)) % vec3<u32>(32u)), var_0.xzz)));
    let var_3 = -23235i;
    return StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(4294967295u, u_input.b), 4294967295u, firstTrailingBit(u_input.a), u_input.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.d, u_input.b, 14150u), min(~vec4<u32>(u_input.d, u_input.c, 4294967295u, u_input.a), vec4<u32>(u_input.c, u_input.a, u_input.d, u_input.d) | vec4<u32>(u_input.b, u_input.b, u_input.c, 4294967295u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1971f, 969f, -211f, -149f), _wgslsmith_f_op_vec4_f32(vec4<f32>(129f, 802f, 125f, -247f) - vec4<f32>(933f, -589f, 1000f, -735f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, -1000f, -1000f, -1130f) + vec4<f32>(-2276f, 436f, 1618f, -757f)), vec4<f32>(1364f, -699f, 447f, -174f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 19>();
    let var_0 = 0i;
    let var_1 = select(!vec3<bool>(false, select(any(vec2<bool>(true, true)), true, true), false), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(false, false)))), 0u < _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 0u, 0u, 4294967295u)), vec4<u32>(u_input.a & 0u, 0u, ~0u, u_input.d)));
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    let x = u_input.a;
    s_output = func_1();
}

