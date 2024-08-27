struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(false != (arg_0.c | true), false, true | !arg_0.a.x, true), -1249f, arg_0.a.x, _wgslsmith_f_op_vec3_f32(arg_0.d + vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), arg_0.b);
    let var_1 = _wgslsmith_sub_i32(max(u_input.d, u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.c & vec4<i32>(-10403i, u_input.c.x, u_input.c.x, u_input.d), _wgslsmith_add_vec4_i32(abs(u_input.c), vec4<i32>(u_input.d, 47045i, 2147483647i, u_input.d))), u_input.c));
    global0 = array<Struct_1, 26>();
    let var_2 = Struct_1(vec4<bool>(true, !any(select(vec4<bool>(true, false, true, var_0.a.x), var_0.a, false)), var_0.c, !(!(arg_1 > 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(-arg_2.x)) - 1708f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(floor(-120f)))))) <= _wgslsmith_f_op_f32(var_0.b - arg_0.d.x), var_0.d, 1051f);
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(53126u, 22932u), vec2<u32>(u_input.b, u_input.b))), min(~firstTrailingBit(vec2<u32>(arg_1, 4294967295u)), ~countOneBits(vec2<u32>(1u, 1u)))), u_input.b, _wgslsmith_mult_u32(u_input.b, arg_1), u_input.b);
    return any(var_0.a);
}

fn func_2() -> u32 {
    let var_0 = ~vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(8406u, u_input.b))) << ((_wgslsmith_add_u32(9196u, 30750u) ^ ~u_input.b) % 32u), ~_wgslsmith_add_u32(_wgslsmith_add_u32(66103u, 0u), ~u_input.b));
    let var_1 = Struct_1(vec4<bool>((9084u >> ((u_input.b << (4294967295u % 32u)) % 32u)) > u_input.b, true || func_3(global0[_wgslsmith_index_u32(~50964u, 26u)], ~u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1503f, -206f) + vec2<f32>(345f, -721f))), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1837f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f)))), !all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 498f, 1392f) + vec3<f32>(547f, -512f, 604f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, 267f, -1000f) + vec3<f32>(1250f, 399f, -1215f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2500f, 1345f, 164f)), any(vec3<bool>(false, false, true)))), true))), _wgslsmith_f_op_f32(ceil(274f)));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_2 = ~u_input.b;
    return ~(1u & ~countOneBits(var_0.x)) & ~6701u;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~func_2(), ~arg_0);
    var_0 = u_input.b;
    var var_1 = !all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1400u, 1u, arg_0, arg_0)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, arg_0), vec4<u32>(u_input.b, 1u, arg_0, u_input.b)), ~vec4<u32>(0u, 0u, arg_0, 0u)) >> (~select(vec4<u32>(arg_0, u_input.b, 7210u, u_input.b), vec4<u32>(1u, 77404u, u_input.b, arg_0), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)))), 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(vec4<bool>(true, arg_1.c, false, !(!arg_3.a.x)), arg_1.a, true), _wgslsmith_f_op_f32(-arg_1.e), ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(1u, u_input.b, 4294967295u, 4651u)) << ((u_input.b << (u_input.b % 32u)) % 32u)) | 5046u) < ~4294967295u, arg_0.d, -270f);
    global0 = array<Struct_1, 26>();
    let var_1 = arg_3;
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(13616u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, 1u, 27511u)), vec4<u32>(u_input.b, u_input.b, u_input.b, 39209u)), u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 55176u, 0u, 90741u)), ~vec4<u32>(43357u, 4294967295u, 4294967295u, u_input.b)), ~abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), vec3<u32>(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.b))), u_input.b, func_2()));
    global0 = array<Struct_1, 26>();
    return Struct_1(vec4<bool>(all(!select(vec4<bool>(false, false, arg_0.c, arg_1.a.x), var_0.a, var_0.a.x)), (true | (arg_0.d.x == 1312f)) & all(arg_0.a.wzy), (_wgslsmith_div_u32(1u, 5409u) & var_2.x) < u_input.b, all(vec4<bool>(arg_1.c, arg_3.c, arg_3.b >= 112f, var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * arg_3.d.x), any(var_0.a.wzy) & select(true, any(!arg_0.a.zz), !arg_0.c != !var_0.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.e)), _wgslsmith_f_op_f32(-1110f - func_1(4294967295u).b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(656f * 138f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), -365f, _wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_f_op_f32(-682f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - _wgslsmith_f_op_f32(arg_1.d.x * -293f)), 626f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = func_4(global0[_wgslsmith_index_u32(0u, 26u)], func_1(u_input.b), vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-43382i, -15405i, -13303i), 1i), u_input.d, ~u_input.d), global0[_wgslsmith_index_u32(u_input.b, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 38107u), ~vec4<u32>(19026u, 8063u, u_input.b, 31912u)), reverseBits(countOneBits(u_input.b)))), u_input.d);
}

