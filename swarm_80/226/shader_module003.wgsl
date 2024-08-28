struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: i32 = -34630i;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    global1 = _wgslsmith_add_i32(17290i, _wgslsmith_sub_i32(49396i, u_input.a.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_f_op_f32(max(arg_1, 371f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(415f + 115f), 473f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 117f, -462f, arg_1)))), vec4<bool>(!global0.x, all(vec3<bool>(true, global0.x, false)), select(arg_0.x, arg_0.x, global2.x) != 14007u, true))));
    global1 = arg_3.a.x;
    var var_1 = (-(~vec4<i32>(2147483647i, 1i, arg_3.a.x, -1i)) ^ select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, arg_3.a), ~u_input.c, -arg_3.a), ~vec4<i32>(u_input.c.x, 9297i, arg_3.a.x, -20402i) & _wgslsmith_clamp_vec4_i32(arg_3.a, u_input.a, vec4<i32>(arg_3.a.x, arg_2, arg_3.a.x, 71808i)), !vec4<bool>(global2.x, global2.x, true, false))) & vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(1i, -68094i)), select(16533i, -1i, all(vec4<bool>(global2.x, global0.x, false, arg_3.b.x))), arg_3.a.x, ~max(_wgslsmith_clamp_i32(1i, -59133i, -7615i), ~22443i));
    global2 = vec2<bool>(-1176f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1))))), true || (false & global2.x));
    return select(select(vec3<bool>(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(-var_0.x), global2.x, global0.x || !global0.x), !arg_3.b, select(arg_3.b, vec3<bool>(arg_0.x != arg_0.x, any(vec3<bool>(true, true, true)), true), arg_3.b)), !select(vec3<bool>(true, true, true), arg_3.b, !select(arg_3.b, arg_3.b, arg_3.b)), arg_3.b);
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    global1 = u_input.b.x;
    global2 = select(!vec2<bool>(19477u == arg_0.x, all(select(global0.yz, global0.zx, global0.x))), !vec2<bool>(false, any(!vec3<bool>(global2.x, global0.x, false))), !global0.yx);
    global0 = !(!(!(!func_3(arg_0.xx, -316f, u_input.c.x, Struct_1(vec4<i32>(0i, -2147483647i, 41309i, u_input.a.x), vec3<bool>(true, global0.x, global2.x))))));
    global1 = 13578i;
    var var_0 = ~_wgslsmith_add_vec3_u32(~arg_0, ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, vec3<u32>(arg_0.x, 0u, 11138u)), ~arg_0));
    return vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.b.zz, reverseBits(u_input.a.zy))), countOneBits(~_wgslsmith_mult_i32(-15268i, 1i)), -60099i);
}

fn func_1() -> i32 {
    let var_0 = ~(func_2(select(vec3<u32>(36302u, 44825u, 0u), vec3<u32>(9298u, 4294967295u, 103340u), vec3<bool>(false, global2.x, true)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) ^ (-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -6096i, 0i), u_input.b) >> (vec3<u32>(1u, firstTrailingBit(0u), _wgslsmith_mod_u32(21689u, 46258u)) % vec3<u32>(32u))));
    global2 = vec2<bool>(!select(true, global2.x, !global2.x), !(!global2.x));
    var var_1 = _wgslsmith_mod_vec4_u32(~(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, 8682u, 43609u), vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(~0u, ~34369u, select(5890u, 12607u, global0.x), 1u)), vec4<u32>(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(32164u, 4294967295u, 102444u, 24424u), vec4<u32>(29515u, 1u, 76977u, 1u))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(63746u, 0u)), abs(~vec2<u32>(1u, 5730u))), _wgslsmith_mod_u32(select(1u, 1u, all(vec4<bool>(false, false, true, true))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(576u, 4294967295u, 71204u, 4294967295u), vec4<u32>(30565u, 1u, 16626u, 17822u)))), ~4294967295u));
    let var_2 = var_1.x;
    var_1 = ~(~(~(~(~vec4<u32>(var_1.x, 1u, 1u, var_1.x)))));
    return -23193i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -200f;
    global2 = !vec2<bool>(abs(_wgslsmith_mod_i32(u_input.a.x, -1i)) >= func_1(), all(!vec2<bool>(global2.x, true)));
    var var_1 = (max(u_input.b.xz, u_input.a.xw) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), ~firstTrailingBit(vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u))) << (reverseBits(vec2<u32>(max(0u << (1u % 32u), 4535u), reverseBits(47905u))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(378f, -421f)))), global0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1472f, -664f) - vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -1314f)))), vec2<f32>(var_0, 541f)))));
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(~(~u_input.c | (vec4<i32>(u_input.c.x, var_1.x, -4254i, -47012i) << (vec4<u32>(4294967295u, 0u, 4294967295u, 36157u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c.x, -2147483647i, 74695i, var_1.x), abs(u_input.c)) & vec4<i32>(2147483647i, ~var_1.x, _wgslsmith_mod_i32(var_1.x, var_1.x), _wgslsmith_mult_i32(26321i, var_1.x))), select(vec3<bool>(false, true, !global0.x), vec3<bool>(global2.x, true, !global2.x), select(select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, true, global0.x), vec3<bool>(global0.x, true, global0.x)), select(select(vec3<bool>(global2.x, false, true), vec3<bool>(true, false, false), global2.x), func_3(vec2<u32>(13077u, 15534u), 454f, 0i, Struct_1(vec4<i32>(var_1.x, -21263i, u_input.a.x, var_1.x), vec3<bool>(global2.x, global0.x, global0.x))), select(vec3<bool>(false, global0.x, global2.x), vec3<bool>(true, false, global0.x), true)), vec3<bool>(true, true, true))));
    global1 = var_1.x;
    global2 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -819f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -891f), false);
    let var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_1.x, 1i)), vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), -1811f, select(max(u_input.c.wz, var_3.a.yx), ~(~abs(var_3.a.zx)), true), _wgslsmith_mult_i32(-_wgslsmith_add_i32(var_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_4, var_4), u_input.c.yyy)), var_1.x));
}

