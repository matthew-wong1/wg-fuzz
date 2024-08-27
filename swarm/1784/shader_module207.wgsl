struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_0.d.c;
    var var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(abs(arg_2)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 194f) * -569f), all(select(var_0.a.wwz, var_0.a.www, false)) & !any(!vec4<bool>(var_0.a.x, true, arg_0.a.a, true)), true);
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_clamp_u32(select(~(43464u & u_input.b), _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(var_2, 47258u, 1u)), true) & 1u, 4294967295u, u_input.b);
    var_3 = ~4294967295u;
    return vec2<bool>(1u > (_wgslsmith_mult_u32(56417u, abs(u_input.b)) ^ ((25866u << (var_2 % 32u)) << (arg_0.c % 32u))), arg_0.b.x == 1u);
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = select(vec3<bool>(any(func_3(Struct_4(Struct_2(arg_0, Struct_1(global0[_wgslsmith_index_u32(154u, 31u)], -443f), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 31u)], 1207f), vec3<i32>(18984i, u_input.c.x, u_input.c.x)), vec3<u32>(3392u, 75086u, u_input.a), 58513u, Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(0u, 31u)], -1113f), Struct_1(vec4<bool>(arg_0, arg_0, arg_0, arg_0), -929f), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(floor(169f)), u_input.c.x)), !(!(0u <= u_input.a)), select(func_3(Struct_4(Struct_2(false, Struct_1(vec4<bool>(false, arg_0, true, true), -2341f), Struct_1(vec4<bool>(false, arg_0, arg_0, arg_0), 1760f), vec3<i32>(u_input.c.x, u_input.c.x, -2754i)), vec3<u32>(u_input.a, u_input.a, 41205u), 0u, Struct_2(true, Struct_1(vec4<bool>(arg_0, true, false, true), 1049f), Struct_1(vec4<bool>(true, arg_0, arg_0, false), 133f), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), i32(-1i) * -70414i, _wgslsmith_f_op_f32(f32(-1f) * -675f), abs(2147483647i)).x, false, true && arg_0)), select(vec3<bool>(any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u)), 31u)]), !any(vec4<bool>(false, arg_0, arg_0, false)), arg_0), !select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, true), !vec3<bool>(false, arg_0, arg_0)), vec3<bool>(firstLeadingBit(34879i) == -u_input.c.x, select(true, u_input.a == 1u, true), arg_0)), true);
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    let var_1 = Struct_2(!all(select(select(var_0, var_0, true), vec3<bool>(true, arg_0, arg_0), all(global0[_wgslsmith_index_u32(u_input.b, 31u)]))), Struct_1(!select(global0[_wgslsmith_index_u32(countOneBits(47323u), 31u)], vec4<bool>(arg_0, arg_0, var_0.x, true), select(false, var_0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-735f)))))), Struct_1(select(global0[_wgslsmith_index_u32(31088u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(8524u, u_input.a)), 31u)], (false && var_0.x) && !arg_0), 875f), vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(4215i, 5208i)), u_input.c.x, 1i >> (_wgslsmith_div_u32(u_input.a, 34680u) % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 22562i, 34767i, 1i), -vec4<i32>(-40228i, u_input.c.x, u_input.c.x, 29838i)), _wgslsmith_add_i32(6915i, -(~2147483647i))));
    var var_2 = Struct_4(var_1, ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27149u, 77949u), ~vec3<u32>(34191u, u_input.a, 31561u)), (66083u | u_input.a) >> (u_input.b % 32u), _wgslsmith_div_u32(696u, u_input.a) << (~0u % 32u)), u_input.b, var_1);
    return var_2.b;
}

