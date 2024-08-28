struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 40081u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    var var_0 = 1u;
    global0 = _wgslsmith_f_op_f32(-725f * -1373f);
    var_0 = (~(25045u & u_input.c.x) & min(92924u, 4598u)) << ((~(~_wgslsmith_div_u32(5891u, u_input.b)) >> (((41080u | ~u_input.c.x) | global2.x) % 32u)) % 32u);
    var_0 = 49978u;
    var var_1 = Struct_2(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(-22790i, ~(-59967i)), _wgslsmith_mod_i32(~arg_0, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i) & vec3<i32>(18770i, -1i, arg_0), max(vec3<i32>(arg_0, -12263i, u_input.a), vec3<i32>(2173i, -2147483647i, u_input.a))), u_input.a)));
    return -266f;
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(reverseBits(u_input.a << (u_input.b % 32u)), true, vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_mult_u32(~u_input.c.x, ~40239u);
    global0 = 658f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_3 = -497f;
    return vec2<u32>(0u, countOneBits(~1u));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_4(Struct_3(~u_input.c.x, !all(vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) * _wgslsmith_f_op_f32(-1052f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(579f)), -1470f, true)))));
    var var_1 = select(!vec4<bool>(any(vec4<bool>(true, var_0.a.b, var_0.a.b, var_0.a.b)), u_input.b == ~66481u, var_0.a.b, var_0.a.b), vec4<bool>(var_0.a.b, select(true, var_0.a.b, true), any(vec3<bool>(var_0.a.b && var_0.a.b, true, var_0.a.b)), false), true);
    global2 = ~arg_0;
    global2 = firstLeadingBit(u_input.c.zx) & countOneBits(vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, 35409u), _wgslsmith_mult_u32(~u_input.c.x, 1u)));
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(~u_input.a, -30605i ^ firstLeadingBit(u_input.a)) | _wgslsmith_sub_i32(min(_wgslsmith_mult_i32(u_input.a, u_input.a), 2147483647i), firstLeadingBit(1i)), !var_0.a.b, var_1.wz));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    let var_0 = false;
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, abs(~(~11987u)), 0u, u_input.c.x), ~_wgslsmith_mult_vec4_u32(select(firstLeadingBit(vec4<u32>(arg_0, u_input.c.x, arg_0, 63939u)), ~vec4<u32>(arg_0, 27451u, 4294967295u, arg_0), var_0), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(1u, u_input.b), _wgslsmith_mult_u32(1u, 58275u), 0u)));
    var var_2 = ~(~u_input.a);
    let var_3 = 273f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec2_u32(u_input.c.yy | vec2<u32>(var_1.x, global2.x), u_input.c.xz) >> (countOneBits(func_2()) % vec2<u32>(32u)))) + -1108f);
    return Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, 0u), 59887u, _wgslsmith_clamp_u32(~arg_0, _wgslsmith_mod_u32(global2.x, 23925u), ~global2.x), global2.x), (var_1 ^ select(vec4<u32>(6386u, 1u, var_1.x, u_input.b), vec4<u32>(u_input.c.x, 0u, 4294967295u, arg_0), true)) & _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1389u, 57930u, 4294967295u, global2.x), var_1), var_1)), !any(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, true, var_0, true), vec4<bool>(var_0, true, var_0, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(u_input.b, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 4294967295u, global2.x), vec4<u32>(u_input.b, 4294967295u, global2.x, global2.x)) << (24077u % 32u)));
    global2 = u_input.c.yy;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1714f, -616f)), -787f) - vec2<f32>(_wgslsmith_f_op_f32(round(-2169f)), -925f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, 1012f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(700f, 962f), vec2<f32>(1545f, 1710f)))))));
    var var_1 = vec4<bool>(var_0.x <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -225f))), false, false, true);
    let var_2 = Struct_4(func_1(_wgslsmith_mod_u32(abs(1099u) >> (1u % 32u), 22114u), _wgslsmith_f_op_f32(floor(497f))));
    let var_3 = Struct_1(u_input.b, (select(true, true, var_1.x) != !(var_0.x < var_0.x)) & (_wgslsmith_mod_u32(abs(u_input.c.x), var_2.a.a >> (var_2.a.a % 32u)) >= 1u), ~_wgslsmith_add_u32(1u, abs(u_input.b)) ^ (~(~45413u) | select(1u, ~global2.x, false)), var_1.xww);
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(921f, var_0.x) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(250f, -324f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(1i, var_1.x, var_3.d.yy)), var_0.x) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2019f, var_0.x)), var_2.a.b)))))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.c, global2.x), min(abs(u_input.a), i32(-1i) * -u_input.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a ^ u_input.a, u_input.a), abs(abs(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(0i, u_input.a, -59096i)))), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, 14673i, _wgslsmith_mult_i32(1i, u_input.a), 2147483647i >> (u_input.c.x % 32u)), vec4<i32>(0i, u_input.a, -34969i, max(23087i, u_input.a))), -firstLeadingBit(abs(-6858i)), -(u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-54422i, u_input.a, -2449i, u_input.a), vec4<i32>(-4982i, u_input.a, 1i, u_input.a)))), min(u_input.c.zy, u_input.c.yy));
}

