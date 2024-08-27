struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, false, true), true), vec4<bool>(true, true & (any(vec2<bool>(false, true)) | all(vec2<bool>(false, false))), false, true), -519f != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(879f + 956f), _wgslsmith_f_op_f32(ceil(-575f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1797f)) - _wgslsmith_f_op_f32(f32(-1f) * -392f))));
    var_0 = !select(select(vec4<bool>(true, all(var_0.xzx), true, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x);
    var var_1 = _wgslsmith_mult_u32(select(~1u, _wgslsmith_add_u32(0u, 1u), true), 73249u);
    var var_2 = u_input.a;
    var_1 = ~19236u;
    return !vec4<bool>(false, var_0.x, any(vec3<bool>(true, var_0.x, false)), true);
}

fn func_2() -> bool {
    global1 = 1u > (_wgslsmith_clamp_u32(0u, ~abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(29691u, 4294967295u), ~vec2<u32>(31304u, 22272u))) << (~(~(~12392u)) % 32u));
    var var_0 = 24536i;
    global1 = any(func_3());
    global1 = true;
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-21658i, -2147483647i))), countOneBits(abs(vec2<i32>(9861i, u_input.a)))) >> (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(32638u, 0u), vec2<u32>(0u, 0u)), ~43218u) % vec2<u32>(32u)), min(-vec2<i32>(u_input.a >> (35890u % 32u), -u_input.a), vec2<i32>(2147483647i, firstTrailingBit(0i))), ~max(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-12083i, u_input.a), vec2<i32>(32526i, -32265i)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1515i), vec2<i32>(0i, -2147483647i)), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = !(!arg_0.a.x);
    global0 = array<vec3<f32>, 6>();
    var var_1 = Struct_1(select(!select(arg_0.a, vec4<bool>(true, arg_0.a.x, false, false), arg_0.a), !(!(!arg_0.a)), vec4<bool>(true, select(arg_0.a.x, 670f >= arg_1, var_0 | arg_0.a.x), !arg_0.a.x != true, !var_0 == (var_0 | false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-219f)) - _wgslsmith_f_op_f32(sign(-2719f)))));
    var var_2 = Struct_3(Struct_2(0u, 1u, arg_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(90594u, min(_wgslsmith_mult_u32(16491u, 1u), 1u), select(1u, 1u, func_2())), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, 87088u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(select(1u, 39327u, arg_0.a.x), ~76023u, _wgslsmith_div_u32(4294967295u, 24623u))), countOneBits(~vec3<u32>(27101u, 4294967295u, 3554u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 31885u, 0u), vec3<u32>(4294967295u, 23020u, 59506u), vec3<u32>(3629u, 4294967295u, 36406u)))), arg_0);
    var_1 = Struct_1(arg_0.a, -982f);
    return countOneBits(vec4<u32>(19842u, 1u, _wgslsmith_mod_u32(var_2.b.x, ~var_2.b.x), ~var_2.b.x)) >> (vec4<u32>(var_2.b.x, var_2.a.b, 29242u, var_2.b.x) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 63408u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21607u, 0u), vec3<u32>(4294967295u, 1u, 11872u)), 1u), vec4<u32>(~56613u, ~38278u, ~1u, 1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~func_1(Struct_1(vec4<bool>(false, true, false, true), -752f), 1000f, vec3<i32>(u_input.a, u_input.a, u_input.a))), 33389u, Struct_1(vec4<bool>(true, !all(vec2<bool>(false, true)), (u_input.a != 66721i) | true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2025f - _wgslsmith_f_op_f32(select(-208f, -195f, true))) * -1648f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1863f * var_0.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b + 845f) * _wgslsmith_f_op_f32(var_0.c.b * 1444f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.b)) + -132f)), -516f) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.c.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1444f - var_0.c.b), var_0.c.b))), 442f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-475f, _wgslsmith_f_op_f32(-1037f - 951f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.c.b, -1000f, var_0.c.a.x)))))), _wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(trunc(-464f)))));
    var var_2 = vec3<bool>(firstTrailingBit(u_input.a) <= ~_wgslsmith_div_i32(~1i, u_input.a), _wgslsmith_clamp_u32(36401u, firstTrailingBit(min(var_0.b, 12781u)), ~var_0.a << (_wgslsmith_mult_u32(127497u, 11597u) % 32u)) >= 16632u, var_0.c.a.x);
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1849f);
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer((var_0.b << ((1u | abs(var_0.a)) % 32u)) ^ 31922u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 12504u, var_0.a) >> (~vec3<u32>(var_0.a, 9020u, var_0.b) % vec3<u32>(32u)), min(reverseBits(vec3<u32>(var_0.a, var_0.b, 12461u)), vec3<u32>(var_0.a, var_0.b, var_0.b))), select(_wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(21684i, u_input.a, 1i)), vec3<i32>(u_input.a, u_input.a, 2147483647i), abs(~vec3<i32>(u_input.a, u_input.a, 0i))), ~(~abs(vec3<i32>(-1i, -2147483647i, -1i))), !(func_3().x & (var_2.x || var_0.c.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-924f, 570f) + 1682f)), _wgslsmith_f_op_f32(var_3.b - -1021f))));
}

