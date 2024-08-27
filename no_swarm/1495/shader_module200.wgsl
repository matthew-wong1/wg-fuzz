struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-79696i, 2147483647i, -3162i, i32(-2147483648), 27844i, -2755i, 0i, -20898i, 0i, 2147483647i, i32(-2147483648), 2147483647i, -1i, 1i, -1i, i32(-2147483648), -87399i, 1i, 5017i, -1i, 1i, 34032i, -3916i, -1i, 1i, -1i, -1i, i32(-2147483648), 2147483647i, -39563i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>) -> vec2<f32> {
    global0 = array<i32, 31>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, 190f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(474f, -231f), vec2<f32>(-157f, -232f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2001f, 966f), _wgslsmith_f_op_vec2_f32(vec2<f32>(135f, 421f) * vec2<f32>(397f, -697f)), any(arg_1.yx)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f + 1434f) - _wgslsmith_f_op_f32(-608f - 778f)), 600f)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, _wgslsmith_f_op_f32(abs(-277f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false))))))));
    global0 = array<i32, 31>();
    var var_1 = Struct_2(Struct_1(select(vec3<bool>(u_input.a.x <= u_input.a.x, any(vec2<bool>(false, false)), true), vec3<bool>(true, 60490u != u_input.b, true), all(vec3<bool>(false, false, true)) != false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true)), vec4<bool>(true, true, true, true));
    var_1 = Struct_2(var_1.a, !vec4<bool>(var_1.b.x, false, var_1.a.a.x, var_1.a.b.x));
    global0 = array<i32, 31>();
    return var_0.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<f32> {
    let var_0 = u_input.a.x;
    var var_1 = arg_2.a;
    let var_2 = -12878i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(-351f + -996f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(355f, 109f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, 468f))), vec2<bool>(true, any(arg_2.a.a.yz)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_f_op_f32(232f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-886f + 1174f), _wgslsmith_f_op_f32(floor(1107f))))));
    let var_4 = -24088i;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f), -354f) + var_3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47975u > u_input.b;
    let var_1 = _wgslsmith_sub_i32(-1i, -71477i);
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var_0 = false;
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1), u_input.a.xz);
    var_0 = any(!vec3<bool>(!all(vec4<bool>(true, false, false, true)), true, true));
    global0 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_1, -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(667f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, 608f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(430f, -436f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1519f, -531f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(false, global0[_wgslsmith_index_u32(23871u, 31u)], Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true)), 8780u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1193f, -1168f, -1138f) - vec3<f32>(-1662f, -850f, 1184f))))));
}

