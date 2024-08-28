struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(30682i, 7924i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f * _wgslsmith_div_f32(-1000f, -1004f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(108f - 1000f) + -386f)) * _wgslsmith_f_op_f32(ceil(1226f)))));
    global0 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.x, -(~u_input.a.x)), -u_input.a.zz));
    var var_1 = -7905i;
    global0 = Struct_2(u_input.a.xx);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1466f * _wgslsmith_f_op_f32(step(var_0, var_0))) - -210f)));
    return -(~(~(-select(vec2<i32>(9555i, u_input.a.x), vec2<i32>(12633i, global0.a.x), vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = ~vec2<i32>(~u_input.a.x, reverseBits(~37657i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~26455i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, -2147483647i, u_input.a.x) | vec3<i32>(2147483647i, u_input.a.x, 53500i), firstTrailingBit(u_input.a.wxy)))), func_3());
    var var_2 = arg_1;
    global0 = Struct_2(_wgslsmith_div_vec2_i32(countOneBits((vec2<i32>(var_0.x, 1i) << (arg_3.e.a.zy % vec2<u32>(32u))) & ~vec2<i32>(global0.a.x, global0.a.x)), abs(arg_1.a)));
    return _wgslsmith_mod_i32(~(-51207i), u_input.a.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = vec4<u32>(72301u, arg_1, 1u, 0u);
    var var_1 = Struct_3(Struct_2(~reverseBits(u_input.a.ww)), all(select(vec3<bool>(true, true, false), vec3<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true))), ~vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(~var_0.ww, ~var_0.ww), _wgslsmith_sub_u32(~arg_1, 23802u & arg_1), var_0.x), min(arg_3.x, _wgslsmith_mult_i32(min(func_2(vec3<f32>(667f, -1116f, -328f), Struct_2(arg_3.yx), true, Struct_3(Struct_2(global0.a), true, vec4<u32>(arg_0, 7156u, 4294967295u, arg_1), u_input.a.x, Struct_1(vec4<u32>(arg_1, arg_1, 7516u, var_0.x), 68639u))), _wgslsmith_add_i32(global0.a.x, arg_3.x)), -1i)), Struct_1(vec4<u32>(arg_0, ~arg_1, 23850u, ~countOneBits(4294967295u)), var_0.x));
    var var_2 = firstTrailingBit(vec4<u32>(~var_1.e.b, ~arg_0, _wgslsmith_mult_u32(var_0.x, 1u), 0u));
    var var_3 = Struct_3(var_1.a, var_1.b, var_1.c, _wgslsmith_clamp_i32(31921i, var_1.a.a.x, countOneBits(abs(firstLeadingBit(-32788i)))), Struct_1(var_1.e.a, arg_1));
    var_2 = ~vec4<u32>(min(4294967295u, var_3.c.x), _wgslsmith_dot_vec3_u32(var_2.yzz, var_3.e.a.yyw | abs(vec3<u32>(arg_1, var_2.x, arg_1))), 4294967295u, ~firstLeadingBit(0u));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1613f, 116f) + vec2<f32>(190f, 884f))) - vec2<f32>(-683f, _wgslsmith_f_op_f32(min(691f, -463f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1630f, -472f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(214f, 742f))))), !(var_3.b != var_1.b) & (any(vec3<bool>(var_3.b, true, var_1.b)) & (false & var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(firstLeadingBit(vec2<i32>(u_input.a.x, min(-1i, _wgslsmith_add_i32(global0.a.x, -1i)))));
    global0 = var_0;
    let var_1 = ~reverseBits(vec2<i32>(~min(-31315i, u_input.a.x), -11803i));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(1u, 45236u, _wgslsmith_add_i32(var_1.x, -2147483647i), -u_input.a.xyx)), _wgslsmith_div_vec2_f32(vec2<f32>(352f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1296f) + vec2<f32>(-563f, -1001f))), (global0.a.x != -61819i) || true)) + vec2<f32>(-1944f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(2107f * -206f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, -359f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(128f - -214f), -1551f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1095f, -1431f)))))));
    var var_3 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), true), -1000f < _wgslsmith_f_op_f32(-var_2.x)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_2.x <= var_2.x), vec4<bool>(true, true, true, true), true & !all(vec3<bool>(true, true, true))), vec4<bool>(true, 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(18026u, 20037u)), false, select(true, var_0.a.x < -2279i, true) != true));
    var_3 = vec4<bool>(true, true, true, var_3.x);
    var var_4 = Struct_3(var_0, true, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 4930u, 0u, 0u), vec4<u32>(countOneBits(1u), ~18577u, ~51957u, ~1u), ~(~vec4<u32>(1u, 17501u, 41767u, 2265u))), 2147483647i, Struct_1(vec4<u32>(1u, 1u, 1u, 1u), 1u ^ (select(4294967295u, 1u, true) & 38924u)));
    let var_5 = select(select(vec4<u32>(countOneBits(54359u) << (1u % 32u), var_4.e.b, 0u, ~var_4.e.b & 1u), min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_4.e.b, var_4.c.x, 84687u), vec4<u32>(var_4.e.a.x, 27782u, var_4.e.b, 10218u)), var_4.e.a) << (vec4<u32>(~var_4.e.a.x, 0u, var_4.c.x, _wgslsmith_mod_u32(var_4.c.x, 1u)) % vec4<u32>(32u)), !vec4<bool>(true, true, true, select(var_3.x, true, false))), vec4<u32>(max(_wgslsmith_mult_u32(0u, var_4.e.a.x), 54255u), _wgslsmith_mod_u32(~(~1u), var_4.e.b), var_4.e.a.x, ~(~(~51387u))), select(!vec4<bool>(var_4.b, true, true, true), select(select(!vec4<bool>(true, var_4.b, var_3.x, var_4.b), !vec4<bool>(var_4.b, var_4.b, true, var_3.x), !vec4<bool>(var_4.b, var_3.x, var_4.b, var_4.b)), vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(true, true, any(vec3<bool>(var_3.x, true, true)), true)), vec4<bool>(false, false, var_3.x, !(var_3.x & false))));
    global0 = Struct_2(vec2<i32>(u_input.a.x, ~global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~33503u, var_5.x));
}

