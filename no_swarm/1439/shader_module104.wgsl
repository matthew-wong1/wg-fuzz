struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_1 = -715f;
    global0 = arg_1.a;
    global0 = arg_1.a;
    global0 = any(vec3<bool>(arg_1.a, true, arg_1.a));
    return arg_3;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1718f, _wgslsmith_f_op_f32(791f * -530f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(802f, Struct_1(true, vec4<u32>(57903u, 26502u, u_input.d, 99499u), vec4<f32>(1247f, 1149f, 622f, 1320f)), vec2<i32>(u_input.b.x, u_input.b.x), 623f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1362f))), -877f)), Struct_1(u_input.a.x != firstTrailingBit(arg_0.x), ~(~vec4<u32>(1u, 68632u, u_input.d, u_input.d)), vec4<f32>(-614f, 1479f, -753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 582f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * var_0.a.x)))), 1202f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.a.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f - var_0.a.x))))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32) -> bool {
    global0 = true;
    global0 = all(select(select(vec4<bool>(any(vec3<bool>(true, false, true)), u_input.d <= u_input.d, u_input.d >= 0u, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), all(vec2<bool>(false, false))), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), true));
    let var_0 = ~abs(~0u);
    var var_1 = abs(select(_wgslsmith_sub_vec2_i32(vec2<i32>(21623i | u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, -48486i)), select(~u_input.c, min(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.a)), u_input.c.x >= _wgslsmith_mult_i32(2147483647i, 1i)), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(var_0 >> (var_0 % 32u)), ~(~67023u), abs(var_0) ^ abs(u_input.d), 4294967295u) | ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(103041u, 8604u, 44773u, 1u), vec4<u32>(var_0, var_0, 4294967295u, u_input.d))), _wgslsmith_mod_vec4_u32(select(select(vec4<u32>(var_0, 27858u, 0u, 58979u), vec4<u32>(var_0, 4194u, 15405u, arg_0), false) & vec4<u32>(arg_0, u_input.d, 10280u, arg_0), select(~vec4<u32>(80218u, u_input.d, u_input.d, arg_0), vec4<u32>(0u, 35680u, 71678u, 4294967295u), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), true), _wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(1u, 0u, arg_0, 5077u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.d, arg_0, 146821u, 12566u)), _wgslsmith_div_vec4_u32(vec4<u32>(53091u, var_0, var_0, arg_0), vec4<u32>(0u, arg_0, arg_0, 94195u))))));
    return true;
}

fn func_1() -> bool {
    global0 = func_4(~(~(~(~48193u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b.yz)), 1122f), _wgslsmith_f_op_f32(max(-804f, -609f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(-1i, -7948i))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(700f, -153f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1273f)) * -1276f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1135f, -1304f))))));
    let var_0 = Struct_1(func_4(0u, 832f, _wgslsmith_f_op_f32(279f + -637f)), ~_wgslsmith_add_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(26605u, u_input.d, u_input.d, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(1331u, 4294967295u, 66993u, u_input.d), vec4<u32>(u_input.d, 1u, u_input.d, u_input.d)) >> (vec4<u32>(4294967295u, 0u, 7482u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(383f, -142f), _wgslsmith_f_op_f32(round(-801f)), -963f, -716f), vec4<f32>(-554f, _wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -283f)))));
    var var_1 = var_0.b.x;
    let var_2 = Struct_3(var_0.c.zy, Struct_1(_wgslsmith_f_op_f32(ceil(1647f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x))), select(vec4<u32>(countOneBits(20797u), var_0.b.x, select(u_input.d, var_0.b.x, var_0.a), 0u), var_0.b, u_input.c.x > u_input.a.x), var_0.c));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, 1000f), _wgslsmith_f_op_vec2_f32(step(var_2.b.c.yy, var_0.c.yx)))))), Struct_1(true, select(firstLeadingBit(firstTrailingBit(vec4<u32>(78198u, 4294967295u, u_input.d, 4294967295u))), vec4<u32>(abs(var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, var_2.b.b.x), vec3<u32>(21696u, 73898u, 0u)), 1u, abs(var_0.b.x)), select(select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_2.b.a, true), var_2.b.a), select(vec4<bool>(true, var_2.b.a, var_0.a, true), vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(true, var_2.b.a, false, var_0.a)), var_2.b.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_2.b.c.x, Struct_1(true, var_0.b, vec4<f32>(var_2.a.x, -1733f, var_2.b.c.x, var_0.c.x)), u_input.b.zx, var_2.a.x)), _wgslsmith_f_op_f32(-var_0.c.x), var_2.a.x, _wgslsmith_f_op_f32(-var_2.b.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -973f, 1271f, 560f) + vec4<f32>(-1070f, var_2.a.x, var_2.a.x, -1110f))), !vec4<bool>(var_0.a, true, var_2.b.a, false)))));
    return var_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(vec3<bool>(false, func_1(), func_4(77025u, _wgslsmith_f_op_f32(f32(-1f) * -1860f), _wgslsmith_f_op_f32(floor(283f)))));
    global0 = all(select(select(vec3<bool>(0i == u_input.c.x, all(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) | select(true, false, true), ~u_input.d >= countOneBits(4294967295u)), !any(vec3<bool>(true, true, true))));
    var var_0 = !(u_input.c.x > _wgslsmith_clamp_i32(52958i, -40305i, 48610i));
    var_0 = _wgslsmith_dot_vec3_i32(~(~abs(u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, max(-2147483647i, u_input.b.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), vec3<i32>(26599i, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u))))) >= _wgslsmith_add_i32(firstTrailingBit(select(51754i, abs(-1i), true)), i32(-1i) * -1i);
    let var_1 = 2566u;
    let var_2 = Struct_2(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~select(countOneBits(vec3<u32>(49297u, 0u, u_input.d)), vec3<u32>(4294967295u, 1u, var_1), func_1()), vec3<u32>(~var_1, _wgslsmith_mult_u32(~28120u, var_1), min(var_1, u_input.d) ^ var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(535f - 1000f), -1264f, _wgslsmith_f_op_f32(f32(-1f) * -505f)))));
}

