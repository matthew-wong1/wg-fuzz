struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = false | !any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-976f, arg_3, arg_3), vec3<f32>(-301f, arg_3, arg_3))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1315f, arg_3, arg_3), vec3<f32>(arg_3, arg_3, arg_3)))))), vec3<f32>(144f, _wgslsmith_div_f32(arg_3, -221f), 1f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3, 379f, arg_3), vec3<f32>(arg_3, 1619f, arg_3)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_3, arg_3), select(true, true, (-2147483647i << (arg_2 % 32u)) < _wgslsmith_mult_i32(arg_0.x, u_input.d.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), 2232f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_3)), -1000f))), vec4<bool>(all(vec4<bool>(select(var_0, true, true), true, all(vec2<bool>(var_0, var_0)), any(vec4<bool>(var_0, var_0, true, var_0)))), all(!vec2<bool>(var_0, var_0)), !var_0, (all(vec2<bool>(var_0, var_0)) == var_0) && false), vec3<u32>(_wgslsmith_clamp_u32(~49034u, u_input.b << ((74499u << (arg_2 % 32u)) % 32u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_2, arg_2, arg_2)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2, u_input.b), vec3<u32>(arg_2, u_input.b, 4294967295u)))), u_input.c, arg_2), (-arg_0.x << (u_input.a.x % 32u)) ^ countOneBits(1i));
    let var_3 = vec2<f32>(var_1.x, var_2.a);
    var var_4 = Struct_2(!var_2.b.zy, Struct_1(var_2.a, select(select(select(var_2.b, var_2.b, var_2.b), !var_2.b, true), var_2.b, any(vec4<bool>(var_0, false, true, false))), vec3<u32>(var_2.c.x, 1u >> (1u % 32u), _wgslsmith_div_u32(9289u, 1u ^ var_2.c.x)), ~abs(-29272i)), var_2, Struct_1(-299f, var_2.b, ~(~vec3<u32>(u_input.a.x, var_2.c.x, var_2.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_2.d, -47611i), ~arg_0), _wgslsmith_sub_vec3_i32(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a, -316f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(var_3.x * 1000f)))) + _wgslsmith_f_op_f32(min(var_3.x, var_3.x))));
    return _wgslsmith_dot_vec4_u32(min(vec4<u32>(43626u << (var_2.c.x % 32u), 1u, abs(0u), ~var_4.b.c.x), vec4<u32>(var_4.c.c.x | arg_1.x, _wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_sub_u32(arg_1.x, 88211u), var_2.c.x)), vec4<u32>(var_2.c.x, _wgslsmith_mod_u32(var_2.c.x, _wgslsmith_sub_u32(var_2.c.x, var_2.c.x)), 81722u, _wgslsmith_div_u32(1u, abs(arg_2)))) ^ 79547u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_3.a + 350f), !(!(!(!arg_3.b))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u)), arg_0.a.xzy) & vec3<u32>(var_0.x, (u_input.a.x ^ 47606u) << (func_3(vec3<i32>(2147483647i, 0i, -40879i), arg_0.a.xw, u_input.c, arg_0.c.x) % 32u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), -1i);
    var_0 = _wgslsmith_sub_vec4_u32(select(select(reverseBits(min(arg_0.a, vec4<u32>(42822u, var_1.c.x, 48611u, var_1.c.x))), vec4<u32>(4294967295u, 22569u, 4294967295u, arg_3.c.x) ^ ~arg_0.a, var_1.b), (arg_0.a | arg_0.a) ^ vec4<u32>(~arg_3.c.x, select(var_1.c.x, var_1.c.x, true), firstTrailingBit(30631u), select(u_input.b, 1u, false)), select(all(vec2<bool>(true, arg_2)), true, arg_3.d == 36077i) && (select(arg_2, true, arg_3.b.x) | true)), _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(arg_3.c.x, 1u, u_input.b, 9664u))) ^ _wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(24031u, u_input.a.x, 1u, arg_0.a.x)), vec4<u32>(1u, ~abs(0u), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(1u, var_0.x)), max(var_0.x, func_3(u_input.d, arg_0.a.yw, 4294967295u, 469f)))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.d.xx, _wgslsmith_mod_vec2_i32(u_input.d.zy, u_input.d.yz)), vec2<i32>(~arg_3.d, -2147483647i)), _wgslsmith_sub_i32(-firstTrailingBit(_wgslsmith_add_i32(arg_0.b, arg_3.d)), _wgslsmith_mult_i32(1i, ~(-arg_3.d))));
    var var_3 = !(!(!vec3<bool>(false || var_1.b.x, select(arg_2, arg_2, var_1.b.x), true)));
    return -(~(min(0i, u_input.d.x >> (var_1.c.x % 32u)) ^ var_1.d));
}

fn func_1() -> vec2<bool> {
    return !vec2<bool>(select(!(u_input.d.x < u_input.d.x), !any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)) | true), (func_2(Struct_3(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 4294967295u), u_input.d.x, vec4<f32>(1633f, 1341f, 275f, 536f)), 1216f, true, Struct_1(-644f, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, u_input.c, 0u), -7885i)) < 4920i) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 980f;
    var var_1 = _wgslsmith_add_vec3_i32(min(vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(-2147483647i, -1i)), u_input.d.x, ~abs(u_input.d.x)), u_input.d), vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1i), u_input.d.x, _wgslsmith_mult_i32(~(u_input.d.x & u_input.d.x), -45181i)));
    var_1 = select(u_input.d, firstTrailingBit(vec3<i32>(51644i, abs(-31609i), _wgslsmith_clamp_i32(var_1.x, u_input.d.x, -2147483647i))), true) | max(vec3<i32>(23019i, -_wgslsmith_div_i32(var_1.x, u_input.d.x), -countOneBits(var_1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~var_1.x, var_1.x, _wgslsmith_mult_i32(-7263i, -262i)), u_input.d, u_input.d));
    var var_2 = _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u);
    var_1 = u_input.d;
    let var_3 = select(func_1(), select(vec2<bool>(true, false), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), true), func_1()), all(vec4<bool>(false, false, any(vec3<bool>(true, false, true)), u_input.d.x >= -41437i)) & any(vec4<bool>(true, true, true, true)));
    var var_4 = ~var_1.x;
    let var_5 = -235f;
    var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.x);
}

