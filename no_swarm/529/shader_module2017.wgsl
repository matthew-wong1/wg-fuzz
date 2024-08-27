struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4431i);

var<private> global1: bool = false;

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(140f, 172f, 165f, -730f), vec4<f32>(-814f, -236f, 2220f, 619f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 274f, 187f, _wgslsmith_f_op_f32(trunc(550f))) - vec4<f32>(-928f, -1000f, _wgslsmith_f_op_f32(822f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -245f)))), !select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), true), Struct_1(~arg_1.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2180f), _wgslsmith_f_op_f32(floor(-998f)))))));
    global1 = var_0.b & true;
    global2 = ~vec4<u32>(min(~arg_1.x, _wgslsmith_sub_u32(global2.x, arg_1.x)), reverseBits(reverseBits(global2.x)), _wgslsmith_mult_u32(~global2.x, 1u), global2.x << (1u % 32u)) & vec4<u32>(23137u, 107126u, ~(~(~1u)), ~1u);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2.yyw, ~vec3<u32>(global2.x, 1u, 10829u)) << ((22434u >> (0u % 32u)) % 32u), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global2.wy, vec2<u32>(arg_1.x, 35373u))), global2.zz)), ~(~var_0.c.a));
    let var_2 = arg_0;
    return vec4<u32>(~0u, _wgslsmith_clamp_u32(~var_0.c.a, ~4294967295u, 2350u ^ arg_1.x), 4294967295u, max(global2.x, 17322u));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_4 {
    global2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~28230u, 4294967295u, 1u, global2.x), ~vec4<u32>(0u, 4294967295u, global2.x, 1u)), 19648u, 17345u, ~(~115540u)), firstLeadingBit(vec4<u32>(~1u, 88966u, global2.x | _wgslsmith_mod_u32(global2.x, global2.x), 1u)));
    let var_0 = ~vec2<u32>(global2.x | global2.x, reverseBits(global2.x));
    global2 = ~_wgslsmith_mult_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 1u, 0u, 75590u), vec4<u32>(37668u, var_0.x, global2.x, var_0.x)) ^ func_3(Struct_4(-1i), vec2<u32>(global2.x, var_0.x)), ~(~vec4<u32>(9137u, var_0.x, 52442u, 0u))), reverseBits(vec4<u32>(var_0.x, abs(1u), _wgslsmith_mult_u32(4294967295u, global2.x), var_0.x)));
    var var_1 = u_input.a;
    var var_2 = Struct_4(-arg_0.x);
    return Struct_4(-(~abs(var_2.a)));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = func_2(firstTrailingBit(vec2<i32>(29108i, -_wgslsmith_dot_vec3_i32(vec3<i32>(4692i, global0.a, 1i), vec3<i32>(u_input.a, global0.a, 1i)))), true);
    var var_2 = Struct_2(vec2<f32>(var_0.x, var_0.x), Struct_1(~(4294967295u << (select(global2.x, global2.x, false) % 32u)), _wgslsmith_f_op_vec2_f32(-var_0.yy)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true)), _wgslsmith_sub_i32(~0i, _wgslsmith_sub_i32(3496i, global0.a)) < _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, global0.a, var_1.a), -vec3<i32>(u_input.c, u_input.d, 20567i))));
    var var_3 = firstTrailingBit(0i);
    let var_4 = -vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1.a, u_input.b), vec3<i32>(var_1.a, -2147483647i, var_1.a)), -abs(vec3<i32>(u_input.d, -2147483647i, 6813i))), (i32(-1i) * -2147483647i) & max(var_1.a, ~2147483647i), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(-2147483647i, 30580i, 6599i), ~max(27659i, var_1.a)));
    return vec3<bool>(false, select(all(var_2.d), !(any(vec4<bool>(true, var_2.d.x, true, var_2.d.x)) && true), true), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(!vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(select(func_1(), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, false, true))))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-352f - -1233f), _wgslsmith_f_op_f32(select(1000f, -413f, true)), -522f, _wgslsmith_div_f32(1311f, -1772f))))), select(func_2(-vec2<i32>(global0.a, -23813i), false).a == _wgslsmith_mult_i32(global0.a, 0i), !select(true, global2.x <= global2.x, func_1().x), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_clamp_u32(abs(global2.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 4294967295u, 0u, 0u), vec4<u32>(11054u, global2.x, global2.x, 0u))), global2.x), vec2<f32>(_wgslsmith_div_f32(-1250f, _wgslsmith_f_op_f32(floor(-1391f))), -284f)));
    var var_1 = ~vec4<i32>(firstLeadingBit(2147483647i), 0i, global0.a, _wgslsmith_sub_i32(~(~u_input.b), 28255i));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(var_0.c.b.x - _wgslsmith_f_op_f32(-var_0.a.x)) >= -959f, !(!func_1().x), false, !var_0.b);
    var var_3 = ~u_input.a & ~var_1.x;
    var var_4 = vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(0i, select(-u_input.a, abs(var_1.x), var_0.b))), _wgslsmith_clamp_i32(~(~countOneBits(-17736i)), global0.a | 1i, -(-54187i | func_2(var_1.wz, true).a)), 4410i);
    var var_5 = false;
    let var_6 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(var_0.c.b.x + var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f * -1336f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.x)))))), var_2.x, Struct_1(var_0.c.a, var_0.a.yy));
    let var_7 = vec4<i32>(_wgslsmith_add_i32(0i, (var_4.x & min(global0.a, var_4.x)) >> (_wgslsmith_add_u32(0u, ~4294967295u) % 32u)), global0.a, max(-(~u_input.a), -64144i) & -20293i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(select(~vec4<u32>(var_6.c.a, 4294967295u, global2.x, global2.x), vec4<u32>(global2.x, var_6.c.a, var_0.c.a, 41197u), vec4<bool>(true, var_0.b, var_6.b, var_6.b)))), var_1.x);
}