fn func_1() -> vec4<u32> {
    var var_0 = reverseBits(~_wgslsmith_div_vec3_u32(func_2(false), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 54718u, u_input.a), vec3<u32>(0u, 60850u, 1u))) | _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(u_input.a, 0u, u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), ~(~vec3<u32>(42372u, 42650u, u_input.b))));
    var var_1 = Struct_4(Struct_2(any(global0[_wgslsmith_index_u32(~(~var_0.x), 31u)]), Struct_1(!(!global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(min(-445f, -797f))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1593f, 382f)), -640f)), vec3<i32>(20624i, u_input.c.x, min(u_input.c.x, u_input.c.x) ^ _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_0.x, u_input.b), firstLeadingBit(vec3<u32>(0u, 0u, 39003u)))), reverseBits(u_input.a), Struct_2(true, Struct_1(select(!global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(max(u_input.b, 5171u), 31u)], any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(350f - -102f)))), Struct_1(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), func_3(Struct_4(Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(1u, 31u)], 103f), Struct_1(vec4<bool>(true, false, true, false), -466f), vec3<i32>(-39262i, u_input.c.x, u_input.c.x)), vec3<u32>(689u, var_0.x, 50484u), 9771u, Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(var_0.x, 31u)], 392f), Struct_1(vec4<bool>(true, false, true, false), 1179f), vec3<i32>(-2147483647i, 1i, u_input.c.x))), u_input.c.x, 1363f, -40946i).x), 119f), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), ~u_input.c), -33750i, ~(i32(-1i) * -7559i))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) * _wgslsmith_f_op_f32(round(1000f)))));
    var_0 = _wgslsmith_mod_vec3_u32(~(~select(vec3<u32>(var_1.c, var_1.c, var_1.c), var_1.b, vec3<bool>(true, true, var_1.a.c.a.x))), select(~countOneBits(vec3<u32>(var_0.x, u_input.a, var_0.x)), var_1.b, var_1.d.b.a.x)) & vec3<u32>(1u, ~53499u, var_1.b.x);
    var var_3 = 2147483647i;
    return vec4<u32>(u_input.a, min(1u, u_input.a) & ~(~u_input.a), 53328u, var_0.x);
}

fn func_4(arg_0: vec4<u32>) -> Struct_4 {
    return Struct_4(Struct_2(select(all(vec2<bool>(true, true)) && (3526u <= u_input.a), true, !select(true, false, false)), Struct_1(global0[_wgslsmith_index_u32(21128u, 31u)], 1366f), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f), 1000f)), firstLeadingBit(~(~vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)))), arg_0.zww, ~(u_input.b | ~arg_0.x), Struct_2(all(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, -25746i == u_input.c.x)), Struct_1(select(global0[_wgslsmith_index_u32(~72963u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], !global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -397f)))), Struct_1(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2659u, u_input.a, u_input.b), arg_0.xzx), 31u)], global0[_wgslsmith_index_u32(~u_input.b, 31u)], select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(4294967295u, 31u)])), -647f), select(min(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x) ^ vec3<i32>(u_input.c.x, u_input.c.x, 18375i)), _wgslsmith_mod_vec3_i32(vec3<i32>(9433i, 69222i, -3476i), vec3<i32>(1282i, -11240i, -1i)), all(vec4<bool>(true, true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~min(firstLeadingBit(min(vec4<u32>(1u, 0u, 15593u, u_input.b), vec4<u32>(u_input.b, 26863u, u_input.b, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 26454u, u_input.a), vec4<u32>(u_input.a, 71740u, u_input.b, u_input.a), vec4<u32>(17699u, 14884u, 4294967295u, 1u)) | func_1()));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(649f, -2419f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(192f, 137f))), vec2<f32>(-963f, -760f), true)), vec2<f32>(_wgslsmith_f_op_f32(-797f - var_0.a.b.b), _wgslsmith_f_op_f32(select(278f, 442f, false)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1133f, -299f) - vec2<f32>(var_0.a.c.b, var_0.a.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1012f, var_0.a.c.b) * vec2<f32>(var_0.d.c.b, -483f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.c.b, -430f))))))));
    let var_2 = firstTrailingBit(var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(var_1.x, -1122f), _wgslsmith_f_op_f32(abs(var_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, var_0.a.b.b, 205f, -881f))))), 1i, ~firstLeadingBit(_wgslsmith_mod_u32(108349u << (var_2 % 32u), ~16562u)));
}

