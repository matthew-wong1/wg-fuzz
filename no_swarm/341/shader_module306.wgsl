struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = ~arg_2.b;
    let var_0 = Struct_2(arg_2, -376f, _wgslsmith_mult_vec3_i32(select(-arg_2.a.xzz, u_input.b, true), arg_2.a.zwz), ~(arg_2.b & _wgslsmith_mod_u32(~1u, u_input.c.x)));
    let var_1 = select(!select(vec4<bool>(true, false, arg_0, arg_3), select(vec4<bool>(false, arg_3, arg_0, true), !vec4<bool>(arg_0, arg_0, false, true), false), vec4<bool>(arg_0, any(vec2<bool>(false, arg_0)), all(vec2<bool>(true, arg_0)), arg_3)), vec4<bool>(true, arg_3, any(!vec4<bool>(arg_0, arg_0, true, true)), arg_3), select(select(!select(vec4<bool>(arg_0, false, false, arg_3), vec4<bool>(false, arg_0, true, arg_3), arg_3), !vec4<bool>(false, arg_3, arg_3, arg_3), select(arg_0, true, true)), !vec4<bool>(arg_3, true, true, arg_0), select(select(!vec4<bool>(arg_0, false, true, arg_0), !vec4<bool>(arg_3, arg_0, false, arg_0), select(vec4<bool>(false, arg_3, true, false), vec4<bool>(false, arg_0, arg_3, arg_0), vec4<bool>(true, arg_0, false, true))), vec4<bool>(any(vec3<bool>(true, arg_3, false)), true, var_0.a.e >= var_0.b, true), vec4<bool>(true, false, all(vec3<bool>(arg_0, arg_0, arg_0)), !arg_3))));
    var var_2 = vec4<i32>(arg_2.a.x, arg_2.a.x, (min(arg_2.d.x << (arg_2.b % 32u), arg_2.a.x | arg_2.d.x) & -1i) << (arg_2.b % 32u), arg_2.d.x);
    var var_3 = ~abs(_wgslsmith_dot_vec3_i32(min(_wgslsmith_clamp_vec3_i32(var_0.a.a.xxx, var_0.a.a.zwx, vec3<i32>(var_0.a.d.x, var_2.x, -21459i)), u_input.b), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(33445i, arg_2.a.x, 0i)), var_2.x, var_0.c.x)));
    return -284f;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    return ~9120u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    global3 = true && (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 0u, 4294967295u)), ~(~vec3<u32>(23362u, 0u, 3174u))) > u_input.c.x);
    var var_0 = vec3<u32>(~(~u_input.c.x), func_4(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d, u_input.c.x, u_input.c.x, arg_0.b), vec4<u32>(1413u, 4294967295u, 1u, 26949u) ^ vec4<u32>(arg_0.b, 0u, u_input.c.x, 4294967295u))), 0i, Struct_2(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec3<f32>(arg_3.a.e, -640f, arg_0.e), Struct_1(vec4<i32>(0i, 0i, 37909i, -2147483647i), 33727u, 578f, arg_1.a.a.wz, arg_0.e), false))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.zyw, arg_3.a.a.zxx), arg_1.a.a.xzx), ~(4294967295u ^ arg_0.b))), 0u);
    global3 = true;
    var var_1 = 1f;
    let var_2 = -2147483647i;
    return select(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), !(!vec4<bool>(true, all(vec3<bool>(true, false, false)), arg_0.a.x > -63081i, arg_1.d >= 65839u)), all(vec3<bool>(true, all(vec2<bool>(true, true)), true)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = !vec4<bool>(false, all(!func_2(Struct_1(vec4<i32>(-5314i, arg_0.c.x, arg_0.c.x, arg_0.a.a.x), 4294967295u, arg_2.x, u_input.b.yz, 357f), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -314f, arg_0.a.a.xyy, u_input.c.x), arg_0.c.x, arg_0)), arg_3.x, true);
    global0 = array<Struct_1, 7>();
    global2 = countOneBits(u_input.a);
    global2 = ~_wgslsmith_clamp_i32(~_wgslsmith_div_i32(1i, -1i), reverseBits(~_wgslsmith_add_i32(-46385i, -1i)), select(_wgslsmith_add_i32(firstTrailingBit(0i), ~arg_0.a.d.x), 26041i, true));
    let var_1 = _wgslsmith_f_op_f32(-1967f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1690f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) - arg_0.b), !(838f > arg_2.x))))));
    return ~112273u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global2 = select(_wgslsmith_dot_vec3_i32(-u_input.b | (u_input.b ^ u_input.b), vec3<i32>(-2147483647i, 10930i >> (u_input.c.x % 32u), max(u_input.a, -1i))), u_input.a, all(vec2<bool>(true, all(vec4<bool>(false, false, true, true))))) | u_input.a;
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~(~func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -1408f, vec3<i32>(46700i, 40556i, 1i), 78302u), _wgslsmith_div_f32(784f, -1000f), vec3<f32>(-699f, 1358f, 1021f), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false))), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-500f * 1253f), -982f, true))) - -722f), vec3<i32>(abs(-u_input.b.x), -75962i, -_wgslsmith_mult_i32(u_input.d ^ -9704i, countOneBits(-42615i))), abs(_wgslsmith_add_u32(1u >> (u_input.c.x % 32u), reverseBits(4294967295u)) >> (_wgslsmith_clamp_u32(u_input.c.x, countOneBits(1u), _wgslsmith_div_u32(1u, u_input.c.x)) % 32u)));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(~0i, countOneBits(~(u_input.e & var_0.a.a.x))), max(u_input.b.zx, ~(vec2<i32>(u_input.b.x, 0i) | u_input.b.zz)) | u_input.b.zx);
    var var_2 = Struct_1(~reverseBits(abs(var_0.a.a)), (_wgslsmith_mult_u32(var_0.a.b, var_0.a.b) << (min(30179u, u_input.c.x) % 32u)) ^ var_0.a.b, 229f, select(-var_0.c.yy, -vec2<i32>(var_0.a.a.x, var_1.x), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], var_0, ~(-var_0.c.x), var_0).ww), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.b)))));
    let var_3 = Struct_1(~vec4<i32>(firstLeadingBit(~var_2.a.x), var_0.c.x, 23445i, ~(u_input.a & 5866i)), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(661f)) - 533f)), abs(var_0.c.yx), 211f);
    let var_4 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(58367u, 0u), vec2<u32>(13478u, var_3.b)), ~var_3.b << (var_2.b % 32u), abs(u_input.c.x | var_3.b), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(15906u, var_3.b, var_3.b, var_0.a.b)), select(vec4<u32>(0u, 1u, u_input.c.x, 1u), vec4<u32>(0u, 4294967295u, 46571u, var_3.b), vec4<bool>(true, true, false, false)))) & vec4<u32>(~(~58138u) ^ abs(var_0.d), _wgslsmith_mult_u32(reverseBits(var_0.d), ~1u) >> (reverseBits(~33272u) % 32u), 3160u, _wgslsmith_mod_u32(32794u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 43554u, u_input.c.x), vec3<u32>(u_input.c.x, 1u, var_3.b))));
    var var_5 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, ~(~0i)), select(-abs(vec2<i32>(var_0.a.d.x, -3379i)), var_2.a.zw, true)), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-496f)), ~var_4.wyx, _wgslsmith_clamp_vec3_u32(var_4.xwy, ~vec3<u32>(32322u, 24750u, ~var_0.a.b), vec3<u32>(var_0.a.b, ~var_3.b, var_2.b)), vec4<f32>(1162f, _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f + _wgslsmith_div_f32(-220f, 439f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - var_3.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.a.e + var_2.e)) * 1000f)), _wgslsmith_div_vec3_u32(vec3<u32>(71118u >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 588u, 15670u, var_2.b), vec4<u32>(1u, var_2.b, var_0.d, var_2.b)), 4294967295u), ~vec3<u32>(var_2.b, var_4.x, 33601u)) | var_4.yzx);
}

