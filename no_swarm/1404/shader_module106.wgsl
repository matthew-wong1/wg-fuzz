struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = Struct_2(global1.d, Struct_1(arg_0, u_input.a.x < 1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1523f - arg_0))), _wgslsmith_f_op_f32(round(1499f))), global1.c.b), Struct_1(-891f, !all(vec4<bool>(false, global1.d.b, true, true)) || true));
    global0 = !all(vec2<bool>((global1.d.b & global1.a.b) != global1.c.b, !(!global1.a.b)));
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1675f))), true), global1.b, global1.c, global1.d), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_0)), global1.c.b), global1.a, Struct_1(_wgslsmith_div_f32(arg_0, global1.d.a), global1.c.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a * -224f)), true)), Struct_2(global1.b, global1.d, Struct_1(_wgslsmith_f_op_f32(ceil(134f)), global1.a.b), global1.a));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x ^ u_input.a.x, abs(1u) >> (1u % 32u))), firstTrailingBit(firstTrailingBit(firstTrailingBit(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u)))));
    global0 = false;
    return _wgslsmith_f_op_f32(ceil(-2422f));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global1.a.a)), _wgslsmith_f_op_f32(exp2(global1.c.a)))), global1.b.b), global1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(477f))), true && all(vec4<bool>(global1.b.b, true, false, global1.b.b))), global1.b), Struct_2(Struct_1(756f, all(vec3<bool>(true, global1.a.b, global1.b.b))), global1.a, global1.d, Struct_1(global1.b.a, global1.b.b)), Struct_2(global1.a, global1.b, global1.b, global1.d));
    let var_1 = ~(~abs(select(4492u, _wgslsmith_mod_u32(0u, 31546u), true)));
    var var_2 = var_0.b;
    global0 = var_0.b.d.b;
    global1 = Struct_2(global1.b, Struct_1(234f, global1.c.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f + 756f))), any(select(vec2<bool>(global1.d.b, var_0.b.d.b), !vec2<bool>(false, global1.d.b), any(vec2<bool>(false, true))))), var_2.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f + 133f)) + global1.c.a)), _wgslsmith_div_i32(1i << (u_input.a.x % 32u), ~(-2147483647i)) <= max(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(35240i, 84313i, 1i), vec3<i32>(3275i, 0i, 2147483647i))));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = any(!(!vec4<bool>(!arg_0.b, any(vec2<bool>(global1.c.b, global1.d.b)), true | global1.a.b, u_input.a.x >= u_input.a.x)));
    global1 = Struct_2(func_2(), func_2(), global1.b, Struct_1(global1.c.a, true));
    var var_0 = Struct_2(Struct_1(arg_0.a, -835f > _wgslsmith_f_op_f32(-2108f - arg_0.a)), func_2(), func_2(), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), any(!vec2<bool>(arg_0.b, false))));
    var_0 = Struct_2(global1.b, func_2(), Struct_1(_wgslsmith_f_op_f32(select(-1934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f - -995f) + _wgslsmith_f_op_f32(func_3(var_0.b.a))), var_0.a.b)), global1.a.b), Struct_1(1118f, any(select(select(vec2<bool>(false, true), vec2<bool>(true, global1.b.b), vec2<bool>(true, true)), vec2<bool>(global1.a.b, var_0.a.b), vec2<bool>(global1.b.b, arg_0.b)))));
    let var_1 = -select(vec2<i32>(~(-1i), _wgslsmith_add_i32(-5667i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, max(-35184i, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(51993i, -54345i), -64123i), abs(vec2<i32>(21851i, -1i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), vec2<bool>(!arg_0.b, all(vec3<bool>(false, arg_0.b, true))));
    return !select(!vec3<bool>(!var_0.b.b, global1.b.b, true), select(select(select(vec3<bool>(true, false, arg_0.b), vec3<bool>(var_0.a.b, false, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b)), !vec3<bool>(global1.a.b, false, global1.c.b), var_0.a.b), select(vec3<bool>(global1.c.b, arg_0.b, global1.d.b), vec3<bool>(var_0.a.b, var_0.c.b, var_0.c.b), !vec3<bool>(false, global1.b.b, var_0.d.b)), vec3<bool>(true, true, true)), all(!select(vec2<bool>(false, var_0.d.b), vec2<bool>(var_0.a.b, var_0.a.b), arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!func_1(global1.a)) & !(!any(select(vec3<bool>(false, false, global1.a.b), vec3<bool>(true, global1.a.b, global1.a.b), vec3<bool>(false, global1.b.b, false))));
    global1 = Struct_2(global1.b, global1.c, global1.b, Struct_1(global1.a.a, true));
    var var_1 = Struct_3(Struct_2(global1.b, func_2(), func_2(), func_2()), Struct_2(func_2(), global1.c, global1.a, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(574f)))), select(var_0, true, true) | global1.a.b)), Struct_2(global1.d, Struct_1(_wgslsmith_f_op_f32(max(1814f, _wgslsmith_f_op_f32(-global1.d.a))), func_1(global1.b).x && func_1(Struct_1(-2102f, false)).x), global1.b, func_2()));
    var var_2 = global1.d.a;
    let var_3 = select(vec2<bool>(true || var_1.c.c.b, !(!var_1.a.c.b)), vec2<bool>(var_0, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-31605i, 1i), vec2<i32>(1i, 1i)) == 0i)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(135195u, ~_wgslsmith_sub_u32(4294967295u | u_input.a.x, u_input.a.x), u_input.a.x, max(~0u, ~4294967295u) & select(14916u, _wgslsmith_mod_u32(1u, 32645u), u_input.a.x < 26572u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1142f - 408f))) * 999f)));
}

