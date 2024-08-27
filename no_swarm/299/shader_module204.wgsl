struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(i32(-2147483648)), Struct_4(-1i), Struct_4(-1i), Struct_4(8484i), Struct_4(0i), Struct_4(-3357i), Struct_4(-1i), Struct_4(34050i), Struct_4(2147483647i), Struct_4(75747i), Struct_4(1i), Struct_4(-9480i));

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<i32>(-1i, 1i), false, false), Struct_1(vec2<i32>(15598i, i32(-2147483648)), true, true)), Struct_2(Struct_1(vec2<i32>(0i, -1i), false, true), Struct_1(vec2<i32>(50135i, -44367i), true, false)), Struct_2(Struct_1(vec2<i32>(0i, -8724i), true, true), Struct_1(vec2<i32>(-421i, 2147483647i), false, false)), Struct_2(Struct_1(vec2<i32>(0i, 33244i), true, true), Struct_1(vec2<i32>(11288i, -7009i), true, true)), Struct_2(Struct_1(vec2<i32>(-43574i, i32(-2147483648)), true, true), Struct_1(vec2<i32>(-62021i, i32(-2147483648)), true, false)), Struct_2(Struct_1(vec2<i32>(24659i, -50642i), false, true), Struct_1(vec2<i32>(0i, -16557i), true, true)), Struct_2(Struct_1(vec2<i32>(33474i, i32(-2147483648)), false, false), Struct_1(vec2<i32>(i32(-2147483648), -35574i), true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> bool {
    global1 = array<Struct_2, 7>();
    var var_0 = arg_0.b.yy;
    var var_1 = arg_0.b;
    var var_2 = arg_0.d.x;
    var var_3 = true;
    return any(!select(vec2<bool>(true, arg_0.c.a.b), arg_3, arg_3.x));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_4, 12>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 12u)];
    var_0 = Struct_4(-24669i);
    global1 = array<Struct_2, 7>();
    var var_1 = vec4<i32>(arg_0, -14010i, 2147483647i, -21382i);
    return Struct_1(vec2<i32>(_wgslsmith_mod_i32(max(1i, arg_1.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(5025i, arg_0, -2147483647i, -11713i), vec4<i32>(23556i, 19798i, -13587i, 3059i))), arg_0), arg_2.x, !(((arg_2.x & false) && arg_2.x) && (false || any(arg_2))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    let var_0 = false;
    return func_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, 44112i) ^ vec3<i32>(_wgslsmith_div_i32(-6671i, u_input.b), u_input.b | u_input.b, u_input.b), vec3<i32>(_wgslsmith_sub_i32(-36000i, abs(u_input.b)), _wgslsmith_mult_i32(-u_input.b, u_input.b), u_input.b)), vec4<i32>(~(~_wgslsmith_sub_i32(-2147483647i, u_input.b)), u_input.b, max(u_input.b, u_input.b << (4294967295u % 32u)), u_input.b), select(vec4<bool>((u_input.b >> (0u % 32u)) >= u_input.b, var_0, var_0, var_0), !vec4<bool>(select(true, var_0, false), !var_0, var_0, func_2(Struct_3(-54532i, vec3<f32>(arg_0, arg_0, arg_0), Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.b), false, true), Struct_1(vec2<i32>(u_input.b, -13506i), false, true)), vec4<u32>(u_input.c, arg_1, u_input.c, 110570u), 85u), arg_0, vec2<u32>(26950u, u_input.d), vec2<bool>(false, false))), !vec4<bool>(arg_0 < 858f, var_0, var_0, !var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(abs(u_input.b) != select(-20118i, countOneBits(u_input.b), true)));
    let var_1 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1054f + 1053f), -1277f)))))), 56085u);
    var var_2 = vec3<bool>(true, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-446f, 367f)))), _wgslsmith_f_op_f32(step(1741f, -421f)), false)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -993f), 206f, any(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(ceil(-618f))));
    var_2 = vec3<bool>(var_2.x, true, any(select(!vec4<bool>(true, var_2.x, true, false), select(vec4<bool>(false, var_2.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_2.x, true, var_1.b), all(vec3<bool>(var_1.c, var_0.x, false))), all(vec3<bool>(var_1.b, var_0.x, true)))));
    let var_3 = u_input.c;
    global0 = array<Struct_4, 12>();
    let var_4 = Struct_5(Struct_3(-16884i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(505f, 1577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f * 1065f)), -931f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c << (0u % 32u)), 7u)], _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(67704u, u_input.c, u_input.c, 88307u), vec4<u32>(0u, u_input.d, 1u, u_input.a.x), vec4<u32>(1u, 74860u, u_input.a.x, 0u)), vec4<u32>(_wgslsmith_sub_u32(8757u, u_input.c), _wgslsmith_mod_u32(4294967295u, 1u), ~u_input.d, firstLeadingBit(1u))), abs(~(u_input.a.x ^ var_3))), !(!select(!vec3<bool>(var_1.c, false, true), !vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, false))));
    var var_5 = var_4;
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_5.a.b.xy), var_5.a.b.yz));
}

