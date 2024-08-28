struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(21249u, 0u), vec2<u32>(63287u, 0u), vec2<u32>(0u, 40491u), vec2<u32>(0u, 6688u), vec2<u32>(72625u, 74641u), vec2<u32>(12382u, 77800u), vec2<u32>(52660u, 19555u), vec2<u32>(42091u, 72487u), vec2<u32>(4294967295u, 0u), vec2<u32>(10952u, 0u), vec2<u32>(0u, 116929u), vec2<u32>(50711u, 68968u), vec2<u32>(19445u, 64451u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 33199u), vec2<u32>(27752u, 0u));

var<private> global1: vec2<f32> = vec2<f32>(644f, -1000f);

var<private> global2: vec2<f32>;

var<private> global3: bool = false;

var<private> global4: array<vec2<bool>, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(firstLeadingBit(~u_input.b.x));
    var var_1 = arg_1;
    let var_2 = -_wgslsmith_clamp_i32(0i, min(var_1.a, 1i), 7344i) != 38112i;
    var var_3 = u_input.a.x;
    var var_4 = ~vec4<i32>(i32(-1i) * -2147483647i, 0i, 33206i, arg_1.a);
    return _wgslsmith_f_op_f32(-203f * _wgslsmith_f_op_f32(-global2.x));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(abs(_wgslsmith_mod_i32(-11072i >> (~u_input.a.x % 32u), u_input.c)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-2597f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -269f, false)) - _wgslsmith_f_op_f32(global2.x - -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-66499i), Struct_1(-2147483647i), false, Struct_1(2147483647i)), var_0))))));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1726f, global2.x), vec2<f32>(706f, 805f))) + _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global1.x), vec2<f32>(global1.x, global2.x))) - vec2<f32>(global2.x, global2.x)))));
    global4 = array<vec2<bool>, 4>();
    var var_1 = vec2<i32>(-6487i, ~countOneBits(-28580i));
    return any(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, firstLeadingBit(u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x)) | 125880u, 4u)]);
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(abs(_wgslsmith_sub_i32(-6086i ^ _wgslsmith_mult_i32(u_input.c, arg_0.a.a), -arg_0.a.a)));
    let var_1 = 12624u;
    global0 = array<vec2<u32>, 16>();
    let var_2 = u_input.b.x;
    global3 = u_input.a.x <= (_wgslsmith_div_u32((4294967295u << (u_input.a.x % 32u)) >> (u_input.a.x % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.a.x), countOneBits(var_1))) << (min(u_input.a.x, 1u) % 32u));
    return -894f;
}

fn func_1() -> f32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-243f - _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(-33196i), Struct_1(u_input.c), func_2(false, global1.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.c)), Struct_1(80568i))))), global1.x);
    global0 = array<vec2<u32>, 16>();
    let var_0 = vec2<bool>(any(select(!global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 4u)], vec2<bool>(true, true), true)), false);
    let var_1 = Struct_1(_wgslsmith_div_i32(~u_input.c, u_input.c));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(392f, 286f, 728f, global2.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.x, 591f, -1855f), vec4<f32>(global2.x, -1104f, 2594f, -995f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-global1.x), 296f, global2.x)))));
    return 1750f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(abs(u_input.c), min(u_input.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -49641i), u_input.b.yy) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(6789i, 34476i), vec2<i32>(u_input.b.x, 58705i)) & -15772i)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(511f)))))))), _wgslsmith_f_op_f32(select(139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1669f), _wgslsmith_f_op_f32(func_1())))), false)));
    var var_2 = Struct_1(firstLeadingBit(1i));
    let var_3 = Struct_2(Struct_1(~_wgslsmith_mult_i32(var_2.a, var_0)), Struct_1(~(-(var_2.a >> (25809u % 32u)))), select(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true || (true && any(global4[_wgslsmith_index_u32(1u, 4u)]))), Struct_1(var_0));
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-975f, _wgslsmith_f_op_f32(var_1 + global2.x))), _wgslsmith_f_op_f32(-global1.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * global1.x))), _wgslsmith_f_op_f32(global1.x + -778f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + 742f), global1.x, -713f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(427f, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 501f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-710f, global1.x) * vec2<f32>(global2.x, global1.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))))), -2147483647i, reverseBits(~(~_wgslsmith_mult_u32(39168u, u_input.a.x))), _wgslsmith_div_vec2_i32(u_input.b.yz, u_input.b.yx ^ ~max(u_input.b.yy, vec2<i32>(0i, var_2.a))));
}

