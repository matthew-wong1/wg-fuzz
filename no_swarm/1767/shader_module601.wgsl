struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(56929u, 86816u, 98573u), vec3<u32>(48274u, 1u, 31802u), vec3<u32>(51561u, 4294967295u, 6220u), vec3<u32>(35912u, 82204u, 60876u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 4294967295u, 10579u), vec3<u32>(73590u, 4294967295u, 24574u), vec3<u32>(4294967295u, 25083u, 68146u), vec3<u32>(45733u, 1u, 55503u), vec3<u32>(29237u, 1u, 45062u), vec3<u32>(1u, 10693u, 1u), vec3<u32>(0u, 40716u, 1u), vec3<u32>(56455u, 4294967295u, 27493u), vec3<u32>(4294967295u, 4294967295u, 19159u), vec3<u32>(31861u, 1u, 134551u), vec3<u32>(40677u, 7606u, 28283u), vec3<u32>(1u, 28846u, 0u), vec3<u32>(4294967295u, 500u, 36563u), vec3<u32>(4294967295u, 13292u, 1u));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(16683i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-3379i, 14606i), vec2<i32>(1i, -1i), vec2<i32>(1i, -6846i), vec2<i32>(1i, 1i), vec2<i32>(0i, 16198i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-42139i, 0i), vec2<i32>(i32(-2147483648), 60044i), vec2<i32>(35243i, -20113i), vec2<i32>(341i, 47847i), vec2<i32>(-25361i, 54297i), vec2<i32>(45487i, 1i), vec2<i32>(2147483647i, -74336i), vec2<i32>(37667i, 2147483647i), vec2<i32>(63634i, 1i), vec2<i32>(-22528i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 48777i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(40503i, 2147483647i), vec2<i32>(-37486i, 22372i), vec2<i32>(26445i, -35842i), vec2<i32>(-48930i, 2147483647i), vec2<i32>(37531i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(52757i, -37157i), vec2<i32>(1i, 2147483647i));

var<private> global2: array<Struct_1, 6>;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = vec2<bool>(any(vec2<bool>(!all(vec2<bool>(arg_2.a, false)), !any(vec4<bool>(global3.a, false, true, arg_0.b)))), !all(!select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_0.a, arg_2.a), false)));
    var var_1 = vec4<u32>(1u, 7297u, 37374u, 35479u);
    let var_2 = vec3<i32>(max(0i, i32(-1i) * -1i), -1i, firstLeadingBit(max(_wgslsmith_mod_i32(~(-2147483647i), ~2925i), max(1i, min(14110i, 2147483647i)))));
    var var_3 = !var_0.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(236f, 595f), vec2<f32>(429f, 2164f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2042f, 2263f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-613f, -1000f) + vec2<f32>(-1830f, 425f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -621f), vec2<f32>(-675f, -439f))))))));
    return vec2<u32>(global3.d, ~var_1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(arg_2.a, false, ~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global3.d, global3.c, 1u), vec4<u32>(arg_2.d, arg_3.c, 22684u, global3.c), vec4<u32>(4294967295u, arg_3.c, arg_2.d, arg_2.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, 4294967295u, u_input.a.x, 6838u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global3.d, 24811u, 0u), vec4<u32>(u_input.a.x, global3.d, 0u, arg_2.d), vec4<u32>(0u, 37022u, 86997u, arg_2.c)))), arg_1);
    global1 = array<vec2<i32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1488f, 1258f), _wgslsmith_f_op_f32(f32(-1f) * -964f), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-848f, 326f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-699f))))), 180f, false));
    global2 = array<Struct_1, 6>();
    global2 = array<Struct_1, 6>();
    return var_0.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global2 = array<Struct_1, 6>();
    let var_0 = Struct_1(func_4(vec2<bool>(true, !(arg_1 <= 1i)), ~_wgslsmith_dot_vec2_u32(func_3(global2[_wgslsmith_index_u32(29335u, 6u)], u_input.a.zx, global2[_wgslsmith_index_u32(1u, 6u)], Struct_1(true, true, global3.d, 1u)), ~vec2<u32>(global3.d, 54505u)), Struct_1(false, global3.b, global3.c, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(66570u, 4294967295u)), _wgslsmith_clamp_u32(u_input.a.x, 9481u, global3.c))), global2[_wgslsmith_index_u32(func_3(Struct_1(any(vec4<bool>(false, global3.b, global3.b, global3.a)), true, global3.d, _wgslsmith_clamp_u32(4294967295u, 46561u, 1u)), u_input.a.zx | max(u_input.a.yy, vec2<u32>(global3.d, u_input.a.x)), Struct_1(!global3.a, true, global3.d, global3.c << (4294967295u % 32u)), global2[_wgslsmith_index_u32(func_3(Struct_1(false, global3.b, 56688u, 5930u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(39098u, u_input.a.x)), Struct_1(false, global3.a, 1u, u_input.a.x), Struct_1(global3.a, true, 1u, 30442u)).x, 6u)]).x, 6u)]), global3.b, u_input.a.x, _wgslsmith_add_u32(31246u, firstTrailingBit(~4294967295u << (u_input.a.x % 32u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 521f)))), arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1806f, arg_0.x))))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f)))));
    var var_2 = countOneBits(var_0.c);
    global3 = Struct_1(global3.a, all(vec2<bool>(false, global3.a)) && !all(select(vec2<bool>(global3.a, true), vec2<bool>(false, true), vec2<bool>(global3.b, var_0.a))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~(~0u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(54566u, 0u), vec2<u32>(1u, 51088u)))), 623u), u_input.a.x);
    return Struct_1(global3.b, true, _wgslsmith_clamp_u32(abs(~var_0.d), global3.d | ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 37277u, 10311u)), ~_wgslsmith_add_u32(21942u, global3.d));
}

