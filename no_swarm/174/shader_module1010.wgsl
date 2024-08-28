struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(695f, -1278f)) + _wgslsmith_f_op_f32(step(-345f, -246f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(187f, -278f))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), 4294967295u);
    var var_1 = Struct_2(_wgslsmith_div_f32(-1678f, -563f), !any(vec2<bool>(all(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b)), var_0.a.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, var_1.a, -318f, -554f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, 522f, var_0.a.a, var_0.a.a))))))));
    let var_3 = var_0.a;
    var_1 = var_3;
    return Struct_3(u_input.a.zy);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_1(max(firstTrailingBit(vec4<i32>(~(-23772i), u_input.b.x | -5770i, u_input.c, ~u_input.b.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), -u_input.e.xy), ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.e.x, -19456i)), ~countOneBits(u_input.c), abs(u_input.b.x))), select(vec3<u32>(1u, 10755u, 65196u), select(vec3<u32>(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, 44413u), arg_0.a.x, min(5843u, 0u)), vec3<u32>(_wgslsmith_mod_u32(1u, 1u), min(57234u, 19895u), 1u), all(vec3<bool>(true, true, true))), 1u <= func_2(_wgslsmith_mod_u32(0u, arg_1.x), u_input.b.x, _wgslsmith_div_i32(2147483647i, u_input.b.x), arg_1.x).a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(667f, _wgslsmith_f_op_f32(sign(1319f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(563f, 596f), vec2<f32>(-1283f, 797f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -128f)))))), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x + 219f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1792f, var_0.c.x)))), max(~22248i, u_input.e.x) == var_0.a.x);
    var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(~min(-1i, -1i), -(u_input.e.x << (46018u % 32u)), reverseBits(var_0.a.x & u_input.e.x)), _wgslsmith_sub_i32(var_0.a.x ^ 2147483647i, u_input.e.x), ~u_input.e.x, ~(_wgslsmith_div_i32(var_0.a.x, var_0.a.x) & u_input.e.x)), var_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, 106f), vec2<f32>(886f, -596f))))))));
    var_0 = Struct_1(vec4<i32>(countOneBits(_wgslsmith_mult_i32(0i, 9875i)), var_0.a.x, ~abs(_wgslsmith_add_i32(1i, -2147483647i)), 2147483647i), abs(countOneBits(var_0.b)) >> (arg_1.yyz % vec3<u32>(32u)), var_0.c);
    var var_2 = true;
    return Struct_3(select(var_0.b.yz, arg_1.zz, (8234i >> (var_0.b.x % 32u)) <= -2147483647i) ^ vec2<u32>(arg_0.a.x, _wgslsmith_add_u32(firstTrailingBit(arg_1.x), _wgslsmith_sub_u32(u_input.d, arg_0.a.x))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = func_3(func_2(18640u, ~(~u_input.b.x), u_input.c, reverseBits(reverseBits(20710u) << (_wgslsmith_add_u32(864u, arg_0.b.x) % 32u))), ~reverseBits(vec4<u32>(_wgslsmith_mod_u32(0u, 63725u), ~arg_0.b.x, u_input.d, arg_0.b.x)));
    let var_1 = u_input.a.x < _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(var_0.a.x, 58247u) & (firstLeadingBit(4294967295u) & ~var_0.a.x));
    let var_2 = !vec2<bool>(var_1, !(!(var_1 & false)));
    let var_3 = Struct_1(vec4<i32>(~u_input.e.x, arg_0.a.x, arg_0.a.x, _wgslsmith_clamp_i32(u_input.c, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.a.x, arg_0.a.x), 1i), 1i)), ~arg_0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.c.x, -671f)))))));
    let var_4 = !select(vec4<bool>(all(!vec4<bool>(true, var_2.x, var_2.x, var_1)), any(select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x), true)), var_1, var_1 | !var_2.x), vec4<bool>(!(!var_1), any(!vec3<bool>(var_2.x, false, false)), var_1, var_1), select(vec4<bool>(select(true, var_2.x, var_1), false, true && var_1, all(var_2)), !(!vec4<bool>(var_1, false, var_1, var_1)), false));
    return ~vec2<u32>(1u, _wgslsmith_mod_u32(50474u, arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 185f;
    var var_1 = reverseBits(u_input.c) >> (0u % 32u);
    var var_2 = Struct_5(-74143i, func_1(Struct_1(~vec4<i32>(u_input.e.x, -16511i, u_input.e.x, u_input.c), ~u_input.a, vec2<f32>(-1740f, -1000f))) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(14927u, u_input.a.x)), vec2<u32>(u_input.a.x, 1u)), ~(~vec2<u32>(0u, 4294967295u))));
    let var_3 = Struct_1(~_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, u_input.c, -43143i, var_2.a) & vec4<i32>(-2415i, -2147483647i, -34241i, var_2.a)), (vec4<i32>(-39448i, u_input.e.x, u_input.b.x, u_input.c) ^ vec4<i32>(var_2.a, -2147483647i, var_2.a, var_2.a)) >> ((vec4<u32>(u_input.a.x, 62290u, 58902u, var_2.b.x) << (vec4<u32>(48604u, var_2.b.x, 4294967295u, 41363u) % vec4<u32>(32u))) % vec4<u32>(32u))), firstTrailingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), u_input.a))), vec2<f32>(287f, _wgslsmith_f_op_f32(exp2(1f))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, _wgslsmith_f_op_f32(-var_3.c.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-524f, -720f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, -698f) + vec2<f32>(-173f, var_3.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_3.c)) + _wgslsmith_f_op_vec2_f32(-var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(var_3.b.x, var_2.b.x)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~var_2.b, _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, var_3.b.x))), u_input.a.yz) % vec2<u32>(32u)), 4294967295u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, 539f) - vec3<f32>(var_4.x, -632f, var_4.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.x, var_4.x, var_3.c.x), vec3<f32>(var_3.c.x, -1482f, var_4.x)))))), var_3.c.x, -196f);
}

