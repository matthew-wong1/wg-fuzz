struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = arg_0;
    global0 = arg_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1244f, 1264f)) + _wgslsmith_f_op_f32(1708f * 865f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(586f)) + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(179f, -169f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(290f, -260f))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(314f, -1206f, -1645f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1455f, -464f, -589f), vec3<f32>(1000f, 539f, -817f))))))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-3216f, 633f)) - _wgslsmith_div_f32(-1159f, 769f)) * -813f), _wgslsmith_f_op_f32(f32(-1f) * -874f))));
    let var_2 = u_input.a;
    var var_3 = ~reverseBits(~vec2<u32>(~u_input.d, func_3(Struct_1(global0.a), false, vec2<bool>(var_0.a, true))));
    var_3 = vec2<u32>(u_input.d, max(u_input.d, _wgslsmith_clamp_u32(var_3.x, u_input.d, var_3.x)));
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1889f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) * _wgslsmith_f_op_f32(func_2(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(363f, -679f, false)))) + _wgslsmith_f_op_f32(min(-298f, _wgslsmith_f_op_f32(-482f - -190f)))), -1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f * _wgslsmith_f_op_f32(floor(-132f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(var_0.zx));
    var var_2 = arg_0;
    global0 = Struct_1(var_2.a);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1000f + var_1.x), var_0.x, var_1.x, _wgslsmith_f_op_f32(var_1.x - 190f))))));
    return ~(~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!global0.a, !any(select(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, true, false), true), !vec3<bool>(global0.a, global0.a, true), all(vec3<bool>(global0.a, global0.a, global0.a)))), all(vec4<bool>(false, all(vec3<bool>(false, true, true)), global0.a, global0.a)));
    global0 = Struct_1(global0.a);
    let var_1 = select(vec3<bool>(true, select(-u_input.b <= _wgslsmith_mult_i32(u_input.c, 26661i), func_1(Struct_1(true), Struct_1(false), vec4<i32>(u_input.c, u_input.b, 31055i, u_input.a.x)) < 20319u, var_0), all(vec3<bool>(true, true, true))), !vec3<bool>(var_0, select(true, all(vec4<bool>(false, global0.a, false, true)), true), true), !(!select(vec3<bool>(global0.a, global0.a, var_0), vec3<bool>(global0.a, var_0, false), !vec3<bool>(var_0, global0.a, var_0))));
    global0 = Struct_1(global0.a);
    global0 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-410f, -1000f))), -1059f, _wgslsmith_f_op_f32(step(-373f, _wgslsmith_f_op_f32(f32(-1f) * -771f))))), u_input.a.yw, 1u, 1f);
}

