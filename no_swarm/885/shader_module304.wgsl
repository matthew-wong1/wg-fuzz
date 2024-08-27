struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(4911i, 34191i, 2147483647i);

var<private> global1: i32;

var<private> global2: array<Struct_4, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> f32 {
    var var_0 = ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(arg_0.a, ~vec2<u32>(4294967295u, arg_0.a.x)), 4294967295u, ~arg_1) | _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(22009u, arg_1, 1u, arg_1) >> (vec4<u32>(0u, arg_0.a.x, 40920u, 4725u) % vec4<u32>(32u))), ~(~vec4<u32>(10969u, 47434u, arg_0.a.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_0.a.x, 8642u, 4294967295u) ^ vec4<u32>(4219u, 61489u, arg_1, 0u), select(vec4<u32>(6812u, 72620u, 0u, arg_1), vec4<u32>(78504u, 55163u, 12487u, 17549u), vec4<bool>(arg_0.b.x, arg_0.c.x, true, arg_0.c.x)))), vec4<u32>(arg_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 0u), abs(vec4<u32>(arg_1, arg_0.a.x, arg_0.a.x, 0u))), _wgslsmith_div_u32(43253u, arg_1) << ((arg_0.a.x | 1u) % 32u), reverseBits(~arg_0.a.x)));
    var var_1 = Struct_3(-259f, _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(arg_0.a.x), abs(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 25745u, arg_1), ~vec3<u32>(arg_0.a.x, 9804u, var_0.x)), 53931u), ~vec4<u32>(1u, 2098u, 15900u, arg_1) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 16877u, 4294967295u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 27902u, 53855u), vec4<u32>(4294967295u, arg_1, var_0.x, 4294967295u)))), vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1164u, 5226u, 4294967295u, var_0.x), vec4<u32>(4294967295u, arg_1, 33419u, var_0.x)), _wgslsmith_mult_u32(0u, arg_1), select(40405u, 4294967295u, false)), var_0.x), i32(-1i) * -u_input.b, select(select(!select(arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.c.x), arg_0.b.x), !arg_0.c.yxz, vec3<bool>(true, arg_0.b.x, any(vec4<bool>(false, arg_0.c.x, arg_0.b.x, false)))), select(select(select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), arg_0.b, vec3<bool>(arg_0.b.x, true, false)), arg_0.c.wzz, arg_0.c.x), arg_0.b, !arg_0.c.x | arg_0.b.x), (reverseBits(-2147483647i) <= (global0.x << (52909u % 32u))) || true));
    global2 = array<Struct_4, 7>();
    var var_2 = vec4<bool>(true, !any(arg_0.c), !(!var_1.e.x), true);
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, abs(~(~27308u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.b ^ var_1.b, _wgslsmith_div_vec4_u32(var_1.b, var_1.b)), ~(var_1.b ^ vec4<u32>(48477u, 20215u, var_0.x, 28668u)))), countOneBits(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 909u, 1u, 35672u), firstLeadingBit(var_1.b)))), var_1.b);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-198f, -737f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))))));
}

fn func_2(arg_0: u32) -> i32 {
    global1 = 10330i;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(676f, 843f) + _wgslsmith_f_op_f32(f32(-1f) * -306f))))), _wgslsmith_f_op_f32(-1598f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(246f, -1977f, true))), _wgslsmith_f_op_f32(1f + 485f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(556f)) - -1647f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-314f, -442f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-2803f, _wgslsmith_f_op_f32(-663f - -926f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<u32>(arg_0, arg_0), vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), arg_0))))))));
    global0 = -select(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(-9504i, -2147483647i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, global0.x, -2147483647i, u_input.b)), select(vec4<i32>(81429i, 18799i, 0i, -21303i), vec4<i32>(-1629i, global0.x, -31133i, 15510i), vec4<bool>(false, true, true, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 11552i) >> (vec3<u32>(arg_0, arg_0, 1u) % vec3<u32>(32u)), ~vec3<i32>(15797i, 3933i, -8597i))), vec3<i32>(-1i) * -vec3<i32>(-18797i, global0.x, 2147483647i), true);
    let var_1 = var_0.xy;
    var var_2 = Struct_3(var_0.x, abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(15141u, 4294967295u, 20913u, 48319u), ~vec4<u32>(arg_0, arg_0, 16099u, arg_0) ^ ~vec4<u32>(11907u, 33918u, arg_0, 1u), abs(vec4<u32>(4294967295u, arg_0, 43297u, arg_0)))), min(select(vec2<u32>(4294967295u, 42991u) & vec2<u32>(arg_0, 2016u), ~abs(vec2<u32>(arg_0, arg_0)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0, 39074u), ~(vec2<u32>(arg_0, 9467u) | vec2<u32>(4294967295u, 56028u)))), _wgslsmith_mult_i32(u_input.b, u_input.b & 2147483647i), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, !any(vec2<bool>(false, false))), vec3<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 20480u, 9849u, 1u), vec4<u32>(arg_0, 4294967295u, 49260u, arg_0)) > _wgslsmith_mod_u32(17804u, arg_0), !any(vec3<bool>(true, true, true)))));
    return -1i;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global1 = arg_1.a.b.x;
    var var_0 = vec3<i32>(-func_2(~arg_1.a.a.x), ~(-arg_1.a.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1.a.b.zxx, vec3<i32>(49377i, 18489i, arg_1.a.b.x)), -9342i) << (min(arg_0.c.x << (arg_0.c.x % 32u), arg_0.c.x) % 32u)) >> (reverseBits(arg_1.a.a) % vec3<u32>(32u));
    global0 = vec3<i32>(u_input.b, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, func_2(arg_0.b.x), -u_input.a.x), -30295i & arg_1.a.b.x) << (arg_0.b.x % 32u), ~(-2147483647i) & _wgslsmith_mult_i32(-func_2(53998u), var_0.x));
    global2 = array<Struct_4, 7>();
    global2 = array<Struct_4, 7>();
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~max(1u, func_1(Struct_3(-1462f, vec4<u32>(4294967295u, 0u, 0u, 94421u), vec2<u32>(1u, 0u), global0.x, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<u32>(1u, 66564u, 0u), vec4<i32>(global0.x, -2147483647i, -1i, 0i)))) | max(82927u, 42275u)), func_1(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1761f, 714f)))), vec4<u32>(4294967295u, 1u, 0u, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(58020u, 0u), vec2<u32>(1u, 1u)), u_input.a.x, vec3<bool>(true, true, true)), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 8366u), vec3<u32>(1u, 1u, 16861u), vec3<u32>(1u, 0u, 49647u)), ~vec4<i32>(u_input.a.x, 23253i, global0.x, -2147483647i)))), 1u, max(~1u, 0u));
    global1 = firstTrailingBit(3285i);
    global2 = array<Struct_4, 7>();
    global2 = array<Struct_4, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2057f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1020f, -334f) + vec2<f32>(-687f, -196f))))));
    var var_2 = 178f;
    let var_3 = !select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), !(!(var_1.x <= -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1587f + -195f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x))))));
}

