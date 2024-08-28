struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, -1000f)), arg_0.b.b, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.b - -541f), _wgslsmith_f_op_f32(arg_0.b.b * -1475f)), false)))));
    let var_1 = arg_0;
    var var_2 = -_wgslsmith_div_vec3_i32(vec3<i32>(select(select(u_input.d, 0i, false), ~(-26109i), true), u_input.d, 19285i), u_input.c);
    let var_3 = u_input.e;
    let var_4 = vec2<u32>(var_1.b.a.x, (~u_input.a ^ 12280u) | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.a.x, u_input.a, arg_0.b.a.x), vec3<u32>(1u, u_input.a, arg_0.b.a.x)), abs(1u), _wgslsmith_add_u32(0u, 0u), 0u), ~var_1.b.a));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = var_0.b.a.yzx;
    var var_2 = arg_0.b;
    var var_3 = Struct_2(var_0.a, arg_0.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(129f, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_div_f32(var_2.b, 1952f), var_3.b))), -224f, var_0.a) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.b, -467f, arg_0.a, 517f), vec4<f32>(-306f, arg_0.a, var_3.b.b, arg_0.a), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b, var_3.a, var_3.b.b, var_0.b.b) * vec4<f32>(var_2.b, 232f, var_0.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-320f, var_3.b.b, 1848f, -998f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.b.b, -930f, -991f, 1000f))))), vec4<bool>(u_input.c.x > ~u_input.d, u_input.d <= reverseBits(u_input.c.x), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), true))));
    return all(vec2<bool>(true, true));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = Struct_1(vec4<u32>(var_0.b.a.x, ~var_0.b.a.x, 0u, min(~(~var_0.b.a.x), reverseBits(arg_2.b.a.x))), arg_2.a);
    var_1 = var_0.b;
    var_1 = Struct_1((vec4<u32>(4294967295u ^ var_0.b.a.x, _wgslsmith_dot_vec3_u32(var_1.a.wwx, var_0.b.a.wxx), ~4294967295u, _wgslsmith_add_u32(14801u, arg_2.b.a.x)) << (var_1.a % vec4<u32>(32u))) | (vec4<u32>(countOneBits(38012u), 4294967295u, arg_2.b.a.x, ~var_1.a.x) & abs(firstTrailingBit(var_0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var_1 = Struct_1(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.b.a.x, var_0.b.a.x, var_0.b.a.x), var_1.a << (var_0.b.a % vec4<u32>(32u))))), 1861f);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f - arg_2.b.b)), Struct_1(var_0.b.a, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.b - -1907f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = arg_1.b.a.x;
    let var_1 = func_4(false, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_1.a), _wgslsmith_f_op_f32(arg_0.b.b * -1470f), -1576f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, 1401f, 1000f)))))), Struct_2(arg_1.a, arg_1.b)).b;
    let var_2 = Struct_2(arg_1.b.b, Struct_1(var_1.a & ~var_1.a, -808f));
    let var_3 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_1.b.b, 2934f) + vec3<f32>(-1624f, -1139f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b, 762f, var_1.b)))))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b - arg_0.b))), _wgslsmith_clamp_i32(u_input.e, 23894i, u_input.c.x) < abs(u_input.e)))) - _wgslsmith_f_op_f32(-arg_0.b));
    var_0 = arg_0.b;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1156f, arg_0.b, -848f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(arg_0.b, arg_0), func_4(func_2(Struct_2(arg_0.b, arg_0)), vec3<f32>(-1190f, arg_0.b, -1176f), Struct_2(170f, Struct_1(vec4<u32>(19019u, 28434u, 0u, arg_0.a.x), arg_0.b))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1298f, arg_0.b, 1969f) * vec3<f32>(1732f, -1711f, arg_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, arg_0.b) - vec3<f32>(arg_0.b, -1035f, 1145f))))), any(vec4<bool>(false, true, true, true)))));
    var_0 = 1406f;
    var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    return vec2<bool>(func_2(func_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_2(-244f, arg_0), Struct_2(arg_0.b, arg_0)))), Struct_2(_wgslsmith_f_op_f32(var_1.x + arg_0.b), Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, 68180u, 1u), -749f)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = !func_1(Struct_1(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, 0u)), vec4<u32>(0u, u_input.a, 20253u, u_input.b)), 1f));
    var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.d, 2147483647i, u_input.c.x)))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(22166i, u_input.e, u_input.e), u_input.c))) <= (u_input.e ^ u_input.e);
    var var_2 = Struct_1(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.b, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_div_u32(u_input.a, u_input.a), u_input.b)), _wgslsmith_mult_u32(reverseBits(u_input.b), 12247u), max(firstLeadingBit(u_input.a), ~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1731f + _wgslsmith_f_op_f32(-1000f + -430f)))));
    let var_3 = !vec3<bool>(true, false, select(!(!var_1.x), true, !(!var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

