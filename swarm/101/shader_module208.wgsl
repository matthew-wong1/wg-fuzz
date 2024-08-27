struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = vec4<u32>(4294967295u, ~arg_0, ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.d, u_input.d) << (vec2<u32>(u_input.c, arg_0) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.c, arg_0))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(65532u, arg_0), vec2<u32>(39355u, 0u)), vec2<u32>(20644u, arg_0))), 1u);
    let var_1 = Struct_2(Struct_1(~(-1i), 34107i));
    let var_2 = Struct_1(-11435i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b, u_input.a, 2147483647i) & u_input.e.zyx, _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 32490i, -1i) | u_input.e.www), _wgslsmith_mod_vec3_i32(u_input.e.xzx, vec3<i32>(1i, 2147483647i, -1i)) ^ u_input.e.zyz)));
    let var_3 = abs(u_input.e.xxz ^ select(vec3<i32>(var_2.a, firstTrailingBit(3112i), _wgslsmith_clamp_i32(48389i, 0i, 5959i)), countOneBits(vec3<i32>(var_2.a, var_2.b, u_input.b)), true));
    let var_4 = false;
    return var_0.xy;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = -_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, arg_0.a | -1i, 2147483647i), -vec3<i32>(reverseBits(u_input.e.x), 6837i, max(u_input.b, 14068i)));
    var var_1 = vec2<u32>(~(_wgslsmith_sub_u32(~64822u, ~u_input.c) ^ 1u), 0u);
    var var_2 = Struct_2(arg_0);
    let var_3 = u_input.e.wwz;
    var_1 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.c), ~vec2<u32>(u_input.d, 10221u), ~vec2<u32>(u_input.d, var_1.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(~func_3(46763u), vec2<u32>(_wgslsmith_div_u32(u_input.c, var_1.x), var_1.x)), ~abs(var_1.x) ^ max(37913u, ~4294967295u)));
    return select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), 1u < u_input.c)), vec2<bool>(true, true), !(~u_input.d < ~var_1.x)), !select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), any(vec2<bool>(false, false))), true);
}

fn func_1() -> Struct_3 {
    var var_0 = ~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(2169u, u_input.d, u_input.c, 69137u), select(max(vec4<u32>(u_input.d, u_input.c, 101027u, 1u), vec4<u32>(5384u, u_input.d, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.d, 22776u), vec4<u32>(38894u, 4294967295u, 56040u, 61824u)), u_input.a < 58074i), ~(~vec4<u32>(u_input.c, u_input.d, 16006u, 0u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(5492u << (u_input.d % 32u), 6105u, min(23860u, 78250u), 1u), vec4<u32>(101541u, 0u, u_input.c, u_input.c) & vec4<u32>(1u, u_input.c, 4294967295u, 1u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~(u_input.d << (34616u % 32u)), ~(u_input.d ^ u_input.d), 0u, select(_wgslsmith_mod_u32(var_0.x, u_input.c), u_input.c, true)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 15047u), ~vec4<u32>(0u, var_0.x, u_input.c, 30105u))) & countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 42445u), vec4<u32>(u_input.c, 11877u, var_0.x, u_input.d)), _wgslsmith_dot_vec3_u32(var_0.zwy, firstTrailingBit(vec3<u32>(39111u, 17158u, 62995u))), ~u_input.d, ~var_0.x));
    var var_1 = var_0.wy >> (firstTrailingBit(~_wgslsmith_mod_vec2_u32(var_0.yw, ~vec2<u32>(u_input.c, u_input.d))) % vec2<u32>(32u));
    var_1 = select(vec2<u32>(~1u, firstLeadingBit(13408u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(~(~var_0.xz), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.x, 24052u), var_0.xx))), !select(select(func_2(Struct_1(36589i, u_input.e.x)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true)));
    let var_2 = Struct_2(Struct_1(u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(27258i, 1i, u_input.b, 0i)), u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, -1i, -1i), u_input.e)), u_input.e)));
    return Struct_3(var_2.a, var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-1507f * -3055f), 1471f, -1130f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1906f), 1012f, _wgslsmith_f_op_f32(-1163f - -595f), _wgslsmith_f_op_f32(f32(-1f) * -279f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2290f) * _wgslsmith_div_f32(-1000f, -809f)), 829f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))), _wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(691f + -310f) - _wgslsmith_div_f32(-162f, -1177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-123f)))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-657f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1464f, -2087f) * vec2<f32>(-1000f, -1395f)))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_2(func_1().b.a);
    var_0 = arg_0.b;
    var_0 = func_1().b;
    var_0 = arg_0.b;
    var var_1 = arg_0.c.wyx;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(-(-7298i ^ (u_input.a & u_input.a)) >= (0i | u_input.b), true, true, true);
    var var_1 = func_4(func_1(), _wgslsmith_f_op_f32(sign(-1006f)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i ^ var_1.a.a, 32368i), u_input.a), i32(-1i) * -2147483647i), func_4(Struct_3(var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.e.x, 1027f, var_1.c.x))), 612f, var_1.e), -736f).b, _wgslsmith_f_op_vec4_f32(round(func_1().c)), func_1().e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.e)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-1342f)), _wgslsmith_f_op_f32(-var_1.e.x)))));
    let var_3 = ~vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, 1u), u_input.d, 60419u | u_input.c), u_input.c, _wgslsmith_clamp_u32(1u, countOneBits(u_input.c), ~u_input.d));
    var var_4 = Struct_1(var_2.b.a.a << (4294967295u % 32u), ~(-1i));
    var_4 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) + _wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(trunc(426f)))))));
}

