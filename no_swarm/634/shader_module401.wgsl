struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<i32>(8376i, -23083i));

var<private> global1: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> u32 {
    global1 = true;
    let var_0 = Struct_1(~1u, countOneBits(~min(vec2<i32>(u_input.d.x, global0.b.x) ^ vec2<i32>(0i, arg_0), u_input.a)));
    let var_1 = ~1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)));
    let var_3 = -vec2<i32>(-21190i, -arg_0);
    return abs(var_0.a);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(27463u) << (~countOneBits(select(1u, u_input.b, arg_0.x)) % 32u), vec2<i32>(_wgslsmith_sub_i32(-51431i, _wgslsmith_div_i32(-10766i, global0.b.x) & _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), _wgslsmith_dot_vec4_i32(u_input.d | vec4<i32>(-8352i, 12862i, 0i, u_input.e), vec4<i32>(global0.b.x, arg_1.b.x, 52292i, 0i)) << (global0.a % 32u)));
    let var_1 = !arg_0.x;
    global1 = false;
    let var_2 = Struct_1(_wgslsmith_div_u32(16977u, ~max(global0.a, 1u)), _wgslsmith_add_vec2_i32(reverseBits(~global0.b), -(vec2<i32>(arg_1.b.x, -2147483647i) ^ u_input.a)) << (select(~abs(vec2<u32>(arg_1.a, var_0.a)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 15551u), vec2<u32>(53254u, 1u), vec2<u32>(arg_1.a, arg_1.a)), vec2<u32>(0u, u_input.b) | vec2<u32>(4294967295u, 44586u)), select(arg_0, vec2<bool>(true, true), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_1, true), var_1))) % vec2<u32>(32u)));
    var var_3 = reverseBits(reverseBits(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0.a, var_0.a, var_0.a, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a, 48318u, 1455u, global0.a), vec4<u32>(u_input.b, var_2.a, var_2.a, 36463u))) | _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.a, 52001u, 7003u), vec4<u32>(arg_1.a, 1u, 9604u, 3145u))));
    return 12699u;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global1 = !(!(_wgslsmith_dot_vec3_i32(u_input.d.yzw, vec3<i32>(0i, global0.b.x, 21683i)) != (global0.b.x >> (arg_2 % 32u)))) || (u_input.d.x >= (~abs(arg_0) | -firstTrailingBit(1i)));
    var var_0 = ~(~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 7913u) & vec4<u32>(~global0.a, func_2(-1i, arg_3, vec3<u32>(0u, arg_2, u_input.b), vec3<f32>(arg_1.x, -1082f, -436f)), 51411u, firstLeadingBit(u_input.b))));
    global0 = Struct_1(4294967295u, u_input.a);
    var var_1 = !all(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), -arg_0 >= global0.b.x, -2147483647i != _wgslsmith_add_i32(u_input.e, 1i), true));
    var var_2 = Struct_1(u_input.b, abs(_wgslsmith_div_vec2_i32(arg_3, arg_3)));
    return Struct_1(_wgslsmith_div_u32(0u, ~(func_3(vec2<bool>(true, false), Struct_1(4294967295u, vec2<i32>(arg_0, u_input.e))) >> ((45867u << (u_input.b % 32u)) % 32u))), select(var_2.b | (select(vec2<i32>(30771i, 2072i), vec2<i32>(-26337i, arg_0), vec2<bool>(true, false)) ^ _wgslsmith_mod_vec2_i32(arg_3, vec2<i32>(-1i, -36594i))), -_wgslsmith_mult_vec2_i32(max(global0.b, vec2<i32>(u_input.a.x, var_2.b.x)), var_2.b), vec2<bool>(true, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -550f);
    global1 = !(~global0.a >= 59158u);
    return -global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(17659u), func_4(true, func_1(~u_input.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(780f, -1239f))), u_input.b | global0.a, vec2<i32>(global0.b.x, global0.b.x)), func_1(-8115i, vec2<f32>(796f, -1513f), abs(116621u), global0.b)) | ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), global0.b & u_input.a));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-874f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2167f + 547f) + _wgslsmith_f_op_f32(-397f * 429f)), _wgslsmith_f_op_f32(-421f * 251f)), vec3<f32>(-1246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f - 1011f) - _wgslsmith_f_op_f32(633f * -490f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1560f, -295f)), -1000f)), vec3<bool>(false, any(vec3<bool>(true, true, true)), true))));
    global0 = Struct_1(4294967295u, vec2<i32>(var_1.b.x, var_0.b.x));
    global1 = any(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, global0.b.x <= var_0.b.x, any(vec2<bool>(false, true))), !all(vec2<bool>(false, true))), vec3<bool>(false, all(vec2<bool>(true, false)) & (var_0.b.x > var_1.b.x), true)));
    var var_3 = var_0;
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, var_2.x))))), 1i, var_2.x, var_2);
}

