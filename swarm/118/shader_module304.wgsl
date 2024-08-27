struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global0 = true;
    var var_0 = Struct_2(551f);
    global0 = (i32(-1i) * -_wgslsmith_add_i32(~u_input.b.x, _wgslsmith_clamp_i32(-25437i, u_input.c.x, u_input.a.x))) >= (u_input.c.x >> (min(3443u, select(22423u, firstTrailingBit(28083u), var_0.a < var_0.a)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1098f * -1019f) * _wgslsmith_f_op_f32(step(var_0.a, var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1308f)))));
    var var_2 = !select(select(vec4<bool>(true, var_0.a != -682f, true, true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, true, u_input.b.x >= 2187i), vec4<bool>(true, true, true, true)));
    return true;
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = Struct_2(-927f);
    var var_1 = !any(vec2<bool>(true, func_3()));
    var_0 = Struct_2(var_0.a);
    var var_2 = var_0.a;
    var_1 = !(_wgslsmith_f_op_f32(1915f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(470f - -508f))) > _wgslsmith_f_op_f32(step(-386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1814f)) - var_0.a))));
    return !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    global0 = !func_2(1u, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(9893i, arg_0.d, u_input.c.x, arg_1), vec4<i32>(arg_0.d, u_input.b.x, arg_1, arg_0.d), vec4<bool>(true, true, false, arg_0.b.x)), u_input.b));
    return vec3<bool>(false, func_3(), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_1(Struct_1(vec4<f32>(385f, 417f, -1000f, -592f), vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), -18104i, false), abs(u_input.c.x), countOneBits(33562u), 1251f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1237f));
    var var_2 = !(!var_0.x) && (var_1.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)));
    var var_3 = select(select(func_2(min(39704u, _wgslsmith_dot_vec4_u32(vec4<u32>(49199u, 0u, 37172u, 77282u), vec4<u32>(67288u, 1u, 19550u, 123262u))), u_input.b.x), var_0.x, false), true, false);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-542f, 245f) * var_1.a));
    var var_5 = Struct_2(-310f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5.a), vec4<f32>(_wgslsmith_div_f32(var_5.a, var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(154f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a - 340f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.a), -1081f))))), u_input.a, ~(-(~u_input.b)), select(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 12933u), vec2<u32>(83561u, 19452u)), countOneBits(vec2<u32>(81023u, 4294967295u)), !var_0.x) | vec2<u32>(19332u, 1u), ~vec2<u32>(1u, 1u), select(!select(var_0.yy, var_0.yy, true), vec2<bool>(all(vec4<bool>(true, false, false, false)), select(true, true, var_0.x)), var_0.x | all(vec3<bool>(false, var_0.x, var_0.x)))));
}

