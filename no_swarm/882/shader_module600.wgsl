struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global0 = array<vec3<f32>, 20>();
    let var_0 = abs(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(0u, u_input.b.x), ~u_input.b.zz), countOneBits(1u)));
    global0 = array<vec3<f32>, 20>();
    var var_1 = 1187i;
    var var_2 = abs(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, ~0u), _wgslsmith_dot_vec4_u32(max(u_input.b, firstLeadingBit(vec4<u32>(73938u, 4294967295u, 0u, var_0.x))), ~select(u_input.b, u_input.b, true))));
    return _wgslsmith_f_op_f32(sign(arg_0.x));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1273f, -980f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(207f, -491f, true)), _wgslsmith_f_op_f32(1366f + -557f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -434f)))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 98552u, 61410u), vec3<u32>(34u, 4294967295u, 0u)), _wgslsmith_add_u32(u_input.b.x, reverseBits(u_input.b.x))), vec2<u32>(u_input.b.x ^ ~1u, u_input.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, -475f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(985f, 625f), vec2<f32>(765f, 428f)))) + _wgslsmith_f_op_vec2_f32(func_3()))));
    let var_1 = Struct_4(var_0.b.x, vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b.x, -1500f, false)), _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_div_f32(var_0.b.x, -188f), -1568f), Struct_2(Struct_1(true, ~abs(u_input.b.xyw), _wgslsmith_f_op_f32(244f - -1295f)), var_0.b, Struct_1(true, select(u_input.b.xxz, vec3<u32>(17811u, 60353u, var_0.a.x), false) & vec3<u32>(u_input.b.x, var_0.a.x, 0u), 2243f), _wgslsmith_sub_u32(~abs(29057u), firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))));
    global0 = array<vec3<f32>, 20>();
    var_0 = Struct_3((~(vec2<u32>(var_1.c.d, 4294967295u) ^ vec2<u32>(var_1.c.a.b.x, 4294967295u)) >> (~var_0.a % vec2<u32>(32u))) << ((~var_1.c.c.b.yx << (u_input.b.zz % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.zx)));
    let var_2 = -u_input.a.x;
    return Struct_2(Struct_1(var_2 < ~var_2, _wgslsmith_div_vec3_u32(~var_1.c.c.b << (u_input.b.wzz % vec3<u32>(32u)), countOneBits(vec3<u32>(var_1.c.a.b.x, var_1.c.c.b.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.a.c, 1f) * var_0.b.x)), _wgslsmith_f_op_vec2_f32(select(var_1.c.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1001f) + var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -948f))), select(select(vec2<bool>(var_1.c.c.a, false), vec2<bool>(true, true), true), select(vec2<bool>(var_1.c.a.a, false), vec2<bool>(false, var_1.c.a.a), var_1.c.c.a), select(false, true, var_1.c.a.a)))), all(!(!vec4<bool>(var_1.c.a.a, var_1.c.a.a, var_1.c.a.a, true))))), var_1.c.a, ~var_0.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = func_2().c.b;
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    var var_1 = arg_1.b.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 20u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(57239u, 20u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2047f, 1000f, -176f, -430f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-360f, 976f, 724f, 1926f), vec4<f32>(-1000f, 196f, -500f, -381f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2235f, 457f, -1372f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(171f)), 1000f, _wgslsmith_f_op_f32(1032f + 651f), _wgslsmith_f_op_f32(select(1916f, -787f, false))))), func_4(func_2(), Struct_4(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(167f, -522f), vec2<f32>(-121f, 1900f), false)), func_2().c, ~19384u)), u_input.a.x, !(!(u_input.b.x > 52851u))));
    let var_1 = firstTrailingBit(u_input.b);
    let var_2 = u_input.b.wzy;
    let var_3 = Struct_3(abs(vec2<u32>(_wgslsmith_mult_u32(1589u, var_1.x << (13305u % 32u)), firstLeadingBit(var_0.c.c.b.x))), _wgslsmith_f_op_vec2_f32(var_0.c.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.c.a.c) + _wgslsmith_f_op_vec2_f32(func_3()))));
    var var_4 = var_0.c;
    var_4 = func_4(var_0.c, var_0, ~2147483647i, false);
    let var_5 = _wgslsmith_mult_i32(~u_input.a.x, 0i);
    let var_6 = Struct_3(~abs(func_4(func_2(), var_0, reverseBits(var_5), true).c.b.xz), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(-6878i, var_5), vec2<i32>(u_input.a.x, 2147483647i)) << (1u % 32u)) << (_wgslsmith_dot_vec4_u32(~u_input.b, min(vec4<u32>(var_4.c.b.x, var_1.x, 8120u, u_input.b.x), vec4<u32>(0u, var_2.x, 42183u, 0u))) % 32u), _wgslsmith_clamp_i32(u_input.a.x, 25572i, 1i), 1i, ~(-1i)), _wgslsmith_f_op_f32(1463f * _wgslsmith_f_op_f32(var_6.b.x + var_0.b.x)));
}

