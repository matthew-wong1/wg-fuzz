struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(8489u, 0u, 8151u, 46682u, 0u, 40919u, 0u, 4294967295u, 69491u, 59529u, 4294967295u, 28506u, 39082u, 53392u, 4294967295u, 78585u, 0u, 4294967295u, 0u, 0u, 1u, 8038u, 14405u);

var<private> global1: bool = true;

var<private> global2: array<i32, 17>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global1 = all(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, select(true, false, false), true), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, true))));
    let var_0 = Struct_1(~vec3<u32>(4294967295u, reverseBits(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 23u)], 23u)])), 1u), _wgslsmith_div_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(24223u, 23u)]), 23u)], true), 0u), -(vec3<i32>(-1i) * -abs(u_input.d.xwy)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(606f + -1251f), _wgslsmith_f_op_f32(select(-1164f, 537f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1864f))))));
    let var_2 = var_0;
    global1 = all(vec3<bool>(select(true, true, true), (-10991i <= var_0.c.x) && any(vec2<bool>(true, false)), true)) && true;
    return (min(~(28926i >> (0u % 32u)), _wgslsmith_clamp_i32(var_2.c.x << (var_0.a.x % 32u), global2[_wgslsmith_index_u32(u_input.b, 17u)], 71359i)) > abs(-14621i)) || any(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global1 = (-1i & _wgslsmith_sub_i32(40660i, ~countOneBits(u_input.d.x))) == -1i;
    let var_0 = u_input.d.zxw;
    var var_1 = select(vec3<bool>(!all(vec2<bool>(false, true)) || true, true, all(vec3<bool>(true, true, any(vec2<bool>(false, false))))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(27784u, 17u)] <= var_0.x))), func_3());
    var var_2 = countOneBits(11039u);
    var var_3 = true;
    return ~arg_0.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec3<f32> {
    global2 = array<i32, 17>();
    let var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(29436u, global0[_wgslsmith_index_u32(arg_1.b, 23u)], 45611u)), arg_1.a), func_2(firstLeadingBit(_wgslsmith_div_vec3_u32(arg_1.a, ~vec3<u32>(arg_1.a.x, global0[_wgslsmith_index_u32(arg_0, 23u)], 0u)))), -(~firstTrailingBit(u_input.d.yyw)));
    var var_1 = arg_1;
    var var_2 = arg_1;
    var_2 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-581f, 2865f, -156f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1230f, 959f, -1000f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-494f, 768f, 1000f), vec3<f32>(899f, 769f, 591f))), arg_3 && true))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = !(!any(vec4<bool>(true, false, false, false)) | true) & true;
    let var_1 = ~select(max(arg_3.a.x, global0[_wgslsmith_index_u32(u_input.b, 23u)]), reverseBits(u_input.a << (global0[_wgslsmith_index_u32(arg_3.a.x, 23u)] % 32u)) ^ 78593u, true);
    var_0 = false;
    global2 = array<i32, 17>();
    global0 = array<u32, 23>();
    return !(!vec2<bool>(1i < arg_0, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d & u_input.d;
    let var_1 = func_4(-1i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1437f, -2556f, -165f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 23u)], u_input.a, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.c), u_input.c.x, true)))))), vec4<f32>(1f, _wgslsmith_f_op_f32(-159f - _wgslsmith_div_f32(-884f, _wgslsmith_f_op_f32(524f - 159f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, 1515f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(238f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(round(-577f))))), Struct_1(vec3<u32>(_wgslsmith_mult_u32(4294967295u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46625u, 23u)], 23u)], 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])), u_input.a, (79205u ^ global0[_wgslsmith_index_u32(0u, 23u)]) | _wgslsmith_mult_u32(0u, 27038u)), u_input.a, var_0.xzx));
    global0 = array<u32, 23>();
    var var_2 = select(!select(select(!vec2<bool>(var_1.x, false), var_1, true), !func_4(u_input.e, vec3<f32>(-2246f, 918f, 602f), vec4<f32>(567f, 600f, -907f, -1635f), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], 126752u, 4294967295u), u_input.b, u_input.c)), func_4(-18022i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-177f, -1000f, 1807f)), vec4<f32>(2588f, 413f, -472f, 1958f), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(9161u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(28906u, 23u)]), 83842u, vec3<i32>(u_input.c.x, u_input.d.x, global2[_wgslsmith_index_u32(u_input.a, 17u)])))), select(var_1, var_1, var_1.x), func_4(i32(-1i) * -39263i, vec3<f32>(_wgslsmith_f_op_f32(1464f * 1131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-493f)) + _wgslsmith_f_op_f32(815f - 703f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1083f - 1108f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, -991f, 967f, -842f))), Struct_1(~vec3<u32>(6462u, u_input.a, 94263u), ~(59962u | u_input.b), var_0.wxx | vec3<i32>(36361i, -1i, var_0.x))));
    global0 = array<u32, 23>();
    var var_3 = abs(u_input.b);
    var var_4 = vec3<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(reverseBits(107783u), 23u)], abs(4294967295u)), 17u)], ~(-var_0.x << (global0[_wgslsmith_index_u32(select(func_2(vec3<u32>(0u, 37139u, 44372u)), 44811u, 16789i == global2[_wgslsmith_index_u32(4294967295u, 17u)]), 23u)] % 32u)), -(~12929i));
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(10331u & (u_input.a & global0[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_1(countOneBits(vec3<u32>(4294967295u, 0u, u_input.a)), _wgslsmith_div_u32(51428u, 4294967295u), vec3<i32>(-13320i, global2[_wgslsmith_index_u32(29195u, 17u)], 0i)), _wgslsmith_mult_i32(5595i, -var_0.x), all(vec4<bool>(var_1.x, var_1.x, false, var_2.x)))).x + -1439f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_5)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5))))));
}

