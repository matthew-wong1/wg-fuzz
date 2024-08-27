struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(781f, -171f, 769f, -1000f, 1000f, -499f, 518f, 302f);

var<private> global1: Struct_2 = Struct_2(Struct_1(true, -504f));

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

var<private> global3: array<f32, 15> = array<f32, 15>(-255f, 344f, 1000f, -1125f, -201f, -1251f, 536f, 206f, 965f, 1000f, -1000f, -175f, 899f, 2022f, 2439f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    global1 = Struct_2(Struct_1(!arg_1.x, _wgslsmith_f_op_f32(floor(-1156f))));
    global1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -202f), 1492f))));
    global1 = Struct_2(Struct_1(!(!all(vec4<bool>(global1.a.a, false, false, arg_1.x))), 1f));
    global0 = array<f32, 8>();
    global2 = array<vec2<bool>, 1>();
    return u_input.c;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_1(global1.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(2519u, u_input.c, true), u_input.a), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * 1110f))), -232f));
    global1 = Struct_2(global1.a);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2702u, arg_1, 1914u, _wgslsmith_clamp_u32(7179u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(0u, 51028u)), u_input.c | u_input.a)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a, 0u, 75184u, 33087u)), vec4<u32>(arg_1, arg_1, arg_1, 33121u)) << (vec4<u32>(4294967295u, u_input.a | u_input.a, 1u, ~u_input.b) % vec4<u32>(32u))), func_3(-_wgslsmith_add_vec2_i32(-vec2<i32>(16740i, -2334i), vec2<i32>(1i, 1i)), select(select(global2[_wgslsmith_index_u32(0u, 1u)], !vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a)), select(vec2<bool>(true, true), vec2<bool>(global1.a.a, global1.a.a), true), vec2<bool>(!var_0.a, any(vec4<bool>(global1.a.a, true, false, global1.a.a)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(784f - arg_0), _wgslsmith_f_op_f32(-1039f + global0[_wgslsmith_index_u32(74776u, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(floor(-245f)))))));
    var var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), max(~vec3<i32>(-2147483647i, 23498i, -4503i), vec3<i32>(1i, 1i, 1i))) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(~80471u), max(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), u_input.a), 0u), 152900u) % 32u);
    global1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a >> (14334u % 32u), 8u)] * 539f))));
    return select(vec4<bool>(var_0.a, all(select(select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 1u)], false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true)), !vec2<bool>(true, global1.a.a))), var_0.a, !(any(vec2<bool>(false, global1.a.a)) && false)), !select(!(!vec4<bool>(global1.a.a, global1.a.a, true, global1.a.a)), vec4<bool>(var_0.a, true, global1.a.a, global1.a.a), !(!vec4<bool>(global1.a.a, true, var_0.a, false))), !var_0.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = select(func_2(arg_1.x, u_input.c & 1u), func_2(_wgslsmith_f_op_f32(-arg_1.x), ~(~_wgslsmith_add_u32(34900u, u_input.b))), select(select(!vec4<bool>(false, global1.a.a, false, false), vec4<bool>(select(false, true, global1.a.a), u_input.b != u_input.b, true, !arg_0.a.a), any(select(vec4<bool>(true, global1.a.a, arg_0.a.a, global1.a.a), vec4<bool>(global1.a.a, arg_0.a.a, true, arg_0.a.a), false))), vec4<bool>(arg_0.a.a, arg_0.a.a, all(vec4<bool>(false, true, arg_0.a.a, true)), true), !vec4<bool>(true & global1.a.a, true, !arg_0.a.a, global1.a.a)));
    var var_1 = ~_wgslsmith_mod_i32(firstTrailingBit(-_wgslsmith_div_i32(1i, -7638i)), ~firstTrailingBit(_wgslsmith_sub_i32(20376i, 2147483647i)));
    global0 = array<f32, 8>();
    var_0 = !(!select(func_2(-2623f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.c), vec3<u32>(u_input.a, u_input.c, u_input.c))), !vec4<bool>(arg_0.a.a, true, var_0.x, arg_0.a.a), !vec4<bool>(true, global1.a.a, arg_0.a.a, true)));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(u_input.b, u_input.a, 1u, 4294967295u))), vec4<u32>(u_input.c, ~(~0u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(25531u, u_input.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(54821u, 0u, 14608u), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 214u)))));
    return arg_0.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(func_1(Struct_2(arg_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 8u)], -1924f, false)), 588f))));
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    let var_1 = Struct_2(func_1(Struct_2(Struct_1(!arg_2.a.a, 714f)), vec2<f32>(global3[_wgslsmith_index_u32(33046u << (1u % 32u), 15u)], _wgslsmith_f_op_f32(-arg_0))));
    let var_2 = max(_wgslsmith_add_u32(firstTrailingBit(52258u), u_input.c), countOneBits(7643u));
    return Struct_2(func_1(arg_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b - global0[_wgslsmith_index_u32(23514u, 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1134f, 1528f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(1f, Struct_2(global1.a), Struct_2(func_1(Struct_2(global1.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1172f, 199f))))));
    global2 = array<vec2<bool>, 1>();
    var var_0 = ~firstTrailingBit(vec4<i32>(-16216i, 16132i, firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-13535i, 1i, 15660i, -2147483647i), select(vec4<i32>(1i, 37815i, -27377i, -10074i), vec4<i32>(0i, 0i, 1i, 1i), false))));
    var_0 = ~firstTrailingBit(firstTrailingBit(vec4<i32>(var_0.x, countOneBits(var_0.x), var_0.x, var_0.x)));
    global2 = array<vec2<bool>, 1>();
    let var_1 = var_0.x;
    var_0 = vec4<i32>(var_0.x << (~1u % 32u), var_0.x, ~(~0i), var_0.x);
    var var_2 = Struct_1(global1.a.a, 255f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2412f, global1.a.b) - vec2<f32>(global3[_wgslsmith_index_u32(36261u, 15u)], global1.a.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, 1809f)))))));
}

