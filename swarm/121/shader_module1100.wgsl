struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
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

var<private> global0: array<bool, 30>;

var<private> global1: Struct_1 = Struct_1(1000f, vec4<u32>(0u, 0u, 1u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = array<bool, 30>();
    let var_0 = Struct_1(global1.a, vec4<u32>(u_input.a, 1u, 31261u, _wgslsmith_dot_vec3_u32(max(min(vec3<u32>(47735u, global1.b.x, global1.b.x), vec3<u32>(0u, global1.b.x, u_input.b.x)), global1.b.yzx), select(vec3<u32>(arg_0.x, 0u, 31891u), ~arg_0, vec3<bool>(global0[_wgslsmith_index_u32(32164u, 30u)], global0[_wgslsmith_index_u32(11408u, 30u)], true)))));
    var var_1 = Struct_1(global1.a, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(61666u, select(var_0.b.x, global1.b.x, global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_mod_u32(u_input.b.x, global1.b.x), abs(0u)), vec4<u32>(min(28642u, 73661u), 10711u, 4294967295u, select(0u, arg_0.x, global0[_wgslsmith_index_u32(0u, 30u)]))), select(var_0.b, vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, arg_0.x), vec2<u32>(18194u, var_0.b.x)), 0u << (var_0.b.x % 32u), 1u), true || all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)])))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(-var_1.a)), vec4<u32>(62587u, _wgslsmith_dot_vec2_u32(var_1.b.ww, ~(~u_input.b.yx)), _wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(var_1.b.x, 0u)), firstTrailingBit(vec2<u32>(var_1.b.x, var_0.b.x))), ~u_input.b.zz), _wgslsmith_div_u32(global1.b.x, 4294967295u)));
    global1 = Struct_1(_wgslsmith_f_op_f32(1024f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), 1920f))), ~global1.b);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-444f))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(global1.b.wxy)), vec4<u32>(~global1.b.x & u_input.b.x, select(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, u_input.a, 12902u, u_input.b.x), vec4<u32>(4294967295u, 0u, global1.b.x, global1.b.x)), reverseBits(global1.b)), abs(_wgslsmith_clamp_u32(46565u, 0u, 46272u)), any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global1.b.x, 30u)])) & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 25883u), 30u)]), ~(~63289u), 23950u));
    global1 = Struct_1(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_mult_vec4_u32(abs(var_0.b), global1.b) >> (~(vec4<u32>(var_0.b.x, global1.b.x, u_input.b.x, 1u) & vec4<u32>(45816u, global1.b.x, 32996u, global1.b.x)) % vec4<u32>(32u)));
    let var_1 = Struct_1(-1621f, var_0.b);
    var var_2 = select(vec3<bool>(!global0[_wgslsmith_index_u32(global1.b.x, 30u)] & true, global0[_wgslsmith_index_u32(var_0.b.x, 30u)], false), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 30u)], global0[_wgslsmith_index_u32(105190u, 30u)], true), vec3<bool>(global0[_wgslsmith_index_u32(36704u, 30u)], false, global0[_wgslsmith_index_u32(0u, 30u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 30u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(var_1.b.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), false), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(81494u, 30u)]), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(40004u, 30u)], false), global0[_wgslsmith_index_u32(var_0.b.x, 30u)])), all(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(37092u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 30u)], global0[_wgslsmith_index_u32(22267u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(28946u, 30u)], global0[_wgslsmith_index_u32(var_1.b.x, 30u)])))), select(!vec3<bool>(global0[_wgslsmith_index_u32(abs(global1.b.x), 30u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(20128u, 30u)], false, false)), false), select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(40796u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), !vec3<bool>(global0[_wgslsmith_index_u32(92650u, 30u)], true, global0[_wgslsmith_index_u32(66607u, 30u)]), var_1.b.x < 4294967295u), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], false, false), true), ~u_input.b.x < firstLeadingBit(global1.b.x)), !select(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 30u)], false), !global0[_wgslsmith_index_u32(var_0.b.x, 30u)])));
    var var_3 = var_1;
    return ~55790u >> (var_3.b.x % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = global1.a;
    global0 = array<bool, 30>();
    let var_1 = ~(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -1i, u_input.c.x, 4501i), -vec4<i32>(-2147483647i, u_input.d.x, -700i, -2147483647i)), ~vec4<i32>(u_input.d.x, -2147483647i, -5126i, u_input.d.x)) << (func_2() % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(267f * -703f), vec4<u32>(countOneBits(_wgslsmith_mod_u32(select(20608u, global1.b.x, false), 900u)), 30229u, u_input.a, 1u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-561f - -877f), var_2.a))) * var_2.a) * _wgslsmith_f_op_f32(ceil(global1.a)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> bool {
    return global0[_wgslsmith_index_u32(~1u << (u_input.b.x % 32u), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1246f, global1.b);
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), max(global1.b, var_0.b));
    global1 = var_0;
    var var_1 = var_0;
    global0 = array<bool, 30>();
    var var_2 = select(vec2<bool>(any(vec3<bool>(true, true, true)), func_4(func_1(), var_0.b.x, u_input.d)), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 30u)]), vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_0.b.x, 30u)], false)), false), true), select(!vec2<bool>(!global0[_wgslsmith_index_u32(84505u, 30u)], global0[_wgslsmith_index_u32(22546u, 30u)] && true), select(vec2<bool>(var_1.b.x >= 61365u, global0[_wgslsmith_index_u32(1u, 30u)] & global0[_wgslsmith_index_u32(var_1.b.x, 30u)]), vec2<bool>(1942f < var_0.a, global0[_wgslsmith_index_u32(~1u, 30u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 30u)], global0[_wgslsmith_index_u32(global1.b.x, 30u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 30u)], false, global0[_wgslsmith_index_u32(78305u, 30u)])))), (~98239u >> (0u % 32u)) >= (_wgslsmith_mult_u32(u_input.b.x, 1u) | ~var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b);
}

