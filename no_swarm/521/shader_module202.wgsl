struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.b) - _wgslsmith_f_op_f32(-var_0.b))))))));
    return vec3<i32>(arg_1.x, 0i, ~(~u_input.b));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.b;
    var_0 = Struct_1(func_3(arg_3.a, min(vec3<i32>(arg_3.b.a.x & u_input.b, -2039i | arg_3.b.a.x, 2147483647i >> (arg_3.c % 32u)), vec3<i32>(15042i, -2147483647i, u_input.b) | -vec3<i32>(-8362i, -2147483647i, 0i)), Struct_1(firstTrailingBit(arg_3.b.a), 454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.d, _wgslsmith_f_op_f32(step(arg_1, 1527f)))))));
    var_0 = Struct_1(reverseBits(vec3<i32>(abs(firstLeadingBit(2438i)), u_input.b, var_0.a.x ^ -u_input.b)), _wgslsmith_f_op_f32(arg_3.d * _wgslsmith_f_op_f32(round(arg_3.b.b))));
    let var_1 = ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b.a.x, 0i, u_input.b, -1i), vec4<i32>(-44986i, var_0.a.x, var_0.a.x, 12131i)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.a.x, 7110i, var_0.a.x), vec4<i32>(var_0.a.x, 26447i, 57980i, 23915i))) << (~vec4<u32>(4294967295u, arg_3.c, u_input.c, arg_2.x) % vec4<u32>(32u)));
    var_0 = arg_3.b;
    return _wgslsmith_f_op_f32(380f - 1331f);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_f32(abs(1313f)));
    var var_1 = _wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, var_0.b, !arg_1.x))) - -1000f));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-var_0.b), true)), _wgslsmith_f_op_f32(floor(-1196f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1166f, var_0.b, var_0.b), vec3<f32>(343f, var_0.b, -1000f), arg_1.x)) + vec3<f32>(var_0.b, var_0.b, 1831f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1003f * var_0.b) + _wgslsmith_div_f32(1562f, var_0.b)))), (arg_1.x || false) && arg_0));
    let var_3 = -1000f;
    return Struct_2(!((true && arg_1.x) & true), Struct_1(vec3<i32>(var_0.a.x, -_wgslsmith_clamp_i32(1i, var_0.a.x, u_input.b), abs(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(-1805f, 570f, -153f), _wgslsmith_div_f32(var_3, 1076f), vec4<u32>(u_input.c, u_input.c, 22234u, 4294967295u) << (vec4<u32>(9834u, u_input.a, 4294967295u, u_input.c) % vec4<u32>(32u)), Struct_2(false, Struct_1(var_0.a, var_3), 1u, -131f))))), ~1u, var_3);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(~vec3<i32>(21577i, 1i, countOneBits(u_input.b)) & (_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_0.a.x), arg_0.a) | _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, -9650i, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, -55370i, 45165i), vec3<i32>(arg_0.a.x, 1i, 55512i)))), arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(1121f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b)), -992f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))), arg_0.b)));
    var_1 = var_0.b;
    let var_2 = 54251u;
    var var_3 = func_4(-2375f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -827f, 1214f), vec3<f32>(var_0.b, arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -634f), vec4<u32>(arg_2.x, arg_1.x, arg_1.x, arg_2.x), Struct_2(false, var_0, var_2, -1000f))))), select(!arg_3, !vec3<bool>(all(arg_3), all(arg_3.zx), all(vec4<bool>(true, arg_3.x, arg_3.x, true))), arg_3));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(true, func_1(func_1(Struct_1(func_1(arg_0, vec2<u32>(1170u, u_input.a), vec2<u32>(84772u, u_input.c), vec3<bool>(true, true, true)).a, -241f), countOneBits(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 47364u)), ~vec2<u32>(u_input.c, u_input.c)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 5529u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 12136u), vec2<u32>(u_input.c, 0u))) | ((vec2<u32>(4294967295u, 62321u) ^ vec2<u32>(34899u, u_input.a)) ^ reverseBits(vec2<u32>(4294967295u, 31586u))), min(abs(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 15888u), vec2<u32>(1u, 1u)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 1u, arg_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, var_0.b.b), vec2<f32>(var_0.d, 417f))))));
    var_0 = func_4(var_0.a, !(!vec3<bool>(arg_0.b >= -392f, all(vec4<bool>(var_0.a, true, false, false)), any(vec2<bool>(var_0.a, var_0.a)))));
    let var_2 = arg_0;
    var_0 = func_4(!any(vec3<bool>(false, !var_0.a, 1u <= u_input.c)), select(!vec3<bool>(var_0.a || true, var_0.a, !var_0.a), vec3<bool>(false, 1394i >= var_0.b.a.x, -1i <= u_input.b), !vec3<bool>(var_0.a, var_0.a, func_4(true, vec3<bool>(var_0.a, var_0.a, true)).a)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, 488f >= _wgslsmith_f_op_f32(select(-1000f, 2693f, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), select(false, true, false)), func_5(func_1(Struct_1(vec3<i32>(61748i, u_input.b, u_input.b), 853f), vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 28409u), vec3<bool>(true, true, true))))));
    var var_1 = Struct_1(vec3<i32>(~2147483647i, _wgslsmith_add_i32(-2097i, select(u_input.b, u_input.b, var_0) ^ _wgslsmith_add_i32(u_input.b, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~u_input.b, 50627i, -16156i), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i) & -vec4<i32>(2147483647i, -1i, 37425i, 0i))), 1197f);
    let var_2 = func_5(func_4(any(select(select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(false, var_0)), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), vec2<bool>(var_0, true)), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)))), select(select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_0), var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, true, true), vec3<bool>(var_0, var_0, var_0)), u_input.a > u_input.c), select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, var_0), var_0), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, true, false), var_0)), vec3<bool>(231f > var_1.b, all(vec3<bool>(var_0, false, false)), !var_0))).b);
    var_1 = func_1(func_1(func_4(!any(vec3<bool>(var_2, var_2, true)), select(select(vec3<bool>(true, var_0, var_2), vec3<bool>(false, var_0, false), vec3<bool>(false, var_0, true)), !vec3<bool>(var_2, true, var_2), vec3<bool>(true, var_0, var_2))).b, _wgslsmith_mod_vec2_u32(vec2<u32>(29064u, u_input.a), vec2<u32>(u_input.a, u_input.c)) | ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 53108u), vec2<u32>(u_input.a, 25383u)), reverseBits(max(~vec2<u32>(7758u, 42532u), vec2<u32>(38196u, 56489u))), select(!select(vec3<bool>(var_0, var_2, false), vec3<bool>(true, var_0, var_2), true), !(!vec3<bool>(true, var_0, var_2)), var_2)), _wgslsmith_mod_vec2_u32(reverseBits(select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(4294967295u, 0u), true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, u_input.c))), _wgslsmith_mod_vec2_u32(~vec2<u32>(60366u, u_input.a) | ~reverseBits(vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, u_input.a | _wgslsmith_div_u32(u_input.a, 1u))), !(!vec3<bool>(var_1.a.x < 1i, false, true)));
    let var_3 = vec2<bool>(any(!(!(!vec3<bool>(var_2, false, var_0)))), func_5(func_4(var_0, vec3<bool>(true, var_0, true)).b));
    let var_4 = func_4(true, !(!(!select(vec3<bool>(false, var_2, false), vec3<bool>(var_3.x, var_0, true), false))));
    var var_5 = u_input.b;
    var var_6 = ~vec4<u32>(1u, u_input.a, 12275u, 25931u);
    var_1 = Struct_1(-firstTrailingBit(var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(step(-1129f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b, var_1.b, -177f)))), vec3<f32>(1366f, func_4(false, vec3<bool>(false, false, var_4.a)).b.b, _wgslsmith_f_op_f32(1000f - -182f)))), func_1(var_4.b, abs(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(26677u, 0u), vec2<u32>(49124u, var_6.x), var_6.zy), select(vec2<u32>(var_6.x, 4294967295u), var_6.yy, false))), ~(~vec2<u32>(u_input.c, var_6.x)), vec3<bool>(false, !var_3.x | func_5(var_4.b), any(select(vec2<bool>(true, true), var_3, false)))).b, -(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 37793i)), var_4.b.a.x);
}

