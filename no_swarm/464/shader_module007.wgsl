struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: vec3<i32>;

var<private> global2: array<i32, 7>;

var<private> global3: array<vec2<f32>, 26>;

var<private> global4: Struct_4 = Struct_4(Struct_1(vec2<u32>(23371u, 1u), -1i, 70415u, vec2<u32>(4294967295u, 86241u), true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = 0i;
    var var_1 = ~(~389u);
    global1 = countOneBits(firstTrailingBit(u_input.b.wxx));
    let var_2 = global4.a.e && arg_1.a.e;
    let var_3 = ~min(u_input.a.x, ~(~2647u) ^ (reverseBits(63999u) & arg_1.a.c));
    return _wgslsmith_f_op_f32(exp2(arg_0.x));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.a, select(firstTrailingBit(vec4<u32>(reverseBits(arg_0.a.a.x), 22682u >> (global4.a.a.x % 32u), 49883u, ~u_input.a.x)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_div_u32(global4.a.d.x, arg_0.a.c), global4.a.a.x, select(84258u, 4294967295u, true), 29074u)), !vec4<bool>(all(global0[_wgslsmith_index_u32(0u, 20u)]), any(global0[_wgslsmith_index_u32(global4.a.a.x, 20u)]), true, true)), vec4<u32>(72535u, countOneBits(arg_0.a.a.x), 12719u, 33270u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(var_0.xy, vec2<u32>(arg_0.a.d.x, arg_0.a.a.x)), var_0.ww), _wgslsmith_div_i32(_wgslsmith_div_i32(-global2[_wgslsmith_index_u32(global4.a.c, 7u)], arg_0.a.b), global4.a.b), u_input.a.x, max(vec2<u32>(u_input.a.x >> (1u % 32u), 37166u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, arg_0.a.d.x), vec2<u32>(global4.a.c, 18789u), ~arg_0.a.a)), !select(false, any(vec3<bool>(true, arg_0.a.e, true)), any(vec2<bool>(true, global4.a.e)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-887f, -406f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(114f + -177f)) * _wgslsmith_f_op_f32(1155f - _wgslsmith_f_op_f32(f32(-1f) * -2464f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1284f + _wgslsmith_f_op_f32(600f + 328f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-415f, 1712f)), _wgslsmith_f_op_f32(abs(-2330f)))));
    var var_3 = var_0.x;
    var var_4 = !arg_0.a.e;
    return 3227u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f + 1672f)))));
    let var_1 = false;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-169f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-981f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -702f), -759f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -659f) - _wgslsmith_f_op_f32(func_2(vec3<f32>(-815f, -855f, -317f), Struct_4(global4.a)))), 495f, true))));
    let var_3 = abs(_wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global4.a.c))));
    var var_4 = _wgslsmith_add_vec4_i32(min(abs(u_input.b), _wgslsmith_div_vec4_i32(min(vec4<i32>(33853i, -1i, global2[_wgslsmith_index_u32(89886u, 7u)], -2147483647i), vec4<i32>(u_input.b.x, -1i, 2147483647i, 2147483647i) ^ vec4<i32>(2147483647i, 34414i, -32493i, -44572i)), u_input.b)), u_input.b);
    return Struct_1(vec2<u32>(0u, func_3(Struct_4(global4.a))), -2147483647i, global4.a.c, firstLeadingBit(vec2<u32>(global4.a.a.x, max(4294967295u, global4.a.c >> (46334u % 32u)))), global4.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 20>();
    global4 = Struct_4(func_1());
    global0 = array<vec2<bool>, 20>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, var_0.b, 11406i), select(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b, 2147483647i), vec3<i32>(-1i, global1.x, -19388i)), -2147483647i | _wgslsmith_dot_vec4_i32(vec4<i32>(-43606i, global1.x, u_input.c, u_input.d), u_input.b), -firstLeadingBit(-2147483647i)), -(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -59020i, -2147483647i), vec3<i32>(6428i, 28146i, 30932i)) & _wgslsmith_clamp_vec3_i32(u_input.b.wzx, u_input.b.yxy, vec3<i32>(-1i, 1i, global4.a.b))), vec3<bool>(all(!vec4<bool>(global4.a.e, false, var_0.e, false)), global4.a.e, _wgslsmith_f_op_f32(330f + 1468f) == _wgslsmith_f_op_f32(sign(-344f)))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 2147483647i & global1.x), min(firstTrailingBit(vec3<i32>(var_0.b, -1i, -16449i)), min(u_input.b.zwz, u_input.b.yxx))));
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(1u), global4.a.d.x) | _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~9196u, var_0.a.x | var_0.a.x)), _wgslsmith_mult_u32(var_0.c, ~_wgslsmith_add_u32(0u << (global4.a.c % 32u), abs(0u))));
    var var_3 = -335f;
    var_1 = vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, -2147483647i), -(global4.a.b ^ global4.a.b), 0i) ^ vec3<i32>(u_input.c, -firstLeadingBit(20995i), min(1i, 40354i));
    global0 = array<vec2<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~countOneBits(vec2<i32>(abs(u_input.c), _wgslsmith_clamp_i32(global4.a.b, 27552i, -13457i))), u_input.a, firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.a.x, ~4294967295u, 25591u))), _wgslsmith_add_i32(min(global1.x, i32(-1i) * -7446i), 4855i));
}

