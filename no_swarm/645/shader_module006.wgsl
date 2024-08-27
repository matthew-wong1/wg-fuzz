struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: array<f32, 11> = array<f32, 11>(836f, 1083f, 1000f, 629f, -1398f, -625f, 1291f, 1257f, -1000f, 351f, 136f);

var<private> global2: array<u32, 21> = array<u32, 21>(4294967295u, 24515u, 1u, 0u, 50554u, 11737u, 3489u, 11744u, 9287u, 4294967295u, 72589u, 1u, 4294967295u, 24776u, 1u, 4294967295u, 4294967295u, 81878u, 42053u, 0u, 75822u);

var<private> global3: array<vec2<bool>, 21>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(~(-_wgslsmith_add_i32(37518i, -8419i)), _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1196f)), 581f))), -u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(978i >> (u_input.a.x % 32u), -1i), select(vec2<i32>(-2451i, 15558i), vec2<i32>(42030i, global4.x), true)));
    var var_1 = select(vec2<bool>(true, arg_2), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_add_u32(~u_input.a.x, 0u & global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), 21u)], 21u)]), 21u)], !select(global3[_wgslsmith_index_u32(u_input.c, 21u)], select(vec2<bool>(arg_2, false), vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), global3[_wgslsmith_index_u32(0u, 21u)], arg_0)), select(!vec2<bool>(arg_2, true), !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], vec2<bool>(false, false))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.b, global1[_wgslsmith_index_u32(~0u, 11u)], arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-129f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(arg_1.x * var_0.a.b))), 296f);
    global3 = array<vec2<bool>, 21>();
    global3 = array<vec2<bool>, 21>();
    return _wgslsmith_f_op_vec3_f32(var_2 + var_2);
}

