struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-2047i, 7295i), 1496f);

var<private> global1: array<bool, 6>;

var<private> global2: array<Struct_1, 29>;

var<private> global3: f32 = -1455f;

var<private> global4: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(871f, 220f, -249f), vec3<f32>(2106f, 1088f, 172f), vec3<f32>(626f, -772f, 881f), vec3<f32>(-1299f, -460f, 740f), vec3<f32>(272f, 589f, 1000f), vec3<f32>(-621f, 180f, 1350f), vec3<f32>(816f, -1204f, 1677f), vec3<f32>(-458f, -2063f, 1323f), vec3<f32>(-3024f, 212f, -167f), vec3<f32>(-184f, -1358f, 1181f), vec3<f32>(234f, 546f, -1000f), vec3<f32>(-184f, 1913f, -110f), vec3<f32>(1027f, -1078f, 165f), vec3<f32>(-1405f, -438f, -1502f), vec3<f32>(2365f, 546f, -373f), vec3<f32>(-1000f, -308f, 314f), vec3<f32>(-877f, 244f, -468f), vec3<f32>(-1133f, -763f, -107f), vec3<f32>(-3089f, 341f, 680f), vec3<f32>(1032f, 2096f, 1957f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    return 91901u;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_2 {
    global0 = global2[_wgslsmith_index_u32(9124u, 29u)];
    let var_0 = vec4<i32>(6533i, arg_2.x, u_input.b.x, abs(u_input.c.x));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2102f));
    global2 = array<Struct_1, 29>();
    global1 = array<bool, 6>();
    return Struct_2(global2[_wgslsmith_index_u32((arg_1.x | (u_input.a << (max(21128u, u_input.a) % 32u))) << (u_input.a % 32u), 29u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(626f, 1579f, _wgslsmith_f_op_f32(ceil(-1048f))))), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_1.x, func_3(arg_1.x, false, vec4<f32>(1340f, 1484f, 966f, -322f))), _wgslsmith_dot_vec3_u32(~arg_1, arg_1 >> (arg_1 % vec3<u32>(32u)))), 20u)])), global2[_wgslsmith_index_u32(arg_1.x, 29u)], Struct_1(reverseBits(global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) * global0.b)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(933f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2195f))))));
    var var_1 = !arg_0.x;
    let var_2 = ~u_input.a;
    global0 = Struct_1(abs(vec2<i32>(u_input.b.x, -1i) & ~u_input.c.ww), 1193f);
    var var_3 = func_2(true, ~_wgslsmith_sub_vec3_u32(~(vec3<u32>(1364u, var_2, var_2) & vec3<u32>(var_2, 5616u, u_input.a)), vec3<u32>(var_2, u_input.a, 10665u) ^ vec3<u32>(7030u, 53687u, var_2)), u_input.c.zyw);
    return ~(34480u << (~func_3(abs(81132u), !global1[_wgslsmith_index_u32(37653u, 6u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 393f, global0.b, -538f) + vec4<f32>(global0.b, -1291f, var_0, global0.b))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !(!global1[_wgslsmith_index_u32(func_1(vec3<bool>(true, false, true)), 6u)]), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(42668u, 6u)], true, true, true), vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 6u)], false, global1[_wgslsmith_index_u32(0u, 6u)])), true, global1[_wgslsmith_index_u32(u_input.a, 6u)] | global1[_wgslsmith_index_u32(7755u, 6u)]), !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 6u)], false)))), false);
    global3 = -227f;
    var var_1 = Struct_1(-vec2<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(31233i, global0.a.x), _wgslsmith_div_i32(global0.a.x, -27235i))), global0.b);
    global2 = array<Struct_1, 29>();
    let var_2 = var_0.wy;
    let var_3 = any(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 6u)], abs(1i) >= ~firstTrailingBit(32593i), all(var_0)));
    let var_4 = Struct_2(global2[_wgslsmith_index_u32(u_input.a << (1u % 32u), 29u)], global4[_wgslsmith_index_u32(u_input.a, 20u)], Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-345i, var_1.a.x, global0.a.x, u_input.c.x), vec4<i32>(-2147483647i, var_1.a.x, -1i, var_1.a.x)), -37540i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b - var_1.b))) + _wgslsmith_div_f32(var_1.b, 1f))), global2[_wgslsmith_index_u32(4294967295u, 29u)]);
    var var_5 = (_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, var_1.a.x), vec3<i32>(u_input.b.x, u_input.d, 30417i)), u_input.d), 1i) < var_1.a.x) || !(!(global1[_wgslsmith_index_u32(30062u, 6u)] & global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(31403u, 0u), 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(vec4<i32>(21137i & var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -17470i, 2147483647i, 24524i), vec4<i32>(global0.a.x, u_input.c.x, -2147483647i, -52476i)), ~(-93630i), _wgslsmith_add_i32(var_4.d.a.x, 2147483647i)), abs(u_input.c ^ vec4<i32>(-2147483647i, global0.a.x, var_4.a.a.x, var_4.a.a.x)), -vec4<i32>(var_4.c.a.x, -30303i, 0i, 1i) & (vec4<i32>(8858i, -61717i, global0.a.x, var_1.a.x) | u_input.c)), _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(u_input.b.x, -12244i, -2147483647i, -22233i))), ~max(u_input.c, abs(vec4<i32>(u_input.b.x, 6783i, u_input.b.x, u_input.b.x)))), -global0.a.x);
}

