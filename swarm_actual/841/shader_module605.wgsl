struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = true | !(true | select(u_input.b.x != u_input.d, arg_0.a.a, false));
    var_0 = all(select(select(!vec4<bool>(false, true, false, arg_0.a.a), select(select(vec4<bool>(true, true, arg_3.a, true), vec4<bool>(false, arg_3.a, arg_3.a, arg_3.a), vec4<bool>(arg_0.b, false, arg_0.a.a, arg_0.a.a)), vec4<bool>(true, arg_3.a, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_0.a.a, arg_3.a, true)), all(!vec4<bool>(false, arg_3.a, false, true))), vec4<bool>(_wgslsmith_f_op_f32(1575f - global0.a.c) >= global0.a.c, false, arg_0.b && arg_3.a, any(vec3<bool>(arg_3.a, arg_0.a.a, arg_0.b))), select(select(vec4<bool>(true, false, arg_0.b, false), select(vec4<bool>(false, arg_3.a, false, false), vec4<bool>(true, arg_3.a, false, true), false), arg_0.c.d < u_input.a.x), vec4<bool>(arg_3.a, true, true, !arg_3.a), select(!vec4<bool>(false, arg_0.a.a, true, false), vec4<bool>(arg_3.a, false, arg_3.a, arg_0.b), arg_0.a.a))));
    let var_1 = Struct_2(arg_2);
    let var_2 = arg_0.a;
    let var_3 = Struct_4(arg_0.a, any(vec2<bool>(false, true)), arg_0.c);
    return arg_0.c.a;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(~min(firstLeadingBit(-44403i), ~(i32(-1i) * -2147483647i)), -(~(~(~arg_2.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-581f)), 1000f))), u_input.e.x & func_3(Struct_4(Struct_3(false), false, Struct_1(-1i, 26933i, arg_0, 1i)), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) << (4294967295u % 32u), Struct_1(global0.a.d, -1i, _wgslsmith_f_op_f32(600f - global0.a.c), _wgslsmith_mult_i32(arg_2.a.a, u_input.e.x)), arg_1));
    global0 = arg_2;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~u_input.d >> (abs(6564u) % 32u), u_input.d) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, ~22689u, u_input.b.x, ~u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.b.x), ~vec4<u32>(u_input.d, u_input.d, 0u, u_input.b.x))) % 32u), ~u_input.b.x, 1u);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_0.c) + -176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.c))), 2565f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f + global0.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * global0.a.c), arg_2.a.c), arg_2.a.c), select(select(vec3<bool>(false, false, false), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, true, arg_1.a)), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), !vec3<bool>(arg_1.a, true, arg_1.a), !(!vec3<bool>(arg_1.a, arg_1.a, true))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(var_0.c - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.c, -203f, arg_1.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.c)))));
    var var_3 = 23455i;
    return select(select(!vec4<bool>(arg_1.a, true, arg_1.a && true, all(vec3<bool>(arg_1.a, true, true))), !vec4<bool>(!arg_1.a, true, arg_1.a, all(vec3<bool>(arg_1.a, true, true))), arg_1.a), !select(vec4<bool>(true, true, arg_1.a, !arg_1.a), !select(vec4<bool>(false, arg_1.a, true, true), vec4<bool>(arg_1.a, false, true, false), true), select(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), select(vec4<bool>(true, true, arg_1.a, false), vec4<bool>(true, arg_1.a, false, true), arg_1.a), !vec4<bool>(true, arg_1.a, true, false))), all(vec2<bool>(false, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_add_i32(-(~u_input.a.x), 1i), _wgslsmith_f_op_f32(f32(-1f) * -1202f), 25277i);
    let var_1 = max(vec4<i32>(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(global0.a.a, -2147483647i, arg_2, var_0.a), select(u_input.a, u_input.a, false), any(vec3<bool>(false, arg_1.x, false))), ~(~vec4<i32>(-2147483647i, -2147483647i, -53661i, 0i))), 9320i, -global0.a.a, select(i32(-1i) * -25373i, ~(~3115i), arg_1.x)), -select(-abs(vec4<i32>(1i, u_input.c.x, u_input.a.x, arg_2)), vec4<i32>(1i, ~0i, u_input.e.x | -27811i, var_0.a), (arg_3.x == arg_3.x) | true));
    global0 = Struct_2(Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-18786i, arg_2), vec2<i32>(15836i, arg_2)), -global0.a.d), ~firstTrailingBit(_wgslsmith_div_i32(var_1.x, u_input.e.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(select(global0.a.c, 1075f, arg_1.x))), 668f)), var_0.a));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(var_0);
    return any(!(!arg_1.xwy));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = !(func_4(~u_input.b, func_2(global0.a.c, Struct_3(arg_0), Struct_2(global0.a)), 19290i, vec2<f32>(global0.a.c, global0.a.c)) | arg_0) | arg_0;
    let var_1 = ~_wgslsmith_add_vec4_u32(u_input.b, ~(countOneBits(vec4<u32>(56274u, 1u, u_input.b.x, 45768u)) << (u_input.b % vec4<u32>(32u))));
    var var_2 = Struct_3(false);
    let var_3 = _wgslsmith_add_u32(u_input.d, firstLeadingBit(u_input.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global0.a.c + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -479f), 1000f)));
    return global0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yw, u_input.c), u_input.c), vec2<i32>(global0.a.b, func_1(true)))), u_input.a.ww);
    var var_1 = u_input.d;
    var var_2 = Struct_2(global0.a);
    var_1 = 0u;
    let var_3 = firstTrailingBit(_wgslsmith_mod_i32(-var_2.a.b, _wgslsmith_dot_vec2_i32(max(max(u_input.c, u_input.c), ~vec2<i32>(u_input.c.x, var_0)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.a, u_input.e.x), -u_input.a.wx, vec2<i32>(global0.a.d, 2147483647i)))));
    var var_4 = Struct_4(Struct_3(1i >= _wgslsmith_dot_vec2_i32(-vec2<i32>(808i, var_3), reverseBits(u_input.e.zy))), all(select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true))), Struct_1(firstTrailingBit(var_2.a.b), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a.c))))), ~24472i));
    let x = u_input.a;
    s_output = StorageBuffer(380f, vec2<u32>(~1u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.c.c + -908f))))) - global0.a.c), ~(98351u | _wgslsmith_div_u32(u_input.b.x, 45591u)));
}

