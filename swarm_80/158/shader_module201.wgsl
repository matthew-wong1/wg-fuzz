struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(627f, vec2<u32>(1u, 59107u), 1012f)), Struct_2(Struct_1(-1339f, vec2<u32>(29745u, 15077u), 522f)), Struct_2(Struct_1(-2062f, vec2<u32>(4294967295u, 8828u), 349f)), Struct_2(Struct_1(1543f, vec2<u32>(0u, 1u), -666f)), Struct_2(Struct_1(-1399f, vec2<u32>(80540u, 2442u), 1081f)), Struct_2(Struct_1(645f, vec2<u32>(66335u, 0u), -1015f)), Struct_2(Struct_1(-131f, vec2<u32>(1u, 4294967295u), 407f)), Struct_2(Struct_1(-300f, vec2<u32>(4294967295u, 46767u), -556f)), Struct_2(Struct_1(-1000f, vec2<u32>(19985u, 4294967295u), -1142f)), Struct_2(Struct_1(1431f, vec2<u32>(18073u, 81797u), -167f)), Struct_2(Struct_1(-507f, vec2<u32>(11440u, 31334u), 2995f)), Struct_2(Struct_1(-198f, vec2<u32>(31683u, 0u), 1380f)), Struct_2(Struct_1(-902f, vec2<u32>(77055u, 1u), 1110f)), Struct_2(Struct_1(172f, vec2<u32>(0u, 38808u), 1107f)), Struct_2(Struct_1(-751f, vec2<u32>(19766u, 7004u), -2288f)), Struct_2(Struct_1(-941f, vec2<u32>(5439u, 4294967295u), 354f)), Struct_2(Struct_1(1000f, vec2<u32>(22500u, 13790u), 570f)), Struct_2(Struct_1(-832f, vec2<u32>(4294967295u, 46671u), -326f)), Struct_2(Struct_1(-564f, vec2<u32>(9956u, 25996u), 774f)), Struct_2(Struct_1(-1245f, vec2<u32>(33578u, 21659u), 102f)), Struct_2(Struct_1(637f, vec2<u32>(2489u, 42031u), 117f)), Struct_2(Struct_1(231f, vec2<u32>(2152u, 0u), 1000f)), Struct_2(Struct_1(465f, vec2<u32>(3646u, 0u), 709f)), Struct_2(Struct_1(2104f, vec2<u32>(7066u, 8587u), 558f)), Struct_2(Struct_1(-1000f, vec2<u32>(66622u, 1u), 944f)), Struct_2(Struct_1(140f, vec2<u32>(37611u, 21253u), 697f)), Struct_2(Struct_1(1557f, vec2<u32>(4294967295u, 1u), 196f)), Struct_2(Struct_1(428f, vec2<u32>(22182u, 28984u), 101f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = Struct_3(Struct_1(-1571f, _wgslsmith_sub_vec2_u32(vec2<u32>(45180u, countOneBits(1u)), ~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(263f)) * _wgslsmith_f_op_f32(f32(-1f) * -257f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-563f)) * -592f))), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(select(vec4<u32>(4294967295u, 4294967295u, 0u, 10244u), vec4<u32>(114774u, 49868u, 59744u, 0u), vec4<bool>(true, true, false, true)), max(vec4<u32>(61583u, 1u, 4294967295u, 34966u), vec4<u32>(20299u, 1u, 4294967295u, 23129u)))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(122199u, 7843u, 85906u, 0u), vec4<u32>(0u, 1u, 4294967295u, 40101u)), 76555u, ~0u), reverseBits(0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(68445u, 1u, 10053u, 0u), vec4<u32>(1u, 18997u, 19875u, 33282u)) % 32u), _wgslsmith_add_u32(31307u, 1u), ~19273u)), min((~2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(15986i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))) ^ -u_input.a.x, u_input.a.x));
    var var_1 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-389f, 1063f)))), var_1.a)));
}