fn func_1() -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(5907u, 6u)];
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), 35544i);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(352f)))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-1000f, 1427f)))) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 122f) + -561f)))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1149f)), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(465f, 439f) - vec2<f32>(-334f, 169f)) - vec2<f32>(1000f, 468f))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), 1i);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~abs(~var_0.d)), global3.c), 6u)];
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f - -729f)), -1229f)), 1285f), ~(~0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<bool>(true, true, var_0.a, !(!(!global3.b | select(false, global3.b, global3.b))));
    var var_2 = func_4(!(!vec2<bool>(var_0.b, false)), ~(~_wgslsmith_sub_u32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<u32>(3371u, 1u), global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(false, global3.b, 4294967295u, 42099u)).x, _wgslsmith_add_u32(u_input.a.x, var_0.c))), Struct_1(!(true == !var_0.b), any(!(!vec4<bool>(false, global3.b, true, var_1.x))), ~global3.c, _wgslsmith_mult_u32(34075u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.c, global3.c, var_0.d) | vec4<u32>(global3.c, 0u, global3.d, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(31141u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(70687u, u_input.a.x, var_0.d, u_input.a.x))))), global2[_wgslsmith_index_u32(u_input.a.x, 6u)]);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1241f);
    let var_4 = ~countOneBits(u_input.a.x);
    let var_5 = vec2<bool>(any(select(vec4<bool>(!global3.b, true, false, true), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, global3.b), vec4<bool>(var_0.b, false, true, var_1.x), vec4<bool>(var_1.x, true, global3.a, global3.a)), true)), select(!global3.a, var_1.x, var_1.x));
    global1 = array<vec2<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec2<u32>(var_0.d, var_4), vec2<u32>(var_4, var_0.c), true & var_5.x) & firstLeadingBit(select(u_input.a.yx, vec2<u32>(u_input.a.x, var_0.d), vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_3)), true | var_1.x)), _wgslsmith_sub_u32(var_4, _wgslsmith_mult_u32(1u, 1u)), ~vec3<i32>(~(-28885i), -38490i, 34180i));
}

