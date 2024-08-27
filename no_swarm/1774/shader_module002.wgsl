struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = array<f32, 24>();
    var var_0 = ~(~18317u);
    let var_1 = -1i;
    var var_2 = ~u_input.b;
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 24u)];
    return firstLeadingBit(~(~vec2<u32>(18156u, u_input.b) << ((vec2<u32>(u_input.b, 1u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)))) | vec2<u32>(1u, 0u);
}

fn func_2() -> u32 {
    let var_0 = u_input.b;
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_1 = Struct_4(func_3(-280f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20600u, 24u)] - global0[_wgslsmith_index_u32(48116u, 24u)])))), vec4<bool>(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10076u, 24u)]) != _wgslsmith_f_op_f32(1678f - global0[_wgslsmith_index_u32(111904u, 24u)]), true, false), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false)), u_input.a <= firstLeadingBit(_wgslsmith_mod_i32(u_input.a, 0i)), false), !(!vec4<bool>(false, any(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, true)), true)), Struct_3(Struct_2(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(33324u, 24u)], global0[_wgslsmith_index_u32(34072u, 24u)], -189f, -1028f))), vec3<bool>(true, true, true)), -reverseBits(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))), abs(vec4<u32>(1u, ~9522u, 1u, ~83022u)), firstTrailingBit(firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.a)))));
    let var_2 = select(select(var_1.b, !select(var_1.b, var_1.d.a.a, var_1.d.a.a.x), var_1.c.x && var_1.c.x), var_1.b, all(vec2<bool>(all(select(vec4<bool>(false, false, var_1.d.a.a.x, false), var_1.c, var_1.c.x)), true)));
    return ~18967u;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> Struct_1 {
    let var_0 = arg_1.c;
    global0 = array<f32, 24>();
    let var_1 = arg_0.a.d.a.b.x;
    let var_2 = Struct_4(firstLeadingBit(arg_1.a.a) << (vec2<u32>(firstLeadingBit(arg_1.a.a.x), 43855u >> (func_2() % 32u)) % vec2<u32>(32u)), !vec4<bool>(arg_0.a.b.x & (arg_0.a.c.x && true), any(!vec3<bool>(false, var_0.a.x, arg_1.c.a.x)), select(arg_0.c.c.x, var_0.a.x, false), true), select(vec4<bool>(all(!vec2<bool>(arg_0.a.d.a.c.x, var_0.a.x)), true, arg_0.c.c.x, any(select(var_0.a.xy, arg_0.c.a.zy, var_0.a.x))), vec4<bool>(any(vec2<bool>(arg_1.c.c.x, true)), var_0.a.x, false, arg_0.c.a.x), !(!var_0.a.x) | (_wgslsmith_f_op_f32(638f - arg_1.a.d.a.b.x) <= arg_1.a.d.a.b.x)), Struct_3(Struct_2(select(select(var_0.a, vec4<bool>(arg_0.c.c.x, false, true, true), var_0.c.x), var_0.a, var_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(step(-1368f, arg_1.a.d.a.b.x)), arg_1.c.b.x, _wgslsmith_f_op_f32(min(arg_0.a.d.a.b.x, -1014f)), var_1), !vec3<bool>(false, false, arg_0.a.d.a.c.x)), arg_1.b, arg_1.a.d.c, min(vec3<i32>(u_input.a, 20920i, arg_0.b.x) & vec3<i32>(2147483647i, u_input.a, arg_1.b.x), arg_1.b) ^ arg_0.b));
    global0 = array<f32, 24>();
    return Struct_1(false);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = arg_0.a.d.c.wyw;
    let var_1 = Struct_3(arg_0.a.d.a, vec3<i32>(~4104i << (firstTrailingBit(~var_0.x) % 32u), ~(-2147483647i) & (i32(-1i) * -arg_0.b.x), arg_0.d), ~vec4<u32>(u_input.b, (arg_0.a.d.c.x ^ 0u) << (0u % 32u), ~(var_0.x >> (1u % 32u)), 52634u), arg_0.b);
    global0 = array<f32, 24>();
    var var_2 = Struct_2(!select(arg_0.a.c, arg_0.a.b, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.a.b + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1063f, arg_0.a.d.a.b.x, arg_1, 636f))))))), var_1.a.c);
    global0 = array<f32, 24>();
    return any(select(vec2<bool>(!(!var_2.a.x), !any(var_1.a.a)), vec2<bool>(all(var_1.a.c) != all(vec2<bool>(var_2.c.x, arg_2.a)), var_1.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 64147u, arg_0.a.d.c.x, 4294967295u), firstLeadingBit(arg_0.a.d.c)) > 20069u));
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_2 {
    global0 = array<f32, 24>();
    return Struct_2(!vec4<bool>(_wgslsmith_f_op_f32(-arg_1.c.b.x) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)]), !(!arg_1.a.d.a.a.x), arg_1.c.c.x, u_input.b != (4294967295u | u_input.b)), vec4<f32>(-2042f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(30982u, 24u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b.x + global0[_wgslsmith_index_u32(41852u, 24u)]) * 297f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.d.a.b.x - -1444f))), arg_1.c.a.x || arg_1.a.d.a.a.x)), global0[_wgslsmith_index_u32(0u, 24u)]), arg_1.c.c);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = Struct_3(arg_0, ~(-vec3<i32>(u_input.a, 22034i, u_input.a)) << (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(28758u, u_input.b), u_input.b), func_3(true & arg_3.a).x, u_input.b) % vec3<u32>(32u)), vec4<u32>(~(~_wgslsmith_sub_u32(u_input.b, u_input.b)), 90755u, ~_wgslsmith_clamp_u32(~u_input.b, 47370u, 1u), u_input.b), countOneBits(vec3<i32>(0i, -31102i, min(u_input.a, -1i))));
    let var_1 = Struct_2(var_0.a.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(var_0.c.x, 24u)], -306f, global0[_wgslsmith_index_u32(1u, 24u)], 1978f), var_0.a.b, var_0.a.a))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2299f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], -112f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -778f), var_0.a.b)))), ~var_0.d.x <= _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.d.x, 5433i, -1i, u_input.a)), max(vec4<i32>(-1i, -1i, var_0.b.x, 89372i), vec4<i32>(var_0.d.x, 0i, 1i, 1i))))), var_0.a.c);
    global0 = array<f32, 24>();
    return firstTrailingBit(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_1 = 1213f;
    var var_2 = select(0i, func_6(func_5(func_4(Struct_5(Struct_4(vec2<u32>(var_0, 14566u), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], -405f, -596f), vec3<bool>(false, false, true)), vec3<i32>(-5322i, u_input.a, u_input.a), vec4<u32>(var_0, u_input.b, u_input.b, var_0), vec3<i32>(10802i, 2147483647i, u_input.a))), vec3<i32>(u_input.a, -34398i, u_input.a), Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(global0[_wgslsmith_index_u32(var_0, 24u)], -1375f, 181f, -890f), vec3<bool>(true, false, false)), 2147483647i), 636f, func_1(Struct_5(Struct_4(vec2<u32>(var_0, u_input.b), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), Struct_3(Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(var_0, 24u)], -1857f, -472f), vec3<bool>(true, true, true)), vec3<i32>(u_input.a, u_input.a, -38238i), vec4<u32>(u_input.b, 58047u, var_0, 0u), vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(1i, 2147483647i, -1i), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 437f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(false, false, false)), u_input.a), Struct_5(Struct_4(vec2<u32>(u_input.b, 100301u), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -1653f, 769f), vec3<bool>(false, true, true)), vec3<i32>(u_input.a, u_input.a, -1i), vec4<u32>(4294967295u, 4294967295u, 45270u, 59521u), vec3<i32>(-29433i, 23150i, 16502i))), vec3<i32>(19952i, -25494i, 14218i), Struct_2(vec4<bool>(false, false, false, true), vec4<f32>(179f, global0[_wgslsmith_index_u32(u_input.b, 24u)], 1064f, -1482f), vec3<bool>(true, false, false)), u_input.a))), Struct_5(Struct_4(vec2<u32>(11519u, 20729u), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(-1183f, 1834f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(var_0, 24u)]), vec3<bool>(true, true, true)), vec3<i32>(-25133i, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<i32>(u_input.a, -69317i, 0i))), vec3<i32>(-38280i, u_input.a, 31318i) >> (vec3<u32>(u_input.b, 0u, 3801u) % vec3<u32>(32u)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], 501f, global0[_wgslsmith_index_u32(var_0, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(true, true, true)), -1i >> (u_input.b % 32u))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), Struct_1(select(true, false, false) == true), func_1(Struct_5(Struct_4(vec2<u32>(u_input.b, u_input.b), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), Struct_3(Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(646f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(54893u, 24u)]), vec3<bool>(true, false, true)), vec3<i32>(2759i, u_input.a, -26685i), vec4<u32>(4294967295u, 44481u, var_0, 0u), vec3<i32>(u_input.a, u_input.a, 1i))), vec3<i32>(1i, 44652i, u_input.a) << (vec3<u32>(var_0, 42839u, 83985u) % vec3<u32>(32u)), Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(586f, global0[_wgslsmith_index_u32(54112u, 24u)], global0[_wgslsmith_index_u32(var_0, 24u)], 369f), vec3<bool>(true, true, true)), -1i), Struct_5(Struct_4(vec2<u32>(35853u, 37946u), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(-802f, global0[_wgslsmith_index_u32(1u, 24u)], 570f, global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(true, true, true)), vec3<i32>(u_input.a, -1886i, u_input.a), vec4<u32>(var_0, var_0, var_0, 4294967295u), vec3<i32>(1i, u_input.a, u_input.a))), -vec3<i32>(1i, -1i, -2147483647i), func_5(false, Struct_5(Struct_4(vec2<u32>(0u, u_input.b), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(-401f, -1415f, 1631f, global0[_wgslsmith_index_u32(31165u, 24u)]), vec3<bool>(true, true, false)), vec3<i32>(-24001i, 15177i, u_input.a), vec4<u32>(44522u, 4294967295u, 1u, 48889u), vec3<i32>(11277i, u_input.a, u_input.a))), vec3<i32>(47987i, -1i, -69790i), Struct_2(vec4<bool>(false, false, true, false), vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 1091f, -684f, -1598f), vec3<bool>(false, false, false)), 0i)), i32(-1i) * -1i))), func_4(Struct_5(Struct_4(reverseBits(vec2<u32>(u_input.b, u_input.b)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), Struct_3(Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(global0[_wgslsmith_index_u32(100507u, 24u)], global0[_wgslsmith_index_u32(32451u, 24u)], 130f, -345f), vec3<bool>(false, false, true)), vec3<i32>(-16714i, u_input.a, 1i), vec4<u32>(u_input.b, 4294967295u, 3405u, u_input.b), vec3<i32>(u_input.a, u_input.a, -19418i))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-16175i, u_input.a, -18712i), vec3<i32>(u_input.a, -1i, 32426i)), vec3<i32>(15109i, -1i, 37522i), vec3<i32>(73182i, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-780f, -1335f, global0[_wgslsmith_index_u32(18354u, 24u)], 1253f) * vec4<f32>(-624f, global0[_wgslsmith_index_u32(var_0, 24u)], 141f, -910f)), vec3<bool>(true, true, true)), 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1689f)), _wgslsmith_f_op_f32(max(961f, -164f)), true)))), Struct_1(true)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, -21141i);
}

