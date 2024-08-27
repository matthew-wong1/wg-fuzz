struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(8911u), Struct_1(46719u), Struct_1(0u), Struct_1(0u), Struct_1(0u), Struct_1(1u), Struct_1(23983u), Struct_1(17080u), Struct_1(22256u), Struct_1(48698u), Struct_1(1u), Struct_1(23871u), Struct_1(14597u), Struct_1(4294967295u), Struct_1(56248u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(40520u), Struct_1(8375u), Struct_1(94978u), Struct_1(102440u), Struct_1(1u), Struct_1(0u), Struct_1(26107u), Struct_1(42871u), Struct_1(1u), Struct_1(74823u), Struct_1(37834u));

var<private> global1: array<f32, 32>;

var<private> global2: array<vec2<i32>, 23>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> u32 {
    global3 = arg_1.b;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(arg_0.b.x, arg_0.c.b.c, 31240u), countOneBits(arg_1.a.x), 29508u, arg_1.b.c), abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(73237u, 1u, 29736u, 9713u), vec4<u32>(u_input.b, 0u, 4294967295u, 69452u))))), 1u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = (u_input.c & min(min(_wgslsmith_div_vec2_u32(vec2<u32>(global3.a.a, arg_0.a), vec2<u32>(global3.c, global3.a.a)), ~u_input.c), vec2<u32>(51411u, 4294967295u))) & ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, arg_0.a), u_input.c, vec2<u32>(global3.c, 4294967295u))));
    var var_1 = var_0.x >> (var_0.x % 32u);
    let var_2 = vec3<bool>(all(vec3<bool>(true, true, true)), true, false);
    var_1 = var_0.x;
    var var_3 = Struct_3(vec3<u32>(~_wgslsmith_mult_u32(33502u | u_input.c.x, func_3(Struct_5(vec3<f32>(-740f, global1[_wgslsmith_index_u32(0u, 32u)], -553f), u_input.c, Struct_3(vec3<u32>(0u, 13979u, global3.c), Struct_2(arg_0, global1[_wgslsmith_index_u32(4195u, 32u)], global3.a.a), Struct_1(arg_0.a), var_2.x), vec3<i32>(1i, -20331i, -2147483647i)), Struct_3(vec3<u32>(72u, 0u, global3.a.a), Struct_2(Struct_1(0u), global3.b, var_0.x), global3.a, false))), _wgslsmith_sub_u32(2893u, 0u), ~reverseBits(arg_0.a)), Struct_2(arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(-404f, global1[_wgslsmith_index_u32(0u << (0u % 32u), 32u)]), 597f), ~arg_0.a), global0[_wgslsmith_index_u32(13888u, 30u)], !var_2.x);
    return Struct_2(global3.a, -970f, firstTrailingBit(~(~func_3(Struct_5(vec3<f32>(-341f, -216f, var_3.b.b), vec2<u32>(u_input.c.x, var_0.x), Struct_3(vec3<u32>(var_0.x, arg_0.a, 1u), var_3.b, global0[_wgslsmith_index_u32(1u, 30u)], var_2.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(vec3<u32>(4294967295u, global3.c, u_input.c.x), Struct_2(Struct_1(4294967295u), 1172f, arg_0.a), Struct_1(211u), true)))));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global0 = array<Struct_1, 30>();
    global3 = func_2(Struct_1(global3.c));
    var var_0 = vec2<i32>(-5224i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, u_input.d, 15709i), vec4<i32>(20560i, u_input.d, 7912i, u_input.d)))), select(_wgslsmith_add_i32(u_input.a.x, firstTrailingBit(-2147483647i)), u_input.d, !arg_0)));
    global2 = array<vec2<i32>, 23>();
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b, 32u)];
    return vec3<i32>(1i, u_input.a.x, u_input.a.x | (-1i | (~var_0.x ^ -12076i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b);
    let var_1 = _wgslsmith_mod_vec3_i32(func_1(true), vec3<i32>(min(u_input.d, _wgslsmith_mult_i32(countOneBits(u_input.a.x), -3249i)), reverseBits(u_input.d), ~u_input.a.x));
    global2 = array<vec2<i32>, 23>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(func_2(global3.a).c, 32u)])), _wgslsmith_f_op_f32(1f * -1743f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(545f, 299f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b), -546f)) - _wgslsmith_f_op_f32(step(global3.b, 1062f)))));
    var var_3 = func_1(true);
    var_3 = -(~countOneBits(vec3<i32>(1i, var_1.x, 9683i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0).a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, 619f, -696f, var_2.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(267f, 210f, global3.b, global3.b), vec4<f32>(-809f, var_2.x, global1[_wgslsmith_index_u32(global3.a.a, 32u)], global3.b), false)))))));
}

