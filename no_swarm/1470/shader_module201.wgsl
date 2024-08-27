struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = vec4<i32>(u_input.c.x, ~(-2147483647i), abs(37076i), u_input.e.x);
    var var_1 = Struct_1(~(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(74249u, u_input.d.x, 62798u, u_input.a), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.a, 73519u, u_input.a, u_input.a))) | ~(~vec4<u32>(59231u, 4294967295u, u_input.a, u_input.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 635f, _wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 530f, 193f, -422f)) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1771f, arg_0.x, -232f) - vec4<f32>(arg_0.x, -490f, arg_0.x, -363f)))))), abs(var_0));
    var var_2 = ~_wgslsmith_div_u32(var_1.a.x, (1u >> (_wgslsmith_add_u32(u_input.d.x, var_1.a.x) % 32u)) ^ ~(u_input.a | var_1.a.x));
    var_1 = Struct_1(max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, ~u_input.a, abs(29875u), min(10468u, var_1.a.x)), _wgslsmith_mod_vec4_u32(var_1.a, var_1.a >> (var_1.a % vec4<u32>(32u)))), ~(~select(var_1.a, vec4<u32>(4294967295u, var_1.a.x, u_input.a, 1u), arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_1.b.x, arg_0.x, 1270f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(224f, var_1.b.x, -1008f, arg_0.x)))))), var_1.c);
    let var_3 = Struct_1(vec4<u32>(u_input.d.x, 0u, _wgslsmith_add_u32(~var_1.a.x, _wgslsmith_add_u32(firstLeadingBit(var_1.a.x), _wgslsmith_clamp_u32(0u, var_1.a.x, 0u))), _wgslsmith_dot_vec3_u32(~var_1.a.xwy, firstTrailingBit(vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u)) << ((var_1.a.yyz << (vec3<u32>(0u, var_1.a.x, var_1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)))), var_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(~(-13954i) ^ _wgslsmith_mod_i32(var_1.c.x, var_1.c.x), var_1.c.x | countOneBits(u_input.c.x), var_0.x, arg_2.x), u_input.c));
    return !vec4<bool>(any(select(!arg_1, !arg_1, false)), 2147483647i > -countOneBits(arg_2.x), true, ~firstTrailingBit(var_0.x) >= _wgslsmith_sub_i32(1i, 0i));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = !(!arg_2.zwz);
    let var_1 = Struct_1(vec4<u32>(abs(~firstLeadingBit(38082u)), u_input.d.x, abs(arg_0), _wgslsmith_add_u32(u_input.a, u_input.d.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(274f, arg_1.x, arg_1.x, 231f), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, -160f, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, -455f, -2047f, 684f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) * vec4<f32>(-1102f, 1101f, 198f, -435f)))))), max(-(~u_input.c), vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, 1i), -u_input.e.x, u_input.e.x ^ 1i, 1i >> (u_input.d.x % 32u))) ^ u_input.c);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = Struct_1(~(~(~select(var_2.a, var_2.a, var_0.x))), var_1.b, vec4<i32>(0i, -firstLeadingBit(-25929i) & u_input.e.x, abs(-1i), var_1.c.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-348f * var_1.b.x))))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1391f, -1168f, true)) - _wgslsmith_f_op_f32(step(2400f, -576f)))), -1540f, _wgslsmith_f_op_f32(func_4(firstTrailingBit(u_input.d.x), vec3<f32>(358f, _wgslsmith_f_op_f32(-1755f * -363f), -638f), select(vec4<bool>(true, true, true, true), func_3(vec3<f32>(468f, -1115f, 1569f), vec4<bool>(arg_0, false, arg_0, false), vec3<i32>(u_input.b.x, -2147483647i, u_input.e.x)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), false)))))));
    var var_1 = Struct_1(vec4<u32>(19399u, ~reverseBits(0u), 4294967295u, 3381u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1298f, var_0.x, var_0.x, var_0.x) * vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -4053f, var_0.x) - vec4<f32>(var_0.x, 612f, var_0.x, var_0.x)))))), u_input.c);
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(~var_1.a.x, ~u_input.d.x, var_1.a.x, select(65822u, u_input.a, arg_0)), ~vec4<u32>(var_1.a.x | 6892u, 1u, 29373u, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, -1602f, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, var_1.b.x, 1577f, -587f) + vec4<f32>(-445f, var_0.x, -1174f, var_1.b.x)))))), ~(~(-vec4<i32>(-1i, u_input.c.x, -63952i, 0i)) >> ((~vec4<u32>(var_1.a.x, 4294967295u, 23418u, 12941u) | ~var_1.a) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.zzy, ~_wgslsmith_add_vec3_u32(var_1.a.ywy, vec3<u32>(var_1.a.x, 4294967295u, 76946u)) >> (vec3<u32>(~1u, var_1.a.x | 4294967295u, u_input.d.x) % vec3<u32>(32u))), vec3<u32>(0u, ~var_1.a.x, var_1.a.x));
    let var_3 = _wgslsmith_dot_vec3_u32(abs(select(var_2, (vec3<u32>(1u, 4294967295u, 18993u) ^ vec3<u32>(var_1.a.x, 1u, var_2.x)) | abs(var_1.a.yxx), !vec3<bool>(arg_0, false, arg_0))), max(var_1.a.yxw, vec3<u32>(31064u, ~0u, var_2.x)));
    return _wgslsmith_f_op_f32(func_4(40243u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, 529f, -778f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)))), vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1240f))) == _wgslsmith_div_f32(1000f, 777f), all(vec2<bool>(true, true)), arg_0, all(vec4<bool>(arg_0, all(vec3<bool>(false, arg_0, false)), !arg_0, !arg_0)))));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_1(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 13039u, 57413u, u_input.d.x), vec4<u32>(1u, 1u, 33092u, u_input.d.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 28u), vec4<u32>(u_input.d.x, u_input.a, 41143u, 1u), vec4<u32>(1u, u_input.a, 1u, 3275u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) - -221f), -694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(933f * 839f) + _wgslsmith_f_op_f32(floor(-813f))), _wgslsmith_f_op_f32(f32(-1f) * -114f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-166f, -199f) - _wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(ceil(-151f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1342f), -1440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-224f))))), _wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, 37542i, u_input.b.x, u_input.e.x), min(vec4<i32>(u_input.b.x, 56294i, -28156i, -1i), vec4<i32>(u_input.e.x, u_input.c.x, -2147483647i, 0i)))) | ~u_input.c);
    var var_1 = u_input.a >= abs(var_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(-295f * _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)))))));
    var_1 = true;
    var_0 = Struct_1(vec4<u32>(min(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a.x, 0u), ~0u, u_input.d.x)), _wgslsmith_clamp_u32(~1u, select(countOneBits(1u), max(var_0.a.x, var_0.a.x), true), abs(4294967295u)), 1u, 91305u), vec4<f32>(_wgslsmith_f_op_f32(-1745f - var_0.b.x), var_2, var_2, 710f), min(vec4<i32>(_wgslsmith_mod_i32(1i, abs(-32875i)), ~(-u_input.c.x), u_input.c.x, -1i), u_input.c));
    return vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1391f)) * -573f), false || any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) + 538f), -1079f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, 1404f, 404f, -2116f)) * vec4<f32>(-552f, 175f, -852f, 468f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, -271f, 328f, -314f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -312f, 148f, 704f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, -1060f, _wgslsmith_f_op_f32(floor(-858f)), _wgslsmith_f_op_f32(-813f * -327f))))), _wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = vec4<i32>(-u_input.e.x, -39059i, u_input.e.x, _wgslsmith_mult_i32(countOneBits(i32(-1i) * -52404i), -(reverseBits(u_input.b.x) << (~4294967295u % 32u))));
    var var_2 = u_input.d;
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, u_input.a, var_2.x, _wgslsmith_div_u32(1u, 22907u)), vec4<u32>(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, u_input.a)), ~1u, 21447u) << (~(vec4<u32>(u_input.a, 1u, u_input.a, 77389u) << (vec4<u32>(u_input.a, 13831u, 0u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0, _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_1.x, u_input.b.x, u_input.c.x, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, 60703i, u_input.e.x), vec4<i32>(-77278i, u_input.e.x, 2147483647i, 2147483647i))) | u_input.c);
    let var_4 = var_3;
    var_2 = vec2<u32>(var_2.x, ~(var_2.x << (130918u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x - 334f)) * _wgslsmith_f_op_f32(min(var_3.b.x, var_0.x))), 2165f, var_0.x));
}

