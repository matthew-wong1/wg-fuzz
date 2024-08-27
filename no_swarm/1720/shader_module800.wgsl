struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: Struct_2 = Struct_2(true, vec3<u32>(1u, 0u, 10399u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = !(!(!select(vec2<bool>(global1.a, global1.a), select(vec2<bool>(true, global1.a), vec2<bool>(false, global1.a), true), true)));
    global0 = array<vec4<f32>, 6>();
    var var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_add_i32(~1i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, 18783i) ^ 1i)), u_input.a);
    var var_3 = Struct_1(-1i, _wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 199f) * _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_div_f32(arg_0.b, -354f)))), ~firstLeadingBit(1i) << (global1.b.x % 32u));
    return -1025i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = Struct_2(true, global1.b);
    let var_0 = countOneBits(vec4<u32>(~global1.b.x, _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(1u, arg_0)), ~0u), 0u, ~_wgslsmith_mult_u32(arg_0, arg_0)));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(-(~func_3(Struct_1(u_input.a.x, -706f, u_input.a.x))), 49935i, 22181i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-601f))))), ~(-(i32(-1i) * -26972i)));
    global1 = Struct_2(any(!select(!vec3<bool>(false, true, global1.a), select(vec3<bool>(false, false, global1.a), vec3<bool>(global1.a, global1.a, true), global1.a), !global1.a)), ~(~global1.b));
    let var_2 = var_1.b;
    return Struct_2(!global1.a, var_0.xzz | vec3<u32>(~(arg_0 & 1u), var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(66664u, var_0.x, var_0.x), global1.b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -1367f)))), arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-284f, 373f)), 437f))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_0.x))))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(floor(arg_0.x)))));
    global1 = Struct_2(any(!select(vec4<bool>(true, true, global1.a, arg_2.x), !vec4<bool>(false, true, false, global1.a), vec4<bool>(arg_3.x, false, true, false))), global1.b);
    global1 = func_2(global1.b.x);
    global0 = array<vec4<f32>, 6>();
    let var_1 = _wgslsmith_mult_u32(abs(countOneBits(global1.b.x) ^ ~1u), global1.b.x);
    return func_2(~1750u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(true, global1.a, true));
    let var_1 = vec3<u32>(~3572u, ~reverseBits(~0u), _wgslsmith_clamp_u32(31565u, _wgslsmith_sub_u32(~(global1.b.x << (0u % 32u)), _wgslsmith_mod_u32(global1.b.x, abs(22982u))), global1.b.x));
    var var_2 = var_0.xx;
    var_0 = !(!vec3<bool>(any(!vec3<bool>(global1.a, var_0.x, true)), true, _wgslsmith_sub_u32(4294967295u, global1.b.x) < ~4294967295u));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1553f + -833f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, 1202f)))))), -1000f, vec2<bool>(false == !any(vec4<bool>(global1.a, false, false, false)), any(vec2<bool>(all(vec4<bool>(var_2.x, var_0.x, true, var_2.x)), var_2.x))), vec3<bool>(var_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global1.b.x, var_1.x), var_1), ~0u) <= global1.b.x, global1.a && ((var_0.x | false) && global1.a)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f - _wgslsmith_f_op_f32(floor(-309f))) - -590f);
    var var_5 = func_2(~var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.x, min(abs(_wgslsmith_mod_u32(global1.b.x, var_3.b.x)), 25829u)));
}

