struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(490f, 201f, _wgslsmith_f_op_f32(exp2(arg_2.a)), -1008f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, -232f, -118f, 1462f))))))));
    let var_1 = Struct_2(_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(-u_input.e, u_input.c.xzy), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(32584i, 23365i, arg_2.c.x) << (u_input.a % vec3<u32>(32u)), u_input.c.xwz >> (vec3<u32>(17322u, u_input.d, 1u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1068f, -918f)))) * arg_0.x), Struct_1(_wgslsmith_f_op_f32(-766f * arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(418f, var_0.x, 1513f))), ~((vec2<i32>(arg_1.c.x, -2147483647i) ^ vec2<i32>(u_input.c.x, 1i)) | arg_2.c), arg_1.d), !select(select(!vec4<bool>(arg_2.d, arg_1.d, arg_1.d, false), vec4<bool>(true, arg_1.d, true, false), select(vec4<bool>(arg_1.d, arg_2.d, false, arg_1.d), vec4<bool>(true, false, arg_1.d, false), true)), vec4<bool>(any(vec4<bool>(false, arg_2.d, arg_1.d, arg_2.d)), any(vec2<bool>(arg_1.d, arg_2.d)), arg_1.d, false), vec4<bool>(any(vec3<bool>(arg_1.d, arg_2.d, true)), -367f <= arg_0.x, true, !arg_1.d)));
    let var_2 = _wgslsmith_div_u32(~u_input.a.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, u_input.b), ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.a.x, 36292u), vec4<u32>(45388u, u_input.b, u_input.b, 1u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 19221u, u_input.a.x), vec4<u32>(6301u, 0u, u_input.a.x, u_input.d)))), u_input.b));
    var_0 = vec4<f32>(167f, arg_0.x, -1695f, var_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(555f + arg_0.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_1.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 1000f)))) - arg_0.x));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = true;
    var var_1 = Struct_2(-_wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(-2147483647i, arg_0, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f * -1904f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-165f))))), Struct_1(_wgslsmith_f_op_f32(select(-1280f, _wgslsmith_f_op_f32(ceil(606f)), any(select(vec4<bool>(var_0, false, false, false), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, false, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(step(-951f, _wgslsmith_f_op_f32(func_3(vec3<f32>(-1385f, -546f, 1000f), Struct_1(-972f, vec3<f32>(-553f, -558f, 1717f), u_input.e.xy, false), Struct_1(-433f, vec3<f32>(1475f, -1000f, 681f), vec2<i32>(0i, 0i), var_0))))), _wgslsmith_f_op_f32(abs(-693f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f * 927f) + 1133f)), u_input.c.zx, !(_wgslsmith_mult_u32(u_input.d, u_input.d) < 1u)), vec4<bool>(false, true, var_0 && true, false));
    var var_2 = select(select(var_1.d.yw, vec2<bool>(var_0, true), select(var_0, any(var_1.d), any(var_1.d)) && (65525u < _wgslsmith_sub_u32(u_input.b, u_input.b))), vec2<bool>(false, any(!vec4<bool>(var_0, true, false, false)) != !any(var_1.d)), !select(var_1.d.zy, vec2<bool>(var_1.c.d, false), select(vec2<bool>(false, false), var_1.d.wx, !vec2<bool>(false, var_1.d.x))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(exp2(var_1.b)));
    let var_4 = var_1.c;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f - var_4.b.x) + _wgslsmith_f_op_f32(-259f - -860f)) + _wgslsmith_f_op_f32(-888f - 957f))), _wgslsmith_div_f32(1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-761f)) * _wgslsmith_f_op_f32(534f - var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2666f, -524f))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = abs(vec3<u32>(2388u, ~15542u, u_input.a.x));
    var var_1 = min(~u_input.a.xx, vec2<u32>(var_0.x, ~_wgslsmith_mod_u32(countOneBits(0u), 1u)));
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, -1i, 0i), u_input.e) ^ u_input.e), vec3<i32>(u_input.c.x, arg_0.c.x, ~arg_0.c.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, arg_0.c.x, -62925i) & u_input.c.wzw, -u_input.e), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.e, u_input.e), ~arg_0.c.x)), u_input.c.www, -(~vec3<i32>(-10703i, u_input.c.x, -2577i))), _wgslsmith_sub_vec3_i32(vec3<i32>(~(-arg_0.c.x), -(u_input.e.x ^ 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(23417i, arg_0.c.x), vec2<i32>(24314i, u_input.c.x))), u_input.e ^ abs(_wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(arg_0.c.x, arg_0.c.x, 16959i)))));
    let var_3 = 4294967295u;
    var_1 = abs(vec2<u32>(countOneBits(~_wgslsmith_div_u32(var_3, 24012u)), firstLeadingBit(4294967295u)));
    return arg_0;
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.a.x | u_input.b;
    var_0 = u_input.b;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(103f + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(377f, -264f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, 519f, 4016f) + vec3<f32>(-1089f, 629f, 1041f)))) - _wgslsmith_f_op_vec3_f32(func_2(u_input.e.x & u_input.e.x))), countOneBits(vec2<i32>(u_input.e.x, _wgslsmith_mult_i32(0i, -1306i))), true));
    var_0 = select(_wgslsmith_mod_u32(firstLeadingBit(4659u), firstLeadingBit(u_input.a.x)), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.x)) + _wgslsmith_f_op_f32(floor(-799f)))) != -185f);
    var var_2 = _wgslsmith_sub_u32(1u, abs(1u) & ~(~max(u_input.a.x, 1u)));
    return vec3<bool>(false, !var_1.d, !(!var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec4<i32>(-24486i, u_input.c.x, ~u_input.c.x, 28547i));
    var var_1 = select(vec3<bool>(~(~u_input.d) == max(247u, u_input.d), false, true), select(!func_1(), vec3<bool>(-1214i < u_input.e.x, true, (-2782i <= var_0.x) & true), func_1()), !select(vec3<bool>(func_1().x, all(vec2<bool>(false, true)), select(true, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), -2147483647i == u_input.c.x), func_1()));
    var var_2 = _wgslsmith_add_vec3_u32(~(~u_input.a), u_input.a);
    var_2 = vec3<u32>(~1u, var_2.x, reverseBits(abs(_wgslsmith_add_u32(u_input.a.x | 24870u, max(u_input.a.x, u_input.a.x)))));
    var_2 = u_input.a;
    var var_3 = max(select((var_2.xz ^ ~u_input.a.yy) | select(select(vec2<u32>(13589u, u_input.d), vec2<u32>(var_2.x, 938u), var_1.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(u_input.a.x, var_2.x)), any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), ~vec2<u32>(max(var_2.x, 0u), var_2.x), func_1().yx), var_2.xx);
    let var_4 = vec2<bool>(true, !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(u_input.e.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(452f * 361f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(603f, 611f, 1000f, -1038f) * vec4<f32>(-129f, -786f, 731f, -117f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -832f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f))));
}

