struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(-1350f, vec4<i32>(2142i, 2147483647i, 1i, 1i)), Struct_4(1077f, vec4<i32>(2147483647i, 892i, -1i, 13599i)), Struct_4(575f, vec4<i32>(2147483647i, 0i, -1i, i32(-2147483648))), Struct_4(672f, vec4<i32>(-17777i, 1i, 1i, -1i)), Struct_4(-454f, vec4<i32>(0i, -12564i, -16454i, -1i)), Struct_4(1164f, vec4<i32>(2147483647i, -5851i, -1i, 2147483647i)), Struct_4(-1704f, vec4<i32>(-11608i, -1i, 7322i, -1i)), Struct_4(-190f, vec4<i32>(38225i, 11531i, i32(-2147483648), 1i)), Struct_4(-732f, vec4<i32>(-24387i, 2147483647i, 1i, 12331i)), Struct_4(-1000f, vec4<i32>(-67787i, 1i, 54304i, -36559i)));

var<private> global1: i32 = 49884i;

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = ~(~reverseBits(arg_0.c.d.x) ^ (~arg_0.c.c.x | arg_0.c.d.x));
    global2 = countOneBits(max(countOneBits(abs(vec4<u32>(0u, arg_0.c.b.x, u_input.b.x, global2.x))), firstLeadingBit(select(arg_0.c.b, vec4<u32>(arg_0.a, u_input.b.x, 1u, arg_0.b.x), vec4<bool>(true, false, false, true))))) & vec4<u32>(arg_0.c.e.x, _wgslsmith_div_u32(global2.x, 0u >> (arg_0.c.b.x % 32u)), 1u, arg_0.b.x);
    var var_0 = Struct_3((arg_0.a <= min(global2.x, 1u)) | true, 602f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1037f, -649f, 630f), vec3<f32>(970f, 1657f, 506f))))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1420f, -1580f, 1000f)), vec3<f32>(-779f, 219f, -883f))), vec3<f32>(1000f, -1000f, _wgslsmith_f_op_f32(-1555f * 1201f)))), Struct_2(4294967295u, ~(~(~arg_0.b)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, arg_0.c.b.x) ^ vec4<u32>(4294967295u, 296u, 58793u, 29111u), vec4<u32>(4294967295u, u_input.c, 39446u, global2.x) & vec4<u32>(17840u, 0u, u_input.b.x, arg_0.c.e.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 48309u, 4454u), _wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(34010u, 39610u, global2.x, 1846u))), ~(vec4<i32>(-8036i, u_input.a, arg_0.c.d.x, 23076i) << (arg_0.b % vec4<u32>(32u))), reverseBits(arg_0.c.c.yzz) & arg_0.c.c.yzy, ~reverseBits(arg_0.c.e))));
    global0 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f + _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f - -2152f)))) * var_0.c.yy);
    return any(vec3<bool>(false, reverseBits(arg_0.c.e.x << (4294967295u % 32u)) == ~countOneBits(arg_0.c.b.x), all(select(select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, false, var_0.a)), vec4<bool>(var_0.a, true, false, var_0.a), true))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), !select(all(vec2<bool>(true, true)), false, any(vec2<bool>(true, false))), true), !vec3<bool>(true, true, !func_3(Struct_2(global2.x, vec4<u32>(4294967295u, u_input.c, u_input.b.x, 1u), Struct_1(u_input.c, vec4<u32>(0u, 4294967295u, 4294967295u, 41295u), vec4<i32>(arg_1.x, -5630i, u_input.a, arg_1.x), vec3<i32>(2147483647i, arg_1.x, arg_1.x), vec3<u32>(global2.x, global2.x, u_input.b.x))))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) && func_3(Struct_2(~55924u, ~vec4<u32>(1u, 62814u, 0u, 4294967295u), Struct_1(u_input.c, vec4<u32>(0u, u_input.b.x, 117779u, u_input.c), vec4<i32>(u_input.a, 2147483647i, u_input.a, arg_1.x), vec3<i32>(u_input.a, 22188i, 1i), u_input.b))));
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, global2.wx), abs(~(~1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2.x, u_input.c, global2.x)), select(vec3<u32>(u_input.c, 61122u, global2.x), u_input.b, vec3<bool>(var_0.x, var_0.x, var_0.x))) | 5173u, u_input.c), _wgslsmith_add_u32(~(reverseBits(41442u) << (_wgslsmith_sub_u32(u_input.b.x, 56435u) % 32u)), firstLeadingBit(u_input.c)));
    let var_1 = Struct_3(func_3(Struct_2(max(global2.x, ~4294967295u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(22616u, global2.x, global2.x, u_input.b.x), vec4<u32>(u_input.c, 1u, 0u, global2.x), vec4<u32>(global2.x, 16376u, 8753u, global2.x)), reverseBits(vec4<u32>(1u, global2.x, 12787u, global2.x))), Struct_1(countOneBits(global2.x), ~vec4<u32>(u_input.c, u_input.b.x, 43233u, 7978u), vec4<i32>(arg_1.x, 1i, -20383i, u_input.a), vec3<i32>(arg_2.x, 39840i, u_input.a) | vec3<i32>(-2147483647i, u_input.a, u_input.a), firstTrailingBit(global2.zwx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1094f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f))))), Struct_2(~global2.x, ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, global2.x), vec4<u32>(7920u, u_input.c, global2.x, u_input.c)), vec4<u32>(73372u, u_input.c, global2.x, 53635u)), Struct_1(_wgslsmith_div_u32(1u, 1u), vec4<u32>(u_input.c, global2.x, u_input.c >> (global2.x % 32u), abs(70849u)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-35924i, -17970i, 35196i, arg_1.x), vec4<i32>(arg_2.x, 5580i, 1i, arg_1.x)), ~vec4<i32>(arg_1.x, 16622i, -1i, arg_2.x)), _wgslsmith_div_vec3_i32(min(vec3<i32>(arg_1.x, arg_2.x, arg_2.x), vec3<i32>(arg_2.x, -633i, -59503i)), ~vec3<i32>(u_input.a, -30260i, 2147483647i)), vec3<u32>(global2.x, u_input.c | u_input.c, abs(4294967295u)))));
    var var_2 = ~46968u;
    let var_3 = global0[_wgslsmith_index_u32(~min(_wgslsmith_add_u32(global2.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(83516u, global2.x, 0u), vec3<u32>(41421u, global2.x, var_1.d.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2.xxz, var_1.d.b.zzz), ~vec3<u32>(var_1.d.b.x, var_1.d.a, 68358u))), ~(0u | (global2.x >> (var_1.d.c.b.x % 32u)))), 10u)];
    return Struct_1(_wgslsmith_dot_vec2_u32(max(var_1.d.b.wx, abs(var_1.d.b.zw)), max(abs(abs(vec2<u32>(global2.x, 95654u))), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, u_input.b.x), vec2<u32>(1u, 21775u)))), vec4<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(5737u, global2.x) << (vec2<u32>(global2.x, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), ~countOneBits(global2.xx)), 4294967295u, _wgslsmith_add_u32(u_input.b.x, 74220u), 34411u), countOneBits(-_wgslsmith_div_vec4_i32(~vec4<i32>(0i, -15608i, u_input.a, 1i), var_3.b)), ~_wgslsmith_mult_vec3_i32(~var_3.b.zyw, var_1.d.c.c.yyx), var_1.d.b.xzy);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    global1 = arg_3.d.c.d.x;
    let var_0 = Struct_3(func_3(arg_3.d), -227f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.c.x, arg_3.c.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, arg_3.c.x, arg_1.x))))))), Struct_2(u_input.c, _wgslsmith_mult_vec4_u32(countOneBits(arg_3.d.b), vec4<u32>(1u, arg_3.d.b.x, _wgslsmith_mult_u32(global2.x, global2.x), reverseBits(global2.x))), func_2(-330f, vec2<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(arg_3.d.c.c.xx, arg_0)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_3.d.c.c.x), vec2<i32>(7417i, arg_0.x)))));
    let var_1 = 5114u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, _wgslsmith_f_op_f32(777f * 2538f), _wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_f_op_f32(exp2(arg_2.x)))) * _wgslsmith_f_op_vec3_f32(select(arg_3.c, _wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(vec3<f32>(463f, arg_1.x, 357f) - arg_1)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_3.a, true), vec3<bool>(var_0.a, true, false)), vec3<bool>(arg_3.a, var_0.a, false), select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, arg_3.a), vec3<bool>(false, arg_3.a, arg_3.a)))))));
    let var_3 = arg_3;
    return Struct_1(_wgslsmith_add_u32(func_2(var_3.c.x, firstLeadingBit(vec2<i32>(var_0.d.c.c.x, -2147483647i)) << (~vec2<u32>(arg_3.d.a, arg_3.d.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(max(vec2<i32>(1i, 3954i), var_0.d.c.c.yz), var_0.d.c.d.yy)).a, 7366u), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51464u, var_0.d.a), vec2<u32>(var_1, 7438u)), min(u_input.b.x, var_0.d.b.x), global2.x, _wgslsmith_mult_u32(global2.x, global2.x)) & _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.d.b, vec4<u32>(4294967295u, arg_3.d.c.b.x, 1590u, var_3.d.b.x)), ~vec4<u32>(var_1, 4294967295u, var_1, var_3.d.a)), vec4<u32>(~76282u, select(1u, 48550u, arg_3.a), global2.x, ~36906u)), -vec4<i32>(firstTrailingBit(abs(-2147483647i)), u_input.a, _wgslsmith_div_i32(~(-45224i), 2890i), i32(-1i) * -2147483647i), ~(~(~(vec3<i32>(arg_0.x, 43531i, -1i) | arg_3.d.c.c.wxy))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(18464u, 1u, 1u)), vec3<u32>(countOneBits(var_0.d.a), 4294967295u, 4294967295u)) ^ arg_3.d.b.xzw);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> vec4<i32> {
    global1 = firstLeadingBit(u_input.a);
    global1 = 1i;
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global2.x, u_input.c, 75709u, arg_1) ^ vec4<u32>(global2.x, 16435u, u_input.c, 4294967295u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.x, 15961u, 24993u), vec4<u32>(17145u, 1u, 4294967295u, 0u), vec4<u32>(arg_1, global2.x, 23526u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 83012u, 94965u, u_input.c), vec4<u32>(global2.x, 71713u, 84748u, u_input.b.x)))), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global2.x, u_input.b.x, arg_1, arg_1) | vec4<u32>(u_input.c, 1u, global2.x, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(47065u, 4294967295u, 40193u, 69130u) | vec4<u32>(arg_1, global2.x, 4294967295u, 13257u), countOneBits(vec4<u32>(global2.x, u_input.c, 11242u, 5964u))), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 15906u, 9898u, 53873u), vec4<u32>(u_input.b.x, global2.x, u_input.c, 1u) ^ vec4<u32>(1u, u_input.c, global2.x, u_input.b.x)))), func_4(vec2<i32>(_wgslsmith_div_i32(~1i, abs(u_input.a)), select(_wgslsmith_sub_i32(1i, 0i), firstLeadingBit(u_input.a), true)), _wgslsmith_f_op_vec3_f32(arg_3 - vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(1047f - 129f), _wgslsmith_f_op_f32(min(152f, 331f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1717f, arg_3.x, true)), arg_3.x, 1120f) + _wgslsmith_f_op_vec3_f32(arg_3 + _wgslsmith_f_op_vec3_f32(round(arg_3)))), Struct_3(true, arg_0, vec3<f32>(_wgslsmith_f_op_f32(379f + -905f), 1030f, _wgslsmith_f_op_f32(-arg_0)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 46519u, 4294967295u, arg_1), vec4<u32>(59420u, u_input.c, 73993u, 21374u)), max(vec4<u32>(u_input.b.x, arg_1, arg_1, global2.x), vec4<u32>(u_input.c, global2.x, 4011u, arg_1)), func_2(1006f, vec2<i32>(arg_2, u_input.a), vec2<i32>(arg_2, -1i))))));
    var var_1 = false;
    global1 = func_4(firstLeadingBit(-_wgslsmith_div_vec2_i32(var_0.c.d.xy, ~vec2<i32>(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3 - arg_3) + arg_3) * vec3<f32>(-1335f, _wgslsmith_f_op_f32(sign(arg_0)), -1254f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f - arg_3.x), _wgslsmith_f_op_f32(arg_3.x * 137f), arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_3.x, 525f))), true))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1696f))), _wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f * arg_3.x))))), Struct_3(select(true, abs(4294967295u) < _wgslsmith_add_u32(arg_1, arg_1), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-171f - arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -880f))), arg_3.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f + arg_0) + 1519f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.x)) - -1000f)), var_0)).c.x;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.d.x, 0i, firstTrailingBit(0i), firstLeadingBit(_wgslsmith_mod_i32(0i, var_0.c.c.x))), -abs(var_0.c.c | select(vec4<i32>(arg_2, 7129i, 2147483647i, arg_2), vec4<i32>(u_input.a, 29601i, 2319i, arg_2), vec4<bool>(false, false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(reverseBits(44992u) | ~u_input.b.x)), ~(~vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 20606u), 1u, 74835u, 1u)), abs(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), select(-vec4<i32>(-1i, 0i, u_input.a, 14237i), func_1(-303f, 4294967295u, u_input.a, vec3<f32>(-987f, 912f, -1000f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))))), ~(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 26453i), vec3<i32>(-1i, u_input.a, 1i)) ^ ~vec3<i32>(u_input.a, -2442i, u_input.a))), countOneBits(global2.zzx));
    var_0 = func_2(-633f, vec2<i32>(1i, 1i), max(var_0.d.yx, var_0.d.xy & (-var_0.c.xx << (firstLeadingBit(vec2<u32>(var_0.b.x, var_0.b.x)) % vec2<u32>(32u)))));
    global1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), var_0.d.yz) & func_1(269f, u_input.b.x, -1i, vec3<f32>(1187f, -595f, 522f)).xy, vec2<i32>(~u_input.a, abs(var_0.c.x))), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 21453i, -12297i), var_0.d), var_0.c.wzy)));
    global0 = array<Struct_4, 10>();
    let var_1 = u_input.b.zx;
    let var_2 = Struct_1(~(~min(~u_input.b.x, 0u)), func_2(-1810f, (vec2<i32>(var_0.c.x, u_input.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(21327u, var_1.x), vec2<u32>(4294967295u, var_0.b.x)) % vec2<u32>(32u))) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, var_0.e.x), vec2<u32>(var_1.x, u_input.c)) | ~u_input.b.zx) % vec2<u32>(32u)), abs(firstTrailingBit(-var_0.d.xx))).b, -vec4<i32>(_wgslsmith_div_i32(-2147483647i, var_0.d.x), reverseBits(_wgslsmith_div_i32(var_0.d.x, 12987i)), _wgslsmith_mult_i32(~(-2147483647i), var_0.c.x), ~(-1i)), reverseBits(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(f32(-1f) * -2149f))), min(4294967295u, _wgslsmith_sub_u32(4294967295u, 10266u)), 1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(128f, -365f, 501f))).xyw), vec3<u32>(global2.x, var_1.x, var_1.x));
    global1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-900f, 1035f, -826f, 876f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-383f, 1000f, 136f, -942f), vec4<f32>(-1000f, 1895f, 356f, -488f)))))), max(abs(_wgslsmith_add_i32(1i, reverseBits(var_0.d.x))), countOneBits(~(~0i))), -1i, ~(~var_2.c & firstTrailingBit(var_2.c << (var_0.b % vec4<u32>(32u)))), 1161f);
}

