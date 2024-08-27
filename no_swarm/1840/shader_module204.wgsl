struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, false, true, true, false, true, true, true, true, true, true, false, true, false, true, false, false, true, true, true, true, false, false, false, false, false);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<Struct_3, 8>;

var<private> global3: Struct_1;

var<private> global4: Struct_2 = Struct_2(Struct_1(false, vec3<bool>(false, true, true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = (arg_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(745f + 2359f), arg_0.x)) + _wgslsmith_f_op_f32(select(902f, _wgslsmith_f_op_f32(arg_0.x + -202f), true)))) || false;
    global2 = array<Struct_3, 8>();
    let var_1 = ~_wgslsmith_div_u32(select(min(0u, u_input.a.x), 1u, any(vec2<bool>(true, false))) | abs(min(u_input.a.x, u_input.a.x)), ~(~0u));
    global2 = array<Struct_3, 8>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(608f, -233f))))))));
    return 1035f;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(false, any(vec4<bool>(all(!vec4<bool>(global4.a.a, global0[_wgslsmith_index_u32(0u, 27u)], false, global3.a)), true | all(vec4<bool>(global4.a.a, global3.b.x, true, true)), true, true)), global4.a.a, (_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(0i, 0i, 1i)), -2147483647i) >> (0u % 32u)) < firstTrailingBit(-2147483647i));
    var var_1 = _wgslsmith_f_op_f32(184f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(274f)) * _wgslsmith_div_f32(323f, -117f)));
    global4 = Struct_2(Struct_1(var_0.x, global4.a.b));
    let var_2 = ~u_input.a.x;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(922f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1468f, 620f, -257f, -677f), 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1685f)))))));
    return Struct_1(!var_0.x, select(select(!select(vec3<bool>(global4.a.b.x, true, false), vec3<bool>(true, false, false), var_0.x), !vec3<bool>(global0[_wgslsmith_index_u32(66654u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], true), false), var_0.yyx, true));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    return Struct_1(true, !(!select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(global4.a.b.x, global3.b.x, global3.a), select(arg_1.a.b, vec3<bool>(global4.a.a, false, arg_2), arg_1.a.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0;
    global1 = array<Struct_1, 21>();
    let var_1 = arg_3.x ^ 0u;
    let var_2 = (vec3<i32>(-1i) * -(vec3<i32>(-1i) * -vec3<i32>(-43780i, 61058i, 1098i))) & vec3<i32>(1i, _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 14214i, 2147483647i, 47313i), vec4<i32>(0i, 1i, -1i, 7140i)) ^ abs(0i)), 1i);
    var var_3 = Struct_3(Struct_1(global4.a.a, global4.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1600f - -288f) - 1f) - 1317f) * 1373f), Struct_2(Struct_1(func_4(_wgslsmith_f_op_f32(sign(-712f)), Struct_2(global1[_wgslsmith_index_u32(51896u, 21u)]), arg_2.b.x).b.x, !(!arg_0.b))));
    return var_3.c;
}

fn func_1() -> f32 {
    var var_0 = !(0u < ~min(43096u, ~u_input.a.x));
    var var_1 = u_input.a.x;
    let var_2 = func_5(func_4(-1740f, Struct_2(func_2()), select(true, true, true)), !global3.b, Struct_1(true, global3.b), ~(~vec4<u32>(8610u, u_input.a.x, u_input.a.x << (u_input.a.x % 32u), firstTrailingBit(1u))));
    var_0 = ((~1i ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(24948i, -9143i), vec2<i32>(-27778i, 1i)) & (i32(-1i) * -2147483647i))) > (_wgslsmith_dot_vec4_i32(vec4<i32>(40655i, 1i, -1i, 46505i), select(vec4<i32>(-1i, -2147483647i, -1i, 2147483647i), vec4<i32>(1i, 1i, 24225i, 0i), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, global0[_wgslsmith_index_u32(18240u, 27u)]))) & -45037i)) != (func_5(func_2(), vec3<bool>(func_2().a, !global4.a.b.x, true), func_2(), vec4<u32>(u_input.a.x, 38931u << (u_input.a.x % 32u), u_input.a.x & u_input.a.x, u_input.a.x & 4294967295u)).a.b.x && true);
    global3 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1345f, _wgslsmith_f_op_f32(step(2118f, -1507f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), 171f, _wgslsmith_f_op_f32(-1134f * -274f), -237f)))));
    let var_2 = ~69476u;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-670f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-385f, -587f)))) + var_1);
    let var_4 = Struct_1(!(1u == _wgslsmith_mult_u32(~u_input.a.x, ~0u)), global4.a.b);
    let var_5 = vec4<i32>(-max(2147483647i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 35835i), vec2<i32>(0i, 0i)), -25776i)), max(-8317i, select(countOneBits(reverseBits(-1i)), select(-39394i, ~(-39875i), true), true)), -(countOneBits(_wgslsmith_mult_i32(-1i, 2147483647i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(1i, -1i, 32657i)))), 1i);
    var var_6 = (firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 45851u, var_2), vec4<u32>(var_2, var_2, u_input.a.x, 1u)), u_input.a.x, ~4294967295u, ~var_2)) << ((~_wgslsmith_add_vec4_u32(vec4<u32>(var_2, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, var_2, 1u, 0u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, u_input.a.x, u_input.a.x, 47678u), firstLeadingBit(vec4<u32>(var_2, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 88311u, var_2, 0u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12230u))) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(var_2, 0u, 1u, u_input.a.x)), select(vec4<u32>(var_2, 22071u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(30268u, 4294967295u, 4294967295u, 1u), vec4<u32>(35156u, var_2, var_2, 4294967295u))), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 34552u, var_2))), vec4<bool>(var_4.a, global3.b.x, var_2 > 0u, true)));
    var var_7 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, -828f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(956f, 616f)), _wgslsmith_f_op_f32(sign(var_1.x))))), select(_wgslsmith_add_i32(var_5.x, -2147483647i), _wgslsmith_clamp_i32(-53035i, _wgslsmith_dot_vec3_i32(var_5.zyy, vec3<i32>(var_5.x, var_5.x, var_5.x)), var_5.x) ^ ~firstTrailingBit(0i), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(abs(var_6.x)), firstTrailingBit(1u), 24502u, 0u));
}

