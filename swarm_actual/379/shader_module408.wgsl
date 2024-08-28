struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(24180i, -70219i), vec2<i32>(-1i, 60692i), vec2<i32>(-53867i, 2147483647i), vec2<i32>(-1i, -6995i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(10306i, 12579i), vec2<i32>(4110i, i32(-2147483648)), vec2<i32>(-94331i, -13869i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-46213i, 2147483647i), vec2<i32>(72000i, -22914i), vec2<i32>(-6948i, -44114i), vec2<i32>(12676i, 2147483647i), vec2<i32>(i32(-2147483648), -23418i), vec2<i32>(27887i, 35911i), vec2<i32>(-48840i, 1i), vec2<i32>(-34970i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 32292i), vec2<i32>(i32(-2147483648), 17242i));

var<private> global1: array<u32, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = select(vec4<bool>(false, true, _wgslsmith_div_i32(-1i, 14213i >> (u_input.d % 32u)) == ~(-1i), true), select(vec4<bool>(select(true, select(false, true, false), false), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true, true), vec4<bool>(false | (u_input.e.x != u_input.d), true, true, !(u_input.e.x < global1[_wgslsmith_index_u32(4294967295u, 10u)])), select(vec4<bool>(true, true, -15367i == u_input.c.x, true), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, false, false)), true, any(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true))), vec4<bool>(false, false, true, true | any(vec3<bool>(true, true, true))));
    global1 = array<u32, 10>();
    let var_1 = Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1020f - _wgslsmith_f_op_f32(430f - -171f)), _wgslsmith_f_op_f32(round(-849f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-907f, 294f)) + 1418f)))), select(max(_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(u_input.d, 21u)], vec2<i32>(-1i, 11653i)), -vec2<i32>(-2147483647i, -32793i)), _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d), 21u)], ~vec2<i32>(u_input.a.x, u_input.a.x)), var_0.x) ^ vec2<i32>(61111i, -u_input.b), select(var_0.x, true, !(!all(var_0))));
    let var_2 = ~_wgslsmith_div_u32(u_input.e.x, global1[_wgslsmith_index_u32(1u, 10u)] | _wgslsmith_dot_vec3_u32(~u_input.e, vec3<u32>(4294967295u, 0u, 1u)));
    let var_3 = ~abs(vec3<u32>(_wgslsmith_add_u32(29112u, 20242u), 58333u, 36229u)) << (u_input.e % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(ceil(-509f));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<u32>) -> f32 {
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1349f, _wgslsmith_f_op_f32(f32(-1f) * -237f), true)) + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(f32(-1f) * -614f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2172f + -626f) * _wgslsmith_f_op_f32(step(222f, 670f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(278f, _wgslsmith_f_op_f32(max(507f, 2136f))))), _wgslsmith_f_op_f32(func_3()) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-694f, 920f)), -512f))), _wgslsmith_mod_vec2_i32(~u_input.a.zx, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), ~u_input.e) << (arg_3.x % 32u), 21u)]), true);
    var var_1 = reverseBits(~arg_3.x);
    global0 = array<vec2<i32>, 21>();
    return 1000f;
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    global0 = array<vec2<i32>, 21>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -312f, 2064f, -1022f)) * vec4<f32>(_wgslsmith_div_f32(-1249f, 1224f), _wgslsmith_div_f32(1543f, -815f), -1211f, 127f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -787f), -1591f)), -616f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1163f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(true, true), false, vec4<bool>(true, false, false, false), vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 10u)], u_input.d, u_input.e.x))) * _wgslsmith_f_op_f32(trunc(-529f))))));
    global1 = array<u32, 10>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(949f - var_0.x) - var_0.x)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-101f * _wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x, _wgslsmith_f_op_f32(func_2(Struct_3(true, true), true, vec4<bool>(true, true, true, true), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(53312u, 10u)], u_input.e.x, 6067u, u_input.d)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f * var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1244f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -132f), true)), var_0.x, _wgslsmith_f_op_f32(floor(-123f)))));
    global1 = array<u32, 10>();
    return vec3<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 226f)))) <= -1568f, !select(all(vec3<bool>(true, true, false)) && (0u > u_input.e.x), any(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    let var_0 = select(all(select(func_1(u_input.a), vec3<bool>(false, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, false))), false)), true | !(max(-11717i, u_input.c.x) >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -72517i, 0i, 39559i), vec4<i32>(0i, -25232i, 22365i, u_input.b))), u_input.e.x < ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(18723u, 10u)], 1u, 64831u, u_input.d), vec4<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(2069u, 10u)], global1[_wgslsmith_index_u32(27147u, 10u)]))));
    let var_1 = ~(~(~(global1[_wgslsmith_index_u32(abs(9150u), 10u)] | ~u_input.d)));
    global0 = array<vec2<i32>, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1102f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2099f + -581f) - _wgslsmith_f_op_f32(func_2(Struct_3(true, false), var_0, select(!vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(true, var_0, var_0, var_0), false), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, 37518u, var_1, 2855u), ~vec4<u32>(u_input.d, 1u, var_1, var_1))))), global0[_wgslsmith_index_u32(u_input.d, 21u)], true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_2.c.x, var_2.c.x, var_2.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(1130i, -24661i, 0i, u_input.b), vec4<i32>(var_2.c.x, -1i, -13392i, 12993i))), (reverseBits(u_input.b) ^ var_2.c.x) >> (17678u % 32u), -_wgslsmith_mult_i32(2147483647i, -23368i << (global1[_wgslsmith_index_u32(39299u, 10u)] % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, var_2.b, var_2.b, 692f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 829f, 386f, var_2.b) + vec4<f32>(-758f, var_2.a, 990f, var_2.b))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 197f, var_2.b, var_2.a)))))), global0[_wgslsmith_index_u32(48832u, 21u)]);
}

