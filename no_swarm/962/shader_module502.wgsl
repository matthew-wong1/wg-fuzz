struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, 0i), 858f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b)), -1000f)), _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(326f, 692f))))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_1.b, arg_1.b) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(414f, var_0.x, 355f), vec3<f32>(523f, arg_1.b, -2261f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(462f * var_0.x), true)), _wgslsmith_f_op_f32(147f + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1817f)), _wgslsmith_f_op_f32(trunc(446f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1006f, arg_1.b, 580f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), arg_1.b, arg_0.b)));
    var_0 = _wgslsmith_div_vec2_f32(var_1.yy, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f * arg_1.b)) - global0.b), -2312f));
    var_1 = vec3<f32>(global0.b, arg_0.b, 528f);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz)))))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b - -299f))), 972f))));
    return ~_wgslsmith_mod_u32(6465u, ~(~76619u) >> (_wgslsmith_clamp_u32(4501u, reverseBits(93373u), 1u) % 32u));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = abs(countOneBits(vec4<u32>(1u, 1u, 1u, 1u) | vec4<u32>(func_3(Struct_1(vec2<i32>(-6144i, -13804i), -366f), Struct_1(global0.a, 818f)), _wgslsmith_add_u32(1u, 37770u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 12399u, 5954u)), select(0u, 25009u, arg_0.x))));
    global0 = Struct_1(reverseBits(global0.a), -376f);
    global0 = Struct_1(global0.a, -363f);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-global0.b));
    var var_1 = Struct_1(-_wgslsmith_mod_vec2_i32(-abs(global0.a), _wgslsmith_add_vec2_i32(global0.a, global0.a)), global0.b);
    return Struct_1(~_wgslsmith_mod_vec2_i32(~vec2<i32>(-29463i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(25848i, u_input.a), vec2<i32>(2147483647i, 1i)) >> (var_0.yz % vec2<u32>(32u))), -572f);
}

fn func_1(arg_0: i32, arg_1: f32) -> vec2<bool> {
    var var_0 = func_2(vec4<bool>(false, !(!any(vec4<bool>(true, false, true, false))), true, false));
    let var_1 = -49187i;
    global0 = Struct_1(firstLeadingBit(max(vec2<i32>(-1i, u_input.a) ^ var_0.a, min(vec2<i32>(-34789i, 1i), vec2<i32>(global0.a.x, -1i)))) | (vec2<i32>(-1i) * -(~vec2<i32>(var_1, 35965i))), global0.b);
    var_0 = func_2(vec4<bool>(false, true, true, any(vec3<bool>(true, true, true)) && true));
    var var_2 = ~(~(vec2<i32>(2147483647i, 1i) & global0.a) >> (min(_wgslsmith_mult_vec2_u32(vec2<u32>(8977u, 22282u), vec2<u32>(26385u, 7850u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(36347u, 52500u))) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(select(countOneBits(firstLeadingBit(vec2<u32>(1u, 4294967295u))), vec2<u32>(1u, 1u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), min(~(~vec2<u32>(4294967295u, 58610u)), vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    return vec2<bool>(true, any(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_i32(83659i, ~_wgslsmith_add_i32(u_input.a, -57707i), -1i), 634f);
    let var_1 = func_2(select(vec4<bool>(select(true, !var_0.x, var_0.x), global0.a.x == global0.a.x, var_0.x, true), !vec4<bool>(any(vec3<bool>(var_0.x, false, false)), select(var_0.x, var_0.x, false), false, true | var_0.x), all(select(!vec3<bool>(true, var_0.x, false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), true))));
    var_0 = vec2<bool>(true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(global0.a, global0.a)), select(vec2<i32>(-29871i, 0i), abs(var_1.a), vec2<bool>(true, true))));
}

