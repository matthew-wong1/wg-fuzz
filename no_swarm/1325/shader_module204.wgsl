struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(Struct_2(610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)) * _wgslsmith_f_op_f32(-776f - arg_2.b)), _wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_add_i32(min(~arg_2.c, arg_0.c), ~30500i), arg_1));
    var_0 = Struct_3(var_0.a);
    var var_1 = select(select(vec4<bool>(arg_0.c == ~arg_0.c, any(vec2<bool>(arg_0.d, arg_2.d)), !(arg_2.d | arg_1), any(!vec2<bool>(arg_1, arg_0.d))), vec4<bool>(all(select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.d, false, false), false)), false, all(vec2<bool>(false, false)) & true, false), !vec4<bool>(all(vec3<bool>(true, var_0.a.d, var_0.a.d)), arg_0.d, true, arg_0.d)), select(vec4<bool>(true, false || (false && var_0.a.d), true, any(!vec4<bool>(var_0.a.d, arg_1, arg_1, var_0.a.d))), !select(select(vec4<bool>(false, false, arg_0.d, arg_1), vec4<bool>(false, false, true, false), false), select(vec4<bool>(arg_0.d, var_0.a.d, arg_2.d, arg_1), vec4<bool>(arg_0.d, arg_2.d, false, arg_1), arg_2.d), false), select(vec4<bool>(false, true, true, true), !vec4<bool>(arg_2.d, false, var_0.a.d, arg_0.d), var_0.a.a <= _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !all(!vec3<bool>(arg_2.d, arg_2.d, false)));
    var var_2 = -1i;
    global0 = -966f > var_0.a.b;
    return select(all(vec4<bool>(true, ~u_input.a.x <= (u_input.d ^ u_input.a.x), false | (1000f != var_0.a.b), true & arg_0.d)), arg_2.d, true);
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, abs(74322u)), u_input.b >> ((~4905u ^ u_input.a.x) % 32u)), 27u)];
    global1 = array<Struct_1, 27>();
    var var_1 = vec4<bool>(true, func_3(Struct_2(_wgslsmith_div_f32(710f, -294f), -908f, _wgslsmith_sub_i32(1i, 15552i), !var_0.a), var_0.a, Struct_2(_wgslsmith_f_op_f32(857f - -741f), -438f, 1i, true)) != false, true, !any(!(!vec3<bool>(var_0.a, var_0.a, false))));
    var var_2 = ~(~var_0.b.yz);
    let var_3 = var_0.a;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -296f), -934f, 2147483647i, !var_0.a);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    global1 = array<Struct_1, 27>();
    var var_0 = func_2();
    let var_1 = select(!vec2<bool>(!(u_input.b != 1u), _wgslsmith_f_op_f32(max(arg_0.x, -475f)) == _wgslsmith_div_f32(arg_0.x, 374f)), select(vec2<bool>(!(var_0.d && var_0.d), !var_0.d & var_0.d), vec2<bool>(func_3(func_2(), var_0.d && false, Struct_2(arg_0.x, -488f, u_input.c.x, true)), var_0.d), vec2<bool>(u_input.b == u_input.a.x, !any(vec3<bool>(var_0.d, var_0.d, false)))), select(vec2<bool>(var_0.d, (1u >> (u_input.d % 32u)) <= 43113u), vec2<bool>(var_0.d, var_0.d), false));
    var var_2 = ~vec3<u32>(min(~u_input.d, _wgslsmith_clamp_u32(~0u, firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(42617u, 1u))), abs(~49737u) | u_input.d, reverseBits(u_input.d));
    let var_3 = select(!select(!vec4<bool>(false, var_1.x, true, false), vec4<bool>(true, false, var_1.x, true), !(!vec4<bool>(false, var_1.x, true, var_0.d))), vec4<bool>(false, !any(select(vec2<bool>(false, var_1.x), var_1, var_0.d)), select(!all(vec4<bool>(true, false, false, var_0.d)), true, !var_0.d), var_1.x == !func_3(Struct_2(169f, 643f, 1i, var_1.x), var_1.x, Struct_2(var_0.a, -1816f, var_0.c, true))), vec4<bool>(any(!(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))), any(var_1), !var_1.x | true, func_2().d));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global1 = array<Struct_1, 27>();
    var_0 = u_input.c.x;
    global0 = true | any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), true), vec4<bool>(true, true, func_1(vec2<f32>(-280f, -911f)), true), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_5(Struct_4(func_2()), Struct_3(func_2()), countOneBits(u_input.c.xz) ^ firstLeadingBit(u_input.c.yz), Struct_4(Struct_2(-451f, 1f, _wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(-2147483647i, u_input.c.x, 1i, 0i)), func_2().d)), global1[_wgslsmith_index_u32(0u, 27u)]);
    global1 = array<Struct_1, 27>();
    let var_2 = _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, var_1.e.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b), _wgslsmith_clamp_u32(87866u, 86565u, var_1.e.b.x)), 16225u), min(4294967295u, var_1.e.b.x), firstTrailingBit(countOneBits(u_input.d)));
    global0 = var_1.b.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-abs(var_1.c.x), max(var_1.c.x, min(var_1.d.a.c, -2147483647i) >> (~32658u % 32u))), ~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 71639u, 35912u, 1u), vec4<u32>(var_2, var_2, u_input.a.x, u_input.a.x)), ~vec4<u32>(19302u, u_input.a.x, u_input.b, 1u), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.a.a.d, var_1.e.a, var_1.b.a.d, false), vec4<bool>(var_1.e.a, false, var_1.d.a.d, false)), select(vec4<bool>(false, var_1.e.a, var_1.d.a.d, false), vec4<bool>(var_1.e.a, true, var_1.d.a.d, true), var_1.a.a.d), vec4<bool>(var_1.e.a, true, var_1.b.a.d, var_1.a.a.d))), select((_wgslsmith_mod_vec2_i32(var_1.c, vec2<i32>(-20729i, var_1.b.a.c)) ^ min(vec2<i32>(var_1.d.a.c, 0i), u_input.c.yx)) | var_1.c, vec2<i32>(firstLeadingBit(~u_input.c.x), min(-2147483647i, -30778i)), false));
}

