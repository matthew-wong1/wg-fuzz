struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec4<u32>, 27>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, -1365f, -6824i, false, 0i), Struct_1(false, 995f, -34439i, false, -26759i), Struct_1(false, 789f, -1i, true, 2147483647i), Struct_1(true, -454f, -24330i, false, -3298i), Struct_1(false, 825f, 50624i, true, 0i), Struct_1(false, 193f, 2147483647i, false, i32(-2147483648)), Struct_1(false, 751f, 27467i, false, -3830i), Struct_1(false, -1253f, -26446i, true, 42810i), Struct_1(true, -213f, -4895i, true, i32(-2147483648)), Struct_1(true, 1470f, -38519i, true, 22776i), Struct_1(true, -264f, 22525i, false, -34783i), Struct_1(false, 655f, i32(-2147483648), false, 0i), Struct_1(false, 613f, -14862i, false, 49191i), Struct_1(true, -1378f, -3135i, false, 2147483647i), Struct_1(false, 1000f, 14901i, false, -19762i), Struct_1(false, 174f, -54301i, true, i32(-2147483648)), Struct_1(true, 726f, -1i, true, -27696i), Struct_1(true, 1725f, 1i, true, 38265i), Struct_1(false, 934f, 28613i, true, -1i), Struct_1(false, 1080f, 2147483647i, false, 0i), Struct_1(true, -546f, -29337i, true, 9840i), Struct_1(false, -1224f, 25662i, false, 35253i));

var<private> global3: array<vec2<bool>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<Struct_1, 22>();
    global1 = array<vec4<u32>, 27>();
    var var_0 = select(arg_1.a.xzw, vec3<bool>(true, !(_wgslsmith_f_op_f32(arg_1.b.b * 702f) == _wgslsmith_f_op_f32(-arg_1.b.b)), arg_2), arg_2);
    var var_1 = arg_1;
    var var_2 = arg_3;
    return var_1.b;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x, 1u, arg_1.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37996u >> (arg_1.x % 32u), arg_1.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 1u), vec4<u32>(4294967295u, arg_1.x, u_input.a.x, arg_1.x))), global1[_wgslsmith_index_u32(1u, 27u)]), 27u)]), 22u)];
    global1 = array<vec4<u32>, 27>();
    global1 = array<vec4<u32>, 27>();
    var var_1 = Struct_3(Struct_2(vec4<bool>(var_0.d, var_0.a && !var_0.d, all(global3[_wgslsmith_index_u32(35921u, 28u)]) == true, true && all(vec3<bool>(var_0.d, true, false))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b))), Struct_2(!vec4<bool>(var_0.d, false, false, false), global2[_wgslsmith_index_u32(~0u, 22u)], select(false, false, var_0.d)), var_0.d, vec4<u32>(~0u, ~arg_1.x, u_input.a.x, arg_1.x)), all(select(!vec3<bool>(true, false, var_0.a), vec3<bool>(true, true, true), !var_0.d))), Struct_2(select(vec4<bool>(func_1(vec2<f32>(var_0.b, 389f), Struct_2(vec4<bool>(var_0.a, var_0.d, var_0.d, false), Struct_1(var_0.a, -1091f, u_input.b, true, -1i), var_0.d), false, global1[_wgslsmith_index_u32(arg_1.x, 27u)]).a, false, var_0.a, var_0.d), vec4<bool>(!var_0.d, false, true, var_0.d), vec4<bool>(var_0.a, true, false, var_0.a)), global2[_wgslsmith_index_u32(~(~select(u_input.a.x, u_input.a.x, false)), 22u)], true), -max(vec2<i32>(var_0.c, arg_0), ~vec2<i32>(u_input.b, u_input.b)) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_0, var_0.e)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, 8110i)), vec4<f32>(var_0.b, 864f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f + var_0.b) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 60663u), 22u)]);
    let var_2 = vec4<bool>(false, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1024f, _wgslsmith_f_op_f32(abs(-908f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b.b, -154f) - var_1.d.xx), _wgslsmith_f_op_vec2_f32(floor(var_1.d.yy)))), Struct_2(!vec4<bool>(var_1.e.d, var_0.a, var_0.a, true), global0[_wgslsmith_index_u32(4294967295u, 3u)], -800f < var_0.b), var_0.a, ~_wgslsmith_clamp_vec4_u32(abs(global1[_wgslsmith_index_u32(56739u, 27u)]), global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(arg_1.x, 27u)])).d, !var_0.a, var_0.a);
    return !vec4<bool>(1u <= firstTrailingBit(1u), all(var_2.wzx), var_0.d, false);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    return Struct_2(select(select(vec4<bool>(true, true, true, !arg_0.x), vec4<bool>(true, true, true, true), func_3(-24571i, ~u_input.a)), vec4<bool>(false, false, arg_0.x, false), !select(vec4<bool>(arg_0.x, false, arg_0.x, false), !vec4<bool>(false, true, arg_0.x, true), arg_0.x)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -2197f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 1225f))))), Struct_2(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, false, false)), func_3(9601i, vec2<u32>(4294967295u, u_input.a.x)), vec4<bool>(false, false, arg_0.x, true)), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~u_input.b, true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.b, 2147483647i))), true), arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x ^ 4294967295u, 27u)]), select(true, !any(global3[_wgslsmith_index_u32(0u, 28u)]), any(vec3<bool>(true, arg_0.x, arg_0.x))) | !(-1342f > func_1(vec2<f32>(-1055f, -142f), Struct_2(vec4<bool>(arg_0.x, arg_0.x, false, false), Struct_1(true, -971f, u_input.b, arg_0.x, 1i), arg_0.x), true, global1[_wgslsmith_index_u32(0u, 27u)]).b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 3>();
    let var_0 = 985f;
    global0 = array<Struct_1, 3>();
    global3 = array<vec2<bool>, 28>();
    global3 = array<vec2<bool>, 28>();
    return arg_2.a;
}

fn func_5(arg_0: vec4<bool>) -> i32 {
    var var_0 = select(vec2<bool>(false, -1i <= u_input.b), vec2<bool>(_wgslsmith_f_op_f32(select(-835f, -286f, any(vec3<bool>(arg_0.x, true, arg_0.x)))) < _wgslsmith_f_op_f32(-208f + -1182f), 13697u <= firstTrailingBit(~u_input.a.x)), u_input.a.x > reverseBits(u_input.a.x));
    var var_1 = vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 79650u, u_input.a.x)))));
    var_0 = func_2(vec3<bool>(any(func_2(!arg_0.wzx).a.xy), !(!var_0.x), !all(!vec2<bool>(var_0.x, var_0.x)))).a.yy;
    let var_2 = global0[_wgslsmith_index_u32(67284u, 3u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(5499u), 36875u), 3u)];
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(40194u, _wgslsmith_clamp_u32(51825u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(19915u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), 27u)]), u_input.a.x), 30118u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 82645u))), ~16106i, func_5(select(func_4(func_1(vec2<f32>(-1000f, 171f), Struct_2(vec4<bool>(true, false, false, false), Struct_1(true, 650f, u_input.b, true, u_input.b), false), true, vec4<u32>(0u, u_input.a.x, u_input.a.x, 6323u)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), func_2(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, -1154f, -300f))), vec4<bool>(true, true, true, true), select(func_4(global2[_wgslsmith_index_u32(0u, 22u)], vec3<bool>(true, true, true), Struct_2(vec4<bool>(true, false, true, false), global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec3<f32>(1000f, 469f, 1263f)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), func_2(vec3<bool>(true, false, false)).a))), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 58465u, ~u_input.a.x));
}

