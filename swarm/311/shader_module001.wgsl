struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    global0 = arg_3;
    var var_0 = arg_3;
    var var_1 = Struct_1(vec3<f32>(-1869f, 1672f, 689f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 623f) - 1f)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, 0i, ~arg_0.c.x, -arg_0.c.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, 1i), global0.c)), all(select(arg_1.d, arg_0.d, vec3<bool>(var_0.d.x, var_0.d.x, true)))), global0.c), select(!(!select(vec3<bool>(arg_3.d.x, true, var_0.d.x), var_0.d, arg_3.d.x)), select(arg_0.d, !(!vec3<bool>(true, global0.d.x, true)), !all(vec4<bool>(false, true, arg_0.d.x, global0.d.x))), ((1000f > arg_2) | (global0.d.x != var_0.d.x)) & (arg_1.d.x & !arg_1.d.x)), min(~(~(~arg_1.e)), ~(~(~var_0.e))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-337f + 246f)))), var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-707f)) - -158f)), ~(-arg_3.c), global0.d, ~countOneBits(min(arg_0.e, vec4<u32>(arg_0.e.x, arg_0.e.x, 4294967295u, 1u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_3.e.x, 105170u, arg_3.e.x), vec4<u32>(arg_3.e.x, 72872u, 10634u, 4294967295u)) % vec4<u32>(32u))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(global0.a.x, var_0.b, -2263f), true))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(1224f, 161f, 125f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-271f)) * -702f)) - 352f), vec4<i32>(2147483647i, -1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(var_1.c.x, var_2.c.x)), -var_2.c.x & u_input.b, u_input.b), global0.c.x), !(!(!(!arg_3.d))), abs(vec4<u32>(_wgslsmith_sub_u32(~43418u, 31211u), arg_1.e.x, ~_wgslsmith_mod_u32(arg_0.e.x, 96505u), arg_3.e.x)));
    return select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))) > var_2.b, _wgslsmith_f_op_f32(-arg_0.b) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_2.a.x)))), vec3<bool>(false, true, !(!(var_0.c.x > -37280i))), !all(arg_0.d));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(abs(-190f))), -822f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + global0.b), global0.a.x, _wgslsmith_f_op_f32(step(global0.a.x, -604f))))), global0.a.x, vec4<i32>(-2147483647i, -_wgslsmith_mod_i32(global0.c.x, countOneBits(-2147483647i)), u_input.b, global0.c.x), !select(!func_3(Struct_1(vec3<f32>(global0.a.x, global0.a.x, global0.b), global0.a.x, vec4<i32>(global0.c.x, 2098i, 2147483647i, u_input.b), vec3<bool>(false, false, true), global0.e), Struct_1(vec3<f32>(global0.a.x, 1391f, global0.a.x), global0.b, global0.c, vec3<bool>(global0.d.x, true, false), global0.e), global0.b, Struct_1(global0.a, 1174f, vec4<i32>(0i, global0.c.x, 2147483647i, 6926i), vec3<bool>(false, false, false), global0.e)), vec3<bool>(global0.d.x, global0.d.x | false, 15298i < global0.c.x), any(!vec3<bool>(global0.d.x, true, global0.d.x))), global0.e >> (global0.e % vec4<u32>(32u)));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f))), _wgslsmith_add_vec4_i32(-(-vec4<i32>(u_input.b, u_input.b, global0.c.x, u_input.b) ^ global0.c), global0.c), vec3<bool>(global0.d.x, global0.d.x, any(!(!vec3<bool>(global0.d.x, true, true)))), global0.e);
    global0 = Struct_1(global0.a, global0.a.x, select(~vec4<i32>(global0.c.x, -1i, -16888i, u_input.b) << (global0.e % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x, ~40740i, -40919i, global0.c.x), reverseBits(countOneBits(global0.c))), !(!(!vec4<bool>(global0.d.x, false, false, global0.d.x)))), global0.d, global0.e ^ ~(~global0.e | global0.e));
    global0 = Struct_1(global0.a, -627f, ~vec4<i32>(-19303i, u_input.b, -3496i, _wgslsmith_clamp_i32(max(-1i, global0.c.x), -u_input.b, -16193i)), global0.d, ~vec4<u32>(0u, 65259u, 1u, firstTrailingBit(_wgslsmith_mult_u32(1u, global0.e.x))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), -442f, vec4<i32>(-u_input.b << (global0.e.x % 32u), 38818i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.c.xw, global0.c.yw, vec2<i32>(-2147483647i, global0.c.x)), global0.c.wx), select(-global0.c.zx, vec2<i32>(global0.c.x, u_input.b), false)), max(firstTrailingBit(u_input.b), -51723i)), !global0.d, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.e, global0.e, vec4<u32>(47495u, 1u, global0.e.x, global0.e.x)), global0.e), global0.e), vec4<u32>(_wgslsmith_add_u32(global0.e.x, _wgslsmith_clamp_u32(4294967295u, 1u, global0.e.x)), global0.e.x | 0u, _wgslsmith_div_u32(1u, u_input.a), abs(~u_input.a))));
    return select(select(vec4<bool>(!(global0.e.x < u_input.a), false, false, global0.d.x), select(!select(vec4<bool>(global0.d.x, false, false, true), vec4<bool>(true, false, global0.d.x, global0.d.x), global0.d.x), !(!vec4<bool>(global0.d.x, false, false, false)), true), !select(select(vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x), vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), false), !vec4<bool>(false, false, true, global0.d.x), false)), select(!(!(!vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x))), !select(vec4<bool>(false, global0.d.x, false, true), select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true)), vec4<bool>(global0.d.x, false, global0.d.x, true)), !(!(!vec4<bool>(global0.d.x, false, false, false)))), select(select(vec4<bool>(any(vec3<bool>(global0.d.x, global0.d.x, false)), !global0.d.x, any(vec4<bool>(false, true, global0.d.x, global0.d.x)), global0.d.x), select(!vec4<bool>(global0.d.x, true, global0.d.x, true), !vec4<bool>(false, true, false, global0.d.x), false), global0.d.x), select(vec4<bool>(true, global0.d.x, true | global0.d.x, any(vec4<bool>(true, false, true, global0.d.x))), vec4<bool>(true, true, global0.d.x & global0.d.x, true), !global0.d.x || global0.d.x), select(!vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), select(!vec4<bool>(true, false, global0.d.x, global0.d.x), select(vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), vec4<bool>(true, true, false, false), global0.d.x), !vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x)), global0.d.x)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = select(select(vec4<bool>(global0.d.x, false, arg_0.d.x, (5200u < arg_0.e.x) == all(vec3<bool>(arg_0.d.x, global0.d.x, global0.d.x))), vec4<bool>(arg_0.d.x, true, (global0.a.x < -1000f) || (732f > arg_0.b), true), func_2()), !(!vec4<bool>(!global0.d.x, all(arg_0.d), func_2().x, true)), select(!vec4<bool>(true, func_3(Struct_1(global0.a, 763f, vec4<i32>(-76337i, 39733i, 12353i, -2147483647i), arg_0.d, global0.e), arg_0, arg_0.a.x, arg_0).x, any(global0.d), arg_0.d.x), vec4<bool>(false, any(arg_0.d.zy) | (6262i == global0.c.x), true, true), !vec4<bool>(true, !arg_0.d.x, any(vec4<bool>(false, global0.d.x, arg_0.d.x, false)), global0.b < global0.a.x)));
    global0 = arg_0;
    return ~_wgslsmith_dot_vec4_u32(global0.e, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, -1159f, -(~global0.c), !vec3<bool>(any(select(vec2<bool>(global0.d.x, global0.d.x), global0.d.xy, global0.d.x)), ~global0.e.x <= ~global0.e.x, true), vec4<u32>(select(~func_1(Struct_1(vec3<f32>(1484f, global0.b, 908f), global0.a.x, global0.c, global0.d, global0.e)), global0.e.x, !func_3(Struct_1(vec3<f32>(global0.a.x, 253f, -105f), global0.b, vec4<i32>(-5611i, 0i, 37767i, 14358i), global0.d, global0.e), Struct_1(global0.a, global0.b, vec4<i32>(-2147483647i, global0.c.x, global0.c.x, u_input.b), global0.d, global0.e), -2328f, Struct_1(global0.a, 180f, global0.c, global0.d, global0.e)).x), abs(_wgslsmith_mult_u32(firstLeadingBit(0u), 4294967295u << (u_input.a % 32u))), u_input.a, u_input.a >> (~_wgslsmith_mult_u32(u_input.a, 0u) % 32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, _wgslsmith_f_op_f32(-433f * global0.a.x), _wgslsmith_f_op_f32(-347f - 1000f))) - vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_div_f32(-652f, 2642f))), 1252f, _wgslsmith_mult_vec4_i32(global0.c, global0.c), select(func_2().xzx, !(!func_2().wyx), global0.d), _wgslsmith_add_vec4_u32(vec4<u32>(global0.e.x, 12680u, 1u, u_input.a) << ((_wgslsmith_clamp_vec4_u32(global0.e, vec4<u32>(1u, 0u, global0.e.x, 2414u), global0.e) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 53735u), vec4<u32>(104745u, 1u, 0u, 60637u))) % vec4<u32>(32u)), vec4<u32>(~39817u, reverseBits(1u), global0.e.x, u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e.x, 13757u, 94034u, 30496u), countOneBits(global0.e), ~vec4<u32>(u_input.a, 0u, global0.e.x, global0.e.x)) % vec4<u32>(32u))));
    var var_0 = global0.e.x;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)) + global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1027f * -113f)))), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1193f, _wgslsmith_f_op_f32(trunc(-209f))))), vec4<i32>(-global0.c.x, 0i, abs(u_input.b), u_input.b | (global0.c.x ^ _wgslsmith_mod_i32(global0.c.x, global0.c.x))), vec3<bool>(true, ((46793u ^ global0.e.x) & 1u) >= max(firstTrailingBit(18631u), firstLeadingBit(39086u)), global0.d.x), ~vec4<u32>(~u_input.a, 36593u, _wgslsmith_sub_u32(4294967295u, ~94049u), abs(u_input.a) | abs(4294967295u)));
    var var_2 = -_wgslsmith_sub_i32(global0.c.x, var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.x, -5126i), vec2<i32>(2147483647i, global0.c.x)), vec2<i32>(-37204i, abs(-24109i))), var_1.c.wz), ~(~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), var_1.e.zxx) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(325f, var_1.b, 1000f, var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.a.x, var_1.b, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-791f, -750f, global0.b, -1114f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(317f, var_1.a.x, 413f, 768f), vec4<f32>(var_1.b, global0.b, global0.a.x, -1000f))), !vec4<bool>(var_1.d.x, false, var_1.d.x, var_1.d.x))))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-838f)), -1964f, _wgslsmith_f_op_f32(sign(-2070f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))))));
}

