struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(i32(-2147483648), -20404i, 2147483647i, -33017i, -1i, 1i, i32(-2147483648), -1i, 2147483647i, -1776i, 1i, 1i, -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global0 = array<i32, 13>();
    return ~vec2<u32>(u_input.b.x, ~45502u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(346f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-311f * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1261f))));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec4_i32(-abs(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], 24029i, global0[_wgslsmith_index_u32(0u, 13u)], u_input.a)), ~_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a, -29403i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 2147483647i, 0i), vec4<i32>(u_input.c, -1i, 2127i, -1i)))));
    let var_2 = var_0.x;
    return u_input.b.x >> ((select(~countOneBits(u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 1u, 17484u), u_input.b.yzy), ~u_input.b.wxz), true) ^ _wgslsmith_dot_vec3_u32(u_input.b.zyy, ~_wgslsmith_mult_vec3_u32(u_input.b.zyx, u_input.b.wyx))) % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_u32(~abs(u_input.b.yxz), u_input.b.yyy);
    global0 = array<i32, 13>();
    var var_1 = func_2(select(firstLeadingBit(arg_0.a.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >> (~59235u % 32u), arg_1) ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(65436u, u_input.b.x)), 1u), arg_0.a.x));
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(min(var_0.x, 57608u), arg_0.a.x), firstTrailingBit(func_3())), abs(~countOneBits(u_input.b.x)), ~max(~18607u, 1u), var_0.x));
    var_1 = ~var_2.a.zx;
    return vec4<bool>(true, arg_1, 31008u >= var_2.a.x, arg_1);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u) | (4294967295u >> (arg_1.x % 32u)), abs(arg_1.x), u_input.b.x), 5899u), 13u)], Struct_1(select(abs(arg_1.zz), abs(select(u_input.b.wz, vec2<u32>(u_input.b.x, 0u), arg_0.x)), arg_0.wy), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, -618f, 393f)))), Struct_1(vec2<u32>(9063u, _wgslsmith_div_u32(~arg_1.x, ~arg_1.x)), arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, _wgslsmith_f_op_f32(sign(2176f)), -313f))), min(18787u, ~(~457u) ^ _wgslsmith_add_u32(~4294967295u, u_input.b.x)));
    global0 = array<i32, 13>();
    let var_1 = vec2<bool>(!arg_0.x, true);
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(53168u, 43876u), ~u_input.b.x, ~var_0.b.a.x, var_0.d);
    let var_3 = Struct_2(countOneBits(countOneBits(_wgslsmith_sub_vec4_u32(arg_1, ~vec4<u32>(arg_1.x, 44644u, var_0.d, var_0.c.a.x)))));
    return vec3<f32>(_wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(var_0.c.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(928f))))), -805f, _wgslsmith_f_op_f32(select(var_0.b.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -288f))), all(vec4<bool>(arg_0.x && var_1.x, all(vec2<bool>(var_1.x, arg_0.x)), true, any(arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b.x ^ u_input.b.x, max(u_input.b.x, 4787u)), select(u_input.b.x >> (u_input.b.x % 32u), ~u_input.b.x, select(true, false, false)), ~(~3063u)) >> (~_wgslsmith_div_vec3_u32(u_input.b.yxy, u_input.b.zyy & u_input.b.zxz) % vec3<u32>(32u)), u_input.b.wyw);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(select(vec4<bool>(all(vec3<bool>(false, false, true)), select(false, false, false), select(false, true, false), select(false, false, true)), select(vec4<bool>(true, true, true, true), func_1(Struct_2(vec4<u32>(1u, 9633u, 1u, 4294967295u)), true), any(vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), ~_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_0, var_0, 30180u, 49431u)) | vec4<u32>(_wgslsmith_mult_u32(1u, 1u), ~u_input.b.x, ~4294967295u, ~32413u), ~(-(vec2<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(19497u, 13u)]) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(240f - 1054f), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(1000f * -735f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, -1476f), vec3<f32>(var_1.x, 750f, -639f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 1727f, -743f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 149f, var_1.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1429f, -1000f, 2928f)))))));
    let var_2 = vec4<bool>(true, !(true | all(vec2<bool>(true, true))), select(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false, true), true);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2217f, -774f, 2119f) - vec3<f32>(var_1.x, -360f, -613f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 959f, 330f)))), vec3<f32>(1471f, _wgslsmith_f_op_f32(exp2(var_1.x)), 1104f)) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -809f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, 1031f) * vec3<f32>(-1177f, 644f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1000f, 1000f) + vec3<f32>(-959f, var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_i32(~(vec2<i32>(32173i, u_input.a) & vec2<i32>(1i, u_input.c)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 13u)], u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(138923u, 13u)], -2147483647i)), vec2<i32>(-1i, u_input.a) << (vec2<u32>(4294967295u, 63850u) % vec2<u32>(32u))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(1000f, var_1.x)), 785f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_vec3_f32(func_4(var_2, vec4<u32>(var_0, var_0, 26274u, 95631u), vec2<i32>(global0[_wgslsmith_index_u32(0u, 13u)], u_input.c))).x), _wgslsmith_f_op_f32(select(var_1.x, 1f, true)))), var_0);
}

