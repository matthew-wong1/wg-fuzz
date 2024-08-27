struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1091f, 648f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(454f, 1901f)))), arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))))));
    var var_1 = arg_0;
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1419f + _wgslsmith_div_f32(1000f, 420f)))) - _wgslsmith_f_op_f32(3557f * arg_2.c.c)), var_0.a);
    var_1 = (1i < reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, u_input.c, u_input.c), -vec4<i32>(0i, arg_2.a.e.x, arg_3.x, arg_2.b)))) & true;
    var_1 = arg_0;
    return _wgslsmith_add_i32(u_input.c, _wgslsmith_mod_i32(select(reverseBits(-1573i), _wgslsmith_dot_vec3_i32(vec3<i32>(-128i, arg_2.c.d, 8916i), vec3<i32>(-24386i, u_input.c, 31128i)), true), -arg_3.x));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_1(~_wgslsmith_add_vec2_i32(~(~vec2<i32>(u_input.c, -2266i)), ~vec2<i32>(-2147483647i, -464i) ^ firstTrailingBit(vec2<i32>(u_input.c, 30574i))), firstTrailingBit(u_input.b.xzy), _wgslsmith_f_op_f32(abs(-127f)), _wgslsmith_div_i32(func_3(true, Struct_4(_wgslsmith_f_op_f32(floor(346f)), _wgslsmith_f_op_f32(trunc(679f))), Struct_2(Struct_1(vec2<i32>(-20966i, u_input.c), u_input.b.ywz, -117f, -2147483647i, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), 12347i, Struct_1(vec2<i32>(u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.b.x, 0u), -891f, u_input.c, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), -vec2<i32>(16780i, u_input.c)), -(vec2<i32>(28162i, 0i) << (u_input.b.zx % vec2<u32>(32u)))), ~2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, 0i, 1i, 39259i))), -abs(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)), vec4<i32>(u_input.c, 39742i, u_input.c, u_input.c) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 14918u), vec4<u32>(56918u, u_input.b.x, u_input.a, arg_1)) % vec4<u32>(32u))), select(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, -41716i, u_input.c, 1i)), firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.c, -16069i))), vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, -968i, u_input.c), all(vec3<bool>(false, true, true)) & true)));
    let var_1 = 11508i;
    var var_2 = ~arg_1;
    var var_3 = ~firstTrailingBit(~(~30060u));
    let var_4 = _wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.b), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 46482u, var_0.b.x) >> (vec4<u32>(arg_0, u_input.b.x, 2691u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, 1u, var_0.b.x, arg_1) >> (u_input.b % vec4<u32>(32u)), countOneBits(u_input.b)), min(vec4<u32>(arg_0, arg_0, arg_1, arg_1), u_input.b >> (u_input.b % vec4<u32>(32u))))));
    return Struct_3(var_0.e.wzz, Struct_1(var_0.e.yx, abs(vec3<u32>(u_input.d, arg_0, 4294967295u)), var_0.c, max(~firstTrailingBit(0i), _wgslsmith_sub_i32(28549i, var_0.a.x) ^ var_1), vec4<i32>(~20747i, select(1i, firstLeadingBit(-1i), true), 7208i, _wgslsmith_clamp_i32(var_1 >> (var_0.b.x % 32u), _wgslsmith_add_i32(var_1, -58932i), abs(1326i)))), Struct_1(var_0.e.xw, vec3<u32>(reverseBits(var_4.x), ~_wgslsmith_dot_vec4_u32(var_4, var_4), ~_wgslsmith_sub_u32(var_0.b.x, 1u)), -1124f, abs(var_1), vec4<i32>(_wgslsmith_mod_i32(u_input.c, var_1), -reverseBits(var_1), -_wgslsmith_sub_i32(1i, -10826i), min(~u_input.c, 1i))), ~u_input.b, reverseBits(firstLeadingBit(firstTrailingBit(max(19540u, arg_1)))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(vec2<i32>(-1i) * -firstTrailingBit(min(vec2<i32>(49824i, -2147483647i), vec2<i32>(u_input.c, -27829i))), vec3<u32>(18901u, _wgslsmith_add_u32(~(~u_input.d), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.d, 26361u), vec4<u32>(u_input.b.x, 60169u, 91069u, u_input.d)), vec4<u32>(u_input.e, u_input.a, 0u, u_input.e))), ~(~u_input.d)), _wgslsmith_f_op_f32(max(-1000f, 1281f)), 2147483647i, -_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2120i, -92678i, -26947i, u_input.c), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(50112i, u_input.c, u_input.c, 14099i)) << (_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(24814u, 38524u, u_input.a, u_input.b.x), vec4<u32>(0u, 45409u, 0u, u_input.e)), ~firstTrailingBit(u_input.b)) % vec4<u32>(32u)));
    let var_1 = ~(var_0.b.x >> ((var_0.b.x >> (firstTrailingBit(var_0.b.x) % 32u)) % 32u));
    let var_2 = var_0.e.x;
    let var_3 = 1i;
    let var_4 = _wgslsmith_add_u32(var_1, _wgslsmith_mult_u32(~var_0.b.x, _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b))) | u_input.a;
    return func_2(~25587u, ~(~43464u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(vec3<i32>(~var_0.b.e.x << (~u_input.e % 32u), -2147483647i, var_0.c.e.x & _wgslsmith_add_i32(32811i, var_0.c.a.x)) & vec3<i32>(_wgslsmith_mult_i32(-12896i, var_0.a.x) | _wgslsmith_clamp_i32(var_0.c.e.x, 54432i, var_0.b.e.x), 43810i, reverseBits(select(u_input.c, -28923i, false))), Struct_1(reverseBits(~min(vec2<i32>(20043i, u_input.c), vec2<i32>(var_0.b.d, u_input.c))), vec3<u32>(~(~21531u), ~1u, _wgslsmith_mod_u32(10203u, ~46528u)), _wgslsmith_f_op_f32(-141f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_add_i32(var_0.c.a.x, var_0.c.d) & u_input.c, select(vec4<i32>(-2147483647i, -1i, -2147483647i, -u_input.c), var_0.b.e, ~(-27111i) > _wgslsmith_sub_i32(var_0.a.x, u_input.c))), Struct_1(vec2<i32>(_wgslsmith_add_i32(abs(var_0.c.d), i32(-1i) * -1i), ~(-2147483647i)), u_input.b.wwx, _wgslsmith_f_op_f32(floor(492f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-32398i, u_input.c, _wgslsmith_clamp_i32(u_input.c, 0i, -46590i)), select(var_0.b.e.yxz, -vec3<i32>(var_0.c.a.x, u_input.c, var_0.c.d), true)), select(select(var_0.b.e, firstTrailingBit(var_0.b.e), all(vec4<bool>(false, true, false, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.b.e.x, var_0.c.d, u_input.c), var_0.c.e, vec4<i32>(39142i, u_input.c, 1i, 1i)) << (u_input.b % vec4<u32>(32u)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), max(~u_input.b, _wgslsmith_div_vec4_u32(var_0.d, vec4<u32>(var_0.b.b.x, u_input.b.x, var_0.b.b.x, 4294967295u)) | abs(var_0.d)) & max(~vec4<u32>(var_0.c.b.x, 78901u, 49006u, u_input.d), var_0.d ^ vec4<u32>(1u, u_input.e, 5899u, 29518u)), ~11622u);
    var_0 = Struct_3(-(_wgslsmith_add_vec3_i32(var_0.b.e.wzy, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, var_0.c.e.x, var_0.c.d), var_0.a)) ^ var_0.b.e.yyz), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-var_0.a.zz, func_1().a.yx), ~vec2<i32>(var_0.a.x, -2147483647i)), vec3<u32>(~var_0.c.b.x, ~32608u, ~45606u) ^ ~(~vec3<u32>(0u, u_input.e, u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.b.c)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.c - -135f)))), u_input.c, countOneBits(vec4<i32>(u_input.c, u_input.c, ~var_0.c.a.x, ~(-23304i)))), var_0.b, vec4<u32>(var_0.d.x, ~4294967295u & select(var_0.d.x ^ 8299u, _wgslsmith_clamp_u32(12965u, 52360u, var_0.d.x), 1i == u_input.c), ~1u, ~(~(var_0.b.b.x & var_0.e))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(var_0.e, var_0.d.x), _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(u_input.d, var_0.b.b.x, var_0.c.b.x)), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.b.x, u_input.b.x), firstLeadingBit(u_input.b.zy))), var_0.d));
    var var_1 = true || select(true, (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -3523i, var_0.a.x), vec3<i32>(-1i, -1i, u_input.c)) & (i32(-1i) * -26220i)) != 0i, !(var_0.b.a.x < u_input.c) | false);
    var_1 = (func_2(min(~var_0.b.b.x, 8772u), countOneBits(~4294967295u)).c.c == var_0.b.c) != (!(!select(true, true, true)) | any(vec3<bool>(u_input.c <= var_0.c.d, true, true)));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~var_0.d.ywy))), var_0.d, 0i << (var_0.b.b.x % 32u));
}

