struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-487f, vec2<bool>(false, false), 1656f);

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(~vec2<i32>(_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, arg_0.x), vec3<i32>(arg_0.x, -2147483647i, -1i)))), vec2<i32>(_wgslsmith_mod_i32(arg_0.x & -1i, arg_0.x), arg_0.x) << (countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), ~u_input.a)) % vec2<u32>(32u)));
    var_0 = firstTrailingBit(vec2<i32>(~_wgslsmith_div_i32(arg_0.x & arg_0.x, 0i), select(_wgslsmith_mult_i32(abs(-13320i), arg_0.x), 1i, u_input.a.x < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 42461u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_1 = _wgslsmith_dot_vec2_i32(countOneBits(select(arg_0, vec2<i32>(0i, arg_0.x), select(!global0.b, !vec2<bool>(global1.b.x, true), global0.b))), -reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, var_0.x), vec2<i32>(-1i, -38192i) ^ arg_0)));
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -27465i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, -28086i, var_0.x), min(19895i, -1i)), ~(~var_0.x)), vec4<i32>(-2147483647i, var_0.x | var_0.x, arg_0.x, 433i), vec4<i32>(-_wgslsmith_mult_i32(arg_0.x, -1i), arg_0.x, arg_0.x, ~(~var_0.x))), abs(select(vec4<i32>(var_0.x ^ var_0.x, -23289i, 1i, firstTrailingBit(-1i)), vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, 28412i, arg_0.x), 0i, -arg_0.x), global0.b.x)));
    var var_3 = select(select(vec4<bool>(!(global1.b.x & false), false, true, true), !select(select(vec4<bool>(global1.b.x, true, false, false), vec4<bool>(global1.b.x, true, global1.b.x, true), vec4<bool>(true, true, false, true)), !vec4<bool>(true, global1.b.x, global1.b.x, true), true), global1.b.x), !vec4<bool>(-822f == _wgslsmith_f_op_f32(-global0.a), global0.b.x, global1.b.x, false), false);
    return _wgslsmith_f_op_f32(global0.c - global1.a);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = !vec3<bool>(!(true | any(vec3<bool>(false, arg_0.x, global1.b.x))), 1f >= _wgslsmith_f_op_f32(global0.a * -1000f), all(vec3<bool>(true, true, arg_0.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - global1.a) - _wgslsmith_f_op_f32(select(-1000f, 292f, arg_0.x)))))), vec2<bool>(var_0.x, false), _wgslsmith_f_op_f32(select(global1.a, 675f, !all(vec3<bool>(arg_0.x, var_0.x, var_0.x)))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(-33445i, -33677i)), ~(i32(-1i) * -2147483647i), ~abs(-2147483647i))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))) - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, var_2.c)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.c, 269f)), _wgslsmith_f_op_f32(func_3(vec2<i32>(var_3.x, 1i))))))), _wgslsmith_f_op_f32(-var_2.c));
    return var_1;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2(global1.b);
    global0 = func_2(select(func_2(select(!global0.b, !var_0.b, select(true, false, global0.b.x))).b, select(global0.b, global0.b, !global0.b), all(select(vec4<bool>(global0.b.x, true, true, false), select(vec4<bool>(var_0.b.x, global1.b.x, true, true), vec4<bool>(global1.b.x, false, global1.b.x, true), var_0.b.x), !vec4<bool>(global0.b.x, global1.b.x, false, var_0.b.x)))));
    global0 = func_2(!(!global0.b));
    global1 = var_0;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.c, 1255f), var_0.a, global1.b.x)))));
    return global1.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<f32>(142f, -694f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.c)) - -649f)), arg_2.a, global0.b.x & true)), _wgslsmith_f_op_f32(max(arg_3.c, 261f)));
    global1 = arg_2;
    let var_1 = arg_3;
    global0 = Struct_1(1232f, !vec2<bool>(global1.b.x | any(vec3<bool>(true, true, arg_0.x)), _wgslsmith_f_op_f32(arg_3.c + global1.a) <= 2359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.c)))) + global1.c)));
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(var_2.c - 751f)), var_2.c)) - 945f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) * var_1.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-311f, _wgslsmith_f_op_f32(-570f * global0.c), global1.b.x)) - var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), select(vec2<bool>(!(!global0.b.x), true), vec2<bool>(!(!global0.b.x), !(!global0.b.x)), global0.b.x), global0.a);
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~(u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_mod_u32(~61095u, 1u), 1u), vec4<u32>(17159u, firstTrailingBit(max(u_input.a.x, u_input.a.x)), 83271u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(49939u, 129964u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 4294967295u)) % 32u), 47961u)));
    var var_1 = vec4<u32>(~0u, countOneBits(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(61725u, 4294967295u, var_0.x, 8798u), vec4<u32>(u_input.a.x, 25252u, u_input.a.x, 64121u)), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(129343u, var_0.x, 4294967295u, var_0.x), vec4<u32>(33082u, var_0.x, var_0.x, 0u)))), 4294967295u, var_0.x);
    var_1 = vec4<u32>(abs(u_input.a.x), firstLeadingBit(u_input.a.x), 1u, 42603u);
    let var_2 = global0.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-global0.a)) + -881f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(588f, _wgslsmith_f_op_f32(func_4(func_1(), vec3<u32>(u_input.a.x, var_1.x, 1u), Struct_1(1247f, vec2<bool>(true, global1.b.x), global0.a), Struct_1(global1.a, global0.b, 1730f))), !func_1().x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.c, global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1826f, _wgslsmith_f_op_f32(func_3(reverseBits(vec2<i32>(0i, -2147483647i)) >> (~u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -643f)), countOneBits(_wgslsmith_clamp_i32(0i, 1i, -2147483647i)), ~vec2<u32>(~var_1.x, u_input.a.x) ^ vec2<u32>(var_1.x, reverseBits(u_input.a.x >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 343f, global1.c) + vec3<f32>(global0.c, global0.c, global1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, global1.a, global1.c)))))));
}

