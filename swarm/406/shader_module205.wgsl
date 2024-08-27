struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = true;
    var var_1 = abs(firstLeadingBit(~(vec4<u32>(arg_2, 1u, arg_2, arg_2) << (vec4<u32>(19661u, 0u, 4294967295u, 55053u) % vec4<u32>(32u))) << (~(~vec4<u32>(0u, arg_2, 0u, 0u)) % vec4<u32>(32u))));
    var_0 = !all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true)));
    var var_2 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(select(105757u, arg_2, true), var_1.x << (var_1.x % 32u), countOneBits(33603u), _wgslsmith_div_u32(1u, 7789u)), vec4<u32>(arg_2 << (~52117u % 32u), _wgslsmith_mult_u32(0u, var_1.x) | arg_2, 0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.yx), vec2<u32>(var_1.x, 17358u))));
    var var_3 = Struct_4(Struct_1(~(~var_1.zy) | var_1.zw, 44857u & (~33858u << ((var_1.x | var_2.x) % 32u)), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), -u_input.b.x, 0u));
    return _wgslsmith_f_op_f32(floor(-781f));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: bool) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(arg_0.x, u_input.b.x)), vec2<i32>(~_wgslsmith_div_i32(-17429i, u_input.b.x), reverseBits(_wgslsmith_sub_i32(9856i, arg_0.x)))), !all(vec4<bool>(any(vec2<bool>(true, true)), true, false, any(vec4<bool>(true, false, true, arg_3)))), arg_1);
    let var_1 = vec4<f32>(2156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f - -1108f)) * _wgslsmith_f_op_f32(f32(-1f) * -802f))), -991f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1078f)))))), 215f, 0u)));
    let var_2 = _wgslsmith_div_i32(-countOneBits(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.b.x, 1i))), ~var_0.a.x);
    let var_3 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(42855u, var_0.c, 1u, arg_1 | var_0.c), ~vec4<u32>(32131u, arg_2, arg_1, arg_1))) ^ _wgslsmith_mod_vec4_u32(firstTrailingBit(abs(select(vec4<u32>(var_0.c, 0u, arg_1, 0u), vec4<u32>(72620u, 0u, 0u, arg_2), vec4<bool>(arg_3, false, var_0.b, false)))), select(firstLeadingBit(vec4<u32>(17224u, 38924u, 41984u, 4294967295u)), max(vec4<u32>(1u, 17149u, arg_1, 24529u), vec4<u32>(4294967295u, arg_2, var_0.c, 1u)) << ((vec4<u32>(4058u, 4294967295u, var_0.c, 136766u) | vec4<u32>(var_0.c, arg_2, var_0.c, arg_2)) % vec4<u32>(32u)), vec4<bool>(var_0.b, select(false, arg_3, true), 1i <= var_2, !var_0.b)));
    let var_4 = vec2<bool>(!var_0.b, var_0.b);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.wzw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, var_1.x, -576f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1207f, var_1.x, -875f)))) * _wgslsmith_f_op_vec3_f32(abs(var_1.ywy))), vec3<f32>(309f, _wgslsmith_div_f32(var_1.x, -1107f), 341f), !select(select(vec3<bool>(true, var_0.b, false), !vec3<bool>(var_4.x, false, false), var_4.x), select(select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_4.x, arg_3, var_4.x), vec3<bool>(var_0.b, var_4.x, false)), !vec3<bool>(var_4.x, arg_3, var_0.b), vec3<bool>(false, true, arg_3)), select(!vec3<bool>(var_0.b, false, true), select(vec3<bool>(true, var_4.x, arg_3), vec3<bool>(var_0.b, var_0.b, false), var_4.x), !vec3<bool>(true, var_0.b, var_0.b)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(-2147483647i, arg_2.x, arg_2.x, u_input.b.x), 0u, 1u, arg_0.x))), vec3<f32>(_wgslsmith_div_f32(-1520f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1135f), -209f))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 2147483647i), vec3<i32>(1i, u_input.b.x, 50148i)), _wgslsmith_sub_i32(2147483647i, u_input.b.x)), -u_input.a), _wgslsmith_mod_vec2_i32(-u_input.a ^ (vec2<i32>(u_input.a.x, -2147483647i) << (vec2<u32>(800u, 1u) % vec2<u32>(32u))), vec2<i32>(1i, ~u_input.b.x)), true), false, ~36811u);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), abs(0i), vec3<i32>(29738i, -1i, var_0.a.x) | vec3<i32>(-32716i, -36899i, -30311i))), _wgslsmith_f_op_f32(-431f - _wgslsmith_div_f32(1316f, 1759f))))));
    var var_2 = -1506f;
    var_1 = vec2<f32>(var_1.x, -1025f);
    var var_3 = Struct_5(vec2<u32>(~1u, firstTrailingBit(var_0.c)) << ((select(vec2<u32>(var_0.c, var_0.c), _wgslsmith_mod_vec2_u32(vec2<u32>(24164u, var_0.c), vec2<u32>(var_0.c, var_0.c)), false) << (vec2<u32>(52221u, ~52126u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_u32(4294967295u, 5293u), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 0i), vec2<i32>(58331i, u_input.a.x)), _wgslsmith_add_i32(15931i, var_0.a.x)), var_0.a.x >> (57369u % 32u)), ~(-26653i), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), i32(-1i) * -23953i, u_input.a.x << (40412u % 32u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 555f)), var_1.x, _wgslsmith_f_op_f32(min(-541f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x + 587f)))), -388f), false);
    let var_4 = ~var_0.c;
    let var_5 = 0u;
    let var_6 = ~(~select(min(firstTrailingBit(vec3<u32>(0u, 36036u, 17581u)), vec3<u32>(var_5, var_5, var_5)), vec3<u32>(18883u, var_5 | 4294967295u, ~var_5), !all(vec4<bool>(true, true, var_0.b, var_3.e))));
    var var_7 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-833f, var_3.d.x)))))), -u_input.b.x << (var_4 % 32u), -(~var_3.c) << ((reverseBits(var_3.b) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 70400u, var_3.a.x), var_6), ~vec3<u32>(var_3.b, 67591u, var_4)) % 32u)) % 32u), var_6.zx);
}

