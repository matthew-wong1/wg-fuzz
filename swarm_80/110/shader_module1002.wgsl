struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: array<bool, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(!select(true, true, global1[_wgslsmith_index_u32(u_input.c, 6u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-2007f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(150f * -227f)))), !global1[_wgslsmith_index_u32(u_input.c, 6u)], ~reverseBits(1i), u_input.b.xz);
    var var_1 = Struct_1(vec4<bool>(!(!var_0.a), false, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b.x, -545f)), _wgslsmith_f_op_f32(-var_0.b.x)), any(select(vec4<bool>(var_0.c, true, false, true), select(vec4<bool>(false, var_0.c, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(true, true, false, var_0.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], true, global1[_wgslsmith_index_u32(61328u, 6u)])), false))), _wgslsmith_div_u32(~countOneBits(var_0.e.x), _wgslsmith_div_u32(4294967295u, ~var_0.e.x)) > 1u, select(!vec3<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(109077u, 6u)])), all(vec3<bool>(true, true, true)), true), select(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.e.x, 6u)], global1[_wgslsmith_index_u32(33281u, 6u)]), vec3<bool>(var_0.a, true, global1[_wgslsmith_index_u32(u_input.c, 6u)]), global1[_wgslsmith_index_u32(~var_0.e.x, 6u)]), select(select(vec3<bool>(var_0.c, true, var_0.a), vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.x, 6u)], global1[_wgslsmith_index_u32(17670u, 6u)], true), false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(56211u, 6u)]), select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.x, 6u)], false, false), vec3<bool>(var_0.c, true, true))), !(!vec3<bool>(false, var_0.a, true))), true));
    var_1 = Struct_1(select(!var_1.a, vec4<bool>(select(all(var_1.a.yyy), 1322i < var_0.d, var_0.a || global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_add_i32(var_0.d, var_0.d) != var_0.d, select(var_0.e.x, var_0.e.x, var_0.c) == u_input.a.x, false), any(select(!vec4<bool>(var_1.c.x, var_1.b, true, true), !var_1.a, var_1.a))), false, var_1.c);
    global0 = array<Struct_4, 8>();
    var var_2 = Struct_1(var_1.a, true, select(var_1.a.yyz, vec3<bool>(any(!vec4<bool>(true, false, true, var_0.a)), var_0.c, true), vec3<bool>(var_1.a.x, true, select(var_1.a.x, var_0.c, false) & any(var_1.a.xy))));
    return var_0.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    var var_0 = false;
    global0 = array<Struct_4, 8>();
    let var_1 = func_3();
    global0 = array<Struct_4, 8>();
    let var_2 = (firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 14303u, arg_1.e.e.x), select(arg_1.c.xwz, vec3<u32>(arg_1.c.x, arg_2.e.x, u_input.a.x), vec3<bool>(false, false, true)))) < 50602u) | !(~_wgslsmith_clamp_u32(arg_2.e.x, 3752u, 0u) <= ~firstLeadingBit(arg_2.e.x));
    return _wgslsmith_clamp_i32(1i & arg_2.d, var_1, i32(-1i) * -1i);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    return arg_1.c.e;
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_4, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1692f + -324f)))), _wgslsmith_f_op_f32(step(902f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) * -575f)))));
    var var_1 = func_4(u_input.a.x, Struct_4(firstLeadingBit(vec3<i32>(71798i, func_2(vec3<i32>(-17968i, -1i, 25205i), Struct_3(u_input.b.x, 9131i, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 36515u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], true, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)]), false, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(1u, 6u)])), Struct_2(global1[_wgslsmith_index_u32(69884u, 6u)], vec3<f32>(2138f, -221f, -812f), true, 2147483647i, vec2<u32>(u_input.a.x, u_input.c))), Struct_2(global1[_wgslsmith_index_u32(46572u, 6u)], vec3<f32>(var_0.x, -366f, var_0.x), global1[_wgslsmith_index_u32(0u, 6u)], -9604i, u_input.b.xx), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false)), select(1i, -27971i, true))), Struct_1(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1570u, 6u)], false), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 6u)]), true, !(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 6u)], false))), Struct_3(~(~0u), -2408i, _wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, 36973u, 47837u, u_input.a.x), vec4<u32>(15872u, u_input.c, u_input.b.x, 1u)), vec4<u32>(u_input.a.x, u_input.b.x, u_input.c, 4294967295u) & vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true), all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(1366u, 6u)], false)), select(vec3<bool>(global1[_wgslsmith_index_u32(26388u, 6u)], global1[_wgslsmith_index_u32(13162u, 6u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)]))), Struct_2(!global1[_wgslsmith_index_u32(u_input.b.x, 6u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-2269f, -179f, 1000f) + vec3<f32>(435f, var_0.x, 1275f)), true, -2147483647i, vec2<u32>(6339u, u_input.b.x)))));
    var var_2 = Struct_4(vec3<i32>(~(-var_1.d | ~var_1.d), var_1.d, ~1i), Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 22729u), 6u)], _wgslsmith_f_op_f32(ceil(var_1.b.x)) >= -803f, all(select(vec2<bool>(var_1.c, false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(4294967295u, 6u)]))), global1[_wgslsmith_index_u32(u_input.c, 6u)], select(vec3<bool>(true, true, true), vec3<bool>(!global1[_wgslsmith_index_u32(55577u, 6u)], true, !var_1.a), func_4(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.xy), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.e.x, var_1.e.x), 8u)]).c)), Struct_3(~var_1.e.x, var_1.d, ~(~(~vec4<u32>(1u, u_input.c, 22103u, var_1.e.x))), Struct_1(select(!vec4<bool>(global1[_wgslsmith_index_u32(2647u, 6u)], false, var_1.a, false), select(vec4<bool>(true, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(20744u, 6u)], global1[_wgslsmith_index_u32(6722u, 6u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(52771u, 6u)], true, global1[_wgslsmith_index_u32(32184u, 6u)])), true), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(36745u, u_input.b.x)), 11897u), 6u)], !vec3<bool>(var_1.a, global1[_wgslsmith_index_u32(u_input.c, 6u)], false)), Struct_2(-1122f >= _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_1.b.x)))), true, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, var_1.d), ~vec2<i32>(var_1.d, -25038i)), ~(~vec2<u32>(u_input.b.x, var_1.e.x)))));
    return global0[_wgslsmith_index_u32(var_2.c.c.x, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.e.b.x))) * var_0.c.e.b.x) * var_0.c.e.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, firstLeadingBit(~(~vec4<u32>(4294967295u, var_0.c.e.e.x, 4294967295u, u_input.c))));
}

