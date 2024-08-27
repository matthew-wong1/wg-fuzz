struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(max(global0.a, -158f)));
    return Struct_1(global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = firstLeadingBit(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(0i, 2147483647i), 11310i)));
    global0 = arg_0;
    var var_1 = Struct_1(1071f);
    var var_2 = var_0.x < u_input.a.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(-arg_1.a))));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = 1166f;
    global0 = arg_1;
    var var_1 = u_input.a.x;
    var_1 = -1i;
    let var_2 = 0u;
    return select(select(vec3<bool>(any(vec2<bool>(false, false)) & any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~u_input.b == 1u), all(vec2<bool>(func_3(Struct_1(global0.a), arg_1), u_input.b != var_2))), vec3<bool>(true, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)) || true, true, true), !vec3<bool>(select(true, false, true), true, 1104f > global0.a), any(vec2<bool>(true, global0.a == global0.a))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(819f, global0.a, true)), _wgslsmith_f_op_f32(-global0.a), global0.a, -490f)), func_1()), vec3<bool>(true, true, (_wgslsmith_mod_i32(-26938i, 8978i) & firstTrailingBit(1i)) == u_input.a.x));
    global0 = func_1();
    let var_1 = Struct_1(-1432f);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-1037f + -723f))) != _wgslsmith_f_op_f32(1619f * global0.a);
    var var_3 = u_input.b;
    global0 = var_1;
    let var_4 = any(!vec3<bool>(!(!var_0.x), var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, -2271f, vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.a))))))));
}

