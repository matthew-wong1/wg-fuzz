struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: i32) -> vec3<bool> {
    var var_0 = abs(u_input.c.x);
    let var_1 = ~u_input.c.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -566f) * vec2<f32>(1154f, arg_0.b.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x)));
    var var_2 = arg_0;
    let var_3 = 4294967295u;
    return var_2.a;
}

fn func_3() -> f32 {
    let var_0 = !select(vec2<bool>(true, (u_input.b.x != u_input.b.x) || true), vec2<bool>(false, true), !func_1(Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1219f, global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(global0.x)), ~u_input.b.x).x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 400f))));
}

fn func_2() -> f32 {
    let var_0 = true;
    var var_1 = !vec3<bool>((!var_0 == all(vec4<bool>(true, var_0, var_0, true))) || select(any(vec4<bool>(var_0, var_0, true, false)), false, var_0), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -1089f)) < _wgslsmith_f_op_f32(func_3()));
    let var_2 = vec2<u32>(23669u >> (u_input.c.x % 32u), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2308f, global0.x, 179f) - vec3<f32>(global0.x, -1323f, -1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(610f, -1732f, global0.x), vec3<f32>(global0.x, 337f, _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1144f, global0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1475f, -715f, -829f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false)), func_1(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-450f, 571f))), -3216f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, 1102f))), u_input.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1058f)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f))))));
    let var_1 = vec3<i32>(abs(reverseBits(min(-67453i, u_input.b.x)) & u_input.a.x), u_input.b.x, 1i);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), var_0.b.x)), 1049f);
    let var_2 = any(select(!vec4<bool>(true, var_0.a.x, false, var_0.a.x), !vec4<bool>(false, var_0.a.x, any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, var_0.a.x, var_0.a.x, true))), true));
    let var_3 = Struct_1(vec3<bool>(all(var_0.a.yx), 0i == -u_input.b.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1728f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-278f, 766f, var_2)) * -411f), _wgslsmith_f_op_f32(-global0.x)))), 16344u | ~(61696u ^ u_input.c.x));
}

