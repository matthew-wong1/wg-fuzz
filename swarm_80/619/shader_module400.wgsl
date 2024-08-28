struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-1151f, -1232f, 194f, 545f), vec4<f32>(-828f, -334f, -174f, -847f), vec4<f32>(-1011f, -1000f, -1481f, 123f), vec4<f32>(-1000f, -137f, -1006f, 906f), vec4<f32>(-152f, 472f, -826f, 173f), vec4<f32>(1000f, -1282f, 1615f, 374f), vec4<f32>(-293f, -1319f, 1510f, -502f), vec4<f32>(-370f, 193f, 887f, -642f), vec4<f32>(-330f, -146f, -1155f, -159f));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<u32>(1u, 14184u, 4294967295u, 0u), vec2<i32>(2147483647i, i32(-2147483648)), -597f), Struct_2(vec4<u32>(1u, 1u, 60823u, 32484u), vec2<i32>(i32(-2147483648), -1i), 798f), Struct_2(vec4<u32>(0u, 1u, 64276u, 1u), vec2<i32>(-30357i, 5494i), 380f), Struct_2(vec4<u32>(4294967295u, 126908u, 0u, 29866u), vec2<i32>(2147483647i, 28765i), 1000f), Struct_2(vec4<u32>(1u, 4294967295u, 35737u, 63054u), vec2<i32>(-11810i, 0i), -468f), Struct_2(vec4<u32>(0u, 80985u, 15746u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), -1457f), Struct_2(vec4<u32>(0u, 0u, 1u, 3489u), vec2<i32>(-11922i, 1411i), 308f));

var<private> global3: array<i32, 23> = array<i32, 23>(-46826i, 0i, -1i, 1i, -24211i, 12417i, -4388i, 14322i, -33810i, -19625i, 0i, -25108i, 17675i, i32(-2147483648), -26336i, -65720i, 0i, -16518i, -1i, 0i, i32(-2147483648), 19190i, 0i);

var<private> global4: Struct_1 = Struct_1(-15092i, vec2<u32>(1u, 1u), 0u, -859f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = ~1u > (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 17472u)), min(~u_input.b.x, u_input.b.x)) ^ global4.b.x);
    global4 = Struct_1(global4.a, _wgslsmith_clamp_vec2_u32(~u_input.c, ~(u_input.b.yz >> (global4.b % vec2<u32>(32u))), reverseBits(global4.b)) | vec2<u32>(_wgslsmith_div_u32(1u, u_input.b.x), ~_wgslsmith_mod_u32(global4.c, 0u)), 224u >> (global4.c % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d - _wgslsmith_f_op_f32(-global4.d))));
    global1 = array<vec4<f32>, 9>();
    var var_1 = Struct_1(u_input.a.x, global4.b & abs(~vec2<u32>(3303u, global4.b.x) | ~u_input.c), ~select(27653u, ~_wgslsmith_mult_u32(20802u, 112u), ~(-66170i) == u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(792f * 1000f), global4.d)) * _wgslsmith_f_op_f32(f32(-1f) * -295f)));
    let var_2 = select(vec4<i32>(0i, -_wgslsmith_mod_i32(i32(-1i) * -6801i, _wgslsmith_sub_i32(17679i, -13392i)), 1i, 1i), _wgslsmith_clamp_vec4_i32(((u_input.a ^ vec4<i32>(global4.a, 2147483647i, u_input.a.x, 2147483647i)) & vec4<i32>(-19615i, 23073i, u_input.d.x, global3[_wgslsmith_index_u32(u_input.c.x, 23u)])) | (vec4<i32>(-1i, 0i, global3[_wgslsmith_index_u32(39522u, 23u)], -36215i) << (abs(vec4<u32>(var_1.b.x, 14730u, global4.b.x, 15602u)) % vec4<u32>(32u))), ~(~vec4<i32>(-18066i, 2147483647i, u_input.d.x, u_input.d.x)), countOneBits(vec4<i32>(abs(global3[_wgslsmith_index_u32(global4.c, 23u)]), global3[_wgslsmith_index_u32(~7991u, 23u)], u_input.a.x, u_input.a.x))), arg_0);
    return vec4<bool>(!(!((var_1.d > global4.d) | (19451i == var_2.x))), _wgslsmith_div_f32(-277f, 1096f) < global4.d, arg_0.x, all(!vec3<bool>(true, arg_0.x, arg_0.x && arg_0.x)));
}

fn func_2() -> i32 {
    var var_0 = select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(1u, 18u)], global4.d >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-425f * 2024f), global4.d))));
    let var_1 = global3[_wgslsmith_index_u32(1u | min(_wgslsmith_mod_u32(1u, 1u), u_input.c.x << (u_input.b.x % 32u)), 23u)];
    global4 = Struct_1(-2147483647i, min(u_input.c, ~_wgslsmith_mult_vec2_u32(global4.b, u_input.c)), 0u, 1f);
    global0 = array<vec2<bool>, 18>();
    var var_2 = Struct_1(-u_input.d.x, _wgslsmith_div_vec2_u32(~vec2<u32>(~global4.b.x, ~1u), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 65320u)) & ~u_input.c, abs(_wgslsmith_mult_vec2_u32(u_input.b.zy, global4.b)))), ~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(global4.c, u_input.c.x, global4.c, 4294967295u)), select(vec4<u32>(global4.b.x, 1u, 53027u, global4.c), ~vec4<u32>(global4.c, 4294967295u, global4.c, 64956u), func_3(vec4<bool>(false, true, var_0.x, true)))), global4.d);
    return abs(_wgslsmith_div_i32(~global3[_wgslsmith_index_u32(var_2.c, 23u)], -2147483647i) ^ ((0i ^ global4.a) | ~(-30977i))) | firstLeadingBit(~u_input.d.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(func_2(), reverseBits(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global4.b, arg_0.yy), ~vec2<u32>(4294967295u, 4294967295u))), 4294967295u, global4.d);
    let var_1 = Struct_1(_wgslsmith_div_i32(var_0.a, arg_2.b.x), reverseBits(max(vec2<u32>(arg_2.a.x, 4294967295u), global4.b << (vec2<u32>(0u, global4.b.x) % vec2<u32>(32u)))) >> (vec2<u32>(arg_2.a.x, ~(~4294967295u)) % vec2<u32>(32u)), 0u, _wgslsmith_f_op_f32(ceil(-439f)));
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = vec3<u32>(arg_0.x, _wgslsmith_div_u32(abs(select(arg_2.a.x, ~global4.b.x, all(global0[_wgslsmith_index_u32(arg_0.x, 18u)]))), 7993u), 5841u);
    return _wgslsmith_f_op_f32(-796f - 2013f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-914f, global4.d)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(global4.b.x, 4294967295u, u_input.c.x), false, Struct_2(vec4<u32>(global4.b.x, global4.c, 1u, 914u), vec2<i32>(u_input.d.x, 0i), 1036f))) + _wgslsmith_f_op_f32(-global4.d))))) + -1273f);
    global3 = array<i32, 23>();
    global1 = array<vec4<f32>, 9>();
    let var_1 = ~u_input.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(78260u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-978f * global4.d))), _wgslsmith_f_op_f32(-global4.d))), 14621u, ~select(u_input.b, u_input.b, vec3<bool>(true, true, true)), ~global3[_wgslsmith_index_u32(1u, 23u)]);
}

