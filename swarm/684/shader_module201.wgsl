struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-315f, -1025f, 427f, -1000f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    var var_0 = 28606i;
    let var_1 = Struct_2(!vec3<bool>((global0.x >= global0.x) || arg_0, all(!vec4<bool>(arg_0, arg_0, true, false)), true));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x * 360f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -356f, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1667f, -451f, -1279f, global0.x), vec4<f32>(-2649f, 945f, global0.x, global0.x))))));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-739f, -544f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 1473f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 710f, -1000f, 136f) - vec4<f32>(-539f, -347f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -653f, -1316f) * vec4<f32>(456f, global0.x, global0.x, global0.x)))), select(var_1.a.x, false, all(vec2<bool>(arg_0, false)) || true))));
    return arg_1.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    let var_0 = ~(~firstLeadingBit(u_input.c.x));
    let var_1 = Struct_2(!vec3<bool>(_wgslsmith_clamp_i32(arg_2.x, u_input.b.x, 878i) < func_3(true, vec3<i32>(-52298i, -1i, arg_2.x)), arg_1, true));
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, arg_2.x, _wgslsmith_sub_i32(arg_2.x, -2147483647i), select(arg_2.x, -1i, arg_1))), -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_2.x, 4001i, 21483i), vec4<i32>(u_input.a.x, 0i, u_input.b.x, arg_2.x)), vec4<i32>(u_input.b.x, 17087i, -2147483647i, 1i))));
    let var_3 = var_1;
    let var_4 = var_1;
    return 4294967295u;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<bool>(true, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), true);
    let var_1 = Struct_1(!vec4<bool>(!(true == var_0.x), true, select(all(vec3<bool>(false, false, var_0.x)), true, var_0.x), ~arg_0.x != arg_0.x), _wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_f_op_f32(-1706f * -2078f));
    let var_2 = ~firstTrailingBit(vec4<u32>(countOneBits(0u), firstTrailingBit(671u), 73789u, ~u_input.c.x)) >> (~firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, arg_0.x)), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, arg_0.x) << (vec4<u32>(u_input.c.x, u_input.c.x, 10874u, 70389u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -1169f) * _wgslsmith_f_op_f32(global0.x * arg_1)), -305f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(463f, global0.x, global0.x, 1571f), vec4<f32>(global0.x, -684f, 813f, arg_1))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-485f, arg_1, global0.x, global0.x), vec4<f32>(1300f, global0.x, global0.x, 440f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1, 835f, global0.x) * vec4<f32>(global0.x, global0.x, arg_1, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - 997f)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))));
    return Struct_2(var_1.a.xww);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, 66923u)), _wgslsmith_add_u32(u_input.c.x, func_2(global0.xwx, true, u_input.a)), u_input.c.x), u_input.c & ~u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, 1000f, -638f, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2070f, arg_0, global0.x, global0.x))) - vec4<f32>(arg_0, arg_0, global0.x, arg_0)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-559f, 1891f, true)) - -953f) + arg_0))) + _wgslsmith_f_op_f32(-1363f * 860f));
    var_1 = global0.x;
    let var_2 = Struct_2(!select(var_0.a, vec3<bool>(var_0.a.x, func_4(vec3<u32>(41333u, 4110u, u_input.c.x), 383f).a.x, false), select(u_input.c.x > 4294967295u, true, !var_0.a.x)));
    return Struct_1(vec4<bool>(true, var_2.a.x, var_2.a.x, select(var_0.a.x, !all(var_2.a.xz), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -964f)));
    var var_1 = vec3<bool>(true, any(var_0.a), func_4(max(~u_input.c, u_input.c), -573f).a.x);
    var_0 = Struct_1(var_0.a, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(393f * 1000f), _wgslsmith_f_op_f32(global0.x + -1000f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(trunc(486f)))));
    let var_2 = ~(-(~(~vec4<i32>(2147483647i, 16634i, u_input.b.x, u_input.a.x)) ^ -vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)));
    var var_3 = func_1(-467f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-(~var_2.x), var_2.x ^ (2147483647i | var_2.x), _wgslsmith_add_i32(min(20130i, u_input.a.x), abs(0i)), _wgslsmith_clamp_i32(var_2.x | var_2.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, var_2.x, u_input.a.x)), -21203i)), vec2<i32>(func_3(true, var_2.wzw), countOneBits(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))) ^ min(~var_2.xw, min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_2.x), var_2.zy), abs(vec2<i32>(var_2.x, -6700i)))));
}

