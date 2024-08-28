struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 36826u));

var<private> global1: array<u32, 26>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-342f, -1513f, -355f, 226f), vec4<f32>(-2564f, 664f, -1537f, -120f))) + vec4<f32>(-682f, -385f, -682f, 775f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1057f, -987f, -379f), vec4<f32>(1204f, -192f, -1000f, -1000f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1741f, 386f, 1672f, 392f) + vec4<f32>(1151f, -341f, 1331f, -967f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, -1623f, 507f, 303f)))), -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-20994i, u_input.b), vec2<i32>(1i, 30628i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(28843i, u_input.b), vec2<i32>(u_input.b, u_input.c)), -vec2<i32>(u_input.b, u_input.c)), 0i, ~u_input.a.x);
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1810f, var_0.a.x, var_0.a.x))))), vec2<i32>(~var_0.b.x >> (var_0.d % 32u), 2147483647i), _wgslsmith_mod_i32(-63016i << (~(~arg_1) % 32u), u_input.b), ~_wgslsmith_sub_u32(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a))));
    let var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0.a)), select(~vec2<i32>(~var_3.c, var_0.c >> (1u % 32u)), -(vec2<i32>(-1i) * -vec2<i32>(var_0.b.x, var_0.c)), vec2<bool>(_wgslsmith_f_op_f32(-var_3.a.x) <= var_2.a.x, all(vec4<bool>(false, false, true, false)))), ~var_2.c, var_0.d);
    return 42132i;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<u32> {
    global0 = array<vec2<u32>, 1>();
    return ~reverseBits(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(1262u, u_input.a.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 1u)], vec2<u32>(25353u, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])) | global0[_wgslsmith_index_u32(~u_input.a.x, 1u)]));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(abs(-597f)), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(floor(arg_3))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-349f, arg_3, arg_3, -1152f), vec4<f32>(352f, 1508f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 2476f, arg_0, 524f))))), vec4<f32>(_wgslsmith_f_op_f32(select(1405f, 1821f, true)), _wgslsmith_f_op_f32(max(768f, _wgslsmith_f_op_f32(f32(-1f) * -148f))), _wgslsmith_f_op_f32(round(arg_0)), -619f))), _wgslsmith_mult_vec2_i32(-select(vec2<i32>(u_input.c, 1i), vec2<i32>(-2147483647i, u_input.b), false), vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), func_2(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)]))) << (func_3(arg_0, -(~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.c))) % vec2<u32>(32u)), u_input.b, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<u32, 26>();
    global0 = array<vec2<u32>, 1>();
    global1 = array<u32, 26>();
    var var_0 = !arg_2;
    var var_1 = func_1(-527f, select(select(select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, false, true), !vec4<bool>(arg_2, false, false, arg_2)), select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, false, arg_2, arg_2), !arg_2), arg_0.a.x >= arg_0.a.x), !select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(false, true, arg_2, true), false), _wgslsmith_div_u32(1u, u_input.a.x) <= arg_0.d), select(select(!vec4<bool>(false, false, arg_2, arg_2), select(!vec4<bool>(arg_2, true, arg_2, arg_2), !vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(arg_2, false, false, arg_2)), arg_2), select(!select(vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2)), vec4<bool>(all(vec3<bool>(arg_2, arg_2, arg_2)), true, !arg_2, true), true), !(!(!vec4<bool>(arg_2, arg_2, false, false)))), -598f);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<u32>, 1>();
    return func_1(_wgslsmith_f_op_f32(select(func_4(Struct_1(arg_0.a, arg_0.b & arg_1, i32(-1i) * -91759i, min(0u, u_input.a.x)), -6211i, false, vec4<u32>(arg_2.x | arg_2.x, ~300u, 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))).a.x, _wgslsmith_f_op_f32(-func_4(arg_0, _wgslsmith_mult_i32(arg_1.x, arg_1.x), true, arg_2).a.x), all(vec4<bool>(true, true, true, true)))), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !(!any(vec4<bool>(true, false, true, false))), !(firstTrailingBit(arg_0.c) > min(-2147483647i, -2436i))), vec4<bool>(false, !all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, false)), !any(vec2<bool>(false, false)) || any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), -2064f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(_wgslsmith_f_op_f32(-1443f + _wgslsmith_f_op_f32(f32(-1f) * -383f)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -788f), -430f))), 1i, true, vec4<u32>(~4294967295u, ~global1[_wgslsmith_index_u32(99547u, 26u)], _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 1u))) ^ ~min(vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 0u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(-43183i, u_input.c) >> (_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec2<u32>(73816u, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])) % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 18436i), vec2<i32>(u_input.c, u_input.b))) >> (global0[_wgslsmith_index_u32(~(func_1(-1545f, vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), 1110f).d ^ 4294967295u), 1u)] % vec2<u32>(32u)), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(28648u, countOneBits(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(30733u, 26u)], 4294967295u))), u_input.a.x, global1[_wgslsmith_index_u32(firstLeadingBit(0u) | u_input.a.x, 26u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412f - _wgslsmith_div_f32(634f, var_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) - _wgslsmith_f_op_f32(min(-2176f, -498f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))))), var_0.a.x, var_0.a.yx, _wgslsmith_div_vec2_u32(u_input.a & ~(~vec2<u32>(global1[_wgslsmith_index_u32(4724u, 26u)], 0u)), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(~(~4294967295u), 1u)], u_input.a)));
}

