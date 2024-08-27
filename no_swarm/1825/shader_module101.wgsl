struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, -406f, -1045f) - vec3<f32>(-1000f, -1000f, -713f)))));
    var var_1 = Struct_2(Struct_1(-4845i == u_input.d.x, vec4<i32>(12967i, ~u_input.d.x << (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u), -5486i, _wgslsmith_mod_i32(u_input.d.x, 6803i)), 45942u == _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(u_input.c.x, 0u))), Struct_1(false, u_input.a, false), any(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), var_0.x == var_0.x)), u_input.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1000f) + 463f))), -419f, all(vec2<bool>(any(vec4<bool>(true, false, false, true)), true)))));
    var_1 = Struct_2(var_1.b, var_1.a, var_1.a.a, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36690u, 4294967295u, u_input.c.x), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(93884u, u_input.c.x, var_1.d, u_input.c.x))), ~abs(u_input.c.x), ~44357u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(695f, _wgslsmith_f_op_f32(f32(-1f) * -779f)), var_1.e)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-858f)) - 1208f)));
    return var_0.zy;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(floor(-599f))), -2482f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1045f, 1711f) + vec2<f32>(388f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(480f, -1755f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2910f, 1295f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-587f, 1000f))))) - _wgslsmith_f_op_vec2_f32(func_3()))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 445f), vec2<f32>(-423f, -779f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-944f, -624f)))), vec2<f32>(1112f, 159f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(var_0.x, 772f), all(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(1000f * -1214f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1768f, 1990f)))));
    let var_1 = Struct_1(true, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x - -892f) != _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = arg_0;
    var var_3 = var_1.b.x;
    return select(vec4<bool>(true, !all(select(vec3<bool>(var_1.a, var_1.a, var_1.c), vec3<bool>(var_1.a, var_1.c, false), vec3<bool>(var_1.c, false, true))), (_wgslsmith_f_op_f32(var_0.x * -952f) != 134f) || var_1.c, true), select(vec4<bool>(var_1.a, var_1.c, false, var_1.b.x != _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.d.x, 7439i, 0i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.d.x))), !(!vec4<bool>(var_1.a, var_1.c, false, true)), select(!(!vec4<bool>(var_1.c, var_1.a, false, false)), !vec4<bool>(true, false, true, var_1.c), all(!vec3<bool>(false, var_1.a, true)))), true);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(Struct_1(true, vec4<i32>(-23517i ^ u_input.d.x, 35540i, _wgslsmith_mult_i32(0i, 1i), -2147483647i) ^ _wgslsmith_add_vec4_i32(u_input.a ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.a.x, u_input.a.x), ~vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, u_input.a.x)), true), (u_input.d.x >> (_wgslsmith_mod_u32(u_input.c.x, ~1u) % 32u)) >> (u_input.c.x % 32u));
    var var_1 = _wgslsmith_add_i32(-countOneBits(~(-1i)), _wgslsmith_mult_i32(-35559i >> (select(~u_input.c.x, _wgslsmith_clamp_u32(4294967295u, 1u, 18190u), true) % 32u), ~(-1i)));
    var_1 = 0i;
    var var_2 = !vec4<bool>(true, !var_0.a.a & !(u_input.c.x <= u_input.c.x), select(any(select(vec4<bool>(var_0.a.a, true, var_0.a.a, true), vec4<bool>(var_0.a.c, var_0.a.a, var_0.a.c, true), false)), true, true), !(u_input.c.x != 4294967295u));
    var_2 = !(!vec4<bool>(true, all(func_2(u_input.c.x)), !all(vec4<bool>(true, var_0.a.a, false, var_2.x)), all(vec2<bool>(true, var_0.a.a))));
    return Struct_3(var_0.a, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(func_1().a, var_0.a.b.x);
    var var_1 = func_1();
    var_1 = Struct_3(func_1().a, max(28914i, 15366i));
    let var_2 = Struct_1(!all(vec3<bool>(!var_1.a.c, true, any(vec2<bool>(false, false)))), vec4<i32>(_wgslsmith_mod_i32(var_1.a.b.x >> (1u % 32u), func_1().a.b.x), _wgslsmith_div_i32(1i, func_1().b), abs(~1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.b.x, -15719i, var_1.b, var_1.a.b.x), var_0.a.b)) & var_1.a.b, var_0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.c.x, 23511u) ^ _wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.c.x)), ~u_input.c.x), var_2.b, u_input.c.x, 1u);
}

