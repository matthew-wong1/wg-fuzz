struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(181f, Struct_1(2147483647i), 24157u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = global0.b;
    let var_1 = vec4<bool>(true, !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false))), false, _wgslsmith_div_i32(1i, global0.b.a) <= (i32(-1i) * -u_input.c.x));
    var var_2 = true;
    var var_3 = Struct_3(-vec2<i32>(_wgslsmith_sub_i32(-var_0.a, -u_input.c.x), ~global0.b.a >> (countOneBits(arg_0.x) % 32u)), vec3<i32>(-17149i, max(56347i, var_0.a), _wgslsmith_dot_vec4_i32(max(reverseBits(u_input.c), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c)), vec4<i32>(-1i) * -u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -314f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))), global0.a, global0.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1018f)), -1015f, any(var_1))), _wgslsmith_f_op_f32(f32(-1f) * -460f), 1f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.d)) - _wgslsmith_f_op_f32(abs(1611f)));
}

fn func_2() -> bool {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 1u, 10994u, global0.c), ~global0.c, -2405f)), global0.a)), Struct_1(-4456i), abs(~_wgslsmith_add_u32(select(global0.c, global0.c, false), 1u)));
    global0 = Struct_2(global0.a, global0.b, firstTrailingBit(max(~_wgslsmith_clamp_u32(6943u, 89525u, global0.c), min(1u, _wgslsmith_div_u32(global0.c, 37606u)))));
    var var_0 = false;
    var var_1 = global0.b;
    var var_2 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(!any(vec3<bool>(true, false, false)), true));
    return true | ((false || var_2.x) & all(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, true), var_2.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = true | !func_2();
    global0 = Struct_2(-738f, Struct_1(u_input.a.x), ~(global0.c >> (4294967295u % 32u)) ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(~24334u, _wgslsmith_div_u32(global0.c, 36903u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, global0.c, 61581u, var_0), vec4<u32>(var_0, var_0, 0u, 73874u))));
    global0 = Struct_2(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, _wgslsmith_clamp_u32(36122u >> (global0.c % 32u), var_0, ~global0.c), ~abs(var_0), select(17147u, var_0, var_1)), _wgslsmith_clamp_u32(~abs(var_0), min(1u, 98166u) & ~global0.c, _wgslsmith_mod_u32(global0.c, 4294967295u & var_0)), _wgslsmith_f_op_f32(global0.a * -263f))), global0.b, ~(~_wgslsmith_div_u32(global0.c, var_0)) << (~var_0 % 32u));
    global0 = Struct_2(-426f, Struct_1(~global0.b.a), _wgslsmith_mod_u32(reverseBits(~global0.c) ^ global0.c, 14119u ^ var_0));
    return global0.b;
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = vec3<bool>(true, true, true);
    global0 = arg_0;
    var var_1 = arg_0;
    global0 = Struct_2(arg_0.a, arg_0.b, ~global0.c << (global0.c % 32u));
    var var_2 = -1861f;
    return ~vec4<i32>(abs(global0.b.a), ~(-firstLeadingBit(20520i)), var_1.b.a, var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, i32(-1i) * -7762i), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-14326i, global0.b.a, global0.b.a)), u_input.b.x ^ 5470i))), _wgslsmith_dot_vec4_i32(func_4(Struct_2(-1011f, func_1(), _wgslsmith_div_u32(global0.c, global0.c))), vec4<i32>(max(_wgslsmith_mod_i32(global0.b.a, -6150i), 1i), min(_wgslsmith_add_i32(1i, global0.b.a), u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-411i, global0.b.a, -41458i, 40836i), u_input.c), u_input.c), 55131i)));
    let var_1 = abs(~firstTrailingBit(vec2<u32>(75131u, global0.c)));
    let var_2 = true;
    var var_3 = var_2;
    var var_4 = var_1;
    let var_5 = global0.a;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1757f + -596f), _wgslsmith_f_op_f32(608f - 515f))) - _wgslsmith_f_op_f32(step(-295f, _wgslsmith_f_op_f32(f32(-1f) * -209f)))) * -100f), _wgslsmith_f_op_f32(func_3(vec4<u32>(_wgslsmith_mod_u32(var_4.x, 1u) & var_1.x, _wgslsmith_mod_u32(countOneBits(global0.c), _wgslsmith_div_u32(41342u, var_1.x)), firstTrailingBit(4294967295u), min(global0.c, var_1.x)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(global0.a * global0.a))))), _wgslsmith_f_op_f32(-1000f + 1023f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    var_4 = vec2<u32>(firstTrailingBit(~33332u), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(51204i, u_input.c.x << ((~global0.c << (27017u % 32u)) % 32u));
}

