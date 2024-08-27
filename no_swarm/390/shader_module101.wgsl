struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(866f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1715f)) + _wgslsmith_f_op_f32(482f + -1000f)))) * _wgslsmith_div_f32(-1333f, 1227f)), _wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)))));
    global0 = array<Struct_1, 28>();
    var_0 = -2535f;
    global0 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f + 858f) + _wgslsmith_f_op_f32(-2112f + -311f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-536f)))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2092f, _wgslsmith_f_op_f32(floor(-427f))))));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_1(select(vec4<bool>(select(false, any(vec4<bool>(arg_1.b.x, false, true, true)), true != arg_1.b.x), true, all(select(vec3<bool>(false, arg_1.b.x, true), vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_1.b.x, false, true))), !arg_1.b.x), !select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(true, false, arg_1.b.x, arg_1.b.x), arg_1.b.x), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), select(vec4<bool>(arg_1.b.x, true, true, true), vec4<bool>(arg_1.b.x, false, true, true), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x))), select(select(!vec4<bool>(true, arg_1.b.x, true, arg_1.b.x), select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true), vec4<bool>(false, false, arg_1.b.x, arg_1.b.x), arg_1.b.x), vec4<bool>(true, true, true, true)), select(!vec4<bool>(arg_1.b.x, true, false, false), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false), vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x)), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x))), -u_input.a.wyx, var_0, u_input.a.x, firstLeadingBit(min(vec3<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(arg_0.xzw, vec3<u32>(39404u, arg_0.x, 1u)), min(arg_0.x, u_input.b)), ~arg_0.wyz)));
    let var_2 = global0[_wgslsmith_index_u32(1u, 28u)];
    return arg_1;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = func_3(abs(vec4<u32>(~_wgslsmith_sub_u32(u_input.b, 54404u), 0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), _wgslsmith_mult_u32(u_input.b, u_input.b)), u_input.b >> (u_input.b % 32u))), Struct_2(~1i, vec2<bool>(true, false), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -333f), 730f))), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, 22221i) << (_wgslsmith_add_u32(1u, u_input.b) % 32u), -32175i)));
    let var_1 = var_0;
    global0 = array<Struct_1, 28>();
    var var_2 = var_1;
    var var_3 = u_input.b;
    return _wgslsmith_sub_u32((1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(25445u, 4294967295u), ~vec2<u32>(u_input.b, u_input.b)) % 32u)) << (_wgslsmith_div_u32(~select(39531u, 4294967295u, var_1.b.x), _wgslsmith_clamp_u32(u_input.b, 1u, 1u)) % 32u), 38200u);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<Struct_1, 28>();
    let var_0 = vec4<u32>(1503u, 4294967295u, 29662u, ~(~(~(~arg_2))));
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~u_input.b), reverseBits(~arg_3.e.x)), max(_wgslsmith_mod_u32(19568u, _wgslsmith_add_u32(var_0.x | u_input.b, ~72891u)), 0u));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return StorageBuffer(~var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f * -610f), _wgslsmith_f_op_f32(-279f + arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = vec2<u32>(0u, u_input.b);
    let var_1 = 101f;
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(max(4294967295u, ~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, var_0.x, 30341u), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15363u, 1u, u_input.b), vec4<u32>(5945u, var_0.x, u_input.b, 21650u))))), firstTrailingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b, 4294967295u), vec4<u32>(4294967295u, var_0.x, u_input.b, 4294967295u)), var_0.x >> (37727u % 32u))));
    var_0 = firstLeadingBit(max(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, ~u_input.b, 47988u), ~_wgslsmith_clamp_u32(0u, var_0.x, 39141u)), vec2<u32>(4294967295u, 4294967295u)));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1230f)) - var_1)), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(202f * var_1)))))), var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-611f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1))));
    var var_3 = false;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.a.xx), _wgslsmith_f_op_vec4_f32(trunc(var_2)), func_1(min(-(vec2<i32>(2147483647i, u_input.a.x) & u_input.a.wz), ~u_input.a.xz)), Struct_1(select(vec4<bool>(true, u_input.b <= u_input.b, false, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false))), vec3<i32>(u_input.a.x, reverseBits(2147483647i & u_input.a.x), countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.wxw, u_input.a.xyz))), 329f, u_input.a.x, vec3<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.x, 59010u, u_input.b), vec3<u32>(4294967295u, 6210u, 1u)), vec3<u32>(45u, var_0.x, u_input.b)))));
}

