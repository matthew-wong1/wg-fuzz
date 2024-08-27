struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14603u;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<f32> {
    let var_0 = ~(~countOneBits(select(u_input.b, u_input.b, true))) >> (_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b.x | u_input.d.x, 1u, 30255u), ~select(u_input.b, u_input.b, false)), ~(u_input.d >> (u_input.b % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = array<vec4<i32>, 7>();
    global0 = ~var_0.x;
    let var_1 = u_input.a & ~(~_wgslsmith_dot_vec3_u32(var_0, var_0));
    var var_2 = Struct_4(Struct_3(!(~u_input.c.x >= abs(-16749i))), select(var_0.x > (_wgslsmith_mult_u32(var_0.x, u_input.a) << (var_0.x % 32u)), all(select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), select(global2.x, true, true))), true), Struct_1(global2.x, ~(~u_input.c.x), -countOneBits(u_input.c.x ^ u_input.c.x)), Struct_3(global2.x));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), 927f);
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -664f) * vec2<f32>(-1692f, -1196f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1124f, -1401f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1488f, 700f)), _wgslsmith_div_vec2_f32(vec2<f32>(237f, -932f), vec2<f32>(-366f, 404f)))))));
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u >> (_wgslsmith_mult_u32(u_input.d.x, u_input.a) % 32u), max(~0u, ~44659u), reverseBits(~u_input.b.x), 7679u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.d.x), u_input.d) | _wgslsmith_clamp_u32(58152u, u_input.b.x, u_input.a), countOneBits(u_input.d.x >> (u_input.b.x % 32u)), 0u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)));
    var var_1 = Struct_3(any(!vec3<bool>(false, u_input.c.x == u_input.c.x, false)));
    var_1 = Struct_3((~u_input.c.x >= u_input.c.x) || any(vec2<bool>(true, true)));
    return ~firstLeadingBit(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(67555u, 0u, u_input.d.x, 60174u), vec4<u32>(77650u, 1u, u_input.d.x, 4294967295u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_2 {
    global0 = 1u;
    global2 = !(!arg_0.xz);
    let var_0 = func_2();
    let var_1 = 1713f;
    global1 = array<vec4<i32>, 7>();
    return Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), u_input.c) << ((abs(u_input.d) & u_input.b) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_add_u32(abs(~firstTrailingBit(u_input.b.x)) >> (min(~(u_input.d.x ^ u_input.a), _wgslsmith_clamp_u32(u_input.a, select(u_input.a, 4294967295u, global2.x), 1u)) % 32u), abs(~u_input.a));
    let var_1 = arg_0.a;
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + -226f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-990f + 1791f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))))));
    global0 = _wgslsmith_div_u32(4294967295u, func_2().x);
    return vec2<bool>((_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.d.x, 0u, 53161u)), vec4<u32>(u_input.b.x, u_input.d.x, 0u, 46947u)) < (u_input.a & _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(0u, 0u)))) && true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(!(!global2.x), global2.x, all(func_4(func_1(vec4<bool>(global2.x, true, true, global2.x), vec3<f32>(-164f, -937f, -961f))))), select(vec3<bool>(global2.x, !any(vec3<bool>(global2.x, global2.x, false)), all(vec4<bool>(true, global2.x, true, true))), select(!select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, true)), !vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(global2.x, true, false), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x), true)), !(global2.x | global2.x)), true);
    global0 = _wgslsmith_dot_vec4_u32(func_2(), abs(select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.a, 34375u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.b.x)), ~vec4<u32>(81926u, 97662u, 10059u, 28386u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 29743u), vec4<u32>(u_input.b.x, u_input.a, 11825u, 68502u) & vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b.x)), !select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, global2.x, false, false), true))));
    let var_1 = u_input.a;
    var var_2 = !select(vec3<bool>(var_0.x, !(global2.x & false), _wgslsmith_f_op_f32(trunc(-1477f)) < _wgslsmith_f_op_f32(177f + 631f)), var_0, var_0.x);
    let var_3 = Struct_1(true, ~u_input.c.x, -64860i);
    var var_4 = func_1(vec4<bool>(true | all(select(vec4<bool>(false, false, global2.x, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_3.a, global2.x, var_2.x))), var_2.x, var_3.a, false), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), 2850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(502f)), -586f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(~u_input.c.x), u_input.c.x >> (var_1 % 32u)), _wgslsmith_mod_i32(abs(func_1(vec4<bool>(var_2.x, true, var_0.x, var_2.x), vec3<f32>(-830f, 1756f, -703f)).a.x), 56248i) & _wgslsmith_mod_i32(-(var_3.b | -1i), 1i), ((var_1 << (2805u % 32u)) ^ _wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1, 4294967295u), vec2<u32>(var_1, u_input.b.x)), u_input.b.yy)) ^ (reverseBits(_wgslsmith_div_u32(0u, var_1)) << (var_1 % 32u)), (-select(global1[_wgslsmith_index_u32(19376u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], vec4<bool>(true, true, true, var_3.a)) ^ countOneBits(~vec4<i32>(2147483647i, var_3.c, -47457i, 258i))) << (vec4<u32>(~u_input.b.x << (~0u % 32u), ~var_1 << (u_input.d.x % 32u), u_input.d.x, _wgslsmith_mod_u32(var_1, 94480u >> (var_1 % 32u))) % vec4<u32>(32u)));
}

