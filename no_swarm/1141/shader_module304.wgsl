struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f + -449f) - -955f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(662f))))))));
    let var_1 = -abs(select(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(34382i, -6051i, -2147483647i)), select(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(-2147483647i, 12050i, -10147i), vec3<bool>(true, true, true))), vec3<i32>(_wgslsmith_add_i32(-89649i, u_input.c), countOneBits(u_input.c), u_input.c), any(vec3<bool>(true, true, false))));
    let var_2 = abs(_wgslsmith_div_vec3_u32(arg_0.zyx, ~arg_0.zxz));
    var var_3 = Struct_1(var_2.x);
    let var_4 = Struct_2(Struct_1(arg_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(-659f + -290f))))));
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = ~17782u;
    let var_1 = Struct_2(Struct_1(var_0));
    var var_2 = _wgslsmith_f_op_f32(func_3(~(~(~vec4<u32>(u_input.b.x, 58238u, 103944u, 0u) >> (countOneBits(vec4<u32>(var_0, 4294967295u, u_input.b.x, var_0)) % vec4<u32>(32u))))));
    let var_3 = !select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), any(vec2<bool>(false, true))), true), any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), true)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -134f))))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = !(!all(vec3<bool>(u_input.c < -1i, false, false)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1912f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1382f), 60767i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f + 162f))))), 262f));
    let var_2 = ~arg_0.a ^ 4294967295u;
    var var_3 = vec3<u32>(1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 7286u, _wgslsmith_dot_vec3_u32(vec3<u32>(21214u, var_2, arg_0.a), vec3<u32>(82205u, var_2, var_2))), u_input.b), _wgslsmith_dot_vec3_u32(max(vec3<u32>(12717u, u_input.b.x, 40008u) << (vec3<u32>(47178u, 8611u, 4294967295u) % vec3<u32>(32u)), u_input.b), u_input.b)), 0u);
    var var_4 = !vec3<bool>(var_0, !any(vec2<bool>(arg_2, true)), !(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(81813u, 47924u)) != ~arg_0.a));
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b.x, 1u, arg_0.a.a);
    var var_1 = Struct_3(Struct_2(arg_0.a), Struct_1((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 10999u, 8236u, arg_0.a.a), vec4<u32>(4294967295u, u_input.a, 4581u, var_0.x)) & 18805u) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 48102u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 28131u, 4294967295u)), _wgslsmith_add_u32(4294967295u, arg_0.a.a)) % 32u)), vec2<bool>(u_input.c != -1i, !any(vec2<bool>(true, true)) & true));
    var_1 = Struct_3(arg_0, Struct_1(var_0.x), select(var_1.c, var_1.c, all(vec3<bool>(any(vec4<bool>(true, var_1.c.x, true, false)), !var_1.c.x, any(vec2<bool>(var_1.c.x, true))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-830f, -678f)) * 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(f32(-1f) * -783f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(704f, -846f, 2000f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(-360f, 1820f, _wgslsmith_f_op_f32(f32(-1f) * -2019f)), vec3<f32>(_wgslsmith_f_op_f32(-2035f + 491f), -157f, 1677f)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.c.x, false, false), vec3<bool>(true, false, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, true)), !vec3<bool>(true, true, var_1.c.x), var_1.c.x), var_1.c.x))));
    let var_3 = Struct_3(arg_0, Struct_1(4294967295u | (countOneBits(u_input.a) | _wgslsmith_add_u32(arg_0.a.a, u_input.b.x))), select(select(!var_1.c, var_1.c, 1u >= ~var_1.a.a.a), var_1.c, all(vec3<bool>(!var_1.c.x, true, true))));
    return func_1(Struct_1(firstLeadingBit(8693u)), any(select(vec4<bool>(true, var_1.c.x, var_1.c.x, var_3.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), true)) || var_1.c.x, ~u_input.c <= -1i, _wgslsmith_div_i32(82771i, ~(-u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_add_u32(u_input.b.x, 38659u));
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(~countOneBits(u_input.b)), ~reverseBits(vec3<u32>(13543u, 48841u, var_0.a))), u_input.b);
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 11477i, -36256i), abs(vec4<i32>(u_input.c, firstTrailingBit(u_input.c), u_input.c, -1i << (var_1.x % 32u)) & vec4<i32>(select(1i, u_input.c, true), -2147483647i, ~u_input.c, 2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c, -12069i, 1i, u_input.c)), firstLeadingBit(vec4<i32>(-44773i, 2147483647i, u_input.c, u_input.c))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(-9851i, -44529i, -52292i, u_input.c)), u_input.c, ~abs(2147483647i), 7593i)));
    var_0 = Struct_1(1u >> (select(61093u, ~1u, !(0i > u_input.c)) % 32u));
    var var_3 = ~(-1i);
    var_2 = firstLeadingBit(vec4<i32>(-3864i, _wgslsmith_mod_i32(max(select(36148i, 1i, true), var_2.x), u_input.c), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 0i), ~var_2.wx)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-34555i, -4982i), ~(u_input.c | 0i))));
    var var_4 = func_4(Struct_2(func_1(Struct_1(u_input.b.x), all(vec3<bool>(true, true, true)), u_input.b.x <= abs(1u), _wgslsmith_add_i32(0i, select(var_2.x, var_2.x, false)))));
    var var_5 = any(vec2<bool>(true & !(u_input.c >= var_2.x), u_input.c <= (-1i | u_input.c)));
    var_2 = vec4<i32>(_wgslsmith_mult_i32(-1i, var_2.x), _wgslsmith_div_i32(var_2.x, ~abs(-2147483647i)), -12345i, abs(0i)) >> (firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, 0u, u_input.a, 1u), min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a, 1u, var_4.a), vec4<u32>(2828u, var_0.a, var_0.a, 4294967295u)), ~vec4<u32>(u_input.b.x, 0u, 26100u, var_0.a)), firstLeadingBit(vec4<u32>(0u, var_0.a, u_input.b.x, var_0.a)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, -var_2.x, u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~var_2.wzy, select(var_2.yzz, var_2.yzy, false)), var_2.yxz)));
}

