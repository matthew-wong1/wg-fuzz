struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-720f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f + -129f) + -1089f)) - -1120f));
    return Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1054f, 481f, 976f, -849f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(806f, 1476f, -1162f, 393f)))))))));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_mod_i32(~u_input.a.x, firstTrailingBit(_wgslsmith_sub_i32(i32(-1i) * -18041i, _wgslsmith_dot_vec3_i32(~u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(35841i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x), u_input.a)))));
    let var_1 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(14099u, 5330u, 1u)), vec3<u32>(1u, 1u, 1u)), 3779u, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 104022u, 54882u, 0u), vec4<u32>(0u, 2358u, 20648u, 0u)), _wgslsmith_add_u32(28137u, 84116u) & _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(768f + -195f), 627f)) + _wgslsmith_f_op_f32(-1520f - _wgslsmith_f_op_f32(max(-1000f, 293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f * 1263f))), _wgslsmith_f_op_f32(ceil(1000f))));
    return ~vec2<u32>(~(~(~47999u)), ~_wgslsmith_div_u32(var_1.a.x, 0u) << (~(~var_1.a.x) % 32u));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec4<u32>(arg_1 >> (min(arg_1, ~arg_1) % 32u), firstTrailingBit(max(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 74419u, arg_1, arg_1), vec4<u32>(arg_1, 1u, arg_1, 4294967295u)))), arg_1, ~_wgslsmith_sub_u32(~18603u, abs(28295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1420f, -745f, -1018f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-arg_0))))));
    let var_1 = var_0.b;
    var var_2 = func_2(-(u_input.a.x & (~(-77198i) & -u_input.a.x)));
    let var_3 = func_3();
    return all(select(!vec2<bool>(-386f < var_1.x, any(vec3<bool>(false, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true && all(vec3<bool>(false, true, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = 858f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(801f))));
    var_0 = (all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), true)) || func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, 856f, 1779f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1290f, 1568f, -858f), vec3<f32>(-1838f, -385f, -721f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))) & true;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(187f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(149f, -968f)), -1004f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2288f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f * 966f) + _wgslsmith_f_op_f32(f32(-1f) * -212f)), -2286f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1603f + -534f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(select(140f, -947f, false)), select(true, true, true))))))));
    var var_2 = ~(~u_input.a.x);
    let var_3 = var_1.x;
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(-49368i).a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, 1411f, var_1.x, var_1.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.x), 1006f, 453f), vec4<bool>(true, true, false, true))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1397f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -462f, 625f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, var_1.x, 1644f)))))));
}

