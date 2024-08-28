struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(trunc(268f))))), global1.a);
    var var_1 = select(!vec4<bool>(all(vec4<bool>(false, false, true, true)), true, !(833f != global1.a), any(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec2<bool>(true, true))), vec4<bool>(!(-2147483647i != _wgslsmith_add_i32(u_input.b, u_input.b)), true, false, any(vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false))))));
    var var_2 = -_wgslsmith_div_i32(0i | u_input.b, ~(~u_input.c.x >> (4294967295u % 32u)));
    global0 = array<vec2<i32>, 16>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))), var_0.a);
    return _wgslsmith_div_u32(44297u, ~_wgslsmith_add_u32(0u, ~(~29389u)));
}

fn func_2() -> Struct_1 {
    var var_0 = global1.a;
    let var_1 = !((-556f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), 706f)) == (_wgslsmith_f_op_f32(select(-219f, global1.a, true)) >= _wgslsmith_f_op_f32(f32(-1f) * -1015f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.b, 1398f)))), global1.a))));
    let var_3 = _wgslsmith_sub_u32(3072u, _wgslsmith_clamp_u32(func_3(), ~2734u, 0u));
    let var_4 = u_input.c.yz;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))) - _wgslsmith_f_op_f32(f32(-1f) * -1448f))), -580f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(global1.b > global1.b, true, false);
    let var_1 = u_input.a;
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global1.a) - _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_div_f32(global1.b, -1034f)))) < _wgslsmith_f_op_f32(1f + -908f), false, any(var_0.yz) & var_0.x);
    global0 = array<vec2<i32>, 16>();
    var_2 = vec3<bool>(false, !(!var_0.x), var_0.x == var_2.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.b, global1.a);
    global0 = array<vec2<i32>, 16>();
    let var_0 = func_1();
    global0 = array<vec2<i32>, 16>();
    let var_1 = _wgslsmith_sub_u32(~(~(~1u)), 31129u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(-1635f + global1.a));
}

