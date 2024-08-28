struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = -1026f;
    let var_1 = 50916u;
    let var_2 = u_input.a.x;
    let var_3 = 0u;
    var var_4 = -2147483647i;
    return 1u;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    let var_0 = select(vec3<bool>(arg_0.x, arg_0.x, any(select(arg_0, vec2<bool>(arg_0.x, arg_0.x), true))), select(!(!(!vec3<bool>(false, arg_0.x, arg_1))), !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_1, false, arg_0.x), !arg_0.x), true), !vec3<bool>(false, -35414i > u_input.a.x, true));
    return -2147483647i;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_2(vec2<i32>(-2147483647i, func_3(arg_0.zy, arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1450f, 249f, -285f), vec3<f32>(-1596f, 155f, 357f), false))), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 339f, -1225f, -660f) - vec4<f32>(-652f, -738f, 437f, -265f))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(243f)))), _wgslsmith_f_op_f32(min(1000f, -509f)), _wgslsmith_f_op_f32(ceil(1346f)))));
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 33868u, 0u), min(vec3<u32>(1u, 14607u, 24773u), vec3<u32>(1u, 40660u, 38991u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, 3119u, 13683u), vec4<u32>(29582u, 2615u, 4294967295u, 1u), arg_0.x), vec4<u32>(1u, 1u, 1u, 1u))), abs(select(vec3<u32>(1u, 1u, ~1u), countOneBits(~vec3<u32>(3523u, 2159u, 64546u)), arg_0.x)));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.a, var_1.a))), var_1.a))));
    let var_3 = ~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(reverseBits(11489i), _wgslsmith_mult_i32(-1i, 2147483647i), arg_1.a.x)), u_input.a.yxy);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var_0 = ~_wgslsmith_mod_u32(func_1(any(vec4<bool>(true, true, true, true))), min(~func_2(vec4<bool>(false, false, false, true), Struct_2(u_input.a.wx), vec2<i32>(u_input.a.x, u_input.a.x)), 4294967295u));
    var var_1 = true;
    var var_2 = -func_3(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, -1103f, -411f))), vec3<f32>(_wgslsmith_f_op_f32(floor(1895f)), _wgslsmith_div_f32(641f, 2202f), _wgslsmith_f_op_f32(abs(-1451f))))), Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1843f, 241f, 1000f, 789f)), vec4<f32>(-591f, -1161f, 1293f, -923f))));
    var_1 = !(!any(vec3<bool>(true, true, true)));
    var var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(595f - 441f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(120f - -602f) + _wgslsmith_f_op_f32(ceil(-402f)))), _wgslsmith_f_op_f32(f32(-1f) * -1774f), -1981f), _wgslsmith_f_op_f32(ceil(-1210f)), 522f);
}

