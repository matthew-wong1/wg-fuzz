struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = vec2<i32>(firstLeadingBit(arg_0.b.x), select(~(i32(-1i) * -2147483647i), -34678i, arg_0.a));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u >> (1u % 32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9558u, 60970u), vec2<u32>(15648u, 4294967295u)), vec2<u32>(1u, 1u)), reverseBits(reverseBits(vec2<u32>(4294967295u, 4294967295u)))), vec2<u32>(40468u, 44079u)), ~(~arg_0.b.zxw & arg_0.b.yzy), ~select(arg_0.b.xww, arg_0.b.xzz, vec3<bool>(true, true, true)), 30657u);
    var var_2 = min(select(~(-(-2147483647i >> (var_1.d % 32u))), ~_wgslsmith_sub_i32(firstTrailingBit(41702i), _wgslsmith_div_i32(var_0.x, -6940i)), false), -21882i);
    let var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.d, _wgslsmith_div_u32(var_1.d, var_1.d), ~0u, 36795u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(105685u, 14439u, 66533u, 4294967295u), ~vec4<u32>(1u, var_1.d, 17225u, 1u)), select(min(vec4<u32>(var_1.a.x, 4294967295u, 65705u, 0u), vec4<u32>(var_1.a.x, var_1.d, var_1.a.x, var_1.d)), vec4<u32>(22697u, var_1.a.x, 49636u, 0u), arg_0.a)) & firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 30747u, 4294967295u), vec4<u32>(var_1.a.x, 46120u, 1u, var_1.d)) ^ select(vec4<u32>(1u, var_1.a.x, var_1.d, 37281u), vec4<u32>(var_1.a.x, var_1.d, 0u, 26862u), true)));
    let var_4 = arg_0.c;
    return vec2<u32>(_wgslsmith_mult_u32(var_3, var_1.a.x), var_1.a.x | 7238u);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(~(~vec2<u32>(1u, 0u))), vec2<u32>(select(64034u, 1u, true), 13071u) << (func_3(Struct_2(false, vec4<i32>(2147483647i, u_input.b, -1i, 47661i), vec2<f32>(-254f, -1000f))) % vec2<u32>(32u))), -select(~vec3<i32>(0i, u_input.b, 28096i), countOneBits(vec3<i32>(-25831i, 0i, 0i)), vec3<bool>(true, true, true)), abs(vec3<i32>(13846i, abs(-u_input.a.x), reverseBits(u_input.b) << (~1u % 32u))), 1u);
    var var_1 = !vec2<bool>((var_0.c.x ^ 2147483647i) <= 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-512f + -329f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f * -998f)));
    let var_2 = Struct_4(Struct_1(vec2<u32>(var_0.d, var_0.d), ~var_0.b, ~(-vec3<i32>(u_input.c, 2147483647i, -1i)), _wgslsmith_mult_u32(~1u, ~var_0.d) ^ 9316u), vec4<bool>(false, any(vec3<bool>(false, false, true)), true, any(select(select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false)), select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true)), select(vec2<bool>(var_1.x, false), vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x))))), false, Struct_3(-_wgslsmith_mult_i32(max(var_0.c.x, u_input.b), -var_0.c.x), Struct_1(~(~var_0.a), -firstTrailingBit(vec3<i32>(2147483647i, var_0.c.x, 38132i)), ~vec3<i32>(u_input.c, -8719i, var_0.c.x), 1u)));
    var_1 = select(select(vec2<bool>(false, all(!var_2.b)), var_2.b.ww, var_1.x | var_2.b.x), var_2.b.wz, !(!var_1.x));
    var_0 = Struct_1(vec2<u32>(37856u, 11148u), firstTrailingBit(vec3<i32>(1i ^ var_0.c.x, var_2.a.c.x, 1i)) >> (firstLeadingBit(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.a.x, 0u, var_2.a.d), vec3<u32>(0u, 4294967295u, 36836u)))) % vec3<u32>(32u)), select(~vec3<i32>(reverseBits(u_input.c), u_input.b, 2147483647i), var_2.d.b.b, !all(select(vec3<bool>(var_2.c, var_2.b.x, false), var_2.b.yww, var_2.b.zwz))), _wgslsmith_mod_u32(~var_0.a.x, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.d.b.d, var_2.d.b.d, 1u), vec3<u32>(var_2.d.b.a.x, 1834u, 0u)), vec3<u32>(var_2.a.d, var_0.a.x, var_2.a.a.x)))));
    return ~(~4294967295u);
}

