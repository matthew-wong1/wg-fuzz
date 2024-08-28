struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    return select(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)) && select(true, true, true), false, true), vec3<bool>(any(vec3<bool>(true, true, true)), global0.x < global0.x, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), vec3<bool>(true, true, select(true, false, true))), select(vec3<bool>(any(vec3<bool>(true, false, false)), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec4<bool>(true, false, true, false)))), select(vec3<bool>(all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = vec3<bool>(!(-_wgslsmith_mod_i32(0i, 24562i) <= (1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(9011i, -16622i, -27328i, -1i), vec4<i32>(2147483647i, -27727i, 2147483647i, -1i)))), true, true);
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(func_3());
    var var_3 = arg_1;
    var_0 = var_2.a;
    return 59405u;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = max(~u_input.a.yyw, ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b.x, u_input.b.x)), u_input.b.xyy));
    var var_1 = _wgslsmith_div_u32(~(~var_0.x), _wgslsmith_mod_u32(23278u, select(~1u, func_2(vec4<u32>(51904u, u_input.a.x, 45236u, var_0.x), global0.x), !arg_1 & all(arg_0.a))));
    let var_2 = ~select(min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_i32(-1i, ~0i, _wgslsmith_sub_i32(40460i, 4726i))), 1i, select(-1i, ~1i, !arg_0.a.x) <= _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(60360i, 1i), vec2<i32>(-59141i, -5147i)), ~(-1i), ~(-1i)));
    var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(select(var_0.x, ~u_input.a.x, true) ^ u_input.a.x, min(4294967295u << (u_input.a.x % 32u), ~1u) | 1u));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~(~u_input.b.x), select(1u, firstTrailingBit(67711u), arg_0.a.x)), 24505u), _wgslsmith_sub_u32(u_input.b.x, ~(~53966u)) | select(u_input.b.x, ~32144u, false));
    return -994f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, select(true, true, true))), !(_wgslsmith_f_op_f32(-global0.x) == global0.x))), 1274f, global0.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -531f)));
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, 269f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, -1795f, var_0.a)), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1137f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 602f, -1452f)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * global0.x))), _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(trunc(1520f)));
    let var_2 = Struct_2(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) + 1f))))), _wgslsmith_f_op_f32(sign(var_1.a)), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a * var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2285f, -942f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a)))), u_input.b.x);
}

