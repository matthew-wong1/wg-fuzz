struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<f32, 14> = array<f32, 14>(194f, 368f, 581f, -1879f, 255f, -762f, 1000f, -135f, -723f, -861f, -436f, -2307f, -1893f, -130f);

var<private> global1: Struct_1 = Struct_1(366f, true);

var<private> global2: array<vec4<u32>, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = array<f32, 14>();
    global2 = array<vec4<u32>, 13>();
    global1 = arg_0;
    global0 = array<f32, 14>();
    return global2[_wgslsmith_index_u32(u_input.d, 13u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-605f)) * _wgslsmith_f_op_f32(-global1.a)), 292f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 14u)] * -534f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 14u)] + -1827f), _wgslsmith_f_op_f32(f32(-1f) * -3267f), global1.b)), -418f)));
    let var_1 = -46500i;
    var var_2 = vec4<u32>(~countOneBits(~u_input.d), arg_0.x, 40290u | u_input.d, ~(arg_0.x | countOneBits(~arg_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(35663u, 14u)], -287f)) - arg_1.a), arg_1.b);
    var var_4 = global1.a;
    return Struct_1(var_3.a, global1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, global1.b, select(arg_2.x != arg_3.x, global1.b, true)), !select(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_1.b, true, arg_0.b), vec3<bool>(false, true, true)), !vec3<bool>(global1.b, global1.b, true), arg_1.b), _wgslsmith_add_i32(firstLeadingBit(u_input.c.x), -u_input.a) == 4769i), select(select(!vec3<bool>(arg_0.b, false, false), !(!vec3<bool>(arg_0.b, arg_0.b, true)), vec3<bool>(!global1.b, true, 33428i >= u_input.c.x)), select(vec3<bool>(false, u_input.a > u_input.c.x, u_input.d < arg_3.x), !(!vec3<bool>(global1.b, true, false)), true), vec3<bool>(_wgslsmith_div_i32(-1i, u_input.a) != u_input.b.x, arg_0.b, arg_1.b)), global1.b);
    var var_1 = func_3(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3, _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.x, 0u, arg_3.x), vec3<u32>(arg_3.x, arg_2.x, 4294967295u))), 13u)], arg_0);
    var_1 = func_3(global2[_wgslsmith_index_u32(arg_3.x, 13u)], Struct_1(arg_0.a, var_1.b));
    var var_2 = arg_2;
    global0 = array<f32, 14>();
    return Struct_1(227f, arg_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<vec4<u32>, 13>();
    var var_0 = select(vec4<bool>(!global1.b, ~_wgslsmith_add_u32(u_input.d, 4294967295u) <= abs(arg_1), !arg_0.b, -2147483647i >= u_input.b.x), vec4<bool>(true, false, func_4(Struct_1(808f, !global1.b), arg_0, vec2<u32>(_wgslsmith_add_u32(u_input.d, 45192u), _wgslsmith_clamp_u32(arg_1, u_input.d, 2167u)), abs(~vec3<u32>(arg_1, 4294967295u, arg_1))).b, !all(vec3<bool>(true, true, false))), select(select(select(vec4<bool>(false, arg_0.b, false, false), vec4<bool>(arg_0.b, global1.b, arg_0.b, global1.b), all(vec2<bool>(arg_0.b, arg_0.b))), !(!vec4<bool>(false, global1.b, false, false)), !(1173f != arg_0.a)), vec4<bool>(_wgslsmith_add_i32(1765i, u_input.a) == u_input.c.x, true, true, any(select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(false, global1.b, true, false), true))), vec4<bool>(any(!vec2<bool>(global1.b, false)), arg_0.b, global1.b, func_3(vec4<u32>(arg_1, 1u, 35018u, 189779u) | vec4<u32>(arg_1, u_input.d, 12886u, arg_1), func_3(global2[_wgslsmith_index_u32(arg_1, 13u)], Struct_1(global0[_wgslsmith_index_u32(27498u, 14u)], arg_0.b))).b)));
    global2 = array<vec4<u32>, 13>();
    global0 = array<f32, 14>();
    var var_1 = func_3(abs(select(~vec4<u32>(0u, arg_1, u_input.d, 1u), abs(vec4<u32>(13686u, 1u, u_input.d, 1u)), select(select(vec4<bool>(var_0.x, true, arg_0.b, global1.b), vec4<bool>(false, false, false, false), true), vec4<bool>(global1.b, global1.b, var_0.x, false), true))), func_4(arg_0, func_4(arg_0, arg_0, ~(~vec2<u32>(0u, 29134u)), ~(~vec3<u32>(13054u, 1u, u_input.d))), ~abs(vec2<u32>(u_input.d, arg_1)), ~vec3<u32>(83u, 32799u, 0u) << (vec3<u32>(_wgslsmith_div_u32(34244u, 1u), arg_1, u_input.d) % vec3<u32>(32u))));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 14>();
    global2 = array<vec4<u32>, 13>();
    var var_0 = ~(~vec2<i32>(u_input.b.x, 1i) >> (vec2<u32>(~13231u, u_input.d & 20473u) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(27129u, 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)]), ~vec4<u32>(354u, 0u, 59648u, 25657u)), 14u)])));
    let var_2 = !select(select(vec4<bool>(global0[_wgslsmith_index_u32(18789u, 14u)] > -1322f, func_4(arg_0, arg_0, vec2<u32>(u_input.d, 12716u), vec3<u32>(0u, 1u, 22850u)).b, !arg_0.b, true), select(vec4<bool>(arg_1.b, true, arg_1.b, arg_2.b), !vec4<bool>(false, true, global1.b, arg_1.b), !vec4<bool>(false, arg_1.b, global1.b, true)), true), select(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec2<bool>(false, arg_0.b)), arg_3.b), select(!vec4<bool>(arg_0.b, true, true, arg_1.b), !vec4<bool>(arg_1.b, true, false, false), true), select(!vec4<bool>(arg_3.b, arg_2.b, arg_3.b, arg_3.b), select(vec4<bool>(true, arg_3.b, arg_0.b, arg_0.b), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, arg_3.b, true))), vec4<bool>(all(vec4<bool>(global1.b, false, false, false)), !arg_3.b != arg_1.b, func_4(Struct_1(525f, arg_3.b), func_3(vec4<u32>(u_input.d, 12640u, u_input.d, 61369u), arg_0), ~vec2<u32>(u_input.d, u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, 4294967295u, u_input.d))).b, func_4(Struct_1(602f, global1.b), func_5(arg_2, u_input.d, vec2<f32>(arg_3.a, 1079f)), ~vec2<u32>(u_input.d, 55307u), vec3<u32>(u_input.d, u_input.d, u_input.d)).b));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 14u)])) - arg_1.a)))), arg_3.b);
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<u32>, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -638f), false);
    let var_1 = func_6(Struct_1(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-global1.a)), var_0.b), func_5(func_4(Struct_1(1261f, !var_0.b), func_3(func_2(Struct_1(global1.a, true), true, false), Struct_1(var_0.a, global1.b)), ~vec2<u32>(u_input.d, 0u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, u_input.d, 1u)), countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.d)))), u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1143f, var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(104f, global1.a)))))), func_3(~_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(1u, 13u)], ~global2[_wgslsmith_index_u32(u_input.d, 13u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-392f, var_0.a)), true)), func_3(~func_2(Struct_1(-162f, true), true, false) << (global2[_wgslsmith_index_u32(u_input.d, 13u)] % vec4<u32>(32u)), func_3(global2[_wgslsmith_index_u32(u_input.d, 13u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -154f), var_0.b))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(79718u, 14u)], var_1.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1327f, var_0.a) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 551f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1705f, _wgslsmith_f_op_f32(273f - var_0.a)))));
    let var_3 = abs(min(vec3<i32>(~_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 2058i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 0i, u_input.b.x)), vec4<i32>(59927i, u_input.b.x, u_input.a, u_input.b.x)), 1i), vec3<i32>((7510i ^ u_input.b.x) | -1i, u_input.b.x, u_input.a)));
    return var_1;
}

