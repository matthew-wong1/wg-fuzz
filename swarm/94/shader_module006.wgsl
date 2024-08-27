struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: vec2<f32>;

var<private> global4: array<i32, 4>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> bool {
    var var_0 = abs(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], 10523i, global4[_wgslsmith_index_u32(4294967295u, 4u)]), abs(vec3<i32>(2147483647i, -15246i, global4[_wgslsmith_index_u32(4294967295u, 4u)]))), -firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(1u, 4u)], 0i, global4[_wgslsmith_index_u32(42023u, 4u)]))), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(~select(u_input.b.x, u_input.a.x, global1.a), 4u)], -(global4[_wgslsmith_index_u32(14238u, 4u)] & global4[_wgslsmith_index_u32(5607u, 4u)]))));
    return !(-1110f == _wgslsmith_f_op_f32(max(global1.c, global1.c)));
}

fn func_3() -> u32 {
    global3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.c)))), _wgslsmith_div_f32(global3.x, 1645f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -516f)))))));
    let var_0 = !global1.a;
    var var_1 = Struct_1(all(!vec3<bool>(var_0, !var_0, false | var_0)), global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x * global1.c))) - -458f))));
    global2 = array<vec3<u32>, 23>();
    global2 = array<vec3<u32>, 23>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(16047u, _wgslsmith_add_u32(u_input.a.x ^ ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 49004u), vec2<u32>(2813u, 88791u))), 49988u, _wgslsmith_mod_u32(1u, firstTrailingBit(0u)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(1u, 4294967295u, u_input.b.x)) % 32u)), vec4<u32>(1u ^ _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~(u_input.a.x >> (select(4294967295u, 0u, global1.b.x) % 32u)), ~1u, u_input.a.x));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global0 = func_3();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(trunc(global3.x)))) * vec2<f32>(1126f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(-424f + global3.x), true))))));
    let var_1 = 22155u;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, abs(54041u)), _wgslsmith_div_u32(var_1, 119006u), u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b & vec3<u32>(u_input.a.x, var_1, 1u), min(vec3<u32>(u_input.a.x, var_1, 1u), global2[_wgslsmith_index_u32(var_1, 23u)]))), ~(~(select(vec4<u32>(var_1, 30619u, 4294967295u, 0u), vec4<u32>(4294967295u, 19012u, 1u, 1u), true) & _wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(var_1, 1u, 34577u, 4294967295u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(global1.c * 539f))));
    return (_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1, u_input.b.x, 17076u) ^ vec3<u32>(99025u, u_input.b.x, var_1)), ~u_input.b | ~vec3<u32>(u_input.a.x, u_input.b.x, 44006u)) >> (35616u % 32u)) == var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -652f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -120f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -195f))), all(select(global1.b, global1.b, global1.b)))))));
    var var_1 = Struct_1(all(!select(!vec4<bool>(true, false, false, global1.a), vec4<bool>(global1.a, false, global1.a, global1.b.x), select(vec4<bool>(global1.b.x, false, global1.a, global1.a), vec4<bool>(false, false, false, global1.a), vec4<bool>(false, false, global1.a, global1.a)))), select(global1.b, vec3<bool>(!func_1(), global1.b.x, func_1()), vec3<bool>(global1.b.x, !func_2(vec3<bool>(global1.b.x, global1.a, false)), true)), 1483f);
    var var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * 1379f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-320f, -973f)), -1171f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-654f)))), _wgslsmith_f_op_f32(-var_2.x), 1059f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1.c, global1.c, 959f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 637f, global3.x))));
    var var_4 = abs(~global4[_wgslsmith_index_u32(~u_input.b.x, 4u)]);
    global0 = 0u;
    var_4 = -_wgslsmith_add_i32(~(1i & ~global4[_wgslsmith_index_u32(4294967295u, 4u)]), (global4[_wgslsmith_index_u32(~u_input.b.x, 4u)] >> (~42182u % 32u)) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 25163i, global4[_wgslsmith_index_u32(33262u, 4u)], -1i), vec4<i32>(global4[_wgslsmith_index_u32(46878u, 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 36762i, 75789i)));
    let var_5 = vec4<bool>(!(!(!all(vec3<bool>(true, true, true)))), any(!select(select(vec2<bool>(global1.b.x, var_1.a), global1.b.zy, vec2<bool>(global1.a, false)), global1.b.yy, any(var_1.b.xy))), global1.b.x, true);
    global1 = Struct_1(var_5.x, vec3<bool>(((u_input.a.x == 4294967295u) && true) || any(global1.b.zy), false, select(var_5.x, !(!var_5.x), true)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_3(), 63997u), firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(~u_input.b.x, 4u)] << (~u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-323i, global4[_wgslsmith_index_u32(4294967295u, 4u)], 0i), vec3<i32>(-2147483647i, 2147483647i, global4[_wgslsmith_index_u32(u_input.b.x, 4u)]) << (vec3<u32>(u_input.a.x, 4294967295u, 66035u) % vec3<u32>(32u))), 2147483647i)), _wgslsmith_add_vec2_i32(-abs(vec2<i32>(17303i, global4[_wgslsmith_index_u32(17542u, 4u)])), vec2<i32>(global4[_wgslsmith_index_u32(abs(~u_input.a.x), 4u)], -global4[_wgslsmith_index_u32(u_input.a.x, 4u)])), select(_wgslsmith_add_vec3_i32(~(~vec3<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 4u)], global4[_wgslsmith_index_u32(1u, 4u)], 2147483647i)), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x ^ 69526u, 4u)], -44210i, -21265i)), ~vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], _wgslsmith_div_i32(0i, 22715i), -global4[_wgslsmith_index_u32(u_input.b.x, 4u)]), !var_1.b.x), abs(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(6358u, u_input.b.x, 26584u, 71536u), vec4<u32>(4294967295u, 0u, 24267u, u_input.b.x)), vec4<u32>(67561u, u_input.a.x, 1u, u_input.b.x)))));
}

