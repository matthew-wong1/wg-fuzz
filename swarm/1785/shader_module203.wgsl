struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 244u, 4294967295u), vec3<u32>(73710u, 135616u, 4294967295u), vec3<u32>(1u, 41749u, 0u), vec3<u32>(5613u, 0u, 43671u), vec3<u32>(70263u, 79789u, 14472u), vec3<u32>(1u, 38900u, 20954u), vec3<u32>(96078u, 10838u, 14870u), vec3<u32>(1u, 4294967295u, 12094u), vec3<u32>(0u, 1u, 18944u), vec3<u32>(24782u, 26682u, 74685u), vec3<u32>(65794u, 3756u, 102116u), vec3<u32>(61100u, 0u, 12166u), vec3<u32>(0u, 63380u, 48800u), vec3<u32>(40481u, 26017u, 0u), vec3<u32>(24017u, 1u, 4294967295u), vec3<u32>(25745u, 12882u, 0u), vec3<u32>(75123u, 0u, 15704u), vec3<u32>(34778u, 1u, 3352u), vec3<u32>(4294967295u, 53915u, 62913u), vec3<u32>(1u, 4180u, 9382u), vec3<u32>(33941u, 20951u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(39254u, 1u, 1u), vec3<u32>(1u, 34514u, 41203u), vec3<u32>(88692u, 0u, 59446u), vec3<u32>(4294967295u, 7806u, 47362u));

var<private> global1: array<f32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<vec3<u32>, 26>();
    var var_0 = u_input.c.x;
    return true;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global1 = array<f32, 19>();
    var var_0 = Struct_1(!all(vec4<bool>(true, true, true, true)), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))), ~select(vec4<u32>(u_input.b, u_input.e, 4294967295u, 55312u), ~vec4<u32>(4294967295u, 0u, 4294967295u, u_input.e), true) ^ ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 3982u, 93701u, 4294967295u), vec4<u32>(62363u, 17502u, u_input.b, u_input.b)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 977u, u_input.e), vec4<u32>(u_input.c.x, 33232u, u_input.e, u_input.e), vec4<u32>(u_input.b, 53438u, u_input.e, 4294967295u))) ^ vec4<u32>(~u_input.c.x, 13896u, u_input.c.x, 1u)), u_input.c.x);
    global0 = array<vec3<u32>, 26>();
    var var_1 = Struct_2(!var_0.b.x, Struct_1((u_input.c.x ^ max(1u, var_0.e)) >= min(~4294967295u, ~0u), vec2<bool>(func_3(abs(-67001i)), any(select(vec4<bool>(var_0.a, var_0.b.x, var_0.a, var_0.a), vec4<bool>(var_0.a, false, true, false), vec4<bool>(false, var_0.a, false, false)))), 1f, ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.e, u_input.b, 1u, 0u), ~var_0.d), max(max(var_0.e, u_input.e), ~34590u) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, var_0.e), ~vec2<u32>(var_0.e, u_input.e))));
    var_0 = Struct_1(false, vec2<bool>(!var_0.a, var_1.a), var_1.b.c, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.d, var_0.d), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 9386u, 54439u, 0u), var_1.b.d), 27181u, countOneBits(12963u)), abs(~vec4<u32>(var_0.e, 12959u, 15436u, u_input.b)), _wgslsmith_mod_vec4_u32(var_0.d, var_0.d) | (var_0.d | var_1.b.d)), _wgslsmith_sub_vec4_u32(var_1.b.d, ~var_0.d) & max(countOneBits(var_1.b.d), vec4<u32>(4294967295u, u_input.b, 1u, 4294967295u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(var_1.b.d) | ~vec4<u32>(1u, var_1.b.d.x, u_input.b, 32234u), vec4<u32>(abs(var_1.b.d.x), u_input.e >> (4294967295u % 32u), u_input.c.x, abs(var_1.b.d.x))) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(95088u, var_1.b.e, var_0.d.x, 1u), max(vec4<u32>(var_0.d.x, var_1.b.d.x, 62405u, 4294967295u), var_0.d)), var_1.b.d) % 32u));
    return ~(~var_1.b.d);
}

fn func_1() -> vec4<u32> {
    global0 = array<vec3<u32>, 26>();
    return func_2(-1073f) | ~(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, u_input.b), vec4<u32>(u_input.b, 1u, u_input.c.x, 11897u), vec4<u32>(u_input.b, 1u, u_input.c.x, u_input.b))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 26>();
    global1 = array<f32, 19>();
    var var_0 = Struct_1(arg_0.a, select(arg_0.b, vec2<bool>(arg_0.b.x, _wgslsmith_div_f32(arg_0.c, arg_0.c) < global1[_wgslsmith_index_u32(abs(u_input.e), 19u)]), arg_0.b), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 19u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.d.x >> (u_input.b % 32u), 19u)])), (countOneBits(func_2(arg_0.c)) ^ vec4<u32>(countOneBits(41372u), arg_0.d.x, ~1u, u_input.e)) >> ((~arg_0.d >> (firstTrailingBit(arg_0.d | arg_0.d) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.e);
    global1 = array<f32, 19>();
    var_0 = Struct_1(true, select(!select(var_0.b, select(var_0.b, var_0.b, vec2<bool>(true, arg_0.b.x)), arg_0.a), !vec2<bool>(var_0.b.x, all(vec4<bool>(false, false, false, true))), var_0.b.x), _wgslsmith_f_op_f32(-arg_0.c), vec4<u32>(max(0u, 1u), var_0.d.x, firstTrailingBit(arg_0.d.x), u_input.c.x | _wgslsmith_mult_u32(~u_input.e, var_0.e)), (u_input.b ^ 4294967295u) | (0u ^ _wgslsmith_add_u32(~4294967295u, arg_0.e)));
    return Struct_1(var_0.b.x, !(!(!(!vec2<bool>(var_0.a, true)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(var_0.d.x, 0u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_0.e, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, arg_0.d.x), vec2<u32>(var_0.d.x, 1u)), vec2<bool>(arg_0.a, true)), vec2<u32>(arg_0.e, firstTrailingBit(145094u))), u_input.c.x), countOneBits(0u) >> (var_0.d.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(1u);
    let var_1 = Struct_2(true, func_4(Struct_1(true, select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)), 258f, ~func_1(), u_input.b)));
    let var_2 = !(!var_1.b.b.x & any(vec3<bool>(true, true, func_3(-5792i))));
    var var_3 = var_1.b.b;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)), global1[_wgslsmith_index_u32(min(15587u, var_1.b.d.x), 19u)], false & (u_input.a >= 17850i)));
    let var_5 = select(select(select(var_1.b.b, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)] < -1000f, global1[_wgslsmith_index_u32(0u, 19u)] >= var_4), true), !(!vec2<bool>(true, var_1.a)), !var_3.x), !(!var_1.b.b), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.e, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, func_4(var_1.b).d.xzz), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 1u), var_1.b.e), var_1.b.d.x, ~_wgslsmith_add_u32(1u, var_1.b.e)) & ~vec4<u32>(~var_1.b.e, _wgslsmith_add_u32(0u, u_input.e), 47762u, select(var_0, u_input.e, var_5.x)), ~(~u_input.a), -(~vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.d.x), u_input.d.x, u_input.d.x)));
}