fn func_7(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(global1.a));
    global1 = func_6(func_1(), Struct_1(global1.a, true), func_1(), func_5(arg_0, firstTrailingBit(max(1u, u_input.d)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(291f - -1400f), func_5(Struct_1(111f, true), u_input.d, vec2<f32>(-1554f, global0[_wgslsmith_index_u32(23010u, 14u)])).a), func_1().a)));
    let var_1 = func_5(arg_0, firstTrailingBit(u_input.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a, 511f))))) - vec2<f32>(-1072f, _wgslsmith_f_op_f32(arg_0.a - -1835f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-202f, global0[_wgslsmith_index_u32(0u, 14u)]), vec2<f32>(global1.a, global1.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 14u)], 923f), vec2<f32>(321f, global0[_wgslsmith_index_u32(u_input.d, 14u)]), vec2<bool>(true, false))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, -317f), vec2<f32>(-2135f, global1.a))))))).a;
    var var_2 = func_1();
    var var_3 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(vec3<bool>(global1.b, all(vec2<bool>(true, true)), true)), global1.b), !vec2<bool>(global1.b, any(!vec2<bool>(false, global1.b))), false);
    global0 = array<f32, 14>();
    global1 = func_7(func_1(), true);
    var var_1 = func_3(global2[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(719f, global1.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(320f, var_1.a)));
    global2 = array<vec4<u32>, 13>();
    global1 = func_6(Struct_1(791f, var_0.x), func_7(func_1(), true), Struct_1(_wgslsmith_f_op_f32(-256f - 155f), global1.b), Struct_1(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(trunc(func_6(Struct_1(112f, true), Struct_1(global1.a, global1.b), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 14u)], false), Struct_1(global1.a, var_1.b)).a))), false));
    global2 = array<vec4<u32>, 13>();
    var_1 = func_6(func_5(func_7(func_4(func_5(Struct_1(-703f, false), u_input.d, vec2<f32>(global1.a, var_1.a)), func_6(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 14u)], false), Struct_1(global1.a, global1.b), Struct_1(2052f, false), Struct_1(global0[_wgslsmith_index_u32(82755u, 14u)], true)), ~vec2<u32>(u_input.d, 1u), vec3<u32>(u_input.d, 4294967295u, u_input.d)), global1.b), ~1u, _wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1186f, var_1.a) + var_2)), vec2<bool>(true, var_1.b)))), func_7(Struct_1(1404f, _wgslsmith_f_op_f32(1684f - global1.a) > _wgslsmith_f_op_f32(var_1.a * 1628f)), !all(select(vec3<bool>(global1.b, true, false), vec3<bool>(var_1.b, global1.b, false), vec3<bool>(var_0.x, var_1.b, false)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_6(Struct_1(327f, var_1.b), Struct_1(global1.a, false), Struct_1(global1.a, global1.b), Struct_1(global0[_wgslsmith_index_u32(6602u, 14u)], var_0.x)).a), var_1.a), 64406u <= u_input.d), func_7(func_4(Struct_1(692f, global1.b), Struct_1(-599f, false), countOneBits(vec2<u32>(1u, 33817u)), select(~vec3<u32>(10899u, 352u, 1u), ~vec3<u32>(57786u, 4294967295u, 4294967295u), !var_0.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.d, _wgslsmith_add_u32(~50037u, 1u)), u_input.b.x);
}

