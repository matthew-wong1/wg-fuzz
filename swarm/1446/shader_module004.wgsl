struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: u32;

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    global3 = array<f32, 27>();
    var var_0 = !arg_1.b;
    global1 = 32554u;
    var var_1 = Struct_1(578u ^ arg_1.a, false, arg_1.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(select(global2.x, -1636f, false))), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, global2.x) * vec2<f32>(-1033f, 479f)) * arg_1.d) * vec2<f32>(-684f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.a, 27u)]))), arg_1.c.zx)));
    return Struct_1(u_input.a.x, arg_1.c.x, vec3<bool>(arg_1.b, true, true), arg_1.d);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1947f)))) != -1000f;
    global0 = array<Struct_1, 25>();
    let var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_f32(sign(395f));
    global0 = array<Struct_1, 25>();
    return global0[_wgslsmith_index_u32(arg_1.a, 25u)];
}

fn func_1() -> bool {
    var var_0 = func_2(1i, global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.b, 4294967295u), ~u_input.a.x), 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    var var_1 = Struct_1(~abs(select(firstTrailingBit(12026u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), func_2(1i, Struct_1(11086u, var_0.c.x, vec3<bool>(var_0.b, var_0.b, var_0.b), var_0.d), -444f).b)), func_2(min(-reverseBits(29798i), _wgslsmith_clamp_i32(-42477i, -8678i, 2147483647i) >> (u_input.b % 32u)), func_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(9059i, 1i, 10871i)), global0[_wgslsmith_index_u32(66168u, 25u)], global2.x), _wgslsmith_f_op_f32(min(-458f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1528f - -1008f), _wgslsmith_div_f32(609f, 733f)))))).c.x, select(select(var_0.c, vec3<bool>(true, false, true), select(!var_0.c, var_0.c, var_0.c.x)), vec3<bool>(false, false, !(!var_0.c.x)), var_0.c), var_0.d);
    global1 = ~0u;
    global3 = array<f32, 27>();
    var_1 = func_3(vec3<u32>(~(~_wgslsmith_add_u32(var_0.a, 39448u)), u_input.b, ~firstLeadingBit(0u)), global0[_wgslsmith_index_u32(var_1.a, 25u)], !(!(!any(vec2<bool>(var_0.c.x, false)))));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return func_2(min(2147483647i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(31816i, -2147483647i, -2147483647i), vec3<i32>(-1i, 0i, 13715i)), 1i)), func_2(2147483647i << (~(43723u | arg_1.a) % 32u), arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(791f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 27u)] - -2180f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(24218u, 27u)], -1001f), _wgslsmith_f_op_f32(arg_1.d.x + global3[_wgslsmith_index_u32(4294967295u, 27u)])))))), _wgslsmith_div_f32(-706f, _wgslsmith_div_f32(-1308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), global0[_wgslsmith_index_u32(u_input.b, 25u)]);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(~_wgslsmith_clamp_u32(var_0.a, 4294967295u, u_input.b), var_0.a, (u_input.a.x >> (0u % 32u)) << (_wgslsmith_mult_u32(u_input.b, var_0.a) % 32u)));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(48188i, -1i), -2147483647i);
    global1 = ~4294967295u;
    global3 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zx, abs(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_2, var_2), vec3<i32>(var_2, -2147483647i, -1i)))) & -(~abs(vec3<i32>(var_2, -15662i, var_2))), countOneBits(var_0.a), reverseBits(select(~vec3<i32>(var_2, 26102i, var_2) ^ (vec3<i32>(var_2, var_2, -1i) >> (u_input.a % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(1i, var_2, -2147483647i), vec3<i32>(-2147483647i, 3954i, var_2)), false)));
}

