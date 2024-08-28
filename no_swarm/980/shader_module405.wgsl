struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 2147483647i, 16371i, i32(-2147483648)), vec4<i32>(24886i, -29248i, -63083i, -50313i), vec4<i32>(-36691i, 2147483647i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 43447i, 30516i, 19176i), vec4<i32>(1i, 1i, 1i, 26430i), vec4<i32>(30185i, -26426i, 2147483647i, 0i), vec4<i32>(2147483647i, -26267i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 19099i, 771i), vec4<i32>(i32(-2147483648), 1315i, 1i, -19147i), vec4<i32>(11185i, -1i, 0i, 55792i), vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(i32(-2147483648), -27779i, -1i, 37358i), vec4<i32>(15956i, -32217i, 1i, 2147483647i), vec4<i32>(-1i, -1i, -54065i, -1902i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(arg_1 + 390f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b), vec2<f32>(576f, -126f))))), ~arg_0);
    var var_1 = ~vec3<u32>(1u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.b, 4294967295u), ~u_input.b), ~(vec3<u32>(u_input.c.x, 0u, u_input.b) << (vec3<u32>(u_input.b, 25278u, u_input.b) % vec3<u32>(32u)))));
    return (var_0.b & (var_0.b << (_wgslsmith_clamp_u32(var_1.x, var_1.x, u_input.b) % 32u))) == 0i;
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f) - _wgslsmith_f_op_f32(abs(-1188f)))), _wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(1653f - -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, -662f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1502f, 988f))) * vec2<f32>(_wgslsmith_f_op_f32(select(1115f, -1049f, true)), _wgslsmith_f_op_f32(1685f * -306f)))), !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec2<bool>(false, false))))));
    var var_1 = vec2<i32>(abs((i32(-1i) * -u_input.a.x) | _wgslsmith_mod_i32(12032i, u_input.a.x)), _wgslsmith_div_i32(-2147483647i, u_input.d));
    var_1 = abs(~vec2<i32>(1i, u_input.d));
    let var_2 = vec3<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(~abs(u_input.c), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, arg_0.x), ~vec2<u32>(arg_0.x, 0u))), u_input.b);
    var var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(select(reverseBits(vec4<i32>(1i, var_1.x, -1i, 2147483647i)), vec4<i32>(-2147483647i, u_input.a.x, -1i, 2147483647i), vec4<bool>(func_1(var_1.x, var_0.x, Struct_1(false, vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, true))), all(vec2<bool>(false, true)), -17059i > u_input.a.x, false)), vec4<i32>(1i, u_input.d, abs(reverseBits(-31722i)), _wgslsmith_add_i32(2147483647i, var_1.x) | ~(-1i))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(var_2.x, var_2.x >> (_wgslsmith_clamp_u32(arg_0.x, var_2.x, 4294967295u) % 32u), !any(vec2<bool>(false, false))), arg_0.x), 15u)], vec4<i32>(_wgslsmith_clamp_i32(min(var_1.x, var_1.x), 26393i, select(1i, abs(var_1.x), u_input.a.x <= 43243i)), _wgslsmith_mod_i32(min(var_1.x, -1i), -23174i), u_input.a.x, var_1.x));
    return vec2<f32>(var_0.x, var_0.x);
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(407f, 662f), vec2<f32>(-215f, -203f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(751f, 1865f) * vec2<f32>(1842f, 117f)), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1018f, 748f)), vec2<f32>(-915f, -901f))) + _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(u_input.c.x, 0u)))), ~min(arg_0.x, arg_0.x));
    let var_1 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(0u, ~49052u)), 15u)];
    let var_2 = Struct_1(all(select(vec2<bool>(u_input.a.x >= u_input.a.x, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -769f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 212f) + vec2<f32>(199f, var_0.a.x)), vec2<f32>(var_0.a.x, -763f))) + vec2<f32>(1f, 1f)), !vec2<bool>(all(vec2<bool>(true, true)), false));
    global0 = array<vec4<i32>, 15>();
    let var_3 = var_0;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(~1i, _wgslsmith_f_op_f32(floor(-1283f)), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(2140f, -678f) * vec2<f32>(-246f, 898f)), vec2<bool>(true, true))), func_2(-u_input.a), false) || all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), true));
    let var_1 = _wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(round(-2793f)));
    global0 = array<vec4<i32>, 15>();
    let var_2 = vec2<i32>(i32(-1i) * -(u_input.d & _wgslsmith_mult_i32(u_input.d, u_input.a.x)), 1i);
    var var_3 = all(vec3<bool>(var_1 >= _wgslsmith_f_op_f32(-302f + -1000f), !(0u != u_input.c.x), var_1 >= -1455f)) | all(vec4<bool>(true, (32238i | var_2.x) <= -2147483647i, (-35636i > u_input.a.x) | any(vec4<bool>(false, false, false, true)), true));
    let var_4 = vec2<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(22844u, var_1, -47878i, vec4<f32>(_wgslsmith_f_op_f32(floor(var_1)), -1450f, 808f, _wgslsmith_f_op_f32(-2277f * _wgslsmith_f_op_f32(floor(var_1)))));
}

