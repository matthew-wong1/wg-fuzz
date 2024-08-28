struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: array<Struct_3, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = vec4<i32>(1i, 2147483647i, 0i, min(-2147483647i, _wgslsmith_add_i32(1i, u_input.a)));
    var_0 = u_input.e & vec4<i32>(countOneBits(u_input.a), u_input.e.x, select(-11355i, _wgslsmith_div_i32(~0i, ~u_input.d.x), !(arg_0.x > -1054f)), var_0.x);
    let var_1 = Struct_2(~abs(vec3<u32>(~1u, 31449u, 18915u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, u_input.b) | vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(14522u, 1u, u_input.b, 21736u), vec4<u32>(13104u, 73574u, u_input.c, u_input.c))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.c), vec4<u32>(u_input.c, u_input.b, 36148u, 5767u))) >> (vec4<u32>(~(0u << (u_input.c % 32u)), ~(~47966u), 1u, u_input.b) % vec4<u32>(32u)));
    global1 = array<Struct_3, 9>();
    global0 = array<vec2<u32>, 32>();
    return vec3<u32>(min(44293u, ~36651u), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.c), 1u, 1u), ~(vec3<u32>(30383u, u_input.b, u_input.c) << (abs(vec3<u32>(u_input.b, 1u, 1u)) % vec3<u32>(32u)))), ~_wgslsmith_sub_u32(var_1.b.x, 22469u));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_3 {
    global0 = array<vec2<u32>, 32>();
    let var_0 = -1418f;
    var var_1 = Struct_4(Struct_2(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2521f, -2220f, arg_1, 716f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_1, arg_1, -846f) - vec4<f32>(1537f, -661f, -330f, 2199f)))), ~vec4<u32>(2781u, 66852u, u_input.b, ~u_input.b)), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(170f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1112f, var_0)), _wgslsmith_f_op_f32(425f * -1015f)))))), vec4<bool>(!all(vec2<bool>(true, false)), true, select(true, true, true) | true, !(~u_input.d.x == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, arg_0), vec3<i32>(1i, 1i, arg_0)))));
    global0 = array<vec2<u32>, 32>();
    let var_2 = ~1i;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 * var_0), var_0, _wgslsmith_f_op_f32(f32(-1f) * -189f))), abs(-6526i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, 280f)) - vec3<f32>(-1030f, arg_2, arg_1))), u_input.e.x & (~u_input.d.x >> ((u_input.b ^ 0u) % 32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(arg_1, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1386f * var_0))), 11658i >> (u_input.b % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 1393f, -1343f), vec3<f32>(735f, var_1.b, -662f))))), var_2), ~var_1.a.a, var_1.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(sign(-360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f + 714f) * _wgslsmith_f_op_f32(floor(-927f)))), _wgslsmith_f_op_f32(791f * _wgslsmith_f_op_f32(f32(-1f) * -549f))), _wgslsmith_sub_u32(u_input.c, _wgslsmith_mult_u32(u_input.b, 0u)), func_2(reverseBits(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(325f, -859f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-126f)), _wgslsmith_f_op_f32(788f - 413f))), _wgslsmith_f_op_f32(f32(-1f) * -557f)), !(true | all(vec3<bool>(true, true, true))), Struct_4(Struct_2(select(vec3<u32>(u_input.b, 74922u, u_input.b), vec3<u32>(u_input.b, 3980u, 60120u), vec3<bool>(false, false, true)) >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)), vec4<u32>(18493u, ~1u, u_input.b << (120027u % 32u), min(u_input.c, u_input.c))), _wgslsmith_f_op_f32(floor(func_2(~arg_0.x, _wgslsmith_f_op_f32(333f * -1000f), _wgslsmith_f_op_f32(-1299f - -1000f)).b.a.x)), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), true)));
    var var_1 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.e.a.a.x, u_input.c, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.e.a.b.x, 2489u, 4294967295u), var_0.e.a.b), 37473u, 1u)), var_0.c.c), var_0.c.d.b);
    var var_2 = ~var_1.b.x;
    var_1 = func_2(_wgslsmith_clamp_i32(max(~(-14362i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_0.c.b.d, arg_0.x, 45822i), vec4<i32>(var_0.c.a.b, u_input.e.x, 6330i, 2147483647i))), 0i, -1i) >> ((u_input.c >> (~_wgslsmith_sub_u32(98375u, var_0.e.a.b.x) % 32u)) % 32u), -1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(274f - -323f), var_0.c.b.a.x, true))))).d;
    var var_3 = 0u;
    return func_2(u_input.e.x, _wgslsmith_div_f32(var_0.a.x, 423f), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.a.x - -855f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1073f + -486f) * _wgslsmith_f_op_f32(var_0.e.b * -1601f))))).a;
}

fn func_4(arg_0: Struct_1) -> bool {
    global1 = array<Struct_3, 9>();
    var var_0 = global1[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = _wgslsmith_f_op_f32(round(-1000f));
    let var_2 = !vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), 1u > u_input.b)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
    global0 = array<vec2<u32>, 32>();
    return any(!var_2.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 32>();
    var var_0 = func_4(func_1(vec3<i32>(select(-u_input.e.x, -422i, u_input.e.x > 40363i), u_input.a, abs(~u_input.a))));
    var var_1 = Struct_4(Struct_2(~(~countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.b))), vec4<u32>(min(30496u, _wgslsmith_sub_u32(u_input.c, u_input.c)), firstLeadingBit(1u << (u_input.b % 32u)), ~(~u_input.b), u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -626f), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true))));
    var var_2 = var_1.a.b.x;
    var var_3 = !all(!(!(!var_1.c.wyz)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~(vec3<u32>(1u, u_input.c, var_1.a.b.x) | vec3<u32>(4294967295u, 19772u, u_input.c)), var_1.a.b.wyw));
}

