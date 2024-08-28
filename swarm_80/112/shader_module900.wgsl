struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1135f, 385f, 130f) + vec3<f32>(-1246f, 1616f, -1040f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1350f, 174f, -684f), vec3<f32>(-1000f, 3188f, 607f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1054f, 1021f, 441f) - vec3<f32>(1835f, 319f, 300f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(910f, -372f, 430f) + vec3<f32>(141f, 536f, 123f))))), all(select(vec2<bool>(all(vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(true, true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(true, all(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, false)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.a.x), 4294967295u == select(firstTrailingBit(1u), countOneBits(1u), var_0.b), var_0.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)))), true, vec2<bool>(var_0.b, true)), 353f);
    var_0 = var_1.d;
    var var_2 = ~select(select(_wgslsmith_mult_i32(1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 12616i, 2147483647i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, 37516i, u_input.a.x)), all(var_0.c)) | _wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(1i, -1i, 0i, 0i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(29636i, _wgslsmith_mod_i32(-1i, -28208i)), 1i), !all(!vec3<bool>(false, false, var_1.b)));
    var var_3 = !vec2<bool>(all(!(!vec3<bool>(var_0.b, true, true))), var_0.b);
    return select(vec2<bool>(all(!select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(var_0.b, var_1.d.c.x, false, true), false)), true), select(!(!vec2<bool>(var_1.b, var_1.d.c.x)), !vec2<bool>(true, !var_1.d.b), var_1.d.b), select(var_1.d.c, vec2<bool>(true, true), true));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1204f)) * _wgslsmith_f_op_f32(step(arg_3.x, -141f))), _wgslsmith_f_op_f32(arg_3.x - -1028f)), vec3<f32>(208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-718f)) + arg_3.x), _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x))))), _wgslsmith_f_op_f32(arg_3.x * 218f) < _wgslsmith_f_op_f32(-arg_3.x), select(!arg_0.zy, vec2<bool>(all(select(arg_0, arg_0, arg_1)), !arg_1), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), true), arg_0.zz)));
    var var_1 = -1i;
    global0 = false;
    let var_2 = any(func_3());
    global0 = func_3().x;
    return _wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>((-4401i ^ u_input.a.x) >> (81434u % 32u), _wgslsmith_add_i32(-u_input.a.x, 2147483647i), firstTrailingBit(max(arg_2.x, u_input.a.x)))) << (firstLeadingBit(select(~firstLeadingBit(4294967295u), abs(~1u), select(false, var_0.c.x, false) && true)) % 32u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = false;
    var var_0 = vec4<i32>(_wgslsmith_add_i32(func_2(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), true, u_input.a.yww, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-198f, arg_0.a.x, 1500f, -577f)))), u_input.a.x), (_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) ^ 28415i) ^ u_input.a.x, u_input.a.x, 73566i) ^ min(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 63192i) & vec4<i32>(u_input.a.x, 15813i, _wgslsmith_add_i32(1i, -1i), ~(-2147483647i)), vec4<i32>(59061i, u_input.a.x, -11489i, ~u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x));
    let var_2 = vec4<bool>(true, true, !arg_0.b, true);
    var var_3 = var_1;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(~0u), 1u, ~(~abs(129266u))), vec3<u32>(abs(40607u), reverseBits(1u) >> (1u % 32u), 1u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = ~u_input.a.x > -2147483647i;
    var var_0 = u_input.a.yx;
    global0 = true;
    let var_1 = firstTrailingBit(arg_3) >> (func_1(arg_2) % 32u);
    var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(firstTrailingBit(-u_input.a.yy), -(vec2<i32>(49675i, u_input.a.x) >> (vec2<u32>(arg_3, arg_3) % vec2<u32>(32u)))), vec2<i32>(u_input.a.x, ~func_2(vec3<bool>(false, arg_2.c.x, arg_0), var_0.x == var_0.x, ~vec3<i32>(5988i, var_0.x, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2.a.x, -385f)))));
    return all(vec3<bool>(!((12097u | arg_3) == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, arg_3), vec3<u32>(var_1, arg_3, var_1))), !select(arg_2.b, true, arg_1.b), !select(!arg_0, all(vec3<bool>(true, true, arg_2.b)), arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, -798f, 1839f) - vec3<f32>(-1108f, 1011f, 1394f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, -103f, 1543f))))), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec2<bool>(true, false));
    let var_1 = vec3<bool>(var_0.b, true, func_4(var_0.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, var_0.a.x, var_0.a.x)))), false, var_0.c), var_0, ~(~func_1(var_0))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -427f, -749f, 992f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(214f, -785f, var_0.a.x, 297f), vec4<f32>(var_0.a.x, var_0.a.x, -740f, 369f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 2220f, 1000f, var_0.a.x), vec4<f32>(-1027f, 1146f, var_0.a.x, -173f), vec4<bool>(var_0.c.x, false, true, true)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) * vec4<f32>(var_0.a.x, var_0.a.x, -432f, 1169f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1000f, 1748f, -1291f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -419f, 909f, 598f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-713f, -522f, -361f, 1000f))))))));
    let var_3 = !(!select(select(!vec4<bool>(var_1.x, true, var_0.b, var_0.c.x), vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(false, true, var_0.c.x, true)), vec4<bool>(!var_1.x, var_0.c.x & true, true, var_0.a.x >= var_0.a.x), select(select(vec4<bool>(true, var_0.c.x, var_1.x, false), vec4<bool>(true, var_0.b, false, true), true), vec4<bool>(var_0.b, var_1.x, var_0.b, var_1.x), vec4<bool>(true, var_0.c.x, var_0.b, false))));
    global0 = true;
    global0 = !func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.yx, reverseBits(~42660u), -u_input.a.x);
}

