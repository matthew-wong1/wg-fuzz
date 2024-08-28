struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = u_input.a.x >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 103185u, arg_0, arg_0) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 45654u, 1u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0)) % vec4<u32>(32u)), select(~vec4<u32>(arg_0, 18101u, 0u, arg_0), ~vec4<u32>(arg_0, 4294967295u, 48185u, arg_0), true))) % 32u);
    let var_1 = Struct_2(vec4<i32>(-(~var_0) >> (arg_0 % 32u), _wgslsmith_add_i32(reverseBits(u_input.a.x | -2147483647i), -2147483647i), countOneBits(select(u_input.a.x | 31764i, _wgslsmith_mod_i32(1i, 32597i), true)), _wgslsmith_sub_i32(-29800i, abs(countOneBits(4974i)))), _wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f))))), vec3<bool>(true, 13981i == firstTrailingBit(~(-106321i)), false), min(firstTrailingBit(select(~vec2<u32>(arg_0, arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(17036u, 4294967295u)), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(31590u, 4294967295u), vec2<u32>(7242u, arg_0)))));
    let var_2 = _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 15576u, 1u) >> (vec3<u32>(var_1.d.x, var_1.d.x, 1u) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, var_1.d.x, arg_0)))), vec3<u32>(36403u, arg_0, 1u));
    var var_3 = var_1;
    var_3 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_3.a.x, var_1.a.x), ~var_3.a.x), i32(-1i) * -var_0, -18602i, abs(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(495f, var_1.b)), var_1.c, _wgslsmith_div_vec2_u32(~vec2<u32>(53719u | var_3.d.x, ~1u), var_1.d));
    return _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_3.a.xy, vec2<i32>(-1i, -41340i)), _wgslsmith_div_vec2_i32(var_1.a.xy, var_1.a.wx)), var_3.a.x), -2147483647i, -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(var_1.a.wwx, var_1.a.xzz), var_1.a.yxy), firstLeadingBit(vec3<i32>(var_0, var_0, 79422i) << (vec3<u32>(var_1.d.x, arg_0, arg_0) % vec3<u32>(32u))))), var_1.a ^ -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, u_input.a.x, 2147483647i, 34i)), vec4<i32>(0i, var_3.a.x, var_1.a.x, -68818i)));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    var var_0 = -select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 91955i, 16130i, -17947i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.b, 32625i), vec4<i32>(arg_0.a, u_input.a.x, -20336i, -6799i))), vec4<i32>(arg_0.a, u_input.a.x, u_input.a.x, u_input.a.x) | func_3(1u)), min(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.b, 1i, arg_0.a), vec4<i32>(u_input.a.x, 2147483647i, 28704i, arg_0.a)), arg_0.b | arg_0.b, 1i), func_3(reverseBits(90125u))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(299f * 166f), _wgslsmith_f_op_f32(round(596f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), !(!all(vec2<bool>(true, false))))));
    let var_2 = vec3<bool>(true, true | all(vec2<bool>(true, all(vec3<bool>(false, true, false)))), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-574f)) - _wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(708f, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1))), 860f > var_1))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_3)))), -877f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-451f, var_1, var_1))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1211f, var_3, -1310f) * vec3<f32>(-408f, -261f, -1726f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - vec3<f32>(-701f, 702f, var_1))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + 798f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * var_3)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -676f) * -900f)));
    return Struct_4(58932u, arg_0.a, _wgslsmith_clamp_vec2_u32(~abs(~vec2<u32>(1u, 25129u)), min(vec2<u32>(1u, 1u), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 67217u), vec2<u32>(92354u, 0u)))), vec2<u32>(~(~1u), reverseBits(min(3557u, 10000u)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> u32 {
    let var_0 = func_2(Struct_3(u_input.a.x, 2147483647i));
    var var_1 = var_0;
    var_1 = Struct_4(~var_0.a, u_input.a.x, _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(var_0.a, 119569u)), arg_2 & var_0.c));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, _wgslsmith_mod_u32(var_0.a, 28452u), 6065u), abs(min(vec3<u32>(var_0.a, var_0.a, var_0.c.x), vec3<u32>(var_0.a, 1381u, arg_2.x)))), var_1.c.x, 987u, 21311u), (~(~vec4<u32>(1u, arg_2.x, 1u, 29099u)) << (vec4<u32>(~var_1.a, arg_2.x, countOneBits(673u), var_1.a) % vec4<u32>(32u))) & ~max(~vec4<u32>(4294967295u, arg_2.x, var_1.c.x, 9614u), ~vec4<u32>(var_1.c.x, arg_2.x, var_0.a, 0u)));
    var var_3 = vec2<i32>(2147483647i, min(0i, 4655i));
    return 43064u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -firstTrailingBit((28179i | u_input.a.x) << (func_1(vec3<f32>(1671f, -1212f, 434f), vec2<bool>(true, false), vec2<u32>(4294967295u, 0u)) % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(181f, -1131f, false)), 901f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1641f)));
    var_0 = firstTrailingBit(func_3(4294967295u).x ^ 1i) | -1i;
    var var_2 = min(_wgslsmith_div_u32(22481u, 1u), _wgslsmith_add_u32(~_wgslsmith_add_u32(63510u, 1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(47978u, 13833u, 33792u), select(11130u, 16678u, true)))) ^ max(4294967295u, 0u);
    var var_3 = func_2(Struct_3(u_input.a.x, u_input.a.x)).c.x;
    var_2 = firstLeadingBit(min(~(~_wgslsmith_add_u32(1u, 61509u)), reverseBits(1u)));
    var var_4 = Struct_2(vec4<i32>(-_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(19926i, u_input.a.x)), _wgslsmith_add_i32(select(u_input.a.x, u_input.a.x, true), _wgslsmith_mult_i32(1i, ~19836i)), _wgslsmith_sub_i32(select(0i, 40615i, true) << (1u % 32u), u_input.a.x), 2147483647i), 1f, select(vec3<bool>(u_input.a.x == u_input.a.x, false, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), true)), ~(~vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_4.b))))), -891f, 1000f, var_1.x), vec2<i32>(-_wgslsmith_div_i32(~(-31263i), _wgslsmith_sub_i32(u_input.a.x, var_4.a.x)), 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) * _wgslsmith_f_op_f32(ceil(var_4.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(220f)))) - var_1), var_4.d);
}

