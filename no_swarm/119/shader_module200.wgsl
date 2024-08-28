struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(-43808i, 1i, 0i, -24245i)), Struct_2(vec4<i32>(i32(-2147483648), 13536i, -17424i, -1i)), Struct_2(vec4<i32>(0i, 62939i, 1i, i32(-2147483648))), Struct_2(vec4<i32>(2147483647i, 1i, 40445i, 2147483647i)), Struct_2(vec4<i32>(0i, i32(-2147483648), -9595i, i32(-2147483648))), Struct_2(vec4<i32>(-49753i, -26933i, 64732i, -5287i)), Struct_2(vec4<i32>(-1i, 1i, 35661i, 1i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 16735i, 49342i)), Struct_2(vec4<i32>(-1i, 1i, -63200i, 1i)), Struct_2(vec4<i32>(36930i, 15810i, -1i, 71155i)), Struct_2(vec4<i32>(i32(-2147483648), 15139i, -1i, 32795i)), Struct_2(vec4<i32>(78260i, 40837i, -16266i, i32(-2147483648))), Struct_2(vec4<i32>(i32(-2147483648), -1i, 831i, 1i)), Struct_2(vec4<i32>(-36759i, 1i, 0i, 1168i)), Struct_2(vec4<i32>(25215i, 14550i, 0i, -56994i)), Struct_2(vec4<i32>(61133i, -10049i, -25262i, -1i)));

var<private> global3: array<vec4<bool>, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-191f, _wgslsmith_f_op_f32(1660f * 504f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1806f + 685f)))) - _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1794f))));
    var var_1 = max(arg_0.a, vec2<i32>(27094i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(arg_0.a), vec2<i32>(arg_2.a.x, arg_0.a.x)), 62269i, _wgslsmith_mod_i32(-arg_2.a.x, _wgslsmith_mult_i32(arg_2.a.x, 1i)))));
    var var_2 = arg_2.a.x;
    global3 = array<vec4<bool>, 5>();
    global2 = array<Struct_2, 16>();
    return !(var_0.x != _wgslsmith_f_op_f32(exp2(global0.x)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec3<f32>(-1160f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(739f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.x, 1000f, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1185f * global0.x) * 398f) - 167f)));
    let var_1 = u_input.c;
    var var_2 = Struct_2(vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b));
    var var_3 = Struct_2(var_2.a);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 1356f) + vec4<f32>(143f, -503f, 473f, -293f)))) - vec4<f32>(-729f, _wgslsmith_f_op_f32(global0.x - -756f), _wgslsmith_f_op_f32(exp2(var_0.x)), -2298f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, 965f, -375f, 285f)))) * vec4<f32>(global0.x, 340f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * global0.x), global0.x)), global0.x)));
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = select(u_input.a, _wgslsmith_div_vec3_u32(max(abs(u_input.a), ~(~vec3<u32>(u_input.a.x, u_input.d, 4294967295u))), _wgslsmith_sub_vec3_u32(vec3<u32>(34984u, u_input.a.x, 104088u), ~u_input.a) & ~u_input.a), vec3<bool>(func_2(Struct_1(~arg_0.a.xz, ~u_input.a), abs(countOneBits(1u)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(4294967295u), u_input.d >> (u_input.c % 32u)), 16u)], global3[_wgslsmith_index_u32(4294967295u, 5u)]), all(vec2<bool>(arg_1, true)), true));
    let var_1 = Struct_1(arg_0.a.zz, ~(~func_3()));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(429f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(0u, 16u)], false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.c, 16u)], false)) * global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(u_input.b, u_input.b, -15068i, -38082i)), true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(869f, global0.x, _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-2583f - -768f), _wgslsmith_f_op_f32(-global0.x)), vec3<bool>(true, any(vec2<bool>(true, false)), true)))))));
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(vec2<i32>(-2147483647i, -55261i))), select(vec2<i32>(-44484i, u_input.b), vec2<i32>(u_input.b, 63193i), true), ~abs(vec2<i32>(u_input.b, 18137i))), vec3<u32>(~u_input.a.x >> ((func_3().x ^ func_3().x) % 32u), 0u, ~countOneBits(~u_input.a.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-163f + 1015f)))))) * var_1.x);
    let var_3 = ~(reverseBits(vec4<i32>(8513i, ~0i, firstTrailingBit(u_input.b), 2147483647i)) >> (vec4<u32>(abs(~u_input.a.x), _wgslsmith_add_u32(~u_input.c, countOneBits(u_input.d)), ~var_2.b.x, func_3().x) % vec4<u32>(32u)));
    let var_4 = firstTrailingBit(~select(~reverseBits(vec2<u32>(u_input.d, u_input.d)), ~var_2.b.yx, global0.x != _wgslsmith_f_op_f32(f32(-1f) * -298f)));
    let var_5 = 19158i;
    var var_6 = all(vec2<bool>(true | (_wgslsmith_f_op_f32(456f + global0.x) < _wgslsmith_f_op_f32(var_1.x - -777f)), !(_wgslsmith_dot_vec4_i32(var_3, var_3) <= _wgslsmith_div_i32(var_2.a.x, 78943i))));
    let var_7 = vec3<bool>(true, firstTrailingBit(_wgslsmith_clamp_u32(var_2.b.x, abs(0u), 26126u)) > ~(~(~var_4.x)), !(!any(global3[_wgslsmith_index_u32(~4294967295u, 5u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32((vec2<i32>(48810i, -2147483647i) << (vec2<u32>(var_4.x, var_4.x) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(var_2.b.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(45119u, var_4.x), var_2.b.zx)) % vec2<u32>(32u)), select(abs(vec2<i32>(16149i, u_input.b)), var_2.a, var_7.yy)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-max(u_input.b, var_3.x), 1i), 914i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(777f + -124f)))))), -1326f);
}

