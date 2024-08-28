struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 7>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, -1i, 8511i, 2147483647i), vec4<i32>(i32(-2147483648), -19303i, 55933i, -13448i));

var<private> global3: vec4<u32> = vec4<u32>(50747u, 4294967295u, 19045u, 1u);

var<private> global4: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, true)) && true, any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false))), select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    var var_1 = _wgslsmith_sub_i32(-countOneBits(~(i32(-1i) * -26540i)), select(-1i, 16919i, false));
    global0 = Struct_4(global0.a);
    var var_2 = global0.a;
    var_1 = _wgslsmith_clamp_i32(0i, ~min(-2147483647i, ~global1[_wgslsmith_index_u32(u_input.d, 7u)]), u_input.a);
    return _wgslsmith_sub_u32(~min(firstLeadingBit(_wgslsmith_add_u32(0u, u_input.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 55360u, 55178u), vec3<u32>(1u, 4294967295u, global3.x), vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<u32>(3426u, u_input.d, global3.x))), ~(~(20816u << (global3.x % 32u))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: bool) -> vec4<u32> {
    var var_0 = ~func_3(_wgslsmith_f_op_f32(select(global0.a.a.x, global0.a.a.x, arg_0.a.x)));
    var var_1 = select(1u, 4294967295u, true && all(!vec4<bool>(true, false, arg_0.b, true))) | 1u;
    let var_2 = Struct_1(global3.ww, vec4<bool>(false, true, arg_0.a.x, true), vec4<i32>(-1i) * -global2[_wgslsmith_index_u32(u_input.d, 2u)]);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1537f, 1231f) + _wgslsmith_f_op_f32(max(global0.a.a.x, 457f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -826f))) - _wgslsmith_f_op_f32(f32(-1f) * -597f))) - vec2<f32>(global0.a.a.x, -933f));
    let var_4 = Struct_5(global0.a, -172f, global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27265u), var_2.a ^ vec2<u32>(4294967295u, 20423u)) & 13254u), 7u)]);
    return ~(~(~(~select(vec4<u32>(u_input.d, 10434u, var_2.a.x, 1u), vec4<u32>(1u, global3.x, 1u, 126020u), vec4<bool>(false, false, false, arg_3)))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global2 = array<vec4<i32>, 2>();
    global3 = ~(~_wgslsmith_mod_vec4_u32(~func_2(Struct_3(vec2<bool>(true, false), true, false), global1[_wgslsmith_index_u32(75525u, 7u)], global1[_wgslsmith_index_u32(global3.x, 7u)], false), _wgslsmith_add_vec4_u32(vec4<u32>(16157u, u_input.d, u_input.d, global3.x), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)) >> (~vec4<u32>(global3.x, 57694u, global3.x, global3.x) % vec4<u32>(32u))));
    let var_0 = any(vec3<bool>(true, true, true));
    let var_1 = global3.x ^ ~u_input.d;
    var var_2 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(!var_0, any(!vec4<bool>(true, var_0, false, false)))), _wgslsmith_mult_i32(abs(0i ^ u_input.c.x), i32(-1i) * -global1[_wgslsmith_index_u32(u_input.d, 7u)]) < select(-_wgslsmith_div_i32(-41003i, -60916i), firstTrailingBit(41107i) ^ _wgslsmith_clamp_i32(-44100i, -41730i, 2147483647i), var_0), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 0i, u_input.c.x), vec3<i32>(1i, u_input.b, arg_0.x)) >= -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4558i, global1[_wgslsmith_index_u32(1u, 7u)], arg_0.x), vec4<i32>(u_input.b, arg_0.x, global1[_wgslsmith_index_u32(3989u, 7u)], -44318i))));
    return global0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global2 = array<vec4<i32>, 2>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.a.x)))))));
    let var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), true)));
    let var_3 = global1[_wgslsmith_index_u32(~(~abs(~u_input.d)) | _wgslsmith_div_u32(global3.x, 0u ^ _wgslsmith_div_u32(~global3.x, ~global3.x)), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(-vec4<i32>(-9565i, 0i, var_0, 12379i))))), -356f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2691f - _wgslsmith_f_op_f32(global0.a.a.x - 1000f)), global0.a.a.x, true))), vec3<u32>(min(_wgslsmith_add_u32(global3.x << (64558u % 32u), select(u_input.d, 28698u, var_2.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.zwz, global3.xyx, global3.xzx), _wgslsmith_mult_vec3_u32(global3.xwy, vec3<u32>(11392u, 79786u, global3.x)))), global3.x, 65780u), global0.a.a.x, ~global3.x);
}

