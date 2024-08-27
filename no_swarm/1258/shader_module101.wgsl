struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(85820u, 35246u, 17819u, 1u, 0u, 4294967295u, 1u, 1u, 4294967295u, 1638u, 0u, 48896u, 2363u, 6573u, 4294967295u, 0u, 32908u, 7298u, 38650u, 0u, 3367u, 34689u, 0u, 0u, 50755u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = firstLeadingBit(~select((vec3<u32>(15066u, 42316u, 14987u) ^ vec3<u32>(u_input.b, 1u, 1u)) & ~vec3<u32>(0u, u_input.a, 106163u), vec3<u32>(1u, select(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(45621u, 25u)], false), 45101u), vec3<bool>(false, true, any(vec3<bool>(false, false, true)))));
    global0 = array<u32, 25>();
    var var_1 = select(select(vec3<bool>(false, false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(false, true, true)), true, select(false, false, false)), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), false)), true), vec3<bool>(true, false, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)))), !vec3<bool>(true, !any(vec3<bool>(false, false, true)), true & (arg_1.a <= 1000f)));
    var var_2 = any(vec3<bool>(select(true, true, select(u_input.c.x < 0i, true, any(vec3<bool>(var_1.x, var_1.x, false)))), (_wgslsmith_mult_i32(u_input.c.x, -81285i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -50339i, 0i, -16120i), vec4<i32>(u_input.c.x, u_input.c.x, -23820i, u_input.c.x))) | all(var_1.xz), var_1.x));
    var_2 = var_1.x;
    return select(select(!select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, true), vec3<bool>(true, true, false))), select(select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, false, false))), !(!vec3<bool>(var_1.x, var_1.x, false)), true), var_1.x), vec3<bool>(!var_1.x, 33125u < var_0.x, select(false, any(vec3<bool>(true, var_1.x, var_1.x)), all(vec4<bool>(var_1.x, var_1.x, false, true)))), false);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1648f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1867f * 1534f), _wgslsmith_f_op_f32(min(1162f, 2362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-906f, -681f, false)))))));
    let var_1 = abs(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(9420u, 25u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~62526u, 25u)], 0u), countOneBits(_wgslsmith_add_u32(26640u, u_input.a)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), ~vec2<u32>(14624u, global0[_wgslsmith_index_u32(50401u, 25u)])))));
    global0 = array<u32, 25>();
    let var_2 = vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(-(i32(-1i) * -52619i), ~1i));
    global0 = array<u32, 25>();
    return select(vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), !func_3(var_0, Struct_1(_wgslsmith_f_op_f32(565f + 960f))), false & !all(vec2<bool>(true, false)));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1276f * -1044f) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(arg_0, arg_0))))), arg_0, !arg_1));
    global0 = array<u32, 25>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), var_0) - _wgslsmith_f_op_f32(-arg_0))));
    global0 = array<u32, 25>();
    var var_2 = -abs(u_input.c.x | firstLeadingBit(20377i));
    return Struct_1(484f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), arg_0.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, arg_1.a, true)))))), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, _wgslsmith_f_op_f32(var_0.a * -880f), var_0.a))));
    var var_2 = _wgslsmith_dot_vec3_u32(min(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a ^ global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 1u, global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 25u)]), 25u)]), _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 5648u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b, u_input.b)), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 25u)], 34086u))), select(_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) ^ vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])), ~select(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(26713u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), vec3<u32>(u_input.a, 4645u, global0[_wgslsmith_index_u32(u_input.a, 25u)]), true)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 1u) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]) % vec3<u32>(32u)), select(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87560u, 25u)], 25u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 25u)], 1u, global0[_wgslsmith_index_u32(11967u, 25u)]), vec3<bool>(false, true, false))), true));
    global0 = array<u32, 25>();
    return Struct_1(var_1.x);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1309f, -685f, 1356f, -853f))) - vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = func_5(func_4(_wgslsmith_f_op_f32(select(1f, var_0.x, any(func_2()))), !(_wgslsmith_div_u32(9553u, global0[_wgslsmith_index_u32(u_input.b, 25u)]) <= ~87890u)), func_4(_wgslsmith_f_op_f32(var_0.x - var_0.x), func_2().x));
    global0 = array<u32, 25>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-465f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1031f, -574f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(185f, var_0.x))))));
    let var_3 = !select(vec3<bool>(select(all(vec2<bool>(true, true)), true, 0u >= global0[_wgslsmith_index_u32(1u, 25u)]), true, func_2().x), vec3<bool>(func_2().x & true, 1i < u_input.c.x, _wgslsmith_div_f32(var_2.a, var_0.x) != _wgslsmith_f_op_f32(-1000f * var_2.a)), func_3(var_2, func_5(Struct_1(328f), Struct_1(var_1.a))));
    return ~select(12099u, _wgslsmith_mod_u32(reverseBits(0u), ~39742u), !(~u_input.a < 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    let var_0 = vec4<u32>(~_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mult_u32(1u, 1808u)), ~(~u_input.b) | firstLeadingBit(u_input.b), ~abs(~func_1()), ~firstLeadingBit(u_input.b));
    global0 = array<u32, 25>();
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-766f, 324f)))))), true);
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))) * var_1.a), true);
    global0 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstTrailingBit(~(~vec2<i32>(12951i, u_input.c.x))), u_input.c.zx), var_0.x, vec2<u32>(var_0.x, reverseBits(~global0[_wgslsmith_index_u32(var_0.x, 25u)]) & ~var_0.x), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), var_2.a);
}

