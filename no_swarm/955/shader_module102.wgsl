struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: u32 = 30083u;

var<private> global2: array<u32, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<u32, 18>();
    var var_0 = -952f;
    global0 = array<vec4<f32>, 22>();
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)])), vec2<u32>(48317u, 4294967295u) >> (vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(arg_0.a, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 18u)], 18u)], 18u)], 18u)]) ^ vec2<u32>(arg_0.a, 49810u), ~vec2<u32>(arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 18u)]))) ^ vec2<u32>(arg_0.a, _wgslsmith_mod_u32(~21442u, global2[_wgslsmith_index_u32(4294967295u, 18u)] | 0u)), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, false))));
    return _wgslsmith_sub_u32(var_1.a.x, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_1.a.x, 15453u, 23425u, var_1.a.x)), ~(vec4<u32>(var_1.a.x, arg_0.a, 38380u, arg_0.a) << (vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(arg_0.a, 18u)], arg_0.a) % vec4<u32>(32u)))), 18u)]);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global0 = array<vec4<f32>, 22>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(func_3(Struct_2(countOneBits(~1u))), 18u)]);
    var var_1 = arg_0;
    var_0 = Struct_2(~1u);
    global2 = array<u32, 18>();
    return Struct_2(~arg_0.a.x);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<u32, 18>();
    var var_0 = func_2(Struct_1((~vec2<u32>(global2[_wgslsmith_index_u32(21233u, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39274u, 18u)], 18u)], 18u)]) & ~vec2<u32>(global2[_wgslsmith_index_u32(466u, 18u)], global2[_wgslsmith_index_u32(50150u, 18u)])) | _wgslsmith_div_vec2_u32(vec2<u32>(38788u, 0u) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38634u, 18u)], 18u)], 18u)], 18u)], 18u)], 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(58225u, global2[_wgslsmith_index_u32(4294967295u, 18u)])), !(!vec4<bool>(false, arg_0, false, arg_0))), _wgslsmith_clamp_u32(93734u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(66640u, 18u)], 23759u), 18u)], 18u)], 18u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)]) | ~(~global2[_wgslsmith_index_u32(8643u, 18u)]), ~34693u));
    global1 = 40128u;
    let var_1 = _wgslsmith_sub_u32(~(~reverseBits(var_0.a)), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~37834u | var_0.a, 18u)], 4294967295u) << (~(abs(global2[_wgslsmith_index_u32(var_0.a, 18u)]) & 0u) % 32u));
    var_0 = Struct_2(abs(5726u));
    return Struct_1(~vec2<u32>(var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<u32>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(var_1, 18u)])), ~vec2<u32>(var_0.a, 32353u))), !select(!(!vec4<bool>(false, arg_0, true, arg_0)), select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, true, false, false), vec4<bool>(true, true, arg_0, false)), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(290f, 648f)))) - _wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(-133f - -160f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(345f, -584f), _wgslsmith_f_op_f32(f32(-1f) * -882f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f * _wgslsmith_f_op_f32(751f - -509f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f + -903f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(true, _wgslsmith_sub_vec4_i32(vec4<i32>(-17200i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))), all(vec4<bool>(false, true, false, true))))));
    let var_1 = 879f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, -486f, true)), 512f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-376f, -113f), vec2<f32>(var_0.x, var_0.x), true))))))));
    var_2 = vec2<f32>(var_1, var_2.x);
    let var_3 = global2[_wgslsmith_index_u32(40817u, 18u)];
    let var_4 = func_1(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), ~(~countOneBits(select(vec4<i32>(-79015i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), false))));
    let var_5 = Struct_2(var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(-1i, ~7486i << (global2[_wgslsmith_index_u32(firstLeadingBit(var_4.a.x), 18u)] % 32u)), select(func_1(true, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -9232i, -29974i, 0i) & vec4<i32>(0i, -43019i, -14167i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 37218i), vec4<i32>(u_input.a, u_input.a, -20547i, 0i)))).a, ~var_4.a, var_4.b.zy), u_input.a);
}

