struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = arg_1;
    var var_1 = u_input.a.wzy;
    let var_2 = Struct_1(534f);
    return _wgslsmith_add_i32(0i, 40906i);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f);
    let var_1 = -966f;
    let var_2 = func_2(-480f, 727f);
    let var_3 = Struct_1(_wgslsmith_div_f32(-1171f, 184f));
    let var_4 = u_input.b.xyz;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f * -1585f));
    let var_2 = vec2<f32>(1102f, var_0);
    var var_3 = ~u_input.a;
    var_3 = ~firstLeadingBit(u_input.a);
    var var_4 = var_2.x;
    var var_5 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, -18041i), _wgslsmith_mod_vec2_i32(var_5.yy, var_5.zy)))), -(var_5.x | var_5.x), u_input.e.ww, ~u_input.a.x);
}

