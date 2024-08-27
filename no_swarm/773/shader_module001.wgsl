struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_4, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, 1096f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(544f, global1.x) - vec2<f32>(global1.x, global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(exp2(global1.x))), global1.x))));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(518f + global1.x), -1108f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(global0.a - global1.x))), _wgslsmith_f_op_f32(exp2(global1.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(global1.x * -1000f)))), global0.a), all(vec3<bool>(true, !any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, false))))));
    var var_1 = vec3<u32>(global0.e.x, max(global0.e.x, 1u), 1u);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, var_0.x)))))));
    var var_2 = firstLeadingBit(29308u);
    return countOneBits(vec4<i32>(~(-4825i), arg_1.x >> (~0u % 32u), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i >> (arg_0 % 32u)), _wgslsmith_div_i32(arg_1.x, 1578i) << (0u % 32u))) >> (vec4<u32>(59777u, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, global0.e.x, 1u, global0.e.x), ~vec4<u32>(global0.e.x, 21282u, 43473u, 21003u)), firstTrailingBit(vec4<u32>(u_input.d, arg_0, global0.e.x, 4294967295u))), max(reverseBits(_wgslsmith_div_u32(36261u, 14175u)), firstLeadingBit(63687u ^ arg_0))) % vec4<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~(~_wgslsmith_dot_vec4_i32(func_3(4294967295u, vec2<i32>(global0.c.a, global0.b)), -u_input.e)));
    global2 = array<Struct_4, 25>();
    global2 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f * 877f)))));
    var_1 = global1.x;
    return Struct_1(2147483647i | firstTrailingBit(1i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-794f, global1.x, global0.a)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(-1f), !all(vec3<bool>(false, arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(-1f)), !vec3<bool>(select(arg_0.a | arg_0.a, all(vec3<bool>(false, true, arg_0.a)), true), true, all(!vec4<bool>(true, false, false, arg_0.a)))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -363f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, global0.a, -284f, var_0.x)), !vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)))))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1198f, global1.x)), 130f)), 851f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) + -565f)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(328f)), -1167f, -1000f)));
    var var_3 = vec3<f32>(994f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(2219f, var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_4 = arg_0;
    return Struct_4(select(arg_2, abs(-1630i << (max(global0.e.x, 48836u) % 32u)), true));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_5 {
    var var_0 = !(!((_wgslsmith_f_op_f32(-arg_2) >= -214f) && false));
    global2 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.e), -2147483647i);
    let var_2 = func_4(Struct_3(true), func_2(global0.e.x, 82604u <= (max(107578u, arg_0.e.x) << (_wgslsmith_add_u32(6645u, 1u) % 32u)), arg_0.b, false), ~(-2147483647i));
    var_0 = true;
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), global1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, arg_2))), vec2<f32>(global0.a, arg_2), false)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2158f, arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 1741f) - vec2<f32>(arg_2, 826f)))))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -760f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(arg_1, 49042u, arg_1.a).a.x, 180f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a))) - arg_0.a));
    var var_0 = arg_1.b;
    global1 = vec2<f32>(global1.x, -1287f);
    var var_1 = 1u;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global0.a))));
    return firstTrailingBit(arg_1.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(1622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f) - _wgslsmith_f_op_f32(906f - 283f)));
    var var_0 = 0u;
    let var_1 = (firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e.x, global0.e.x, u_input.b), vec3<u32>(global0.e.x, global0.e.x, 94984u) >> (vec3<u32>(u_input.b, global0.e.x, global0.e.x) % vec3<u32>(32u)))) ^ vec3<u32>(1u, func_5(func_1(Struct_2(global0.a, -72859i, global0.c, Struct_1(global0.b), vec2<u32>(u_input.d, global0.e.x)), u_input.d, 413f), Struct_2(global0.a, -42892i, global0.c, global0.d, vec2<u32>(u_input.b, u_input.d)), -860f, global0.e.x), select(u_input.d, u_input.d, true))) ^ ~min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.d), ~vec3<u32>(4751u, u_input.b, global0.e.x)), ~vec3<u32>(global0.e.x, global0.e.x, u_input.b));
    let var_2 = func_1(Struct_2(-202f, _wgslsmith_mult_i32(~(i32(-1i) * -29174i), u_input.e.x), Struct_1(global0.b), global0.c, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(124308u, 53255u)) & ~global0.e, vec2<u32>(10306u, 46226u >> (u_input.b % 32u)))), ~_wgslsmith_sub_u32(~(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.e.x, 60456u), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1805f * global1.x) + _wgslsmith_div_f32(348f, -238f))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(391f);
}

