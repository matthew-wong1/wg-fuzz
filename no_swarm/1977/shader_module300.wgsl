struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-9333i, vec4<bool>(true, false, false, true), 341f, 3550i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    let var_0 = vec3<i32>(-abs(24198i), -1i, _wgslsmith_mod_i32(11545i, ~arg_2));
    global0 = Struct_1(-var_0.x, select(!global0.b, !vec4<bool>(true, u_input.a <= 4294967295u, false, !global0.b.x), global0.b), global0.c, -41290i);
    let var_1 = false || select(true, any(select(vec4<bool>(false, global0.b.x, global0.b.x, true), select(global0.b, global0.b, global0.b.x), vec4<bool>(false, false, true, global0.b.x))), all(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(904f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(364f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - 558f), _wgslsmith_div_f32(arg_1.x, -1911f)))));
    var var_3 = 22670i;
    return 25976i << (_wgslsmith_mod_u32(_wgslsmith_add_u32(31608u, ~(~u_input.a)), _wgslsmith_mult_u32(~28553u, ~4294967295u << ((4294967295u | u_input.a) % 32u))) % 32u);
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = ((global0.a >> (arg_0 % 32u)) & min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, global0.d), min(vec2<i32>(global0.d, -2147483647i), vec2<i32>(2147483647i, global0.a))), 25969i)) & global0.d;
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a, 50701i), vec2<i32>(26326i, global0.d)) | ~vec2<i32>(0i, global0.a)), _wgslsmith_sub_vec2_i32(abs(select(vec2<i32>(global0.a, -33785i), vec2<i32>(var_0, global0.d), false)), select(firstTrailingBit(vec2<i32>(var_0, global0.a)), vec2<i32>(var_0, -26585i), true))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, select(-24858i, _wgslsmith_clamp_i32(var_0, 23735i, var_1.x), true), var_1.x), vec3<i32>(_wgslsmith_mult_i32(global0.d, -4440i), ~(-var_1.x), -37230i)), select(!vec4<bool>(global0.b.x, true, !global0.b.x, true), global0.b, vec4<bool>(any(vec4<bool>(false, true, false, true)), !global0.b.x | (1u != arg_0), all(global0.b.zyy), !all(global0.b.zw))), _wgslsmith_f_op_f32(sign(1309f)), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, func_3(vec4<u32>(arg_0, 17922u, 1u, u_input.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-534f, -1730f, 609f))), -2147483647i) ^ -1i, ~(-(~0i))));
    let var_3 = arg_0;
    global0 = Struct_1(min(-14288i, -global0.a), vec4<bool>(global0.b.x, false, true, 1598f > _wgslsmith_f_op_f32(trunc(1107f))), -1590f, var_2.a);
    return global0.c;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(global0.a, !(!global0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * global0.c) + _wgslsmith_f_op_f32(func_2(16794u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 670f)), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(f32(-1f) * -335f)))))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-46411i, global0.d, -2147483647i, global0.a), vec4<i32>(12732i, global0.a, -1i, global0.d)), vec4<i32>(-1i, 2147483647i, 0i, 48174i))), global0.d, abs(global0.d)));
    global0 = Struct_1(27850i, select(vec4<bool>(!(true & global0.b.x), -var_0.d >= (global0.a >> (4294967295u % 32u)), global0.b.x, any(vec2<bool>(var_0.b.x, var_0.b.x))), vec4<bool>(!arg_1.x, false, false, !(global0.c != -2536f)), all(!var_0.b.xw)), _wgslsmith_f_op_f32(-1309f * var_0.c), _wgslsmith_mult_i32(_wgslsmith_mod_i32(570i, var_0.a), global0.d));
    var var_1 = var_0;
    let var_2 = !(!var_0.b.xzy);
    var_1 = var_0;
    return -944f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(682f)), 805f, _wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(952f)), global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) + _wgslsmith_f_op_f32(func_1(u_input.a, global0.b.wyy, 74737u))), global0.b.x))), _wgslsmith_sub_vec4_u32(select(~abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 28649u, u_input.a, 19535u), abs(vec4<u32>(u_input.a, 14340u, u_input.a, u_input.a))), global0.b.x), ~(~(~vec4<u32>(16133u, u_input.a, u_input.a, 1u)))), global0.c, global0.c);
}

