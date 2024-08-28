struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<f32, 18>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(-2798i, !vec2<bool>(arg_0.e, true), arg_0.e, 1u);
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(var_0.a, 1i))), _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.d), 7u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(u_input.b, 18698i), vec2<i32>(var_1.a, 37660i)), ~vec2<i32>(var_1.a, var_1.a)) ^ vec2<i32>(_wgslsmith_mult_i32(0i, 1i), u_input.b));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(arg_0.d.xy - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_div_f32(-877f, 1401f)))))));
    return true && arg_0.e;
}

fn func_2() -> u32 {
    let var_0 = !select(vec2<bool>(false, false), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, true))), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)));
    let var_1 = select(vec3<bool>(all(select(vec2<bool>(false, false), !var_0, !var_0.x)), true, !func_3(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 1075f, -1753f, global1[_wgslsmith_index_u32(18702u, 18u)]), vec2<f32>(1000f, -396f), vec4<f32>(-746f, 1030f, -229f, -1078f), true))), !(!(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x), var_0.x))), !vec3<bool>(var_0.x || true, var_0.x, false));
    global1 = array<f32, 18>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(min(0u, 0u), 18u)]))))));
    let var_3 = !select(select(vec4<bool>(true, u_input.a.x < u_input.a.x, true, true), !(!vec4<bool>(false, false, true, var_1.x)), !select(vec4<bool>(false, var_1.x, var_0.x, false), vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_0.x, false, var_1.x, true))), vec4<bool>(var_1.x, all(select(vec2<bool>(var_0.x, var_0.x), var_1.yz, vec2<bool>(true, var_1.x))), !var_0.x, var_0.x), false);
    return 0u << (~u_input.a.x % 32u);
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    global1 = array<f32, 18>();
    global0 = array<vec2<i32>, 7>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, arg_0.d.x) * -1096f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~3921u, 18u)] * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(19897u, 18u)], 202f)))), global1[_wgslsmith_index_u32(~func_2(), 18u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1864f) - arg_0.d.yw))), arg_0.b, select(any(!(!vec2<bool>(arg_0.e, arg_0.e))), !(!arg_0.e & (arg_0.e | arg_0.e)), 12406u == u_input.a.x));
    let var_1 = 1912f;
    global1 = array<f32, 18>();
    return vec2<u32>(reverseBits(0u), ~(~1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.x | u_input.a.x, 18u)] + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(13842u, 18u)]))), global1[_wgslsmith_index_u32(~(~4294967295u), 18u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16255u, 18u)]), global1[_wgslsmith_index_u32(arg_0.x ^ 4294967295u, 18u)])), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, arg_2.x), 18u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, ~u_input.a.x), 18u)], _wgslsmith_div_f32(_wgslsmith_div_f32(-983f, 668f), global1[_wgslsmith_index_u32(0u, 18u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], -128f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -1511f), vec2<f32>(251f, global1[_wgslsmith_index_u32(arg_0.x, 18u)]))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-387f, -1000f, -894f, 193f) - vec4<f32>(global1[_wgslsmith_index_u32(95340u, 18u)], global1[_wgslsmith_index_u32(79913u, 18u)], global1[_wgslsmith_index_u32(43031u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], 249f, -1021f))), !vec4<bool>(arg_1.x, false, true, arg_1.x))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(-2350f, global1[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(14396u, 18u)], arg_1.x)), _wgslsmith_f_op_f32(1939f - global1[_wgslsmith_index_u32(arg_0.x, 18u)]), _wgslsmith_f_op_f32(f32(-1f) * -574f))))), true);
    global0 = array<vec2<i32>, 7>();
    var var_1 = ~_wgslsmith_sub_u32(~arg_0.x, firstTrailingBit(u_input.a.x));
    let var_2 = var_0;
    let var_3 = u_input.b;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.ww * var_0.b.yx) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], 2516f))))), var_2.b.zw)), arg_2.wxz | vec3<u32>(1u, 1u & ~arg_2.x, u_input.a.x), _wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(1592u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], vec2<i32>(39025i, var_3)), global0[_wgslsmith_index_u32(~0u, 7u)]), firstTrailingBit(50401u) ^ (u_input.a.x ^ func_2()), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(25206u, reverseBits(~40957u)), firstTrailingBit(func_1(Struct_2(global1[_wgslsmith_index_u32(0u, 18u)], vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 749f, -1316f), vec2<f32>(global1[_wgslsmith_index_u32(0u, 18u)], -1112f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 1084f, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], -1280f), true)))), !(!vec2<bool>(all(vec2<bool>(true, true)), false)), _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u), u_input.a) ^ select(vec4<u32>(u_input.a.x, 49540u, 11210u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 70339u), vec4<bool>(false, false, true, false))), _wgslsmith_mult_vec4_u32(~(~u_input.a), vec4<u32>(~0u, u_input.a.x, u_input.a.x, u_input.a.x))));
}