fn func_2() -> i32 {
    var var_0 = vec4<u32>(~1u, 55287u, _wgslsmith_dot_vec3_u32(~min(~vec3<u32>(1u, 1u, 818u), min(vec3<u32>(0u, 1u, 9551u), vec3<u32>(3690u, 1u, 12146u))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 60u), vec3<u32>(4294967295u, 1u, 4294967295u)))), 1u);
    var_0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.x, 1u)), _wgslsmith_add_u32(~34496u, var_0.x), ~1u, ~(~4294967295u)), abs(vec4<u32>(~1u, ~var_0.x, 4294967295u, ~6734u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, 452f)) - vec2<f32>(1206f, 241f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-546f, 667f), vec2<f32>(602f, -128f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(817f, 1975f))))))));
    var_0 = _wgslsmith_mod_vec4_u32(~((_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)) << (vec4<u32>(28198u, 24576u, 4294967295u, 0u) % vec4<u32>(32u))) ^ vec4<u32>(firstLeadingBit(var_0.x), 0u, var_0.x, reverseBits(41345u))), vec4<u32>(~9568u, _wgslsmith_mult_u32(var_0.x, ~1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.xzz), var_0.xww), var_0.x));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    return -(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 30711i, u_input.a.x, 1i), -vec4<i32>(-31634i, -8570i, u_input.a.x, -55896i)), -reverseBits(0i)) & -33337i);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)))) * _wgslsmith_div_f32(647f, _wgslsmith_f_op_f32(f32(-1f) * -574f)))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(~u_input.a.x, -2147483647i), u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x, func_2()), u_input.a.x) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x ^ 19421i, u_input.a.x & 3317i), abs(min(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -28268i, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(880f, -1617f, var_0))) * vec3<f32>(var_0, var_0, -195f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(var_0, var_0))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(263f, 545f, true)), _wgslsmith_f_op_f32(264f - 737f), _wgslsmith_f_op_f32(sign(1000f))))))));
    var var_3 = vec4<bool>(true, true, all(vec2<bool>(any(vec2<bool>(true, false)), select(-2147483647i, var_1.x, false) < var_1.x)), all(vec3<bool>(true, true, false)) || true);
    global0 = array<Struct_2, 28>();
    return abs(-42725i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    var var_0 = ~_wgslsmith_div_i32(func_1(), ~countOneBits(firstTrailingBit(-22680i)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1280f, 1685f) + 1000f)), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1291f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(firstTrailingBit(23373u), 4294967295u)), vec2<u32>(1u, 1u)), (u_input.a.x >> (0u % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(-60158i, u_input.a.x), ~(-17762i)), vec3<i32>(abs(-7635i), ~u_input.a.x, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-var_1.a.c), true));
    var var_3 = Struct_1(-1000f, vec2<u32>(min(var_1.a.b.x, 1u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a), -386f))));
    let var_4 = Struct_3(Struct_1(var_3.a, ~(~var_1.a.b ^ var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1281f)) - _wgslsmith_f_op_f32(var_1.a.c + 1134f)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, var_1.a.b.x, var_1.a.b.x, 48584u), vec4<u32>(var_1.a.b.x, var_3.b.x, 4294967295u, var_1.a.b.x), true), vec4<u32>(var_1.a.b.x, ~var_3.b.x, var_1.b, ~var_3.b.x)), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(1u, var_3.b.x), reverseBits(_wgslsmith_sub_u32(var_1.a.b.x, var_1.b)), _wgslsmith_sub_u32(1u, ~4294967295u))), ~(u_input.a.x & 0i));
    let var_5 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a.a, var_1.a.a))), 284f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.c, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)))), _wgslsmith_f_op_f32(-var_3.c))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(792f)), var_4.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) - -788f), _wgslsmith_f_op_f32(trunc(var_4.a.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, _wgslsmith_f_op_f32(1458f * -1000f), _wgslsmith_f_op_f32(-var_4.a.a)))), !vec3<bool>(true, true, all(vec2<bool>(false, false))))) * _wgslsmith_f_op_vec3_f32(var_5 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_5.x, var_1.a.c, var_5.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(25219i, var_1.c, _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.yx), -2147483647i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.b, var_1.b, var_3.b.x, var_1.b), vec4<u32>(var_3.b.x, 0u, 0u, var_4.a.b.x) & vec4<u32>(var_1.b, 4294967295u, var_4.a.b.x, 75976u)) % vec4<u32>(32u)), -(~min(vec4<i32>(-5967i, 19089i, var_1.c, var_4.c), vec4<i32>(var_1.c, var_1.c, u_input.a.x, 2147483647i)))), _wgslsmith_f_op_vec2_f32(func_3()).x);
}