fn func_1() -> vec4<u32> {
    return ~vec4<u32>(7285u, func_2(), 1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) & _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 14498u, 5231u), ~vec3<u32>(0u, 0u, 50192u)), ~(~vec3<u32>(29477u, 0u, 26590u))), firstTrailingBit(~(~81974u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~7682u), firstTrailingBit(1u), firstLeadingBit(~1u)), func_1()), countOneBits(_wgslsmith_mod_u32(min(30468u, 65070u) << (abs(0u) % 32u), func_2())), ~1u);
    let var_1 = max(_wgslsmith_dot_vec3_i32(-vec3<i32>(~u_input.c, -u_input.b, ~u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, _wgslsmith_clamp_i32(1i, 0i, -14224i)), -vec3<i32>(2147483647i, -21079i, -1i) | vec3<i32>(u_input.c, u_input.b, 60611i), vec3<i32>(reverseBits(-20892i), ~39887i, u_input.b))), 29579i);
    var_0 = ~(vec4<u32>(var_0.x, reverseBits(var_0.x) ^ (3005u << (var_0.x % 32u)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.x, 9068u), ~var_0.x, 24862u ^ var_0.x, ~29280u), vec4<u32>(1u, 17027u ^ var_0.x, 1u, var_0.x)) % vec4<u32>(32u)));
    let var_2 = vec3<f32>(-163f, _wgslsmith_f_op_f32(-716f * 1781f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(285f))), _wgslsmith_f_op_f32(f32(-1f) * -307f)))));
    var var_3 = 41409i;
    var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 55429u, var_0.x), vec4<u32>(0u, var_0.x, 64237u, var_0.x) << (vec4<u32>(73008u, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u))), reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 11280u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, 55004u, var_0.x, 11402u)) % vec4<u32>(32u))) << (((vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x) & (_wgslsmith_mult_vec4_u32(vec4<u32>(35197u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)) & firstLeadingBit(vec4<u32>(694u, var_0.x, 12279u, var_0.x)))) & vec4<u32>(10238u, ~(var_0.x | 1u), ~abs(8263u), var_0.x)) % vec4<u32>(32u));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 867f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, -107f, -1002f, var_2.x) - vec4<f32>(var_2.x, 215f, var_2.x, var_2.x)), true)))) + vec4<f32>(416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(abs(-804f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + -1030f), _wgslsmith_f_op_f32(-419f - var_2.x))), 730f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-975f, var_2.x, 1000f, var_2.x), vec4<f32>(var_2.x, 145f, 153f, var_2.x)) + vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), var_2.x))));
    let var_5 = ~firstTrailingBit(_wgslsmith_div_u32(var_0.x, ~var_0.x) ^ 1u);
    var_3 = select(_wgslsmith_sub_i32(-(~countOneBits(-12151i)), -20722i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1, ~0i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -1i, -2147483647i, -12918i), vec4<i32>(u_input.c, 20592i, u_input.a.x, u_input.c))), select(_wgslsmith_mod_i32(u_input.b, var_1), 2147483647i, false)), -abs(vec3<i32>(var_1, var_1, 1i))), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), any(vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_4.x), vec4<i32>(var_1, 0i, _wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(9025u, 0u) % vec2<u32>(32u)), select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(38214i, 23966i), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), -20474i), 27964i, var_4.x);
}

