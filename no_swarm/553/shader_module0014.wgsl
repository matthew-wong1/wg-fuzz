struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = select(0u, u_input.a.x, false) > ((u_input.a.x << (firstTrailingBit(u_input.a.x) % 32u)) | _wgslsmith_mult_u32(u_input.a.x, u_input.a.x));
    var var_1 = (597f > _wgslsmith_f_op_f32(max(global0.x, -145f))) | var_0;
    return ~1u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = arg_0;
    global1 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1330f)));
    let var_2 = all(vec2<bool>(false, var_0.b.x >= var_1));
    let var_3 = -629f;
    return 804f;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(403f, 1749f), vec2<f32>(-465f, 227f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 878f))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-634f, global0.x, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 119f), vec2<f32>(global0.x, global0.x))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)))))))), !(!select(true, true, all(vec3<bool>(true, false, false))))));
    var var_0 = u_input.a.zzz;
    var var_1 = Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(false, false))), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -708f))));
    let var_2 = !vec4<bool>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.x, 1253f)))), (~u_input.a.x & 26745u) >= var_0.x, true);
    var var_3 = -1000f;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u;
    global1 = func_1();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(289f, _wgslsmith_f_op_f32(f32(-1f) * -334f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<bool>(false, true, true), vec3<f32>(-418f, global0.x, -1175f)), global0.x, u_input.a.x)), -385f))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(1164f, global0.x)), _wgslsmith_f_op_f32(func_3())))));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1808f + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2140f + global0.x), global0.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -873f, global0.x)))), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-102f, global0.x) * var_0.zx)), vec2<f32>(1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.x), _wgslsmith_div_i32(1i, ~27290i), u_input.a.x, vec2<i32>(abs(firstTrailingBit(1i) & (-2147483647i << (u_input.a.x % 32u))), ~min(2147483647i, -2147483647i)));
}

