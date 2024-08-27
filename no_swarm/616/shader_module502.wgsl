struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 39519u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true));

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, -20113i, false, vec3<i32>(-1i, 8676i, 24285i)), Struct_1(false, 15450i, false, vec3<i32>(i32(-2147483648), 0i, -36732i)), Struct_1(false, -17319i, true, vec3<i32>(2147483647i, 50245i, -1i)), Struct_1(false, 1i, false, vec3<i32>(44643i, i32(-2147483648), i32(-2147483648))), Struct_1(false, 0i, false, vec3<i32>(0i, 0i, i32(-2147483648))), Struct_1(true, 1550i, false, vec3<i32>(30117i, -1i, 59917i)), Struct_1(true, 0i, true, vec3<i32>(1i, -21867i, 2147483647i)), Struct_1(true, -24575i, true, vec3<i32>(-33444i, 0i, i32(-2147483648))), Struct_1(true, -1i, false, vec3<i32>(25166i, 0i, -34182i)), Struct_1(false, -13116i, false, vec3<i32>(30772i, -1i, 0i)), Struct_1(false, -7187i, true, vec3<i32>(1i, -18691i, i32(-2147483648))), Struct_1(false, -1i, true, vec3<i32>(-45375i, -1i, i32(-2147483648))), Struct_1(true, 48745i, true, vec3<i32>(1i, -25078i, 43440i)), Struct_1(true, 0i, false, vec3<i32>(2147483647i, i32(-2147483648), 45285i)), Struct_1(false, -1i, false, vec3<i32>(i32(-2147483648), 6963i, 2147483647i)), Struct_1(true, i32(-2147483648), true, vec3<i32>(-14272i, -39980i, -1i)), Struct_1(false, 68417i, true, vec3<i32>(2147483647i, -21456i, 0i)), Struct_1(false, 59895i, true, vec3<i32>(18630i, -38801i, 17529i)), Struct_1(false, 26667i, false, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_1(true, 307i, true, vec3<i32>(2147483647i, 1i, 29544i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global2 = array<vec4<bool>, 26>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(41814u, 3u)], 4294967295u), 3u)];
    let var_1 = Struct_1(arg_0.c, -1i, true, vec3<i32>(arg_1.d.x & _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, arg_0.b), arg_1.b), 22100i, arg_1.b));
    var var_2 = vec3<f32>(-636f, _wgslsmith_f_op_f32(f32(-1f) * -241f), -1092f);
    var var_3 = ~arg_0.d.x;
    return arg_1.c;
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(select(_wgslsmith_sub_u32(u_input.a, 1u), ~(~1u), false), abs(_wgslsmith_mod_u32(firstTrailingBit(~1u), 0u)), u_input.a, _wgslsmith_sub_u32(u_input.a, reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, max(vec4<u32>(16912u, u_input.a, global0[_wgslsmith_index_u32(36155u, 3u)], u_input.b.x), vec4<u32>(global0[_wgslsmith_index_u32(6129u, 3u)], global0[_wgslsmith_index_u32(47203u, 3u)], 0u, 52858u))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-365f - _wgslsmith_div_f32(910f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1383f));
    let var_2 = 0i;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f + -514f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1850f, -1757f, true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_div_f32(-966f, 1000f)))));
    global0 = array<u32, 3>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(20149i, -22943i, var_2), min(vec3<i32>(~global1.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, 9853i), vec4<i32>(0i, 1i, var_2, var_2)), ~vec4<i32>(-81276i, -5638i, -4851i, var_2)), 1i), ~reverseBits(global1.d ^ vec3<i32>(global1.b, 34181i, var_2))));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = min(func_3(), ((global1.d.x | 16827i) ^ countOneBits(countOneBits(23039i))) << (arg_0.x % 32u));
    var var_1 = Struct_1(!select(select(true, global1.c, global1.a) | true, false, true & any(vec2<bool>(true, false))), -2147483647i, global1.c, global1.d);
    global2 = array<vec4<bool>, 26>();
    let var_2 = global3[_wgslsmith_index_u32(u_input.b.x ^ u_input.a, 20u)];
    var var_3 = global3[_wgslsmith_index_u32(39335u, 20u)];
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.c & func_1(Struct_1(any(vec3<bool>(global1.c, true, global1.c)), 7038i, true, global1.d), global3[_wgslsmith_index_u32(~(~0u), 20u)]), func_2(~abs(vec3<u32>(50846u, 1u, 35675u))), false, ~abs(~abs(global1.d)));
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -770f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(192f)))))));
    var var_2 = global3[_wgslsmith_index_u32(10750u, 20u)];
    let var_3 = !vec4<bool>(var_0.x, global1.a, func_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 3u)], 20u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(72728u, u_input.b.x), 20u)]), select(true, var_2.d.x == global1.b, true != select(var_0.x, true, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xww, _wgslsmith_div_i32(~(-2147483647i), -(_wgslsmith_mult_i32(global1.b, global1.b) >> (global0[_wgslsmith_index_u32(1u, 3u)] % 32u))), global1.d | -_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -82685i, global1.d.x)), vec3<i32>(-34122i, -49356i, -19490i)));
}

