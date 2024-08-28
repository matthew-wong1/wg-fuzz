struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(i32(-2147483648), 2442i), vec2<i32>(2147483647i, -77512i), vec2<i32>(2147483647i, 25232i), vec2<i32>(0i, -52576i), vec2<i32>(21439i, i32(-2147483648)), vec2<i32>(0i, -31553i), vec2<i32>(-32216i, 1i), vec2<i32>(-37897i, -1i), vec2<i32>(-9441i, -1i), vec2<i32>(0i, 1i), vec2<i32>(-11565i, 1i), vec2<i32>(-1i, -13212i), vec2<i32>(0i, -7948i), vec2<i32>(-42805i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -5678i), vec2<i32>(22411i, 0i), vec2<i32>(2147483647i, 760i), vec2<i32>(5416i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, -14563i), vec2<i32>(-35584i, 53964i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(39956i, 9801i), vec2<i32>(-23727i, -12515i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-11694i, -63827i));

var<private> global1: array<Struct_1, 6>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 30>;

var<private> global4: Struct_1 = Struct_1(true, -408f, -706f, vec4<f32>(-695f, 1166f, 450f, -797f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = -176f;
    let var_1 = vec3<u32>(arg_2, ~(firstTrailingBit(u_input.b) << (arg_2 % 32u)), ~1u >> (0u % 32u));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~u_input.b), arg_2), 6u)]);
    let var_3 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(-global2.a.d.x))) + 1401f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, 240f, 505f, -1692f))), vec4<f32>(131f, -1077f, 779f, _wgslsmith_f_op_f32(max(-1759f, arg_0.c)))))));
    let var_4 = Struct_1(any(select(vec2<bool>(true, arg_1.a.a), !select(vec2<bool>(var_3.a, global3[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(global4.a, var_3.a), vec2<bool>(var_2.a.a, arg_1.a.a)), select(vec2<bool>(false, arg_1.a.a), select(vec2<bool>(global3[_wgslsmith_index_u32(29943u, 30u)], true), vec2<bool>(arg_1.a.a, arg_0.a), vec2<bool>(false, false)), arg_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1276f, _wgslsmith_f_op_f32(-var_3.c))), arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) - -891f), global2.a.d);
    return var_3.d.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    global4 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -921f)))), global2.a.d.x, all(vec2<bool>(arg_1.a & true, arg_2.x < 0i)))), arg_0, global4.d);
    var var_0 = _wgslsmith_f_op_f32(func_3(arg_1, Struct_2(global2.a), u_input.a.x));
    global2 = Struct_2(global2.a);
    let var_1 = _wgslsmith_add_i32(firstLeadingBit(arg_2.x), -_wgslsmith_div_i32(-2147483647i, -1i));
    global4 = Struct_1(true, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(true, 2712f, arg_3.c, arg_3.d), Struct_2(Struct_1(true, global4.b, arg_1.b, vec4<f32>(arg_1.d.x, arg_3.d.x, arg_0, 1781f))), ~16983u)))) * global2.a.c), global2.a.d);
    return Struct_2(global1[_wgslsmith_index_u32(1u, 6u)]);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, 1u, reverseBits(u_input.b), 8768u), ~select(~vec4<u32>(arg_1, 8742u, 0u, arg_1), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, arg_1), vec4<u32>(u_input.a.x, arg_2, arg_2, arg_2)), !vec4<bool>(global2.a.a, false, global4.a, true)), countOneBits(vec4<u32>(46158u, arg_1, 4294967295u, ~22116u))), _wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 29852u)), firstLeadingBit(~(vec4<u32>(u_input.b, 0u, u_input.b, arg_2) & vec4<u32>(arg_1, 0u, u_input.a.x, 11902u))))), 6u)];
    return !select(select(select(select(vec4<bool>(true, global4.a, arg_3.a, false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 30u)], false), var_0.a), !vec4<bool>(global4.a, true, true, var_0.a), !vec4<bool>(false, global4.a, true, arg_0.a.a)), vec4<bool>(func_2(arg_3.d.x, arg_0.a, vec3<i32>(2147483647i, -4367i, -83907i), Struct_1(var_0.a, 672f, global4.d.x, vec4<f32>(global4.c, 1267f, -583f, -257f))).a.a, true, false, var_0.a), all(vec2<bool>(false, false))), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, arg_1)), 30u)] & (430f < var_0.c), false, true || func_2(-613f, Struct_1(true, arg_3.b, global2.a.d.x, arg_3.d), vec3<i32>(12025i, 67724i, -25029i), Struct_1(global2.a.a, global2.a.c, 1007f, vec4<f32>(arg_3.d.x, 2600f, -1930f, 1327f))).a.a, !global4.a), select(vec4<bool>(all(vec4<bool>(false, true, var_0.a, arg_0.a.a)), global2.a.a, all(vec2<bool>(var_0.a, global2.a.a)), global3[_wgslsmith_index_u32(arg_1, 30u)]), select(vec4<bool>(arg_3.a, true, false, global4.a), !vec4<bool>(true, false, global4.a, global2.a.a), select(vec4<bool>(var_0.a, global2.a.a, global3[_wgslsmith_index_u32(55931u, 30u)], false), vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 30u)], false, arg_3.a, false), vec4<bool>(true, true, true, var_0.a))), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 30u)], global2.a.a, arg_3.a, arg_0.a.a), select(vec4<bool>(global4.a, global3[_wgslsmith_index_u32(arg_1, 30u)], true, var_0.a), vec4<bool>(true, true, true, true), true), select(vec4<bool>(arg_3.a, global4.a, var_0.a, var_0.a), vec4<bool>(global3[_wgslsmith_index_u32(arg_1, 30u)], global4.a, false, var_0.a), vec4<bool>(false, true, global2.a.a, true)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec2<u32>(~11749u ^ _wgslsmith_sub_u32(abs(u_input.a.x >> (0u % 32u)), u_input.a.x), u_input.a.x);
    let var_1 = vec4<bool>(all(func_4(func_2(688f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<i32>(-48101i, 16226i, arg_0), Struct_1(global4.a, 502f, -206f, vec4<f32>(-255f, 1695f, global4.d.x, -746f))), u_input.a.x, ~var_0.x, func_2(-493f, global2.a, vec3<i32>(-20775i, arg_0, -1i), Struct_1(true, global2.a.b, global2.a.c, global2.a.d)).a)) | global4.a, all(vec2<bool>(global3[_wgslsmith_index_u32(~var_0.x, 30u)], global2.a.a)), func_4(Struct_2(global2.a), _wgslsmith_mult_u32(42805u, 1u) & (~var_0.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), u_input.a)), ~(~select(57205u, u_input.a.x, false)), func_2(-1020f, func_2(_wgslsmith_f_op_f32(-global4.b), Struct_1(global2.a.a, global4.b, global4.b, vec4<f32>(global2.a.c, global4.c, global2.a.b, -865f)), -vec3<i32>(0i, arg_0, arg_0), global2.a).a, vec3<i32>(43914i, _wgslsmith_mult_i32(arg_0, arg_0), arg_0), Struct_1(false, _wgslsmith_div_f32(global2.a.c, global4.d.x), _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_div_vec4_f32(global2.a.d, global4.d))).a).x, !func_4(Struct_2(func_2(-1627f, global1[_wgslsmith_index_u32(var_0.x, 6u)], vec3<i32>(-5301i, -10946i, arg_0), global1[_wgslsmith_index_u32(var_0.x, 6u)]).a), firstLeadingBit(~u_input.a.x), ~(~var_0.x), global2.a).x);
    let var_2 = arg_0;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(min(60978u, 4637u), 6u)]);
    global4 = func_2(_wgslsmith_f_op_f32(-global4.c), func_2(var_3.a.c, func_2(-1979f, func_2(func_2(-771f, var_3.a, vec3<i32>(var_2, var_2, var_2), Struct_1(false, global2.a.c, global2.a.c, vec4<f32>(var_3.a.c, global4.d.x, global4.d.x, -643f))).a.c, var_3.a, ~vec3<i32>(arg_0, arg_0, arg_0), global2.a).a, -select(vec3<i32>(arg_0, -37222i, arg_0), vec3<i32>(arg_0, 0i, var_2), false), global2.a).a, _wgslsmith_sub_vec3_i32((vec3<i32>(var_2, 0i, var_2) | vec3<i32>(var_2, var_2, 1i)) | (vec3<i32>(15679i, var_2, -49233i) >> (vec3<u32>(u_input.a.x, var_0.x, var_0.x) % vec3<u32>(32u))), vec3<i32>(var_2, -11771i, reverseBits(arg_0))), var_3.a).a, select(select(vec3<i32>(arg_0, _wgslsmith_sub_i32(arg_0, arg_0), 10319i), select(vec3<i32>(2147483647i, arg_0, 4635i), vec3<i32>(-2147483647i, -2147483647i, var_2), func_4(var_3, var_0.x, 4294967295u, var_3.a).zxx), !var_1.yzy), reverseBits(vec3<i32>(arg_0, i32(-1i) * -1i, abs(var_2))), !vec3<bool>(global4.a, true, var_3.a.a)), Struct_1(!(!var_3.a.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -410f))), global2.a.c, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.d.x))), _wgslsmith_f_op_f32(exp2(global4.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1371f, -1083f) * var_3.a.c), _wgslsmith_f_op_f32(f32(-1f) * -393f)))).a;
    return func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.b, global4.b))))), var_3.a, vec3<i32>(arg_0 << (26908u % 32u), ~7745i, 119i), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(395f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a.d.x + 966f), -1000f))), Struct_1(true, _wgslsmith_f_op_f32(1997f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -709f, _wgslsmith_f_op_vec4_f32(round(global4.d))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, arg_0), vec3<i32>(52551i, 2147483647i, -2147483647i)), firstTrailingBit(var_2), arg_0 & var_2), Struct_1(968f != func_2(499f, var_3.a, vec3<i32>(arg_0, -1i, -1i), Struct_1(global4.a, 578f, global2.a.d.x, vec4<f32>(global2.a.b, 312f, global4.b, -1043f))).a.b, global2.a.c, 653f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.c, var_3.a.d.x, var_3.a.c, var_3.a.c)))))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true | select(true, global4.a, all(!vec3<bool>(global4.a, global2.a.a, global3[_wgslsmith_index_u32(u_input.a.x, 30u)]))), _wgslsmith_f_op_f32(sign(global2.a.b)), 672f, global2.a.d);
    var var_1 = func_1(-select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -42486i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, -1i)) ^ 15464i, -42067i, false));
    let var_2 = Struct_2(func_1(-1i).a);
    let var_3 = var_1.a;
    var var_4 = ~(1u | (~43087u | ~abs(u_input.a.x)));
    let var_5 = firstLeadingBit(vec3<u32>(u_input.a.x, 1u, u_input.b));
    let var_6 = u_input.a.x;
    let var_7 = !(!(!select(!vec2<bool>(global2.a.a, false), select(vec2<bool>(true, global4.a), vec2<bool>(global4.a, false), vec2<bool>(global4.a, false)), vec2<bool>(global4.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~vec3<i32>(1i, 1i, 1i))), 26713i | select(2147483647i, 2147483647i, func_1(-2147483647i).a.a), reverseBits(23941u), -471f, min(-67032i, 1i));
}

