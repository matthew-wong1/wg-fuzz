struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-1i, 27713i, 0i, -5154i), vec4<i32>(-5155i, -35040i, -38180i, -1i), vec4<i32>(0i, 3363i, 0i, -1i), vec4<i32>(4960i, 1i, 1i, -1i), vec4<i32>(-19295i, 2147483647i, 18594i, 1i), vec4<i32>(-5306i, 0i, 1i, 15684i), vec4<i32>(1i, -1i, -23299i, -1i), vec4<i32>(-1i, 11366i, 49920i, 23888i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i), vec4<i32>(-6319i, 58271i, 0i, 0i), vec4<i32>(-4220i, -1i, -1047i, -27133i), vec4<i32>(-9350i, 25709i, 12770i, -1i), vec4<i32>(1i, -42049i, -45825i, 30965i), vec4<i32>(5777i, 3051i, 6338i, 6576i), vec4<i32>(1233i, 23681i, i32(-2147483648), -1i), vec4<i32>(34854i, 0i, 8837i, -21650i), vec4<i32>(0i, 62609i, -18273i, -51101i), vec4<i32>(6753i, 27143i, 19636i, 21088i), vec4<i32>(0i, -19359i, 50836i, 1i), vec4<i32>(63141i, 8679i, 2147483647i, -1i), vec4<i32>(24875i, 36862i, 1i, -1i), vec4<i32>(27592i, 1i, 0i, i32(-2147483648)), vec4<i32>(0i, -8514i, -10214i, -1i), vec4<i32>(-40673i, 1i, 1i, 0i), vec4<i32>(-907i, -1234i, -80290i, 1i), vec4<i32>(2147483647i, -49245i, -42769i, 30709i), vec4<i32>(7651i, i32(-2147483648), 2147483647i, -1570i), vec4<i32>(2147483647i, 1i, 35672i, i32(-2147483648)), vec4<i32>(-1i, -28305i, 16788i, -1i), vec4<i32>(-7093i, 2147483647i, 1i, 2147483647i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - var_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.b.x, -1000f))))) * vec4<f32>(1000f, arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x * -213f), 1148f)) - 1f)));
    global0 = array<vec4<i32>, 30>();
    var_1 = false;
    return firstTrailingBit(var_0.c);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = -516f;
    global0 = array<vec4<i32>, 30>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), arg_2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1474f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-183f, var_0, false)) + _wgslsmith_f_op_f32(374f * arg_2.b.b.x)))), _wgslsmith_f_op_f32(arg_2.b.a - _wgslsmith_f_op_f32(sign(491f))));
    var var_2 = Struct_1(1643f, vec2<f32>(_wgslsmith_f_op_f32(select(-787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(726f)) - 1607f), !(!arg_2.c))), _wgslsmith_f_op_f32(arg_2.b.a - var_0)), 19750i, ~1u, ~(0u << (firstLeadingBit(~arg_2.a.x) % 32u)));
    let var_3 = !(!vec4<bool>(true, !(!arg_2.c), select(all(vec2<bool>(arg_2.c, true)), any(vec4<bool>(true, arg_2.c, arg_2.c, true)), arg_2.c), arg_2.c));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(113899u, 4294967295u, u_input.b.x), abs(vec3<u32>(0u, abs(firstLeadingBit(406u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, arg_2.b.d, arg_2.a.x), firstTrailingBit(vec4<u32>(arg_0, 4240u, 50628u, 4294967295u))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    var var_0 = ~vec3<u32>(~func_3(~arg_0.x, _wgslsmith_mult_i32(u_input.c, -1i), Struct_2(vec3<u32>(u_input.b.x, 0u, 44810u), Struct_1(arg_2.x, vec2<f32>(717f, arg_1), -16009i, 4294967295u, 1u), true, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), func_2(Struct_1(-122f, arg_2.zx, 30614i, u_input.b.x, 1249u), vec4<i32>(-12884i, 2147483647i, 0i, u_input.a.x))), u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 36625u));
    global0 = array<vec4<i32>, 30>();
    var_0 = vec3<u32>(~(~arg_0.x), min(arg_0.x, 17892u), ~(~(u_input.b.x >> (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u))));
    var var_1 = Struct_3(vec2<bool>(((0u | u_input.b.x) & abs(0u)) == arg_0.x, false), true);
    var_1 = Struct_3(select(select(var_1.a, !var_1.a, !var_1.a), select(vec2<bool>(var_1.b, all(vec2<bool>(var_1.a.x, var_1.b))), !(!vec2<bool>(var_1.b, var_1.b)), vec2<bool>(all(vec4<bool>(false, false, true, var_1.b)), false)), select(vec2<bool>(var_1.a.x, var_1.b), select(vec2<bool>(true, var_1.a.x), vec2<bool>(true, true), select(var_1.a, var_1.a, var_1.a.x)), select(var_1.a, vec2<bool>(var_1.b, var_1.a.x), true))), true);
    return -u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = 19117u;
    var var_1 = Struct_4(Struct_1(-245f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1517f - -100f), 408f), _wgslsmith_f_op_f32(trunc(-978f))), -46883i, 47785u, u_input.b.x), 1u < ~arg_0);
    let var_2 = u_input.b;
    global0 = array<vec4<i32>, 30>();
    global0 = array<vec4<i32>, 30>();
    return StorageBuffer(~(~68494u), var_1.a.b, ~1u, vec3<f32>(_wgslsmith_f_op_f32(686f - var_1.a.b.x), _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(ceil(634f))), var_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(20108u, -(vec2<i32>(-2147483647i, func_1(vec3<u32>(0u, u_input.b.x, 33213u), 869f, vec3<f32>(560f, 866f, 1172f))) ^ min(vec2<i32>(4976i, u_input.c), abs(vec2<i32>(u_input.c, u_input.d.x)))), Struct_3(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(any(vec4<bool>(true, true, true, true)), true, false)));
}

