struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = !(!vec4<bool>(false, arg_0.a, arg_1.b, arg_1.a));
    global0 = -_wgslsmith_mod_i32(2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(61446i, 19411i, -28440i)) | -1i);
    return _wgslsmith_mult_u32(~u_input.a, 25784u) ^ u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = !(!arg_2.a);
    let var_1 = arg_2;
    var var_2 = all(arg_0.c.zy);
    var var_3 = Struct_1(true, arg_2.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d))));
    let var_4 = ~arg_0.e;
    return !vec3<bool>(!(!arg_0.a.x), false, all(vec3<bool>(!arg_2.b, var_0, var_0)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    return any(!vec3<bool>(true, false, arg_1.d));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(abs(0u), min(1u, arg_1)), ~vec2<u32>(abs(arg_1), ~12055u)), Struct_2(vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), true, false, ~0u == func_2(Struct_1(true, true, arg_2.x, arg_0.x), Struct_1(true, false, 0u, 483f))), vec4<i32>(0i, 1i, ~(-1i), abs(~(-1i))), func_3(Struct_2(vec4<bool>(true, true, true, true), -vec4<i32>(8102i, -5300i, 13094i, 1i), vec3<bool>(false, true, true), true, _wgslsmith_sub_i32(40667i, -44064i)), vec2<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 1i), _wgslsmith_sub_i32(-2147483647i, 1i)), Struct_1(true, false, ~u_input.a, _wgslsmith_f_op_f32(abs(arg_0.x)))), true, -firstTrailingBit(-2147483647i) ^ ~(i32(-1i) * -46237i)), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, false, true), true), -vec4<i32>(-4144i, ~(-21719i), -2147483647i << (arg_1 % 32u), i32(-1i) * -2147483647i), vec3<bool>(!any(vec4<bool>(true, false, true, false)), firstLeadingBit(arg_1) > 4294967295u, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-105f * arg_0.x), _wgslsmith_f_op_f32(min(-301f, 1386f)))) < _wgslsmith_f_op_f32(-506f * -636f), ~(~14678i >> (~u_input.a % 32u))));
    var var_1 = vec2<u32>(firstTrailingBit(u_input.b.x << (~10049u % 32u)), u_input.b.x);
    var var_2 = select(~(-vec4<i32>(2147483647i, abs(-709i), -29059i, _wgslsmith_add_i32(-537i, 38263i))), firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i)), 1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f - arg_0.x) - _wgslsmith_f_op_f32(1258f + arg_0.x))));
    var var_3 = vec2<u32>(arg_2.x, ~48756u) >> (~u_input.b % vec2<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x));
    return ~28551u << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    let var_0 = !(4294967295u >= u_input.a);
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(81553u, 16937u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 44261u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 445u, u_input.a, 56280u))), u_input.a), ~vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 897u), vec3<u32>(7339u, u_input.a, u_input.a)), func_1(vec4<f32>(-1713f, -1372f, -1145f, 1099f), u_input.a, vec2<u32>(u_input.b.x, 4294967295u))), abs(select(~vec3<u32>(u_input.b.x, 33846u, 74868u), ~vec3<u32>(13773u, u_input.a, 1u), !vec3<bool>(var_0, var_0, var_0)))) | max(abs(vec3<u32>(46339u, 4294967295u, u_input.b.x)) & _wgslsmith_add_vec3_u32(vec3<u32>(45196u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x) & vec3<u32>(16634u, 6116u, 31460u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(10362u, 57389u, 4294967295u)), _wgslsmith_div_vec3_u32(~vec3<u32>(8034u, 18190u, 48704u), ~vec3<u32>(4294967295u, u_input.b.x, 73508u))));
    let var_2 = true;
    var_1 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.b.x, ~u_input.a)), vec3<u32>(u_input.b.x, select(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.b.x, 4294967295u, var_1.x), vec4<u32>(1u, var_1.x, 7785u, 4294967295u))), _wgslsmith_mult_u32(2166u, var_1.x) | ~u_input.a, !select(false, var_2, true)), u_input.b.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(var_1.x, 4294967295u, var_1.x)), var_1.x, u_input.a), ~(~vec3<u32>(var_1.x, 1u, 36032u))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))), ~(~(~vec3<u32>(var_1.x, u_input.b.x, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(min(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(27694u, 1u, var_1.x, u_input.b.x), vec4<u32>(4707u, 4294967295u, u_input.a, 1u))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(71155u, 17104u, u_input.b.x, 0u), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u), vec4<u32>(84590u, 85845u, 29606u, var_1.x)))), ~min(firstLeadingBit(vec4<u32>(31430u, 77808u, 0u, var_1.x)), ~vec4<u32>(4294967295u, 76803u, 99731u, u_input.a)), vec4<u32>(_wgslsmith_add_u32(u_input.a, 73457u), u_input.a, _wgslsmith_clamp_u32(u_input.a << (var_1.x % 32u), ~4294967295u, ~var_1.x), 75436u)), -1i);
}

