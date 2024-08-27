struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, arg_1.c.b));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global1 = vec4<u32>(u_input.a.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, 4294967295u), global1.wzz)), arg_2, arg_2);
    global1 = ~vec4<u32>(_wgslsmith_div_u32(global1.x, u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(arg_1.c.a.x, _wgslsmith_clamp_u32(4294967295u, 22267u, u_input.a.x) & arg_3.a.x), ~1u);
    return Struct_2(arg_1.c.a, _wgslsmith_f_op_f32(floor(-535f)), reverseBits(u_input.b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(-arg_2, Struct_3(arg_0.x, 0i, Struct_2(global1.wz, 1000f, -1i)), max(4294967295u, arg_1.b), func_1(u_input.b, Struct_3(arg_1.a.x, u_input.b, Struct_2(u_input.a, -303f, 15876i)), arg_1.b, Struct_2(u_input.a, 722f, arg_2))).b), _wgslsmith_f_op_f32(select(-252f, -1914f, arg_1.d.x)), !arg_1.d.x)));
    global1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global1.x, 4294967295u) | arg_1.b, ~(u_input.a.x & 82781u), countOneBits(_wgslsmith_mod_u32(4294967295u, 28701u)), global1.x), vec4<u32>(70996u, ~(u_input.a.x >> (arg_1.b % 32u)), u_input.a.x ^ 0u, _wgslsmith_dot_vec2_u32(u_input.a, global1.wy)));
    let var_1 = Struct_1(!vec3<bool>(all(arg_1.a), !arg_0.x, true), ~(~(~_wgslsmith_sub_u32(global1.x, 4294967295u))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, arg_2, arg_3), firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, 5251i), vec3<i32>(arg_1.c, arg_2, -31797i))))), arg_0, arg_1.c);
    var var_2 = func_1(arg_3, Struct_3(any(vec2<bool>(true, true)), -19312i, Struct_2(countOneBits(countOneBits(u_input.a)), -616f, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.c, arg_3, arg_2), vec4<i32>(var_1.c, -2147483647i, var_1.e, arg_2)))), ~u_input.a.x, Struct_2(~_wgslsmith_clamp_vec2_u32(~global1.wy, global1.xy ^ vec2<u32>(arg_1.b, 27529u), vec2<u32>(37755u, u_input.a.x)), 1426f, _wgslsmith_mult_i32(countOneBits(var_1.c), -1i)));
    global0 = array<Struct_1, 9>();
    return arg_1.b;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = reverseBits(~(~(~vec4<u32>(global1.x, arg_0, global1.x, arg_0)) ^ vec4<u32>(4294967295u, func_3(vec3<bool>(true, arg_1.a, arg_1.a), global0[_wgslsmith_index_u32(4294967295u, 9u)], -37534i, -2836i), 0u, u_input.a.x)));
    global1 = _wgslsmith_mod_vec4_u32(~(~select(var_0, vec4<u32>(113992u, 27645u, var_0.x, global1.x) | vec4<u32>(0u, arg_1.c.a.x, 1u, global1.x), !vec4<bool>(arg_1.a, true, false, false))), vec4<u32>((_wgslsmith_mod_u32(u_input.a.x, var_0.x) & 13237u) | var_0.x, _wgslsmith_div_u32(~1u & func_3(vec3<bool>(arg_1.a, true, arg_1.a), Struct_1(vec3<bool>(false, true, arg_1.a), 1u, u_input.b, vec3<bool>(false, arg_1.a, arg_1.a), 736i), 2147483647i, arg_1.b), ~4294967295u), (1u | ~global1.x) << (~_wgslsmith_clamp_u32(global1.x, 1u, 36775u) % 32u), global1.x));
    let var_1 = -u_input.b;
    var var_2 = vec2<bool>(!arg_1.a, (-_wgslsmith_sub_i32(22046i, var_1) ^ ~(arg_1.c.c | var_1)) > var_1);
    var var_3 = func_1(~(~firstTrailingBit(~1i)), arg_1, 21501u, arg_1.c);
    return _wgslsmith_f_op_f32(-func_1(1i, arg_1, 4294967295u, func_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_1, var_1, var_3.c), vec4<i32>(arg_1.b, arg_1.b, -1i, -13746i)), Struct_3(var_2.x, 1i, func_1(arg_1.b, Struct_3(true, 27607i, arg_1.c), u_input.a.x, Struct_2(vec2<u32>(global1.x, arg_1.c.a.x), 184f, -1i))), _wgslsmith_clamp_u32(var_0.x, ~var_3.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, arg_1.c.a.x))), func_1(u_input.b, arg_1, countOneBits(32870u), arg_1.c))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.x, ~(~global1.x)), 67758u), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_2(~_wgslsmith_div_u32(46451u, 445u), Struct_3(true, _wgslsmith_mod_i32(-1i, u_input.b), func_1(u_input.b, Struct_3(false, -7779i, Struct_2(global1.ww, 1315f, -7296i)), u_input.a.x, Struct_2(vec2<u32>(0u, global1.x), -308f, u_input.b))))), func_1((-2147483647i | u_input.b) ^ abs(u_input.b), Struct_3(u_input.b >= u_input.b, -29867i, func_1(-1i, Struct_3(true, u_input.b, Struct_2(vec2<u32>(70976u, 513u), 1846f, 68936i)), 59445u, Struct_2(u_input.a, 730f, u_input.b))), u_input.a.x << (u_input.a.x % 32u), Struct_2(countOneBits(global1.ww), _wgslsmith_f_op_f32(715f * -359f), ~u_input.b)).b, _wgslsmith_f_op_f32(abs(286f)))));
    global1 = vec4<u32>(~u_input.a.x, 1u, ~u_input.a.x & _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global1.zx, var_0), global1.x), 20599u);
    global0 = array<Struct_1, 9>();
    var var_2 = Struct_1(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true)), 1u, 1i, vec3<bool>(!(false || all(vec4<bool>(false, false, false, false))), true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true))), u_input.b);
    let var_3 = Struct_3(var_2.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, max(-18292i, 2147483647i), var_2.c, countOneBits(1i)), vec4<i32>(_wgslsmith_sub_i32(var_2.c, 8123i), abs(-1i), countOneBits(1i), ~(~u_input.b))), func_1(_wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(var_2.c, u_input.b, var_2.c)), vec3<i32>(-1i) * -vec3<i32>(30692i, 1i, var_2.e)), Struct_3(var_2.a.x, var_2.c, Struct_2(u_input.a, -928f, _wgslsmith_mult_i32(-2147483647i, var_2.c))), 38487u, func_1(reverseBits(-18873i), Struct_3(all(vec2<bool>(var_2.d.x, var_2.a.x)), abs(-4556i), Struct_2(vec2<u32>(0u, global1.x), var_1.x, 20429i)), u_input.a.x, func_1(var_2.c, Struct_3(var_2.d.x, -54197i, Struct_2(var_0, var_1.x, u_input.b)), 0u, func_1(var_2.e, Struct_3(true, 2147483647i, Struct_2(vec2<u32>(1u, var_0.x), 474f, u_input.b)), 43629u, Struct_2(var_0, -125f, var_2.e))))));
    var_2 = Struct_1(select(var_2.a, var_2.d, true), 0u, var_3.c.c, vec3<bool>(var_2.a.x, true, var_2.d.x), firstLeadingBit(2409i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1744f) + _wgslsmith_f_op_f32(max(-2567f, 177f))), _wgslsmith_f_op_f32(func_2(global1.x, var_3)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_3.c.a.x, 0u, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(28068u, 24215u, u_input.a.x, 0u), vec4<u32>(var_2.b, 0u, var_2.b, global1.x), vec4<u32>(var_3.c.a.x, 5798u, u_input.a.x, 4294967295u))), vec4<u32>(~global1.x, firstLeadingBit(4294967295u), ~4294967295u, u_input.a.x)), ~(~vec4<u32>(var_0.x, global1.x, var_2.b, 62077u)) | ~countOneBits(vec4<u32>(u_input.a.x, global1.x, var_2.b, var_2.b))));
}

