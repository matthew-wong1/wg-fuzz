struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), arg_3.x, false)), _wgslsmith_dot_vec2_u32(~arg_1, ~vec2<u32>(41620u, 46893u)) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(22061u, 0u) << (arg_1.x % 32u), 1u) % 32u));
    global0 = select(arg_0, select(!arg_0, !(!arg_0), global0.x), select(arg_0, vec2<bool>(true & any(arg_0), true), arg_0));
    global0 = !vec2<bool>(false, all(vec4<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)), all(vec3<bool>(false, global0.x, false)), global0.x | arg_0.x, true)));
    var var_1 = var_0;
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    global0 = select(!vec2<bool>(all(select(vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(true, global0.x, arg_3, global0.x), vec4<bool>(false, arg_3, arg_3, false))), true), vec2<bool>(true, global0.x), vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_0 = !all(!select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), u_input.c.x > 0i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a));
    global0 = vec2<bool>(true, true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -213f)))), ~select(101013u, u_input.a.x | 14352u, !arg_3)), 25550u, arg_0.c);
    return arg_0.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> u32 {
    global0 = select(!(!vec2<bool>(any(vec3<bool>(true, true, false)), true)), vec2<bool>(1u < _wgslsmith_sub_u32(87808u, arg_0.x), global0.x), arg_1);
    global0 = !(!arg_1);
    global0 = !arg_1;
    let var_0 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(119f, 297f)), _wgslsmith_sub_u32(func_2(vec2<bool>(global0.x, false), vec2<u32>(4294967295u, u_input.d.x), vec4<i32>(1i, u_input.c.x, u_input.b.x, u_input.e.x), vec3<f32>(-257f, 1816f, 287f)), ~u_input.a.x)), ~(~_wgslsmith_mod_u32(28868u, 87776u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1517f)), arg_0.x)), 1535f, countOneBits(u_input.a.xy), arg_1.x);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> StorageBuffer {
    let var_0 = func_3(Struct_2(func_3(Struct_2(func_3(Struct_2(Struct_1(arg_2, arg_0), u_input.d.x, Struct_1(-1905f, u_input.a.x)), -527f, vec2<u32>(0u, 0u), global0.x), 1u, func_3(Struct_2(Struct_1(arg_2, arg_0), 0u, Struct_1(2648f, 15688u)), arg_2, u_input.d.zw, true)), _wgslsmith_f_op_f32(select(arg_2, -2428f, true)), vec2<u32>(~arg_0, 7428u), true), ~(~(~arg_0)), Struct_1(_wgslsmith_f_op_f32(507f * _wgslsmith_f_op_f32(-1558f + 1072f)), _wgslsmith_mult_u32(4294967295u | u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_1.zy, true);
    let var_1 = (all(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x)) && all(select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, false)), !global0.x))) && !(!(_wgslsmith_f_op_f32(-arg_2) > arg_2));
    var var_2 = select(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x >> (7410u % 32u), ~0i, -2147483647i, ~(-27248i)), select(-vec4<i32>(-19597i, u_input.b.x, -2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 2147483647i), vec4<i32>(u_input.b.x, u_input.c.x, -2147483647i, u_input.c.x)), var_1 || global0.x)), -(~(vec4<i32>(u_input.c.x, u_input.c.x, u_input.e.x, u_input.e.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.e.x, -2147483647i)))), -countOneBits(vec4<i32>(_wgslsmith_clamp_i32(u_input.e.x, u_input.b.x, u_input.b.x), -50284i, ~0i, 0i)), select(vec4<bool>(false, true, all(vec2<bool>(true, global0.x)), var_1), !select(vec4<bool>(global0.x, global0.x, var_1, true), !vec4<bool>(false, global0.x, var_1, var_1), var_1), select(vec4<bool>(var_1 | global0.x, select(false, var_1, global0.x), 2490u > u_input.a.x, true), select(vec4<bool>(true, var_1, global0.x, var_1), !vec4<bool>(true, var_1, var_1, global0.x), all(vec3<bool>(global0.x, var_1, false))), !all(vec4<bool>(true, true, global0.x, var_1)))));
    let var_3 = Struct_1(var_0.a, func_3(Struct_2(Struct_1(-289f, func_3(Struct_2(var_0, var_0.b, Struct_1(-295f, 21553u)), 841f, arg_1.yx, false).b), 2157u, Struct_1(1540f, 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), -1346f)), vec2<u32>(firstLeadingBit(31887u), ~(5821u >> (var_0.b % 32u))), all(!select(vec2<bool>(var_1, false), vec2<bool>(global0.x, global0.x), global0.x))).b);
    var var_4 = !any(vec3<bool>(false, var_1, !all(vec3<bool>(global0.x, true, true))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-376f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + -672f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2))), arg_2), _wgslsmith_dot_vec2_i32(var_2.zw, min(~(-u_input.e.yx), var_2.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(any(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), false)), !(~u_input.d.x != ~105160u)), !select(vec2<bool>(global0.x, global0.x), !(!vec2<bool>(global0.x, global0.x)), vec2<bool>(select(global0.x, global0.x, true), !global0.x)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(global0.x, false, global0.x))), vec2<bool>(true, !(1i < u_input.b.x))));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f * 3236f)) - _wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -516f))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -265f))), _wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(ceil(-473f)))), vec2<bool>(!(global0.x & global0.x) && true, global0.x)));
    let x = u_input.a;
    s_output = func_4(~func_1(vec4<u32>(46226u, 1u, 46288u, u_input.d.x) << (vec4<u32>(0u, 0u, 37164u, u_input.a.x) % vec4<u32>(32u)), !vec2<bool>(global0.x, global0.x)) >> (0u % 32u), max(~firstTrailingBit(vec4<u32>(u_input.d.x, 116079u, 0u, u_input.a.x)), ~u_input.d), var_0.x);
}

