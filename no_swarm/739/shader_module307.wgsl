struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(0u, 0u, 49913u, 41597u, 0u, 4294967295u, 4294967295u, 1u, 1u, 20382u, 0u, 1u, 6768u, 4294967295u, 71106u, 0u, 75382u, 39133u);

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, false, false, true, false, true, false, false, true, true, false, false, true, true, true, false, false, false, true, false, true, false, false, true, false, false, false, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    var var_0 = 124f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))));
}

fn func_2() -> i32 {
    var var_0 = vec4<f32>(1124f, _wgslsmith_f_op_f32(max(-588f, -811f)), 298f, 630f);
    var var_1 = !(!(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 18u)], u_input.a), global1[_wgslsmith_index_u32(88375u, 32u)]), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89558u, 18u)], 18u)], 35642u))), 32u)] | global1[_wgslsmith_index_u32((0u & global0[_wgslsmith_index_u32(4294967295u, 18u)]) | ~global0[_wgslsmith_index_u32(u_input.a, 18u)], 32u)]));
    var var_2 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<i32>(30584i, -1647i, -2147483647i))), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 32u)]), true, vec4<bool>(global1[_wgslsmith_index_u32(63286u, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -741f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) - -1517f);
    var var_4 = countOneBits(1i);
    return 2147483647i;
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 18>();
    var var_0 = _wgslsmith_sub_i32(min(~(-19829i), -23661i), countOneBits(func_2()));
    var var_1 = Struct_2(-vec3<i32>(~(~38219i), -24155i, select(2147483647i, ~26037i, true)));
    let var_2 = 16193u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-433f * -1044f), -1230f, _wgslsmith_f_op_f32(f32(-1f) * -1399f)) + vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1531f, -268f, 1261f), vec3<f32>(1000f, 980f, -1477f))) + vec3<f32>(-384f, -460f, 1918f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-352f, 587f, -1102f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 150f) * _wgslsmith_f_op_f32(-547f * -1364f)) + _wgslsmith_f_op_f32(ceil(1f)))), -_wgslsmith_mult_i32(-var_1.a.x, ~2147483647i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-418f + -150f)))))), -vec2<i32>(countOneBits(select(var_1.a.x, var_1.a.x, true)), _wgslsmith_div_i32(var_1.a.x, -var_1.a.x)));
    return select(!vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], true))), select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3108u, u_input.a), 32u)], global1[_wgslsmith_index_u32(103399u, 32u)]), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 32u)], true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(58281u, 32u)])), vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false), global1[_wgslsmith_index_u32(~u_input.a, 32u)]), select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<bool>(true, false), false), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_2, 32u)]), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], false), vec2<bool>(false, false)), !vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 32u)]), !vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 32u)], global1[_wgslsmith_index_u32(30456u, 32u)])))), (-16609i | var_3.c) < ~50977i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    global0 = array<u32, 18>();
    let var_0 = select(func_1(), vec2<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -29445i), vec2<i32>(1i, 1i)) >= 8229i, any(vec2<bool>(any(vec2<bool>(true, true)), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 32u)]))), true);
    let var_1 = ~_wgslsmith_sub_u32(33722u, _wgslsmith_mult_u32(~abs(1u), _wgslsmith_mult_u32(~u_input.a, ~54184u)));
    let var_2 = vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(abs(vec3<u32>(1u, 27933u, u_input.a)), vec3<u32>(88011u, 0u, var_1)), ~vec3<u32>(1u, u_input.a, 1u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]), 2494u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(18146u, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u)), 69631u), u_input.a)), 0u << (~(2125u << (_wgslsmith_dot_vec3_u32(vec3<u32>(7710u, global0[_wgslsmith_index_u32(16758u, 18u)], 31493u), vec3<u32>(var_1, 0u, u_input.a)) % 32u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(4294967295u), abs(var_1)), 18u)], select(_wgslsmith_div_u32(555u, u_input.a), global0[_wgslsmith_index_u32(1u, 18u)] ^ 1u, global1[_wgslsmith_index_u32(var_1, 32u)] | global1[_wgslsmith_index_u32(var_1, 32u)]), ~(~0u), var_1), ~reverseBits(vec4<u32>(72197u, 3176u, u_input.a, 27187u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1753f, _wgslsmith_f_op_f32(floor(-547f)), _wgslsmith_f_op_f32(f32(-1f) * -2431f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 2032f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1463f - -2819f) * 1282f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1712f * -2628f)))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(-1i, 0i)), _wgslsmith_mod_i32(countOneBits(21778i), -2147483647i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1151f, -1322f)))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, -756f) + vec2<f32>(-1195f, -965f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(263f, -507f)))))), true)), -vec2<i32>(2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(var_3.b, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<i32>(-26057i, var_3.c, -46286i))), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)] != global1[_wgslsmith_index_u32(4294967295u, 32u)], var_3.c < -20170i, var_0.x), !var_0.x || true, vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 32u)] != var_0.x, !global1[_wgslsmith_index_u32(0u, 32u)], false || var_0.x, var_0.x))), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), vec4<u32>(~abs(4294967295u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] % 32u)), 1u >> ((global0[_wgslsmith_index_u32(abs(var_1), 18u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, 24649u), 18u)], 18u)]) % 32u), ~(~min(23425u, 40158u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1), vec2<u32>(75219u, 4294967295u))));
}

