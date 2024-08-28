struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 18>;

var<private> global2: f32 = 1642f;

var<private> global3: u32 = 21859u;

var<private> global4: array<vec4<bool>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<u32>) -> u32 {
    let var_0 = 52207u;
    var var_1 = -arg_0.x;
    var var_2 = _wgslsmith_div_i32(~(-55125i), arg_0.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -273f), -709f)));
    global2 = _wgslsmith_f_op_f32(trunc(1987f));
    return firstLeadingBit(_wgslsmith_div_u32(var_0 & arg_3.x, arg_3.x << (~arg_3.x % 32u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(false, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-197f - -666f), 650f, -1941f)))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(84728u, min(u_input.a.x, 6062u)), 1u)]);
    var var_1 = Struct_1(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x << (max(u_input.a.x, 4294967295u) % 32u), ~u_input.a.x), 18u)], false, var_0.c, !(!global4[_wgslsmith_index_u32(abs(abs(0u)), 1u)]));
    let var_2 = var_0;
    var var_3 = var_2;
    var var_4 = var_3.c.x;
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 9065i >> (firstTrailingBit(select(firstLeadingBit(u_input.a.x), countOneBits(u_input.a.x), true)) % 32u);
    let var_1 = ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a.x, 12689u), 1u), _wgslsmith_mod_u32(func_2(vec4<i32>(-52154i, 0i, -1i, 0i), false, arg_2.d.yxz, vec3<u32>(u_input.a.x, 21043u, u_input.a.x)), ~u_input.a.x) >> ((u_input.a.x & func_3()) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16912u, 0u, 1464u, 31651u), vec4<u32>(7401u, u_input.a.x, 0u, u_input.a.x)), ~87853u), u_input.a & abs(vec2<u32>(u_input.a.x, u_input.a.x))));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(~reverseBits(~var_1.x | 1u), 18u)], !any(select(select(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(5350u, 18u)], false), vec3<bool>(true, false, arg_0), true), select(arg_2.d.xyx, vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(56649u, 18u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 18u)], global1[_wgslsmith_index_u32(var_1.x, 18u)])), !arg_2.d.xww)), vec3<f32>(arg_2.c.x, 1421f, 1f), global4[_wgslsmith_index_u32(~0u, 1u)]);
    var var_3 = Struct_1(any(!select(vec3<bool>(arg_1, true, true), select(vec3<bool>(false, true, false), var_2.d.xxy, var_2.a), false)), true && !all(!global4[_wgslsmith_index_u32(1u, 1u)]), vec3<f32>(-1293f, arg_2.c.x, _wgslsmith_f_op_f32(-143f - 339f)), vec4<bool>(any(!select(arg_2.d.yw, arg_2.d.yy, var_2.d.wx)), true, any(var_2.d.zyy) && var_2.a, !all(vec2<bool>(false, arg_0)) || !global1[_wgslsmith_index_u32(firstTrailingBit(27484u), 18u)]));
    var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1.c.x)), arg_1.c.x)) + -1000f) - 432f));
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    var var_1 = arg_0;
    let var_2 = global1[_wgslsmith_index_u32(1u, 18u)];
    return firstTrailingBit(~min(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(~firstLeadingBit(0i << (0u % 32u)) ^ (func_4(1u, func_1(global1[_wgslsmith_index_u32(0u, 18u)], true, Struct_1(true, global1[_wgslsmith_index_u32(1u, 18u)], vec3<f32>(1760f, 100f, -1155f), global4[_wgslsmith_index_u32(7275u, 1u)]))) ^ (_wgslsmith_div_i32(7633i, 15373i) >> (u_input.a.x % 32u))), func_4(0u, Struct_1(any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20178u, 122564u, 1u), vec4<u32>(23681u, 1u, 0u, u_input.a.x))), 18u)], vec3<f32>(659f, func_1(true, true, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true, vec3<f32>(-521f, -719f, -236f), global4[_wgslsmith_index_u32(u_input.a.x, 1u)])).c.x, _wgslsmith_f_op_f32(-1996f * -815f)), select(func_1(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_1(global1[_wgslsmith_index_u32(1u, 18u)], true, vec3<f32>(204f, 267f, -1746f), global4[_wgslsmith_index_u32(u_input.a.x, 1u)])).d, global4[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 1u)], true | global1[_wgslsmith_index_u32(59027u, 18u)]))));
    let var_1 = func_1(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), true), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(34639u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]), func_1(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], Struct_1(true, true, vec3<f32>(915f, 498f, 163f), global4[_wgslsmith_index_u32(u_input.a.x, 1u)])).d.zzy, all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), !all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true)))), any(vec3<bool>(true, true, select(false, 88197u < u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 8853u, 4294967295u, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, 1u)), 18u)]))), func_1(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(27120u, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 3650u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, 4294967295u, 28526u)), 18u)], any(!vec4<bool>(false, global1[_wgslsmith_index_u32(49541u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), Struct_1(!global1[_wgslsmith_index_u32(u_input.a.x, 18u)] & false, false == global1[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(419f, -1323f, 656f))) * _wgslsmith_div_vec3_f32(vec3<f32>(427f, 1000f, -1275f), vec3<f32>(-1000f, 1000f, 839f))), select(select(global4[_wgslsmith_index_u32(13872u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], true), !global4[_wgslsmith_index_u32(51302u, 1u)], all(global4[_wgslsmith_index_u32(u_input.a.x, 1u)])))));
    var_0 = firstTrailingBit(0i);
    let var_2 = Struct_1(select(all(var_1.d), var_1.b, false), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -910f), var_1.c.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x))))), select(!vec4<bool>(all(var_1.d.xx), !var_1.a, var_1.b & true, false), global4[_wgslsmith_index_u32(u_input.a.x, 1u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-31779i, -23654i, -8625i, -60121i), vec4<i32>(0i, 53457i, 1i, 1i)) <= select(~(-2147483647i), 112i, var_1.d.x)));
    var var_3 = i32(-1i) * -abs(_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -70360i), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_2.c.x, -1651f)), ~u_input.a);
}

