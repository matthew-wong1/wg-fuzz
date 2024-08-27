struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_vec3_u32(max(vec3<u32>(countOneBits(abs(u_input.a)), ~select(4294967295u, u_input.b.x, arg_1.x), _wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(arg_0.a, 29699u))), vec3<u32>(~(~1u), _wgslsmith_add_u32(~arg_0.b, min(u_input.a, u_input.a)), ~reverseBits(4294967295u))), abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.b.x, 0u), u_input.b.wwy))));
    return any(vec2<bool>(select(all(!vec2<bool>(false, arg_1.x)), true, false & arg_1.x), all(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_1(3462u, _wgslsmith_mult_u32(~abs(~4372u), ~1u | (u_input.a ^ ~23471u)));
    var_0 = Struct_1(~firstTrailingBit(44476u), ~(~select(var_0.b << (4294967295u % 32u), ~4294967295u, !arg_3)));
    let var_1 = max(0u, 0u);
    var_0 = Struct_1(_wgslsmith_add_u32(~(~var_1), _wgslsmith_clamp_u32(min(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, 18547u, 1u), u_input.b), var_0.a)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(100254u, var_1, 12627u), u_input.b.zzz) % 32u), u_input.a);
    return !vec3<bool>((true || select(arg_3, arg_3, true)) && true, all(vec3<bool>(true, true, true)), arg_3);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = !(!vec3<bool>(!select(false, true, false), func_2(arg_2, vec4<bool>(true, true, true, true), arg_2), select(true, true, all(vec3<bool>(false, true, false)))));
    var_0 = vec3<bool>(true, !var_0.x, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, _wgslsmith_f_op_f32(-1542f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-224f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-135f + -514f), _wgslsmith_f_op_f32(f32(-1f) * -592f)))));
    var var_2 = Struct_1(~select(min(~0u, arg_0), 64258u, !(2147483647i > u_input.d.x)), 35296u);
    var_0 = func_3(u_input.c, 646f, u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2470f))) - var_1.x) == _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 313f)) + _wgslsmith_f_op_f32(454f - 608f))));
    return !select(vec4<bool>(false, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), all(!vec4<bool>(false, false, var_0.x, var_0.x))), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, false, var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(true, true, true)) || all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), func_1(1751u, Struct_1(u_input.b.x, u_input.a), Struct_1(1u, 4294967295u)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1178f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1814f)) * 167f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(607f, _wgslsmith_f_op_f32(f32(-1f) * -1798f)))))));
    var var_2 = countOneBits(vec2<u32>(0u, u_input.a));
    var var_3 = !vec3<bool>(var_0, !(any(vec3<bool>(var_0, false, true)) == !var_0), (_wgslsmith_f_op_f32(var_1.x * var_1.x) <= _wgslsmith_f_op_f32(select(506f, var_1.x, false))) || true);
    var var_4 = Struct_1(~1u << (u_input.b.x % 32u), 18416u);
    var var_5 = Struct_1(~0u, ~var_2.x);
    var_2 = select(vec2<u32>(~select(~var_2.x, ~1u, var_0), select(9352u | _wgslsmith_dot_vec3_u32(u_input.b.ywx, u_input.b.yxz), abs(13652u) ^ _wgslsmith_mult_u32(u_input.a, 0u), !(u_input.d.x < u_input.c.x))), u_input.b.zy << (u_input.b.zy % vec2<u32>(32u)), vec2<bool>(var_3.x & false, var_0));
    var var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~105961u, ~1u, _wgslsmith_clamp_u32(35595u, 29925u, 3165u), var_2.x) | ~u_input.b, u_input.d.yy);
}

