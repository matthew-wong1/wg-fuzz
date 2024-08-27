struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0.c.x;
    return 0u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = Struct_2(vec4<i32>(-countOneBits(u_input.a), 1i, i32(-1i) * -1i, 2147483647i) ^ _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17863i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), (vec4<i32>(12650i, -1i, u_input.a, -2147483647i) | vec4<i32>(-1i, u_input.a, 30256i, u_input.a)) >> (~vec4<u32>(arg_2.x, arg_1.x, 0u, arg_1.x) % vec4<u32>(32u))), ~vec2<u32>(arg_2.x, _wgslsmith_clamp_u32(95575u, arg_2.x, 0u)) >> (~firstTrailingBit(vec2<u32>(4294967295u, arg_1.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-3617f + arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))))));
    var_0 = Struct_2(var_0.a, arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))));
    var_0 = Struct_2(var_0.a, _wgslsmith_clamp_vec2_u32(select(~countOneBits(vec2<u32>(arg_2.x, arg_1.x)), max(vec2<u32>(55987u, 1u), arg_1 ^ vec2<u32>(arg_1.x, 0u)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), vec2<u32>(_wgslsmith_mult_u32(arg_2.x, arg_2.x) << (4294967295u % 32u), arg_1.x), ~var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -709f));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3002f))) > _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) - _wgslsmith_f_op_f32(arg_0.x - arg_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(floor(564f)))) * vec2<f32>(_wgslsmith_f_op_f32(-447f - var_0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(exp2(var_0.c)))))), u_input.a, firstLeadingBit(~(~arg_2)));
    return ~(-2147483647i) ^ _wgslsmith_mod_i32(-52651i, u_input.a);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -663f)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 2122f, -805f, -408f)) * vec4<f32>(arg_0.x, arg_0.x, 1715f, _wgslsmith_f_op_f32(f32(-1f) * -850f))), ~vec2<u32>(1u, 1u), vec4<u32>(34282u & func_3(Struct_3(arg_0.zx, 49i, vec4<u32>(0u, 52082u, 1u, 85383u)), vec2<bool>(false, true), Struct_1(vec2<f32>(arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec4<f32>(-957f, -907f, arg_0.x, arg_0.x), vec2<bool>(true, true), vec3<i32>(u_input.a, 12051i, 1i))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(42539u, 4294967295u, 1u), vec3<u32>(1u, 1u, 4294967295u)), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(10151u, 38105u), vec2<u32>(61375u, 11273u))), _wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(14193u, 0u))), _wgslsmith_f_op_vec2_f32(arg_0.xy - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.zy))))), select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(firstTrailingBit(0u), ~19829u, any(vec4<bool>(true, false, true, true))), 19504u, ~71690u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43559u, 64011u, 4294967295u), ~vec4<u32>(0u, 4294967295u, 1u, 1u))), select(vec4<bool>(true, false, all(vec2<bool>(true, false)), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = false;
    var_1 = true;
    let var_2 = Struct_4(var_0, var_0.b, Struct_2(vec4<i32>(var_0.b, (u_input.a ^ 0i) << (0u % 32u), abs(var_0.b), _wgslsmith_clamp_i32(1i, -31562i, -1i >> (1u % 32u))), select(var_0.c.zw, ~(~vec2<u32>(var_0.c.x, 0u)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 373f, var_2.a.a.x, var_2.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1161f, var_0.a.x, -331f) - vec4<f32>(var_0.a.x, -864f, 2643f, var_0.a.x)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, -450f)), var_0.a.x, _wgslsmith_f_op_f32(abs(arg_0.x)), var_2.c.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, 784f, arg_0.x, 1041f))))));
    return -38120i;
}

fn func_1() -> bool {
    var var_0 = Struct_2(abs(vec4<i32>(u_input.a, u_input.a, func_2(vec3<f32>(715f, -771f, 500f)), -func_4(vec4<f32>(-668f, 253f, 1054f, 1362f), vec2<u32>(0u, 1u), vec4<u32>(0u, 0u, 78682u, 10978u), vec2<f32>(327f, 383f)))), firstTrailingBit(vec2<u32>(countOneBits(1u), _wgslsmith_sub_u32(1708u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-161f)), -1171f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(121f, 393f, true)))) + _wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = var_0.c;
    var_0 = Struct_2(vec4<i32>(max(var_0.a.x, _wgslsmith_div_i32(-2147483647i >> (var_0.b.x % 32u), -var_0.a.x)), reverseBits(u_input.a), -func_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, -1573f, var_0.c), vec3<f32>(1186f, var_0.c, var_0.c))), -_wgslsmith_div_i32(var_0.a.x << (36909u % 32u), max(47436i, 0i))), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(var_0.b.x, 1u)), countOneBits(var_0.b)), 569f);
    let var_2 = var_0.a.xz;
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_vec2_u32(var_0.b, reverseBits(max(var_0.b, ~vec2<u32>(89819u, 0u)))), 842f);
    return !(true & select(false, true, var_2.x < ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, !func_1()), select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), select(true, u_input.a == u_input.a, true)), select(vec2<bool>(true, select(true, false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(457f, -1589f, 461f, -1225f), vec4<f32>(-1028f, 1609f, -1000f, -882f))))), vec2<u32>(firstTrailingBit(~30624u), 1u), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(35782u, 0u, 33258u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(608f, 101f))))))) ^ -_wgslsmith_mult_i32(u_input.a, -(u_input.a & 1i));
    var_1 = u_input.a;
    var_1 = ~_wgslsmith_add_i32(-2147483647i, firstLeadingBit(u_input.a));
    var var_2 = _wgslsmith_div_f32(-1218f, _wgslsmith_f_op_f32(812f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(628f)), 1f))))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-603f + -383f), -366f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1895f, -132f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1991f, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, 1177f) * vec2<f32>(-463f, 228f)), !var_0.x))), vec3<bool>(var_0.x, !(!var_0.x && var_0.x), select(true, var_0.x, func_1())), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, 1f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f + 1287f)), -1214f)), 1000f, -1051f), vec2<bool>(all(vec4<bool>(var_0.x, true, true, all(vec2<bool>(false, var_0.x)))), false), vec3<i32>(u_input.a, countOneBits(u_input.a ^ -1i), _wgslsmith_div_i32(u_input.a, max(u_input.a, u_input.a))) & -vec3<i32>(2147483647i, u_input.a, i32(-1i) * -9154i));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -522f)))));
    let var_4 = ~vec4<u32>(abs(~abs(4294967295u)), ~1u, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_mod_i32(var_3.e.x, countOneBits(u_input.a)), firstTrailingBit(u_input.a) ^ (i32(-1i) * -2147483647i))), var_3.c.zwx, vec3<u32>(reverseBits(var_4.x), ~var_4.x, var_4.x));
}

