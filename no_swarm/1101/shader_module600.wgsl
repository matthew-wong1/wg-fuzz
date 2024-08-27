struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(-14660i), Struct_1(4903i), Struct_1(2147483647i)), Struct_2(Struct_1(513i), Struct_1(i32(-2147483648)), Struct_1(0i)), Struct_2(Struct_1(90911i), Struct_1(1i), Struct_1(-1537i)), Struct_2(Struct_1(1038i), Struct_1(-1i), Struct_1(1i)), Struct_2(Struct_1(-20579i), Struct_1(0i), Struct_1(-32467i)), Struct_2(Struct_1(-1i), Struct_1(64975i), Struct_1(1i)), Struct_2(Struct_1(42774i), Struct_1(-1i), Struct_1(-1i)), Struct_2(Struct_1(40113i), Struct_1(0i), Struct_1(2147483647i)), Struct_2(Struct_1(-1i), Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(51105i), Struct_1(-1i), Struct_1(-23368i)), Struct_2(Struct_1(-5678i), Struct_1(0i), Struct_1(1i)), Struct_2(Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648))), Struct_2(Struct_1(4951i), Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(2147483647i), Struct_1(-21542i), Struct_1(-1i)), Struct_2(Struct_1(-12894i), Struct_1(105896i), Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-13659i), Struct_1(-7880i)), Struct_2(Struct_1(-35808i), Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1799i), Struct_1(2147483647i)), Struct_2(Struct_1(25277i), Struct_1(53824i), Struct_1(6687i)), Struct_2(Struct_1(-39396i), Struct_1(-1i), Struct_1(0i)), Struct_2(Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(23821i)));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(33657i), Struct_1(2147483647i), Struct_1(-6647i)), Struct_2(Struct_1(6790i), Struct_1(0i), Struct_1(-360i)), Struct_2(Struct_1(-40593i), Struct_1(-64447i), Struct_1(1i)), Struct_2(Struct_1(2147483647i), Struct_1(1i), Struct_1(1i)), Struct_2(Struct_1(1i), Struct_1(0i), Struct_1(51649i)), Struct_2(Struct_1(-23517i), Struct_1(i32(-2147483648)), Struct_1(32255i)), Struct_2(Struct_1(2147483647i), Struct_1(-4641i), Struct_1(2147483647i)), Struct_2(Struct_1(-11222i), Struct_1(43250i), Struct_1(-1i)), Struct_2(Struct_1(1i), Struct_1(6889i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-32543i), Struct_1(6762i), Struct_1(1i)), Struct_2(Struct_1(1i), Struct_1(-1593i), Struct_1(-10312i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(-50017i), Struct_1(0i), Struct_1(1i)), Struct_2(Struct_1(-1i), Struct_1(7387i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-6176i), Struct_1(-16648i), Struct_1(-34716i)), Struct_2(Struct_1(930i), Struct_1(0i), Struct_1(-1i)), Struct_2(Struct_1(-11591i), Struct_1(12847i), Struct_1(-20158i)), Struct_2(Struct_1(55380i), Struct_1(-11034i), Struct_1(2147483647i)), Struct_2(Struct_1(32665i), Struct_1(-52974i), Struct_1(-30203i)), Struct_2(Struct_1(42423i), Struct_1(6721i), Struct_1(2147483647i)), Struct_2(Struct_1(52912i), Struct_1(-1i), Struct_1(2147483647i)), Struct_2(Struct_1(2147483647i), Struct_1(20743i), Struct_1(-1i)));

var<private> global3: array<f32, 3> = array<f32, 3>(182f, -1367f, -1824f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = -_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-(~2767i), _wgslsmith_mult_i32(max(u_input.c.x, -1i), -31530i)));
    let var_1 = Struct_1(_wgslsmith_add_i32(~1i, ~1i));
    var var_2 = _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~53984u, u_input.b.x) << (arg_0 % 32u), 3u)]));
    global0 = _wgslsmith_f_op_f32(max(-790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-536f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3[_wgslsmith_index_u32(u_input.a, 3u)], 742f, global3[_wgslsmith_index_u32(0u, 3u)]) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(57406u, 3u)], 703f, global3[_wgslsmith_index_u32(u_input.d, 3u)], -705f)))))));
    return var_3.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    global3 = array<f32, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], -1000f, 580f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-719f, -2468f, global3[_wgslsmith_index_u32(10338u, 3u)])))) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.d >> (u_input.d % 32u), 3u)], _wgslsmith_div_f32(631f, global3[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_f_op_f32(func_3(60241u, arg_0.x))))) * vec3<f32>(-408f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~(~u_input.d), 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(258f)))) * 1000f)));
    global1 = array<Struct_2, 22>();
    return 1355f;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = -899f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.a, 3u)])), global3[_wgslsmith_index_u32(arg_0, 3u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(func_2(vec4<i32>(-23415i, u_input.c.x, -1i, u_input.c.x), 5747i, global1[_wgslsmith_index_u32(69263u, 22u)]))), -1246f), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -766f)))));
    global1 = array<Struct_2, 22>();
    var var_2 = Struct_2(Struct_1(-2147483647i), Struct_1(_wgslsmith_mult_i32(1i << (arg_0 % 32u), select(countOneBits(u_input.c.x), abs(-57444i), arg_0 >= 20901u))), Struct_1(u_input.c.x));
    global2 = array<Struct_2, 22>();
    return _wgslsmith_sub_i32(0i, -_wgslsmith_div_i32(abs(u_input.c.x), var_2.a.a)) & _wgslsmith_sub_i32(-2147483647i, -29998i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 3>();
    let var_0 = u_input.c.x;
    global1 = array<Struct_2, 22>();
    var var_1 = vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, false, false)), u_input.c.x > var_0, true)) & false, !(true && any(vec4<bool>(true, false, true, true))), select(any(vec3<bool>(u_input.c.x < -1i, false, true)), func_1(1u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(1u, 3u)], -1000f, global3[_wgslsmith_index_u32(u_input.a, 3u)], 243f), vec4<f32>(540f, global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)], global3[_wgslsmith_index_u32(55464u, 3u)])))) <= 1i, true), true);
    global2 = array<Struct_2, 22>();
    let var_2 = Struct_1(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, select(vec3<i32>(u_input.c.x, 1i, var_0), vec3<i32>(_wgslsmith_mod_i32(46892i, var_2.a) << (_wgslsmith_clamp_u32(1u, 1u, 29283u) % 32u), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -34528i), vec2<i32>(var_0, 0i)) >> (_wgslsmith_div_u32(u_input.d, u_input.b.x) % 32u)), false && !(true && var_1.x)), _wgslsmith_div_u32(u_input.b.x, countOneBits(~(u_input.d & 34464u))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(var_0, 0i, 0i, -15905i), 2147483647i, global1[_wgslsmith_index_u32(25616u, 22u)]))), 498f, min(1i, -2147483647i) < _wgslsmith_mult_i32(12191i, u_input.c.x))), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u | u_input.d, _wgslsmith_sub_u32(u_input.b.x, 36758u)), 3u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.a, 3u)] * _wgslsmith_f_op_f32(func_3(40909u, var_0))), select(true, !var_1.x, u_input.a > u_input.d))), _wgslsmith_f_op_f32(func_3(min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(30416u, u_input.d), vec2<u32>(1u, 42619u))), ~(var_2.a & var_0)))));
}

