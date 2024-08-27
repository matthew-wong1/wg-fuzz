struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-105f, 430f, -532f);

var<private> global1: array<vec4<f32>, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, -232f) + vec3<f32>(global0.x, global0.x, global0.x))))) * vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), -1000f, -347f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(210f, global0.x, 593f) + vec3<f32>(2067f, -1887f, -1265f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, 205f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) * vec3<f32>(global0.x, global0.x, 668f)), vec3<bool>(false, false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))))));
    let var_1 = Struct_1(1080f);
    var var_2 = vec3<bool>(false, true, true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1021f)) - 348f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 257f, true))))));
    var var_4 = var_3;
    return select(select(!var_2.xx, var_2.xz, false), !var_2.yx, !select(true, any(!vec4<bool>(false, var_2.x, var_2.x, false)), true));
}

fn func_2() -> f32 {
    let var_0 = 46155u;
    var var_1 = Struct_1(-1497f);
    let var_2 = Struct_1(global0.x);
    var var_3 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f), var_1.a) >= 317f, (abs(u_input.a.x) ^ ~firstLeadingBit(-31410i)) != _wgslsmith_mult_i32(-17142i, i32(-1i) * -25221i));
    var_3 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(var_3.x, true), var_3.x), func_3(), true), vec2<bool>(u_input.a.x > 2147483647i, true & var_3.x), vec2<bool>(true, true)), all(func_3()));
    return -1451f;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -612f, -1453f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2157f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1965f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1933f, -979f))))));
    global1 = array<vec4<f32>, 9>();
    var var_1 = vec4<u32>(0u, _wgslsmith_sub_u32(79406u, u_input.b.x), u_input.b.x, (abs(_wgslsmith_div_u32(u_input.b.x, 13173u)) | u_input.b.x) ^ firstTrailingBit(u_input.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), -474f, true)), global0.x))));
    let var_3 = _wgslsmith_f_op_f32(ceil(-663f));
    return Struct_1(-324f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 9>();
    let var_0 = _wgslsmith_mod_i32(25692i << (1u % 32u), -u_input.a.x);
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-global0.x)));
    global1 = array<vec4<f32>, 9>();
    global1 = array<vec4<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_vec2_f32(-global0.yx), _wgslsmith_add_i32(~var_0, u_input.a.x));
}

