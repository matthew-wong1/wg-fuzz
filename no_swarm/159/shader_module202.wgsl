struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(u_input.a, u_input.a);
    let var_1 = ~(-14i);
    let var_2 = Struct_1(var_0, select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), u_input.c < 58469u)), vec4<bool>(true, any(vec2<bool>(true, true)), true, !(24232u > u_input.a.x)), false));
    var var_3 = _wgslsmith_clamp_u32(1u, select(var_2.a.x, ~_wgslsmith_div_u32(~0u, var_2.a.x), all(vec3<bool>(var_2.b.x, var_2.b.x, !var_2.b.x))), ~u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) * 1f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f * 1821f)), -909f)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = 0i;
    var_0 = 1i;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1000f))))));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(step(-764f, -332f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1138f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-201f)) * 271f), true, true, any(select(vec4<bool>(false, all(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false)), vec4<bool>(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(754f)) * 1f));
    return _wgslsmith_div_f32(-1033f, -1516f);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(~vec4<u32>(u_input.a.x, 4294967295u, arg_1, arg_1))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), !(u_input.d <= u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-594f, _wgslsmith_f_op_f32(floor(arg_0))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(~1u, 4294967295u, u_input.a.x ^ 43361u)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), true, true, 47668u < arg_1), !all(vec2<bool>(false, false)))));
    var var_2 = var_1.a;
    var_1 = Struct_2(var_1.a);
    return Struct_1(vec3<u32>(~_wgslsmith_sub_u32(u_input.c, select(99167u, var_1.a.a.x, var_1.a.b.x)), ~var_2.a.x, 0u), !select(vec4<bool>(var_1.a.b.x & true, true, 0u > var_1.a.a.x, true), vec4<bool>(all(vec3<bool>(false, var_1.a.b.x, var_2.b.x)), any(var_1.a.b), true, -2147483647i <= u_input.d), var_2.b));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1252f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, -162f) - vec2<f32>(315f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, 359f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1517f, 394f))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1921f)))))), Struct_3(Struct_2(func_1(_wgslsmith_f_op_f32(-1462f + var_0.x), ~u_input.a.x)), ~(~(arg_2.a.x & u_input.c))));
    let var_3 = func_1(_wgslsmith_f_op_f32(func_2(~vec4<u32>(var_2.b.b, 1u, 1u, 52599u) << (~(~vec4<u32>(arg_2.a.x, 28085u, 1u, 2958u)) % vec4<u32>(32u)))), _wgslsmith_clamp_u32(var_2.b.a.a.a.x, ~(~arg_2.a.x), ~0u));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_2.a.yz)), vec2<f32>(var_0.x, 1804f)));
    return _wgslsmith_add_vec3_i32(~(-(~(~vec3<i32>(u_input.b, u_input.d, 1i)))), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, 49170i, u_input.b)) | -vec3<i32>(-2147483647i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.b, 1i) >> ((vec3<u32>(arg_2.a.x, u_input.c, 18151u) << (vec3<u32>(0u, arg_2.a.x, 28223u) % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.d, ~(-u_input.b)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_3(Struct_2(Struct_1(firstLeadingBit(arg_1), !select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(true, true, true, var_0), vec4<bool>(var_0, false, false, var_0)))), _wgslsmith_div_u32(~((arg_1.x >> (4294967295u % 32u)) & 60584u), ~max(firstLeadingBit(arg_1.x), _wgslsmith_dot_vec2_u32(arg_1.xy, arg_1.yy))));
    var var_2 = Struct_3(var_1.a, u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-788f, _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-800f, arg_3.x)), 387f)) - -1000f))));
    var var_4 = Struct_3(Struct_2(func_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_clamp_u32(20415u, _wgslsmith_clamp_u32(var_2.a.a.a.x, arg_1.x, 4294967295u), abs(8341u)))), 1u >> (~(~firstTrailingBit(0u)) % 32u));
    return Struct_3(Struct_2(func_1(var_3.x, arg_1.x)), firstTrailingBit(4294967295u >> (var_4.b % 32u)));
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(arg_1.b, 55734u)), _wgslsmith_mult_u32(5478u, ~_wgslsmith_sub_u32(arg_1.a.a.a.x, 14840u)));
    let var_1 = false;
    var var_2 = func_5(vec4<i32>(-_wgslsmith_sub_i32(min(arg_0, -15775i), -49394i), _wgslsmith_mod_i32(arg_0, -37326i), ~9219i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-44655i, -1i, u_input.d, u_input.d) & vec4<i32>(arg_0, -20892i, arg_0, u_input.b)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-60449i, u_input.d, u_input.d, -2147483647i), vec4<i32>(u_input.d, -18372i, u_input.d, 0i))))), arg_1.a.a.a, vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, arg_0, 0i, arg_0) | vec4<i32>(arg_0, arg_0, -57723i, arg_0), vec4<i32>(11956i, u_input.b, -1i, 1i) >> (vec4<u32>(46239u, 1u, arg_1.b, arg_1.b) % vec4<u32>(32u)), vec4<bool>(arg_1.a.a.b.x, false, false, arg_1.a.a.b.x)), vec4<i32>(_wgslsmith_mult_i32(-15323i, u_input.b), abs(u_input.d), -1i, ~12827i)), _wgslsmith_clamp_i32(func_4(arg_1.a.a.b.x, arg_1.a.a.b.xww, Struct_1(vec3<u32>(arg_1.a.a.a.x, u_input.a.x, 4294967295u), vec4<bool>(true, true, false, var_1))).x, -7165i, u_input.b) & _wgslsmith_mult_i32(arg_0 >> (1u % 32u), u_input.d), ~u_input.d >> (firstTrailingBit(u_input.a.x) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, -819f)) + vec2<f32>(1131f, _wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -949f), vec2<f32>(1746f, 699f))))))).a;
    var var_3 = 372f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(u_input.b, func_5(vec4<i32>(-u_input.b, u_input.d, ~u_input.b, i32(-1i) * -13083i), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)) >> (firstLeadingBit(vec3<u32>(52641u, u_input.a.x, u_input.c)) % vec3<u32>(32u)), func_4(true, vec3<bool>(true, true, false), func_1(1050f, 28897u)), vec2<f32>(1f, 1f))));
    var_0 = func_5(firstTrailingBit(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.d, 2147483647i, u_input.b, u_input.d)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 16470i, 10769i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.d, -2147483647i)))), vec3<u32>(7006u, u_input.a.x, u_input.a.x), ~(~(~abs(vec3<i32>(46948i, u_input.d, -1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-498f, -924f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, 1949f)))))).a;
    var var_1 = -1756f;
    var var_2 = ~vec2<u32>(58u, var_0.a.a.x) | func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1027f, 180f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(887f, -469f)))), 39878u).a.xz;
    var var_3 = !(any(select(var_0.a.b.xyz, func_1(678f, var_2.x).b.yyz, select(var_0.a.b.wxy, var_0.a.b.zwy, var_0.a.b.x))) & false);
    var_0 = func_5(~(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-27368i, u_input.d, 1i, -40910i), vec4<i32>(u_input.d, u_input.d, 0i, 2147483647i), vec4<bool>(var_0.a.b.x, false, false, false)), ~vec4<i32>(u_input.d, u_input.d, 0i, u_input.d)) | _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, 36539i, u_input.b, -1427i), -vec4<i32>(u_input.b, u_input.d, 2147483647i, -29608i))), var_0.a.a << (~vec3<u32>(1u, 39066u, var_0.a.a.x) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(reverseBits(u_input.b), -2147483647i, -63845i | u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1742f, 438f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(432f, -1316f)))))))).a;
    var_3 = any(var_0.a.b.yxx);
    var_0 = func_5(~min(select(vec4<i32>(-3886i, u_input.d, u_input.b, 1i) << (vec4<u32>(33191u, 12133u, var_2.x, var_0.a.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, 409i, -24202i, 27475i) & vec4<i32>(u_input.d, 0i, u_input.b, -37846i), vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, var_0.a.b.x)), ~vec4<i32>(u_input.b, 22883i, 1278i, 0i)), max(var_0.a.a, _wgslsmith_div_vec3_u32(firstLeadingBit(~u_input.a), ~var_0.a.a)), _wgslsmith_add_vec3_i32(select(abs(func_4(false, vec3<bool>(false, false, var_0.a.b.x), Struct_1(vec3<u32>(4294967295u, 15696u, 4294967295u), var_0.a.b))), -(vec3<i32>(u_input.d, 7853i, 27982i) ^ vec3<i32>(1i, u_input.b, u_input.d)), vec3<bool>(true, true, 0u < var_2.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-15049i), _wgslsmith_clamp_i32(15346i, u_input.b, 0i), abs(u_input.d)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-49173i, 12015i, -1i), vec3<i32>(24828i, 1542i, 1i)), -vec3<i32>(6521i, 2147483647i, 0i)))), vec2<f32>(2084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(f32(-1f) * -1612f)) * _wgslsmith_f_op_f32(f32(-1f) * -635f)))).a;
    var_1 = -291f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2393f)) - _wgslsmith_f_op_f32(f32(-1f) * -1249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-321f * -2491f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 932f, -520f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-304f, 596f, -1010f), vec3<f32>(-699f, -854f, -1029f))))), func_6(_wgslsmith_sub_i32(-22835i, 1i) << (func_1(165f, 4775u).a.x % 32u), Struct_3(func_5(vec4<i32>(-27522i, u_input.b, 1i, u_input.d), vec3<u32>(1u, u_input.c, var_2.x), vec3<i32>(0i, u_input.d, u_input.d), vec2<f32>(-631f, 237f)).a, 1u)).a.x ^ _wgslsmith_dot_vec2_u32(var_0.a.a.yx, reverseBits(firstTrailingBit(var_0.a.a.zz))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, 714f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-968f, 847f))))))), firstLeadingBit(vec4<i32>(~(~u_input.d), _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, 2147483647i), u_input.b, -8287i ^ u_input.b), _wgslsmith_mod_i32(1i, u_input.b) & 19516i, 26351i)));
}

