struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<i32, 1> = array<i32, 1>(75189i);

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(59239i, !any(vec2<bool>(true, true)));
    var var_1 = Struct_1(19747u >> (~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(22028u, 0u)) % 32u));
    global1 = array<i32, 1>();
    let var_2 = _wgslsmith_f_op_f32(389f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_div_f32(2450f, _wgslsmith_f_op_f32(round(3455f))))))));
    var var_3 = ~4294967295u;
    return 476f;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f * -161f)), -661f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-785f))), -404f)));
    global0 = array<Struct_4, 18>();
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2111f, var_0.x, -512f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(235f)) * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-213f, 242f))), var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, _wgslsmith_f_op_f32(abs(-980f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-237f, 677f, -663f)))))))));
    return _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<i32, 1>();
    global0 = array<Struct_4, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f * 651f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(20611u, 1u, 9979u), global1[_wgslsmith_index_u32(4294967295u, 1u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f + -337f) - -635f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f * 1907f) - _wgslsmith_f_op_f32(floor(210f))))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(579f - -1435f), -879f, _wgslsmith_f_op_f32(123f - -1341f), -2049f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, 698f, -1099f, 1813f) * vec4<f32>(3030f, 827f, 632f, 982f)), vec4<f32>(-1000f, 314f, 686f, 310f), true)) - vec4<f32>(-1502f, -2620f, _wgslsmith_f_op_f32(f32(-1f) * -2398f), -123f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)), -674f, _wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -478f)))))));
    return Struct_1(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a, 38745u, arg_1.x)), vec4<u32>(u_input.b.x, 1u, arg_1.x, u_input.a))) | ~(~_wgslsmith_mult_u32(u_input.b.x, arg_1.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = ~u_input.b.x;
    var_0 = abs(~firstLeadingBit(~u_input.b.x));
    var var_1 = Struct_4(Struct_3(1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(func_2()))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2007f + 187f))), arg_1, arg_1.a, _wgslsmith_dot_vec3_u32(u_input.b, ((vec3<u32>(0u, 39628u, arg_1.a) & u_input.b) & u_input.b) | u_input.b), 156f);
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(func_1(any(select(vec2<bool>(arg_2, false), vec2<bool>(true, var_1.a.b), vec2<bool>(true, var_1.a.b))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a, 0u), ~u_input.b.yx, vec2<u32>(var_1.c, 4294967295u) & vec2<u32>(u_input.a, 65711u))).a, 29622u, ~arg_1.a), vec3<u32>(~1u, ~(~88102u), _wgslsmith_dot_vec2_u32(~u_input.b.zz, vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 452u))));
    let var_3 = Struct_5(Struct_1(~(~var_2.x)), vec2<i32>(max(arg_0.x, arg_0.x), 2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 0i), arg_0)), vec3<i32>(-1i, u_input.d ^ _wgslsmith_dot_vec2_i32(~arg_0.zy, ~vec2<i32>(var_1.a.a, 29571i)), min(u_input.c, -67608i)), true, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~(-vec4<i32>(-1i, global1[_wgslsmith_index_u32(36577u, 1u)], -40708i, global1[_wgslsmith_index_u32(12334u, 1u)])), -vec4<i32>(arg_0.x, 2147483647i, var_1.a.a, -2147483647i) ^ ~vec4<i32>(global1[_wgslsmith_index_u32(var_1.d, 1u)], u_input.c, global1[_wgslsmith_index_u32(var_1.b.a, 1u)], arg_0.x)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a, 1u)], 0i, -35997i, -23202i) ^ vec4<i32>(-2147483647i, var_1.a.a, -2147483647i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.x, 4020i, u_input.c), vec4<i32>(2147483647i, -2147483647i, 0i, u_input.d)))), -vec4<i32>(u_input.c, -23415i, global1[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.x) | vec4<i32>(-1i | arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a, -15599i, 13249i, arg_0.x), vec4<i32>(var_1.a.a, arg_0.x, -1125i, var_1.a.a)), _wgslsmith_mult_i32(var_1.a.a, 2147483647i), global1[_wgslsmith_index_u32(31222u, 1u)] << (var_2.x % 32u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.a), ~(~_wgslsmith_mult_u32(u_input.a, 51020u)) & func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.d, -18041i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], u_input.d, 2147483647i)), func_1(true, vec2<u32>(u_input.b.x, u_input.b.x)), true));
    var var_1 = Struct_4(Struct_3(u_input.d, true), global2[_wgslsmith_index_u32(0u, 28u)], 4602u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.b.x, 22388u, 1u), var_0.x, var_0.x), ~_wgslsmith_sub_u32(1u, 1u)), 436f);
    global1 = array<i32, 1>();
    global3 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e, 588f, 1138f) + vec3<f32>(var_1.e, 516f, var_1.e))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

