struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<f32, 22> = array<f32, 22>(-2015f, 2344f, -659f, 515f, 445f, 556f, 1567f, 471f, 404f, 1276f, -598f, -459f, 726f, -578f, 1021f, -657f, 1000f, -1176f, 868f, -1062f, 360f, -922f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    global1 = array<f32, 22>();
    let var_0 = vec4<bool>(true, false, false, true);
    global0 = array<i32, 23>();
    global1 = array<f32, 22>();
    global0 = array<i32, 23>();
    return vec2<bool>(false, !(!var_0.x));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    var var_0 = abs(max(-arg_0.a.xzy, -vec3<i32>(firstTrailingBit(1i), abs(-1i), firstTrailingBit(-9225i))));
    global1 = array<f32, 22>();
    var var_1 = !vec3<bool>(true, all(arg_0.e.a), any(arg_0.d.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, -658f)), global1[_wgslsmith_index_u32(41192u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b.a.x)))), !(!(global1[_wgslsmith_index_u32(~u_input.c.x, 22u)] != global1[_wgslsmith_index_u32(~1u, 22u)])), arg_0.d.b.d, arg_0.d.b.d, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 52668u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19060u, u_input.c.x, 47751u, 4294967295u), vec4<u32>(arg_0.c, 1u, 70708u, 0u))))));
    global0 = array<i32, 23>();
    return arg_0.d.a;
}

fn func_3(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.c.x, 23u)])) >> (_wgslsmith_clamp_u32(12679u, 18254u, 29234u) % 32u), -(i32(-1i) * -10614i), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, u_input.c.x), 23u)]), global0[_wgslsmith_index_u32(21628u, 23u)]) | ~(~countOneBits(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(14366u, 23u)], 15228i))), 1i, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, u_input.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, 41862u))), 1u)), Struct_2(select(!arg_0, !func_2(Struct_3(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(29861u, 23u)], global0[_wgslsmith_index_u32(28662u, 23u)]), global0[_wgslsmith_index_u32(92740u, 23u)], u_input.d.x, Struct_2(vec4<bool>(true, false, true, arg_0.x), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 22u)], 791f, -917f), false, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 72659u)), Struct_2(arg_0, Struct_1(vec3<f32>(541f, global1[_wgslsmith_index_u32(65277u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), false, -3414i, -5364i, 34760u))), 2147483647i), !arg_0), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 22u)] + -846f), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], arg_0.x))), (global0[_wgslsmith_index_u32(u_input.d.x, 23u)] << (1u % 32u)) < -20962i, 0i, global0[_wgslsmith_index_u32(~(~0u), 23u)], min(~6997u, 1u))), Struct_2(vec4<bool>(arg_0.x, false || func_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], 2147483647i), 0u).x, !all(vec2<bool>(false, arg_0.x)), any(func_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], -39427i), u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(59348u, 22u)]) - vec3<f32>(-1130f, 728f, -203f)))), _wgslsmith_clamp_u32(u_input.c.x, 38764u, 20756u) == 18686u, ~(15453i ^ global0[_wgslsmith_index_u32(0u, 23u)]), ~global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_dot_vec2_u32(vec2<u32>(39893u, u_input.d.x), u_input.d.yw))));
    var_0 = Struct_3(_wgslsmith_add_vec4_i32(abs(max(vec4<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(32884u, 23u)], -2147483647i), countOneBits(vec4<i32>(-33799i, var_0.e.b.c, -381i, var_0.b)))), var_0.a >> (u_input.d % vec4<u32>(32u))), -2147483647i, ~_wgslsmith_div_u32(0u, abs(u_input.b)), Struct_2(arg_0, var_0.e.b), var_0.e);
    let var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.d), firstTrailingBit(u_input.d), u_input.d)) ^ ~(~_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.a.x, 6906u, 1u, var_0.c))));
    let var_2 = false;
    var var_3 = (var_1.x | ~u_input.a.x) & 1u;
    return StorageBuffer(var_0.a.xwy, _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 23u)], 3528i), var_0.a.zz ^ var_0.a.xz, vec2<i32>(global0[_wgslsmith_index_u32(108289u, 23u)], 4196i))), _wgslsmith_add_vec2_i32(firstTrailingBit(-var_0.a.zx), var_0.a.xz)), global1[_wgslsmith_index_u32(var_0.d.b.e, 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), func_1(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)])), min(30238u, u_input.d.x)), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(496f, global1[_wgslsmith_index_u32(33842u, 22u)], 1666f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 1281f), vec3<f32>(global1[_wgslsmith_index_u32(53872u, 22u)], -712f, global1[_wgslsmith_index_u32(26458u, 22u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1288f, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], 1000f, -563f)))))), true, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(112852u, 23u)]) | vec3<i32>(2147483647i, -8690i, 1i), select(vec3<i32>(34609i, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], -2147483647i) | vec3<i32>(-63716i, -1i, global0[_wgslsmith_index_u32(4294967295u, 23u)]), -vec3<i32>(-18013i, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 0i), select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true)))), global0[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_clamp_u32(38192u, u_input.d.x, u_input.d.x) >> ((8105u >> (u_input.b % 32u)) % 32u), var_0.x), 23u)]), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(45764u, 1u), u_input.d.wy), 29927u) >> (~(~u_input.d.x) % 32u)));
    var var_2 = select(-(~(vec2<i32>(-29982i, var_1.c) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -26584i), vec2<i32>(-28297i, 7420i)))), vec2<i32>(42270i, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~29708u, ~var_1.e), 23u)]), vec2<bool>(var_1.b, -42041i != var_1.d));
    let var_3 = 0i;
    var var_4 = reverseBits(_wgslsmith_add_vec4_i32(~(~vec4<i32>(22232i, -2147483647i, 2147483647i, -16023i)), _wgslsmith_div_vec4_i32(~vec4<i32>(56395i, -544i, -19470i, var_2.x), vec4<i32>(var_3, -1i << (u_input.a.x % 32u), -24387i, reverseBits(-2147483647i)))));
    let x = u_input.a;
    s_output = func_3(select(select(!select(vec4<bool>(var_1.b, true, false, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), select(select(vec4<bool>(true, var_0.x, var_1.b, var_1.b), vec4<bool>(false, var_0.x, var_1.b, var_1.b), true), !vec4<bool>(var_0.x, false, true, false), !var_1.b), all(!vec2<bool>(var_0.x, true))), !func_2(Struct_3(vec4<i32>(var_2.x, var_4.x, var_2.x, -35033i), -1i, u_input.a.x, Struct_2(vec4<bool>(var_0.x, false, true, false), Struct_1(var_1.a, var_0.x, var_3, var_3, u_input.b)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(var_1.a.x, global1[_wgslsmith_index_u32(65729u, 22u)], -833f), var_0.x, -6017i, -1i, var_1.e))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_3, -7502i, 2147483647i), vec4<i32>(2147483647i, var_1.c, var_3, 3230i))), select(true, var_0.x, var_0.x) & true));
}

