struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_3, 29>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 6456u), vec3<u32>(13961u, 3157u, 4294967295u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 93259u, 4200u), vec3<u32>(0u, 0u, 39321u), vec3<bool>(true, true, true)), select(vec3<u32>(0u, 43441u, 784u), vec3<u32>(7334u, 117804u, 0u), false), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~14506u, 1u, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(0u, 0u, 0u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(81490u, 18973u, 4294967295u), vec3<u32>(56418u, 63925u, 24059u), vec3<u32>(40821u, 0u, 1u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(38809u, 4294967295u, 25077u), vec3<u32>(11596u, 4294967295u, 1u), vec3<u32>(0u, 0u, 1u)))), firstLeadingBit(~1u), ~1u);
    var var_1 = ~(~(~vec4<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_add_u32(var_0.x, 4294967295u), ~var_0.x, var_0.x)));
    let var_2 = Struct_2(~abs(vec3<u32>(0u, 0u, 21139u) & firstLeadingBit(var_1.yzz)));
    global0 = array<Struct_3, 29>();
    return vec3<u32>(var_2.a.x & (_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(var_1.xxy, var_2.a)) ^ 6362u), _wgslsmith_mult_u32(var_2.a.x, ~73824u & ~var_0.x), _wgslsmith_dot_vec2_u32(var_1.zw, var_0.yx));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_0 = true;
    var var_1 = Struct_2(func_3());
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(452f + 1000f)))))), -35651i);
    return Struct_2(vec3<u32>(~reverseBits(countOneBits(7651u)), (4294967295u << (var_1.a.x % 32u)) | min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 80622u, 4294967295u), var_1.a), max(19706u, var_1.a.x)), select(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.x), var_1.a.zy), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_4 {
    global0 = array<Struct_3, 29>();
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(-arg_2.b.b) & (arg_2.b.b & 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2967i, 21604i, -2147483647i), vec4<i32>(arg_2.b.b, arg_1.b.b, arg_1.b.b, u_input.a)) << (1u % 32u), min(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b.b, arg_1.b.b, 0i, -6502i), vec4<i32>(arg_1.b.b, arg_1.b.b, 22375i, -64663i)), vec4<i32>(arg_2.b.b, 0i, 11581i, 2147483647i)), ~arg_2.b.b)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-13421i, 14617i, _wgslsmith_mult_i32(u_input.a, arg_1.b.b)), vec3<i32>(firstTrailingBit(arg_2.b.b), firstLeadingBit(2147483647i), ~(-12534i)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_2.b.b, u_input.a, u_input.a)), select(vec3<i32>(arg_2.b.b, arg_1.b.b, arg_2.b.b), vec3<i32>(arg_2.b.b, -5187i, arg_2.b.b), arg_2.a.x))));
    global0 = array<Struct_3, 29>();
    let var_1 = Struct_4(_wgslsmith_clamp_u32(arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(4294967295u), 63552u, arg_0.a.x >> (arg_3.x % 32u), ~67937u), ~vec4<u32>(arg_0.a.x, 36842u, arg_0.a.x, arg_3.x)), 0u));
    var var_2 = Struct_3(arg_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b.a)) + _wgslsmith_f_op_f32(-1521f - arg_2.b.a))), firstTrailingBit(2147483647i)));
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2)), 388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 164f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_2 * 533f))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-1031f)), 1243f, -664f);
    let var_2 = _wgslsmith_mult_i32(-u_input.a, max(_wgslsmith_div_i32(u_input.a, 14820i ^ u_input.a) | -46797i, u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(3174f + 159f)))), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)))), _wgslsmith_f_op_f32(round(-705f))));
    let var_4 = 60548u;
    return ~arg_0.a;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 29>();
    let var_0 = any(vec2<bool>(false, true));
    let var_1 = func_5(func_4(func_2(), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(reverseBits(68379u)), 63183u), 29u)], global0[_wgslsmith_index_u32(~51638u, 29u)], func_2().a.xy << (vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(34678u, 0u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 0u))) % vec2<u32>(32u))), select(select(select(!vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, false, var_0, var_0), all(vec4<bool>(false, var_0, true, var_0))), vec4<bool>(true, all(vec4<bool>(true, var_0, true, var_0)), true, true), -192f == _wgslsmith_f_op_f32(floor(-474f))), select(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, var_0, true, true), select(vec4<bool>(true, false, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false)), !(!vec4<bool>(false, false, var_0, true)), select(!var_0, true, true)), !select(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, false, var_0, var_0), true), !vec4<bool>(var_0, false, true, true), var_0 == var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-549f - 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(229f)), -419f)))))));
    global0 = array<Struct_3, 29>();
    var var_2 = !select(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, var_0))), !(!var_0)), vec2<bool>(false, true), countOneBits(var_1 >> (var_1 % 32u)) > 1u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, _wgslsmith_f_op_f32(-1048f - 861f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1787f)));
    var var_1 = func_1();
    let var_2 = func_4(Struct_2(~func_1().a), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(~var_1.a.x, ~53046u), var_1.a.x), 29u)], Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, false, false)))), Struct_1(-567f, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)) & u_input.a)), var_1.a.yx);
    global0 = array<Struct_3, 29>();
    var_1 = func_1();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(92935u, ~(~(~var_1.a.x)), true), var_1.a, min(vec3<u32>(~4294967295u, ~var_1.a.x | var_1.a.x, var_3.a.x), var_1.a), ~(u_input.a << (1u % 32u)));
}

