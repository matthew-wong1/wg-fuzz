struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = !(!(!vec2<bool>(arg_0, true)));
    let var_1 = 44186u ^ u_input.b;
    var var_2 = Struct_2(Struct_1(vec4<u32>(var_1, ~select(var_1, 1u, false), ~u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(40762u, 4294967295u), u_input.a)))));
    let var_3 = abs(2082i);
    var var_4 = select(var_0, vec2<bool>(false, all(select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0, arg_0), var_0.x)))), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1078f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f + -1103f)) * -287f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1439f, _wgslsmith_f_op_f32(min(877f, -623f)))) - _wgslsmith_f_op_f32(670f - _wgslsmith_f_op_f32(f32(-1f) * -994f))) * _wgslsmith_f_op_f32(func_3(!arg_2))), Struct_1(vec4<u32>(4294967295u, u_input.b, ~(~arg_1.a.a.x), ~arg_3.x)));
    var var_1 = Struct_3(120f, Struct_1(~vec4<u32>(4294967295u, u_input.a.x ^ 4294967295u, ~u_input.a.x, _wgslsmith_div_u32(0u, 63860u))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(-738f)), var_0.b);
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(317f + var_2.a)))) - var_2.a), arg_1.a);
    var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, var_1.a) + -1168f)), Struct_1(~(vec4<u32>(34060u, 48815u, var_0.b.a.x, 4294967295u) ^ vec4<u32>(22328u, var_1.b.a.x, var_2.b.a.x, u_input.b)) & abs(vec4<u32>(arg_1.a.a.x, u_input.b, 0u, 8139u))));
    return Struct_3(var_1.a, Struct_1(~(var_1.b.a & select(arg_1.a.a, var_0.b.a, vec4<bool>(false, arg_2, arg_2, false)))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec3<i32>(~792i, 0i, ~(-1i)) & -(vec3<i32>(15032i << (arg_3.b.a.x % 32u), 0i, -847i) | (min(vec3<i32>(35104i, -1i, -25877i), vec3<i32>(-29844i, -2147483647i, -1i)) >> (firstLeadingBit(vec3<u32>(u_input.a.x, arg_3.b.a.x, 4294967295u)) % vec3<u32>(32u))));
    let var_1 = arg_3.b;
    let var_2 = reverseBits(_wgslsmith_div_i32(var_0.x, _wgslsmith_mult_i32(var_0.x, -var_0.x)) & var_0.x);
    let var_3 = max(vec3<u32>(0u, 27807u, 399u), ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(18042u, u_input.a.x, 1u), vec3<u32>(2646u, u_input.a.x, 4294967295u)) & var_1.a.yxz, vec3<u32>(37550u, ~0u, ~33149u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(func_3(false)))));
    return func_2(~vec4<i32>(36705i, var_2, var_0.x & (i32(-1i) * -2147483647i), var_2), Struct_2(func_2(_wgslsmith_div_vec4_i32(max(vec4<i32>(2147483647i, 0i, var_0.x, var_2), vec4<i32>(var_2, var_0.x, var_0.x, var_2)), _wgslsmith_add_vec4_i32(vec4<i32>(-72118i, var_2, -2147483647i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 14411i))), Struct_2(var_1), arg_1.x, vec3<u32>(1u << (var_3.x % 32u), _wgslsmith_sub_u32(arg_3.b.a.x, var_3.x), ~4294967295u)).b), all(arg_1), _wgslsmith_mod_vec3_u32(arg_3.b.a.zwz, _wgslsmith_clamp_vec3_u32(~var_3, _wgslsmith_mult_vec3_u32(vec3<u32>(57996u, var_3.x, 4294967295u) ^ vec3<u32>(u_input.a.x, var_1.a.x, arg_3.b.a.x), var_3), vec3<u32>(var_1.a.x, min(65016u, 10078u), 1u)))).b;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(max(-1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1421f))))), vec2<bool>(true, arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) + _wgslsmith_f_op_f32(max(1000f, -2025f))) * -886f), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(26010i, 2147483647i, 3400i, -1i), min(vec4<i32>(-62290i, -1i, 9778i, -2147483647i), vec4<i32>(0i, -2147483647i, -5545i, -26349i)), vec4<i32>(11376i, -1i, -1i, 0i)), Struct_2(arg_3.a), true, arg_0.a.wxx)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-3171f))))));
    let var_2 = arg_2.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1057f, _wgslsmith_div_f32(-924f, 782f)) + 1080f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(-1867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) + _wgslsmith_f_op_f32(step(511f, 971f))))))) * _wgslsmith_f_op_f32(trunc(1000f)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~func_1(Struct_1(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 45449u)), vec3<u32>(u_input.a.x, u_input.b, 0u), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.b, 38622u, 4294967295u)))), 1i), ~(-vec2<i32>(-2147483647i, 2105i))), ~_wgslsmith_div_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -44350i), vec2<i32>(-43102i, -2147483647i)), firstLeadingBit(vec2<i32>(-18578i, 34353i))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(1i, -8364i)), vec2<i32>(-1i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(9951i, 0i), vec2<i32>(0i, -32053i)))));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(1i, 0i, ~var_0.x), -var_0.x);
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1040f + _wgslsmith_f_op_f32(-2320f - 667f)))), vec2<bool>(true, select(true, false, u_input.a.x > (u_input.b << (4294967295u % 32u)))), -953f, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-737f)) * 1000f) * func_2(vec4<i32>(2147483647i, var_0.x, 17837i, 0i), Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u))), all(vec2<bool>(false, true)), vec3<u32>(1u, u_input.b, u_input.b)).a), func_2(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(40226i, var_0.x, -31800i, var_0.x)), vec4<i32>(2147483647i, var_0.x, 2147483647i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 8198i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_2(func_2(vec4<i32>(17081i, var_0.x, var_0.x, 2147483647i), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.b, 1u, 1544u))), false, vec3<u32>(1u, 16770u, 0u)).b), true, vec3<u32>(25864u, 4294967295u, 87618u) << (vec3<u32>(u_input.a.x, u_input.b, 4294967295u) % vec3<u32>(32u))).b));
    let var_2 = any(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(true, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(false, false, false, true))), func_4(1221f, vec2<bool>(false, false), -1508f, Struct_3(-700f, Struct_1(vec4<u32>(u_input.b, u_input.a.x, var_1.a.x, var_1.a.x)))).a.x >= (58872u >> (var_1.a.x % 32u)))) | any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-427f)))));
    var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), select(select(vec2<bool>(true, true), !select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), vec2<bool>(false, var_2)), select(select(vec2<bool>(true, false), vec2<bool>(false, var_2), vec2<bool>(var_2, var_2)), select(vec2<bool>(false, var_2), vec2<bool>(var_2, var_2), vec2<bool>(true, true)), false)), vec2<bool>(false, any(!vec2<bool>(var_2, true))), any(vec4<bool>(false, false, true, all(vec3<bool>(true, true, true))))), 432f, Struct_3(1821f, Struct_1(_wgslsmith_mult_vec4_u32(var_1.a | var_1.a, vec4<u32>(29021u, var_1.a.x, 54669u, 1u)))));
    var_1 = func_2(abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(22250i, -18176i, -1i, var_0.x) ^ vec4<i32>(1i, -63666i, 11064i, var_0.x)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 5964i), vec4<i32>(61625i, var_0.x, -2147483647i, var_0.x)), vec4<i32>(var_0.x, 868i, var_0.x, var_0.x) & vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)))), Struct_2(func_2(-vec4<i32>(-8666i, var_0.x, var_0.x, 2147483647i) ^ -vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), Struct_2(func_4(var_3, vec2<bool>(var_2, false), var_3, Struct_3(-307f, Struct_1(vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, 15561u))))), -var_0.x != (var_0.x & var_0.x), ~(~vec3<u32>(1u, u_input.a.x, u_input.a.x))).b), true, ~(var_1.a.wzw & var_1.a.wxz)).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(755f, 677f, var_3), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3))) + _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(abs(-328f)))) * func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-55219i, 2147483647i, var_0.x, var_0.x) | vec4<i32>(0i, 0i, var_0.x, -1i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 51253u))), -var_0.x <= -var_0.x, vec3<u32>(0u, ~4294967295u, var_1.a.x | var_1.a.x)).a), ~(~var_1.a));
}

