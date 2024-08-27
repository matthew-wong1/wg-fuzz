struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> bool {
    return !arg_0.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = false;
    var var_0 = arg_3.c.zy ^ countOneBits(arg_3.c.zy);
    let var_1 = arg_3;
    global0 = true;
    var var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), !any(vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(false, false, true))), true));
    return _wgslsmith_f_op_f32(f32(-1f) * -194f);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, 0u, arg_0, Struct_1(u_input.a, global1.x, vec3<i32>(-52019i, -1i, 1i), vec2<u32>(arg_0, arg_3), 1i))) - -627f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1606f - 1408f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))))))));
    let var_1 = ~(~firstTrailingBit(vec2<u32>(~u_input.a.x, u_input.a.x)));
    var var_2 = var_1.x >> (~1u % 32u);
    let var_3 = Struct_1(vec3<u32>(8705u, arg_0, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_f_op_f32(step(157f, _wgslsmith_f_op_f32(ceil(var_0)))), arg_2)) + global1.x), _wgslsmith_add_vec3_i32(-vec3<i32>(-5124i, 1i, i32(-1i) * -24204i), select(-vec3<i32>(4860i, 12166i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 33543i, -44475i), vec3<i32>(1i, -2147483647i, 35917i))), !(!arg_2))), var_1, 8416i);
    var var_4 = var_3.b;
    return ~vec4<i32>(-23885i, countOneBits(-(i32(-1i) * -2147483647i)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, var_3.e), vec2<i32>(var_3.c.x, -104i)), ~_wgslsmith_dot_vec3_i32(var_3.c, vec3<i32>(18628i, var_3.c.x, var_3.e))), select(-_wgslsmith_sub_i32(37348i, var_3.c.x), 1i, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-751f + global1.x), -928f), vec2<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x)))))));
    global0 = (true || any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), true))) && !(func_1(vec3<bool>(false, false, true), ~vec4<u32>(26791u, u_input.a.x, u_input.a.x, u_input.a.x)) & true);
    global0 = all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true));
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, i32(-1i) * -41120i, _wgslsmith_add_i32(0i, 4886i)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-50589i, -18094i, -2147483647i), vec3<i32>(1i, 1i, -2559i)))) | 0i;
    var var_1 = -843f;
    var var_2 = false;
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(func_2(~1u, true, all(vec4<bool>(true, true, true, true)), u_input.a.x), vec4<i32>(var_0, var_0 & var_0, min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, 2147483647i), vec3<i32>(47627i, var_0, var_0)), i32(-1i) * -27394i), -2147483647i)), min(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0, var_0), vec3<i32>(-2147483647i, -15830i, 28797i)), 1i, -var_0, -1i)), reverseBits(abs(~vec4<i32>(var_0, var_0, var_0, 44399i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(326f, global1.x), var_0);
}