fn func_2() -> vec3<f32> {
    var var_0 = vec3<bool>(all(vec3<bool>(true, false, abs(u_input.b) > 2147483647i)), false, _wgslsmith_dot_vec4_u32(vec4<u32>(14341u, global2[_wgslsmith_index_u32(u_input.c, 21u)], 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]) >> ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), abs(u_input.a)) < u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(var_0.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, -1953f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-904f, 1186f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], 21u)], 21u)], 11u)], 1224f) + vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], -297f)))), vec2<bool>(var_0.x, var_0.x))), var_0.x));
    let var_2 = all(vec3<bool>(!select(var_0.x && var_0.x, global2[_wgslsmith_index_u32(u_input.c, 21u)] < u_input.c, true), false, true));
    global1 = array<f32, 11>();
    let var_3 = false;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1004f, 1000f, 1457f), vec3<f32>(938f, 489f, 977f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 137f, -329f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))))))));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(func_3(!(!(u_input.b < 33776i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(712f, arg_0.a.b) * vec2<f32>(-299f, 713f))), _wgslsmith_f_op_vec3_f32(func_3(true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(42895u, 11u)], arg_0.c.b))), true)).xy), all(arg_0.d.yz))));
    global0 = array<vec4<i32>, 17>();
    let var_1 = arg_0;
    global0 = array<vec4<i32>, 17>();
    var var_2 = Struct_3(Struct_1(firstLeadingBit(max(abs(global4.x), 65334i)), _wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -294f)))), select(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, arg_0.b, global2[_wgslsmith_index_u32(0u, 21u)], u_input.a.x), u_input.a)), ~global2[_wgslsmith_index_u32(4294967295u, 21u)], false), Struct_1(1i, 1569f), select(select(var_1.d, vec4<bool>(true, var_1.d.x && false, !var_1.d.x, true), vec4<bool>(!arg_0.d.x, var_1.d.x, var_1.d.x, arg_1 != arg_1)), vec4<bool>((var_0.x <= var_0.x) && true, true, select(var_1.d.x, arg_0.d.x, true) && true, false), vec4<bool>(true, any(vec4<bool>(true, var_1.d.x, arg_0.d.x, true)), arg_1, false)));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = func_1(func_1(Struct_3(func_1(Struct_3(Struct_1(global4.x, arg_0.b), u_input.c, arg_0, vec4<bool>(false, arg_1.d.x, arg_1.d.x, true)), true).c, firstLeadingBit(u_input.c), func_1(Struct_3(arg_1.c, 1u, Struct_1(u_input.b, 368f), vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x)), arg_1.d.x || true).a, select(arg_1.d, func_1(arg_1, arg_1.d.x).d, arg_1.d.x)), true), arg_1.d.x & (-1615f < _wgslsmith_f_op_f32(round(-674f))));
    let var_1 = u_input.b;
    var var_2 = Struct_2(var_0.c, func_1(func_1(Struct_3(var_0.a, firstLeadingBit(u_input.c), func_1(arg_1, false).c, !arg_1.d), true), arg_1.d.x).a, max(select(arg_0.a, -u_input.b, true) << (var_0.b % 32u), 1i));
    let var_3 = _wgslsmith_f_op_f32(select(var_2.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -620f)))), _wgslsmith_f_op_f32(177f - -756f))), !arg_1.d.x));
    let var_4 = select(reverseBits(-global0[_wgslsmith_index_u32(max(6980u, arg_1.b), 17u)] << (~vec4<u32>(global2[_wgslsmith_index_u32(34495u, 21u)], 58887u, var_0.b, 4294967295u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(32670u << (~(~(~var_0.b)) % 32u), 17u)], select(arg_1.d, vec4<bool>(!var_0.d.x || any(vec3<bool>(true, arg_1.d.x, var_0.d.x)), true, arg_1.d.x, false), var_0.d.x));
    return select(var_0.d, !vec4<bool>(true, any(func_1(arg_1, true).d.xx), var_0.d.x, true), true);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 17>();
    global3 = array<vec2<bool>, 21>();
    var var_0 = ~(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global4.x, 34114i, -2357i, arg_0.a.a)), global0[_wgslsmith_index_u32(~63403u, 17u)]) << (~vec4<u32>(arg_0.b, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 14197u) % vec4<u32>(32u))) ^ -min(global0[_wgslsmith_index_u32(arg_0.b, 17u)], vec4<i32>(-2148i << (arg_0.b % 32u), firstTrailingBit(-1i), _wgslsmith_clamp_i32(arg_0.a.a, arg_1, u_input.b), -2147483647i));
    let var_1 = _wgslsmith_add_i32(func_1(Struct_3(arg_0.c, abs(~u_input.a.x), func_1(Struct_3(Struct_1(-17014i, 534f), 4294967295u, Struct_1(13358i, 891f), vec4<bool>(arg_0.d.x, true, arg_0.d.x, true)), arg_0.d.x).a, func_1(Struct_3(arg_0.c, 4294967295u, arg_0.a, vec4<bool>(arg_0.d.x, arg_0.d.x, true, true)), false || arg_0.d.x).d), arg_0.d.x).c.a, -69890i);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(~u_input.a), u_input.a << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17656u, 21u)], 21u)], arg_0.b, 1u, u_input.a.x) % vec4<u32>(32u))), select(338u, u_input.c, all(func_1(arg_0, true).d))), 21u)];
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_3(Struct_1(284i ^ global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1994f)), _wgslsmith_add_u32(29940u, _wgslsmith_add_u32(0u, 11394u)), Struct_1(1i, _wgslsmith_f_op_f32(max(1364f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 11u)]))), func_4(Struct_1(1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 11u)]), func_1(Struct_3(Struct_1(u_input.b, -1576f), u_input.c, Struct_1(0i, 599f), vec4<bool>(true, false, true, true)), true))), u_input.b), Struct_1(~_wgslsmith_add_i32(reverseBits(global4.x), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)])))), ~func_5(Struct_3(func_1(Struct_3(Struct_1(global4.x, global1[_wgslsmith_index_u32(112410u, 11u)]), u_input.a.x, Struct_1(0i, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<bool>(true, true, true, false)), true).a, ~global2[_wgslsmith_index_u32(17519u, 21u)], Struct_1(20522i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 11u)]), func_4(Struct_1(22734i, global1[_wgslsmith_index_u32(67877u, 11u)]), Struct_3(Struct_1(-47073i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 11u)]), u_input.a.x, Struct_1(global4.x, -3033f), vec4<bool>(true, false, false, true)))), global4.x).a);
    global2 = array<u32, 21>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1080f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(73470u, 11u)] * var_0.a.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~20278u, 21u)], 11u)]) - -833f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-663f))) * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(22437u, ~30385u), 11u)])), var_0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(func_1(Struct_3(Struct_1(58878i, -1037f), u_input.a.x, var_0.b, vec4<bool>(true, false, false, false)), true).a.b, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 11u)], 411f, false)))))), -497f));
    var var_2 = Struct_2(var_0.a, var_0.b, (_wgslsmith_mult_i32(func_5(Struct_3(Struct_1(-2147483647i, -1211f), u_input.c, var_0.a, vec4<bool>(true, false, false, false)), -31151i).a, ~(-22736i)) << (abs(~6965u) % 32u)) & -_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(31917i, 0i)));
    global1 = array<f32, 11>();
    let var_3 = vec4<bool>(true, (_wgslsmith_div_u32(1u, 2128u | global2[_wgslsmith_index_u32(1614u, 21u)]) >> (4294967295u % 32u)) >= min(1u, ~38451u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2559f, 154f)) + _wgslsmith_f_op_f32(1492f * _wgslsmith_f_op_f32(-var_2.b.b))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(718f + -203f)), any(func_1(func_1(Struct_3(Struct_1(-31622i, var_0.a.b), u_input.c, var_2.a, vec4<bool>(false, false, false, true)), false), any(vec4<bool>(true, true, false, false))).d) && all(vec4<bool>(false, any(vec4<bool>(false, true, true, true)), -359f < var_1.x, all(vec2<bool>(false, false)))));
    let var_4 = u_input.a.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(63507u, abs(global2[_wgslsmith_index_u32(abs(countOneBits(126416u)), 21u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1725f, 1054f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f - 189f))))), -1458f, _wgslsmith_f_op_vec3_f32(func_2()), -_wgslsmith_clamp_i32(var_2.a.a, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 17u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-41414i, -23582i, var_2.c, 2147483647i), vec4<i32>(global4.x, -46369i, -1i, var_2.c))), u_input.b));
}

