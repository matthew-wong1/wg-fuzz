struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19>;

var<private> global2: bool = false;

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~61134u, 19u)];
    global1 = array<Struct_1, 19>();
    var var_1 = vec3<i32>(reverseBits(1i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b.x, ~2147483647i), abs(u_input.b.yy)), 1i), 1i);
    let var_2 = 1u;
    var var_3 = _wgslsmith_clamp_vec3_u32(countOneBits(~(~vec3<u32>(u_input.a, u_input.a, global0.a))) >> (firstLeadingBit(select(~vec3<u32>(arg_3.a, var_0.a, global3.a), min(vec3<u32>(arg_3.a, 4294967295u, 46753u), vec3<u32>(36900u, 1u, 1u)), global4.zyz)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2 ^ reverseBits(global3.a), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 4056u)), ~vec2<u32>(arg_3.a, global0.a)), u_input.a | 1u), vec3<u32>(u_input.a, 106645u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(19923u, 4294967295u) ^ vec2<u32>(u_input.a, var_2)))), max(abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, arg_3.a, 4294967295u), vec3<u32>(0u, 1u, global0.a))), _wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a, 23057u, arg_3.a) >> (vec3<u32>(var_0.a, 1177u, global3.a) % vec3<u32>(32u)), select(vec3<u32>(global0.a, global0.a, 4294967295u), vec3<u32>(arg_3.a, global3.a, 4294967295u), global4.ywy)), select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 44842u, u_input.a), vec3<u32>(arg_3.a, var_0.a, var_2)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2, u_input.a, 4294967295u), vec3<u32>(var_0.a, var_2, 16026u)), vec3<bool>(false, false, true)))));
    return ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(~global0.a, _wgslsmith_clamp_u32(1u, 1u, var_0.a), _wgslsmith_mult_u32(0u, 2359u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 59996u, 1u), vec4<u32>(u_input.a, arg_3.a, 0u, global3.a))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 12167u, arg_3.a, u_input.a), ~vec4<u32>(1u, 4294967295u, 1u, 4294967295u))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = func_3(vec4<bool>(!(-u_input.b.x < _wgslsmith_dot_vec3_i32(vec3<i32>(-36488i, 34137i, 2147483647i), u_input.b)), global4.x, false, global4.x), vec3<i32>(-1i) * -(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b.x, -38822i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), true, global1[_wgslsmith_index_u32(global3.a, 19u)]);
    var var_1 = -1000f;
    let var_2 = global1[_wgslsmith_index_u32(var_0.x, 19u)];
    global2 = any(global4.xyy) && !(!global4.x || (_wgslsmith_f_op_f32(-763f + -1191f) <= arg_0));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -482f);
    return vec4<u32>(func_3(vec4<bool>(false, !(431f < var_3), true, global4.x), ~min(u_input.b, u_input.b), global4.x, Struct_1(14039u)).x, u_input.a, ~(~global0.a), ~abs(_wgslsmith_sub_u32(1u, ~4294967295u)));
}

fn func_1() -> u32 {
    let var_0 = ~(~(~4294967295u << (0u % 32u)));
    let var_1 = _wgslsmith_mult_vec4_u32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-396f)), -1720f)) >> ((vec4<u32>(global3.a, 0u, abs(var_0), ~global0.a) << (((vec4<u32>(7641u, 46303u, global3.a, 113780u) << (vec4<u32>(var_0, 34132u, 4294967295u, 4294967295u) % vec4<u32>(32u))) | ~vec4<u32>(global3.a, 19673u, var_0, 7915u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(8759u), var_0, global3.a, 4294967295u), ~(~vec4<u32>(17033u, 4294967295u, u_input.a, global3.a)) | func_3(!vec4<bool>(false, false, global4.x, false), u_input.b, global4.x, global1[_wgslsmith_index_u32(~u_input.a, 19u)]), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, global0.a, 1u, 4294967295u), ~vec4<u32>(0u, var_0, 8378u, global3.a))));
    global0 = Struct_1(_wgslsmith_mod_u32(max(abs(global3.a), global3.a), select(~global3.a, global0.a, true)));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~(global3.a & _wgslsmith_mod_u32(global0.a, 126582u)))), 19u)];
    global1 = array<Struct_1, 19>();
    return ~_wgslsmith_div_u32(select(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, var_0, var_0) | var_1, vec4<u32>(var_0, u_input.a, var_0, var_0) | var_1), true), ~0u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_2;
    let var_1 = global1[_wgslsmith_index_u32(arg_2.a >> (59850u % 32u), 19u)];
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 19u)];
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(920f, 1556f))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3, -485f)))))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, var_3)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3, var_3))), global4.x))))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-551f, var_4.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1061f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(var_4.x + var_3)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 739f)), vec2<f32>(-154f, var_4.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(((u_input.a << (0u % 32u)) & (global3.a | 4294967295u)) >> (~(~global0.a) % 32u), 19u)];
    var var_0 = global1[_wgslsmith_index_u32(43379u, 19u)];
    global0 = Struct_1(abs(~4294967295u));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(select(u_input.a, 1u | global3.a, false), u_input.a), global3.a >> (u_input.a % 32u)), 19u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(-2147483647i, global3.a, global1[_wgslsmith_index_u32(1u & min(func_1(), u_input.a), 19u)]))));
    global2 = false;
    var_0 = global1[_wgslsmith_index_u32(~var_0.a, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(func_3(vec4<bool>(false, false, false, true), u_input.b, false, global1[_wgslsmith_index_u32(18220u, 19u)]), _wgslsmith_div_vec4_u32(vec4<u32>(42581u, 1u, 4775u, 4294967295u), vec4<u32>(global3.a, 36646u, var_0.a, 4294967295u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 1u, global3.a), vec4<u32>(global0.a, u_input.a, global0.a, global0.a)), vec4<u32>(global0.a, var_0.a, 4294967295u, 7273u)))), var_1, var_1, vec3<u32>(_wgslsmith_clamp_u32(~firstTrailingBit(var_0.a), u_input.a, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, 1u, 1u) ^ (vec4<u32>(0u, 0u, global3.a, global0.a) << (vec4<u32>(var_0.a, 4294967295u, global0.a, var_0.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, global3.a, 45693u, 1u), abs(vec4<u32>(u_input.a, global0.a, 4294967295u, 0u)))), ~(~0u >> (var_0.a % 32u))), -_wgslsmith_mult_vec2_i32(vec2<i32>(max(u_input.b.x, -1i), -u_input.b.x), ~(-u_input.b.zy)));
}

