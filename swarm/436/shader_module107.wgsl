struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(77804u, 11200u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = -_wgslsmith_sub_i32(~(i32(-1i) * -52382i), 0i);
    global0 = array<u32, 2>();
    let var_2 = firstTrailingBit(~_wgslsmith_mod_vec2_i32(-vec2<i32>(-27895i, -20738i), select(abs(vec2<i32>(-10204i, 832i)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(1941i, 2147483647i)), vec2<bool>(true, true))));
    global0 = array<u32, 2>();
    return true;
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = func_3();
    let var_1 = vec2<i32>(0i, _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(1i, 1i)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(11064i, 1i), -vec2<i32>(10996i, -39917i), vec2<i32>(-1i, 2631i)))));
    let var_2 = any(!vec2<bool>(any(vec3<bool>(false, false, var_0)), true));
    return Struct_1(firstTrailingBit(~select(firstTrailingBit(vec2<u32>(142474u, u_input.a)), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, 28783u), any(vec2<bool>(false, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1580f)))), !select(select(select(vec4<bool>(false, false, false, var_2), vec4<bool>(true, false, var_2, false), false), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, false, var_0, var_2)), !vec4<bool>(var_0, false, false, var_0)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_2, true, var_0), vec4<bool>(true, true, var_0, false)), false));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(30675i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(select(34998i, -28551i, arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-14184i, 7861i, 1i), vec3<i32>(-9636i, -1i, 70989i)), abs(-2147483647i), 1i), select(vec4<i32>(-25537i, 1i, -1i, 15149i) >> (vec4<u32>(u_input.a, 59494u, global0[_wgslsmith_index_u32(59152u, 2u)], 39575u) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, 16961i, 0i, 2147483647i)), true)), -(~(~(-2147483647i))));
    let var_1 = !all(arg_3.c.wyx);
    var var_2 = !func_2().c.yxz;
    var var_3 = var_0.x;
    return Struct_1(~_wgslsmith_div_vec2_u32(arg_3.a, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_3.a.x), arg_3.a)) & (~vec2<u32>(u_input.a, u_input.a) << (min(arg_3.a, vec2<u32>(0u, arg_3.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(592f))), arg_3.b)), func_2().c);
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1845f - _wgslsmith_f_op_f32(f32(-1f) * -816f)))), -228f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(706f, _wgslsmith_div_f32(-242f, 180f)))))));
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_1 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -36339i, 19349i, -1i) >> (vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(u_input.a, 2u)], 0u) % vec4<u32>(32u)), abs(~vec4<i32>(10254i, 1i, -709i, 0i))), ~(~(-2147483647i)), ~abs(-3174i) << (reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)]) % 32u)), func_4(var_0.x >= -322f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2349f, var_0.x) * var_0.x), 588f, func_2()), true, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 1u, 5595u) | vec3<u32>(global0[_wgslsmith_index_u32(26562u, 2u)], 4294967295u, 0u)), ~(~vec3<u32>(35470u, global0[_wgslsmith_index_u32(4294967295u, 2u)], 28754u)))), 2u)], Struct_1(vec2<u32>(select(u_input.a, global0[_wgslsmith_index_u32(65434u, 2u)], true) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)) % 32u), ~global0[_wgslsmith_index_u32(u_input.a, 2u)] >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20362u, 2u)], 2u)] & u_input.a) % 32u)), -456f, vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(var_1.e.a, 1000f, var_1.e.c);
    return var_2.a.x;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = abs(~(~_wgslsmith_sub_i32(43305i, 2147483647i)));
    var_0 = _wgslsmith_div_i32(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-47722i, arg_0.a.x, 0i) ^ vec3<i32>(arg_0.a.x, -22899i, arg_0.a.x), arg_0.a)), (~reverseBits(arg_0.a.x) >> (~reverseBits(arg_2.b.x) % 32u)) << (_wgslsmith_sub_u32(arg_0.b.a.x, _wgslsmith_mod_u32(select(arg_2.b.x, 0u, arg_0.e.c.x), min(arg_0.d, 56825u))) % 32u));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(-35561i), reverseBits(firstTrailingBit(arg_0.a.x) & arg_0.a.x)), arg_0.a.x);
    global0 = array<u32, 2>();
    var var_2 = Struct_2(arg_2.b, arg_2.a, !(!(!arg_3)));
    return func_4(false, arg_0.b.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)))))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(-(i32(-1i) * -2147483647i), 1i, countOneBits(12400i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(22722i, -10248i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-8979i, 9183i, 20282i), vec3<i32>(-8948i, 5328i, -2455i)) >> (u_input.a % 32u)));
    global0 = array<u32, 2>();
    let var_1 = func_5(Struct_3(var_0.wxx, Struct_1(min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(280f, 985f, false)), _wgslsmith_f_op_f32(-417f * 870f)), vec4<bool>(true, true, true, true)), false, ~global0[_wgslsmith_index_u32(func_1() ^ u_input.a, 2u)], func_2()), func_2(), Struct_2(~(~vec3<u32>(1u, u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 2u)], u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 2u)], 62688u, u_input.a))), true), true);
    let var_2 = func_5(Struct_3(_wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(-3789i, -1i, 1i)), -var_0.xwx >> (vec3<u32>(4294967295u, 79778u, 82163u) % vec3<u32>(32u))), Struct_1(var_1.a, var_1.b, !(!var_1.c)), func_2().c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(6643u, _wgslsmith_clamp_u32(var_1.a.x, u_input.a, _wgslsmith_div_u32(u_input.a, var_1.a.x))), 2u)], var_1), func_5(Struct_3(~vec3<i32>(var_0.x, 0i, 0i) << (vec3<u32>(1u, 1u, var_1.a.x) % vec3<u32>(32u)), func_2(), false != var_1.c.x, ~1u, var_1), func_2(), Struct_2(vec3<u32>(var_1.a.x, max(u_input.a, u_input.a), ~7992u), ~(~vec3<u32>(18475u, u_input.a, u_input.a)), any(var_1.c)), true | !func_3()), Struct_2(vec3<u32>(73208u, ~firstLeadingBit(u_input.a), global0[_wgslsmith_index_u32(67836u, 2u)]), select(~(~vec3<u32>(global0[_wgslsmith_index_u32(var_1.a.x, 2u)], global0[_wgslsmith_index_u32(56741u, 2u)], var_1.a.x)), ~vec3<u32>(30414u, var_1.a.x, 81687u), func_4(var_1.c.x, _wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_f_op_f32(var_1.b + 511f), func_4(var_1.c.x, var_1.b, var_1.b, var_1)).c.xxx), !var_1.c.x), false).c;
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_3 = _wgslsmith_f_op_f32(step(507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-545f, var_1.b) - var_1.b) - _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -990f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x);
}

