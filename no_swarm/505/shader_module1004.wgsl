struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(985f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))) - global0.a);
    var_0 = 1108f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(1318f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-620f - global0.a), global0.a)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(-518f, global0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1477f)) * global0.a)))));
    let var_1 = abs(min(~36603i, 10219i));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)), -663f, _wgslsmith_f_op_f32(trunc(-633f)), -180f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 245f, 100f) - vec4<f32>(global0.a, 628f, 441f, 282f)) * vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(364f * global0.a), _wgslsmith_f_op_f32(483f * 532f), global0.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1084f, -601f, 1016f, -269f), vec4<f32>(951f, global0.a, global0.a, global0.a), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, global0.a, -392f, -356f), _wgslsmith_f_op_vec4_f32(vec4<f32>(279f, global0.a, global0.a, global0.a) - vec4<f32>(-1505f, 1442f, -1582f, global0.a)), -820f <= global0.a))))));
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * global0.a));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -956f))), 1452f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(abs(global0.a)), 1000f);
    global0 = Struct_5(_wgslsmith_f_op_f32(abs(2232f)));
    return !any(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    var var_0 = (true != any(select(!vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, arg_1.b)))) && any(vec4<bool>(any(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, arg_1.b))), arg_1.b, true, arg_1.b));
    global0 = Struct_5(440f);
    var_0 = arg_1.b;
    var var_1 = select(!(!vec4<bool>(arg_1.b == false, arg_1.b, arg_1.b | false, false)), select(vec4<bool>(all(vec2<bool>(false, arg_1.b)), arg_1.c >= countOneBits(arg_1.c), arg_1.b, arg_1.b), !(!vec4<bool>(true, true, arg_1.b, arg_1.b)), arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, true));
    var var_2 = global0.a;
    return !((!(var_1.x != true) & (func_2(vec3<u32>(u_input.a, arg_1.d.c.x, 62238u)) != true)) & var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, select(!func_1(Struct_2(vec2<f32>(1145f, global0.a), Struct_1(36910i, 49183i, vec4<u32>(16304u, 51307u, u_input.a, u_input.a), vec4<f32>(161f, global0.a, -614f, global0.a))), Struct_4(vec4<f32>(-1608f, global0.a, global0.a, global0.a), true, 2147483647i, Struct_1(-56223i, -1i, vec4<u32>(u_input.a, 0u, 33862u, u_input.a), vec4<f32>(global0.a, global0.a, global0.a, global0.a)))), select(func_1(Struct_2(vec2<f32>(506f, global0.a), Struct_1(-2147483647i, -2147483647i, vec4<u32>(u_input.a, 15973u, 0u, u_input.a), vec4<f32>(946f, global0.a, global0.a, global0.a))), Struct_4(vec4<f32>(-340f, 1108f, global0.a, global0.a), false, 0i, Struct_1(43559i, -1i, vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<f32>(203f, 878f, -458f, global0.a)))), true, true) == select(all(vec3<bool>(false, false, true)), true, true), all(vec4<bool>(true, true, true, true)) & true), true, func_1(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, global0.a)))), Struct_1(~(-2147483647i), 1i, vec4<u32>(u_input.a, u_input.a, 60127u, u_input.a), vec4<f32>(710f, 836f, 1281f, 1000f))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(global0.a, global0.a)), -1511f, _wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(-global0.a)), func_1(Struct_2(vec2<f32>(-646f, global0.a), Struct_1(-1i, 28473i, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<f32>(-1000f, global0.a, -1297f, 753f))), Struct_4(vec4<f32>(1000f, global0.a, -1727f, -894f), false, -3693i, Struct_1(-1i, 0i, vec4<u32>(58359u, 59969u, u_input.a, u_input.a), vec4<f32>(global0.a, global0.a, 1823f, -914f)))), -1i, Struct_1(_wgslsmith_mod_i32(37025i, 1i), 1i, vec4<u32>(u_input.a, 89918u, 37300u, 4294967295u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, 732f, global0.a, 576f)))))));
    global0 = Struct_5(852f);
    var var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

