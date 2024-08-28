struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(reverseBits(arg_0.b.yxz)) >> (select(vec3<u32>(85042u, 28662u, arg_0.c.x), vec3<u32>(arg_0.a.b.x, 1u, 1u), select(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), vec3<bool>(false, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x)) % vec3<u32>(32u))), vec3<i32>(u_input.a.x, reverseBits(-1i), -arg_3));
    let var_1 = _wgslsmith_mult_vec4_i32(-max(vec4<i32>(-1i) * -arg_0.b, arg_0.b & min(arg_0.b, vec4<i32>(arg_3, -31847i, 2147483647i, 2147483647i))), arg_0.b);
    let var_2 = _wgslsmith_mod_vec3_u32(~(~arg_0.a.b.yxx) >> (arg_0.c % vec3<u32>(32u)), arg_0.a.b.zyx);
    let var_3 = -(~arg_0.b.yw);
    global0 = array<vec3<f32>, 18>();
    return select(arg_0.a.a.x, select(true, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x || true);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = Struct_1(vec2<bool>(!(!func_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, arg_1, arg_1, arg_1), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -741f)), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 18228i), vec3<u32>(arg_1, 0u, 27222u)), -25336i, global0[_wgslsmith_index_u32(25085u, 18u)], -11890i)), arg_2), ~(~(vec4<u32>(arg_1, 59684u, arg_1, arg_1) | vec4<u32>(arg_1, arg_1, 4899u, 0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1189f, _wgslsmith_f_op_f32(f32(-1f) * -542f), 1126f)));
    let var_1 = Struct_3(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, 1i) << (vec4<u32>(13771u, arg_1, arg_1, 1u) % vec4<u32>(32u)), vec4<i32>(1i, -8220i, -11921i, u_input.a.x) << (var_0.b % vec4<u32>(32u))), -u_input.a.x));
    var_0 = Struct_1(!var_0.a, vec4<u32>(_wgslsmith_mult_u32(~max(var_0.b.x, arg_1), _wgslsmith_mod_u32(countOneBits(61447u), ~85821u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.b.yz ^ vec2<u32>(1u, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.b.x), vec2<u32>(arg_1, arg_1))), ~(vec2<u32>(arg_1, 98202u) ^ vec2<u32>(4294967295u, arg_1))), firstLeadingBit(arg_1) ^ ~1u, 0u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, var_0.c.x, -848f), vec4<f32>(arg_0.x, 350f, var_0.c.x, var_0.c.x)), vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-1804f + -1052f)), !vec4<bool>(var_0.a.x, true, arg_2, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c) + _wgslsmith_f_op_vec4_f32(max(var_0.c, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1081f)))), _wgslsmith_f_op_vec4_f32(-var_0.c)))));
    var_0 = Struct_1(var_0.a, ~vec4<u32>(24121u, _wgslsmith_add_u32(~var_0.b.x, ~32188u), 0u, abs(~1u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(1092f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) - _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f * -165f) + _wgslsmith_f_op_f32(2061f - var_0.c.x)))));
    let var_2 = var_0.b.xzx;
    return !var_0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global0 = array<vec3<f32>, 18>();
    let var_0 = -vec3<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x);
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    var var_1 = !select(vec4<bool>(!arg_1, func_3(Struct_2(arg_0, vec4<i32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x), vec3<u32>(1u, arg_0.b.x, 21640u)), min(var_0.x, 2147483647i), _wgslsmith_f_op_vec3_f32(sign(arg_0.c.yyx)), _wgslsmith_clamp_i32(u_input.a.x, 1i, 222i)), arg_0.a.x, arg_0.a.x), !vec4<bool>(!arg_0.a.x, true, arg_0.b.x > arg_0.b.x, arg_1 || false), vec4<bool>(var_0.x < -23104i, false, arg_1, false));
    return Struct_3(var_0.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = func_4(Struct_1(vec2<bool>(true, func_2(vec3<f32>(-465f, arg_0.x, 1000f), arg_1 << (4294967295u % 32u), true)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20480u, 18159u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)), vec4<u32>(arg_1, 16329u, arg_1, arg_1) ^ vec4<u32>(0u, arg_1, 26254u, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -835f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1040f, arg_0.x))))), !(1i != ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -373f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f * arg_0.x)))));
    var var_2 = abs(select(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 10589u)), vec3<u32>(5355u, 71256u, arg_1)), ~(~vec3<u32>(4294967295u, 0u, arg_1) << (firstTrailingBit(vec3<u32>(arg_1, arg_1, arg_1)) % vec3<u32>(32u))), vec3<bool>(true, true, true)));
    var_0 = Struct_3(_wgslsmith_add_i32(19401i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27762i, -1i, u_input.a.x, u_input.a.x), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, var_0.a))) >> (~_wgslsmith_div_u32(1u, ~arg_1) % 32u));
    let var_3 = Struct_1(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(arg_0.x <= 591f, true), vec2<bool>(true, true)), ~firstTrailingBit(firstLeadingBit(vec4<u32>(var_2.x, arg_1, arg_1, arg_1))) & ~vec4<u32>(1u, arg_1 | 1514u, 4294967295u, arg_1), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-371f, arg_0.x)) * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), -363f)), -1180f))));
    return Struct_1(select(select(!(!var_3.a), vec2<bool>(u_input.a.x >= u_input.a.x, var_3.a.x), select(vec2<bool>(false, false), !var_3.a, vec2<bool>(var_3.a.x, false))), vec2<bool>((var_0.a >> (var_2.x % 32u)) != -u_input.a.x, var_3.a.x), !(_wgslsmith_f_op_f32(abs(var_1)) >= -483f)), ~vec4<u32>(abs(var_3.b.x & arg_1), select(arg_1, 26931u, var_3.a.x) | ~61068u, ~5415u, reverseBits(arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 * 837f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-260f * 1000f), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), max(48797u, 4294967295u)), vec4<i32>(u_input.a.x, 0i, ~_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a), max(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | ~(-38689i), firstTrailingBit(21732i))), abs(max(vec3<u32>(0u, 21230u, 3704u), ~vec3<u32>(30533u, 4294967295u, 4294967295u))) & (vec3<u32>(~4294967295u, abs(3518u), ~4294967295u) ^ vec3<u32>(firstTrailingBit(48624u), ~46123u, ~0u)));
    var_0 = Struct_2(var_0.a, ~var_0.b & vec4<i32>(u_input.a.x, u_input.a.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, -37372i), vec3<i32>(5647i, var_0.b.x, var_0.b.x)), u_input.a.x, all(vec4<bool>(var_0.a.a.x, false, false, var_0.a.a.x))), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -u_input.a.x)), ~var_0.c);
    var var_1 = Struct_2(func_1(var_0.a.c, _wgslsmith_dot_vec4_u32(var_0.a.b, min(var_0.a.b, vec4<u32>(28568u, var_0.c.x, var_0.c.x, var_0.c.x)))), var_0.b, vec3<u32>(1213u, ~var_0.a.b.x, min(abs(var_0.a.b.x), ~var_0.a.b.x)) >> (_wgslsmith_sub_vec3_u32(~max(var_0.a.b.xxz, vec3<u32>(var_0.c.x, var_0.a.b.x, var_0.c.x)), ~(~vec3<u32>(7023u, var_0.c.x, var_0.a.b.x))) % vec3<u32>(32u)));
    global0 = array<vec3<f32>, 18>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a.c.x, 538f)), 633f), var_1.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.c.x * var_0.a.c.x), var_1.a.c.x, true)), 1328f)));
    let var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f * _wgslsmith_f_op_f32(floor(266f)))), _wgslsmith_sub_u32(var_0.c.x, 593u), _wgslsmith_mult_vec3_i32(select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(23946i, 32908i, 107996i), var_1.b.yzx)), (u_input.a >> (vec3<u32>(88364u, var_1.c.x, var_1.a.b.x) % vec3<u32>(32u))) >> (~var_1.a.b.wwx % vec3<u32>(32u)), true), -abs(vec3<i32>(1i, -2147483647i, -35014i)) ^ vec3<i32>(abs(u_input.a.x), firstTrailingBit(var_3), abs(var_1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.a.c.wy), vec2<f32>(var_0.a.c.x, var_0.a.c.x))))));
}

