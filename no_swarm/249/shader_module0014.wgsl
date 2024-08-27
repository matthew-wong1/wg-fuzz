struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f - arg_0.x) * _wgslsmith_div_f32(232f, arg_0.x))))), 1827f, 140f);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412f + _wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.x), -180f), 586f) + var_0.zy), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_2 = Struct_5(u_input.b);
    var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-669f, _wgslsmith_div_f32(-1143f, -642f))));
    var var_3 = Struct_5(var_2.a);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, var_0.x) + vec2<f32>(-1274f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(arg_0.yy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(271f, var_1.x), vec2<f32>(-170f, 105f)))));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = arg_0.d.c.wxy;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(706f, -860f, 729f) + arg_0.e)), ~(~arg_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.e.xy)))));
    var var_2 = -u_input.a;
    var_1 = _wgslsmith_f_op_vec2_f32(arg_0.d.e * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-703f, arg_1) * arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, -1085f)))))));
    let var_3 = vec4<bool>(any(!(!vec3<bool>(arg_0.d.a, false, false))), any(!(!vec4<bool>(false, false, arg_0.c, false))), arg_0.b, false);
    return arg_0.d;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = (u_input.a.x >= 2147483647i) | arg_0.d;
    let var_1 = select(vec3<bool>(!all(vec4<bool>(true, false, arg_0.a, arg_0.d)), true, _wgslsmith_f_op_f32(f32(-1f) * -1201f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-305f)) * arg_0.e.x)), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, all(vec2<bool>(true, true)), true));
    var var_2 = Struct_3(arg_1 | ((reverseBits(arg_0.c) << (max(vec4<u32>(arg_0.c.x, arg_0.c.x, 1u, arg_1.x), vec4<u32>(u_input.b, arg_1.x, 26684u, arg_0.c.x)) % vec4<u32>(32u))) | arg_1));
    var var_3 = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(-341f)), _wgslsmith_f_op_f32(trunc(1804f))), vec2<f32>(404f, _wgslsmith_f_op_f32(-arg_0.e.x)), u_input.a.x != _wgslsmith_mod_i32(14896i, arg_0.b.x))), 678f > arg_0.e.x, true, func_1(Struct_4(_wgslsmith_f_op_vec2_f32(arg_0.e - vec2<f32>(arg_0.e.x, 498f)), true, select(false, true, arg_0.d), func_1(Struct_4(vec2<f32>(-644f, 277f), false, arg_0.a, arg_0, vec3<f32>(arg_0.e.x, -324f, -398f)), -523f, Struct_3(vec4<u32>(0u, 9332u, arg_1.x, var_2.a.x)), vec3<i32>(u_input.c, 2147483647i, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-759f, 399f, arg_0.e.x)))), _wgslsmith_f_op_f32(func_1(Struct_4(vec2<f32>(arg_0.e.x, arg_0.e.x), arg_0.a, false, Struct_2(true, vec2<i32>(arg_0.b.x, u_input.a.x), arg_1, true, arg_0.e), vec3<f32>(-2672f, -1496f, arg_0.e.x)), arg_0.e.x, Struct_3(arg_1), vec3<i32>(27334i, 0i, u_input.a.x)).e.x - arg_0.e.x), Struct_3(var_2.a), vec3<i32>(0i, -4308i, arg_0.b.x) & -vec3<i32>(17701i, 2147483647i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, -787f, -1000f))))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e.x, arg_0.e.x, 238f), vec3<f32>(arg_0.e.x, 1181f, arg_0.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, 1464f, arg_0.e.x)))), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(arg_1, arg_1)))).x, Struct_3(arg_0.c), ~vec3<i32>(~arg_0.b.x, ~(arg_0.b.x & u_input.c), u_input.c));
    var_3 = func_1(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.e.x))))), any(!var_1.xz), true, Struct_2(any(!vec4<bool>(arg_0.d, true, false, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(arg_0.b.x, arg_0.b.x)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 17557u, var_2.a.x, 1u), var_3.c), 1u, var_2.a.x ^ 24921u), arg_0.a, var_3.e), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e.x, -161f, -882f) - vec3<f32>(280f, 1262f, var_3.e.x))))))), -2108f, Struct_3(select(var_2.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(var_3.c.x, 0u, arg_1.x, 28180u), vec4<u32>(32020u, u_input.b, 29009u, 4294967295u)), select(select(vec4<bool>(var_3.d, false, var_1.x, arg_0.a), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, true, var_3.a, true)), !vec4<bool>(false, arg_0.a, false, false), false))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a.x, arg_0.b.x)) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_1.x), vec3<u32>(arg_0.c.x, 0u, 61207u)) | vec3<u32>(u_input.b, 4363u, 57560u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.b.x, -1360i, arg_0.b.x), select(vec3<i32>(-2147483647i, arg_0.b.x, arg_0.b.x), vec3<i32>(-2147483647i, var_3.b.x, -5248i), var_3.d)), vec3<i32>(i32(-1i) * -33531i, abs(-38362i), firstLeadingBit(var_3.b.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.e.x, 727f, var_3.e.x))), arg_1)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.e.x)) + _wgslsmith_div_f32(1000f, 290f)), var_3.e.x, -1161f)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_4(arg_1.a.xx, u_input.b >= _wgslsmith_mod_u32(max(1491u, min(10815u, u_input.b)), ~u_input.b), arg_0 & arg_0, func_1(Struct_4(func_1(Struct_4(vec2<f32>(arg_1.a.x, arg_1.a.x), false, arg_0, Struct_2(arg_0, u_input.a, vec4<u32>(u_input.b, 10402u, 49933u, u_input.b), false, vec2<f32>(arg_1.a.x, arg_2.a.x)), arg_1.a.wxx), _wgslsmith_f_op_f32(f32(-1f) * -441f), Struct_3(vec4<u32>(142534u, 8894u, u_input.b, u_input.b)), vec3<i32>(1i, u_input.a.x, 1i) << (vec3<u32>(u_input.b, 94958u, u_input.b) % vec3<u32>(32u))).e, all(vec4<bool>(true, arg_0, false, arg_0)) | arg_0, true, Struct_2(true, vec2<i32>(-50529i, 2390i) ^ vec2<i32>(u_input.a.x, 2147483647i), select(vec4<u32>(25u, 48702u, u_input.b, 0u), vec4<u32>(u_input.b, 34641u, 0u, u_input.b), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0 || arg_0, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(466f, -1000f)))), _wgslsmith_f_op_vec3_f32(-arg_2.a.yyw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(min(-591f, arg_2.a.x)))), Struct_3(select(min(vec4<u32>(37695u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 25139u)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(false, arg_0, arg_0, false))), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x), firstTrailingBit(-1i), _wgslsmith_div_i32(1415i, u_input.a.x)), vec3<i32>(~0i, u_input.c, reverseBits(2147483647i)))), arg_1.a.yyx);
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-290f * arg_2.a.x), arg_2.a.x), _wgslsmith_div_vec2_f32(var_0.d.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, 1201f))), var_0.d.c.x >= u_input.b)) * vec2<f32>(1014f, _wgslsmith_f_op_f32(f32(-1f) * -304f))), !(!var_0.c), all(vec3<bool>(var_0.d.a, var_0.d.d, true)), func_1(Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.ww + vec2<f32>(var_0.d.e.x, arg_2.a.x)), _wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(-856f, var_0.d.e.x))), arg_0, true, func_1(Struct_4(var_0.a, arg_0, false, Struct_2(var_0.b, vec2<i32>(u_input.c, var_0.d.b.x), var_0.d.c, arg_0, arg_1.a.zx), arg_2.a.zzz), arg_1.a.x, Struct_3(var_0.d.c), vec3<i32>(var_0.d.b.x, -2147483647i, 0i) ^ vec3<i32>(-1i, var_0.d.b.x, var_0.d.b.x)), var_0.e), 1229f, Struct_3(~abs(var_0.d.c)), countOneBits(-(~vec3<i32>(-43393i, 2147483647i, var_0.d.b.x)))), var_0.e);
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.e), _wgslsmith_div_vec2_f32(arg_1.a.wx, vec2<f32>(-803f, -1719f)), any(vec2<bool>(var_0.d.d, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.e + var_0.a))) - _wgslsmith_f_op_vec2_f32(sign(var_0.a))), false, 13951i <= _wgslsmith_add_i32(~(~var_0.d.b.x), ~2147483647i), Struct_2(any(!(!vec2<bool>(arg_0, arg_0))), ~_wgslsmith_add_vec2_i32(abs(u_input.a), firstTrailingBit(vec2<i32>(var_0.d.b.x, -22004i))), vec4<u32>(func_1(Struct_4(vec2<f32>(arg_1.a.x, 211f), var_0.c, arg_0, Struct_2(var_0.d.a, vec2<i32>(u_input.a.x, 2722i), var_0.d.c, var_0.b, vec2<f32>(arg_2.a.x, arg_2.a.x)), vec3<f32>(-990f, var_0.d.e.x, arg_2.a.x)), _wgslsmith_f_op_f32(max(-560f, -1373f)), Struct_3(vec4<u32>(var_0.d.c.x, 44232u, u_input.b, u_input.b)), -vec3<i32>(u_input.c, var_0.d.b.x, 5557i)).c.x, u_input.b, 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.d.c.x, 47741u, 4294967295u), u_input.b)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_2.a.zz * vec2<f32>(arg_1.a.x, 1626f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, arg_2.a.x, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(723f, arg_2.a.x, arg_1.a.x) * vec3<f32>(-2400f, var_0.e.x, arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, var_0.e.x, var_0.d.e.x)))));
    var_0 = Struct_4(var_0.d.e, firstTrailingBit(var_0.d.c.x) == countOneBits(1208u), !func_1(Struct_4(_wgslsmith_f_op_vec2_f32(var_0.d.e - arg_2.a.zz), !var_0.b, func_1(Struct_4(vec2<f32>(var_0.a.x, arg_1.a.x), var_0.b, false, Struct_2(arg_0, vec2<i32>(-2147483647i, u_input.a.x), var_0.d.c, var_0.c, var_0.e.zy), var_0.e), arg_1.a.x, Struct_3(var_0.d.c), vec3<i32>(-14990i, var_0.d.b.x, u_input.c)).d, Struct_2(false, vec2<i32>(u_input.c, u_input.c), vec4<u32>(63789u, var_0.d.c.x, var_0.d.c.x, 4294967295u), false, vec2<f32>(arg_2.a.x, -873f)), _wgslsmith_f_op_vec3_f32(round(arg_2.a.xyw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - _wgslsmith_f_op_f32(floor(833f))), Struct_3(var_0.d.c), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, var_0.d.b.x, 53768i), vec3<i32>(-1i, u_input.c, 0i), min(vec3<i32>(2147483647i, 4519i, var_0.d.b.x), vec3<i32>(u_input.a.x, -17743i, u_input.c)))).d, func_1(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, -346f))), false, true || any(vec2<bool>(false, true)), func_1(Struct_4(vec2<f32>(587f, arg_1.a.x), false, true, Struct_2(false, vec2<i32>(-53455i, u_input.c), vec4<u32>(12744u, 21468u, 97457u, 120577u), arg_0, arg_2.a.wy), arg_1.a.zwz), _wgslsmith_f_op_f32(393f + -521f), Struct_3(var_0.d.c), countOneBits(vec3<i32>(u_input.a.x, var_0.d.b.x, 17176i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -569f, 358f))), -607f, Struct_3(select(vec4<u32>(u_input.b, var_0.d.c.x, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(var_0.d.c, var_0.d.c), vec4<bool>(false, arg_0, true, arg_0))), vec3<i32>(-2147483647i, -2147483647i, -22638i) ^ vec3<i32>(i32(-1i) * -72144i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 42187i, -50017i), vec3<i32>(u_input.c, -1590i, u_input.c)), ~(-32265i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(arg_1.a.wxw, vec3<f32>(376f, arg_1.a.x, arg_1.a.x)))))) * vec3<f32>(var_0.d.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.d, vec4<u32>(u_input.b, u_input.b, 42421u, 20175u))).x), arg_1.a.x)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.wy), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_2.a.x) * arg_1.a.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.e.x, arg_1.a.x) - arg_2.a.wx) - vec2<f32>(-492f, 400f)), func_1(Struct_4(vec2<f32>(693f, 1000f), true, arg_0, Struct_2(var_0.b, vec2<i32>(var_0.d.b.x, -41597i), var_0.d.c, arg_0, arg_2.a.yw), vec3<f32>(arg_2.a.x, var_0.e.x, -313f)), _wgslsmith_f_op_f32(-arg_2.a.x), Struct_3(vec4<u32>(var_0.d.c.x, 71410u, 4294967295u, 3824u)), ~vec3<i32>(u_input.a.x, var_0.d.b.x, u_input.c)).a))), var_0.d.d, all(vec2<bool>(arg_0, !var_0.c)) | true, var_0.d, _wgslsmith_div_vec3_f32(var_0.e, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + var_0.e.x), _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a.x, -762f))), arg_2.a.x)));
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f - -1702f) * -189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x)))), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.b.x, 0i, -2147483647i, u_input.a.x), vec4<i32>(var_0.d.b.x, 1i, -2147483647i, -16937i)), -2147483647i) > 0i, false, var_1.d, arg_2.a.ywy);
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    let var_0 = firstLeadingBit((max(~vec4<i32>(u_input.a.x, u_input.c, -23383i, -1i), max(vec4<i32>(arg_0.d.b.x, arg_0.d.b.x, -41287i, -2147483647i), vec4<i32>(-1i, u_input.a.x, -30416i, 17471i))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.c.x, 62497u, arg_1, 1u), vec4<u32>(0u, 33104u, 0u, arg_1)) % vec4<u32>(32u))) << ((abs(func_4(arg_0.d.a, Struct_1(vec4<f32>(1541f, arg_0.d.e.x, arg_0.a.x, -1099f)), Struct_1(vec4<f32>(1000f, arg_0.a.x, arg_0.e.x, arg_0.a.x))).d.c) ^ (vec4<u32>(u_input.b, 4294967295u, arg_1, arg_0.d.c.x) >> (arg_0.d.c % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_sub_u32(u_input.b, ~(~(arg_1 ^ arg_1) | _wgslsmith_div_u32(arg_1, ~0u)));
    var var_2 = ~arg_0.d.c.wy;
    var_2 = arg_0.d.c.zy;
    var_2 = arg_0.d.c.zz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, arg_0.d.e.x, _wgslsmith_f_op_f32(arg_0.d.e.x + -275f), 1092f) - vec4<f32>(689f, arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-arg_0.a.x))) * vec4<f32>(arg_0.e.x, -634f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 715f) * _wgslsmith_f_op_f32(round(arg_0.e.x))), _wgslsmith_f_op_f32(round(arg_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(!any(vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-665f * 1555f), -2516f, -1577f, -585f)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(func_1(Struct_4(vec2<f32>(652f, -1665f), false, false, Struct_2(false, u_input.a, vec4<u32>(u_input.b, u_input.b, 41754u, u_input.b), false, vec2<f32>(239f, 866f)), vec3<f32>(-1282f, 206f, -166f)), -469f, Struct_3(vec4<u32>(u_input.b, 1u, 88986u, 4294967295u)), vec3<i32>(38982i, 38972i, u_input.a.x)), vec4<u32>(40850u, u_input.b, u_input.b, u_input.b))))), 4294967295u);
    let var_1 = abs(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b));
    let var_2 = func_5(Struct_4(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1558f)))), ~(~var_1.x) > var_1.x, true && (_wgslsmith_f_op_f32(round(2000f)) < _wgslsmith_f_op_f32(-737f + var_0.a.x)), Struct_2(!(var_0.a.x <= 261f), u_input.a, countOneBits(~var_1), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.a.wz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(457f, _wgslsmith_f_op_f32(f32(-1f) * -1065f), var_0.a.x))), var_1.x);
    let var_3 = _wgslsmith_clamp_vec4_i32(abs(firstTrailingBit(vec4<i32>(2147483647i, -28256i, u_input.c, -23461i) >> (var_1 % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1i, -2147483647i, -2147483647i) << (vec4<u32>(var_1.x, var_1.x, 45200u, 22669u) % vec4<u32>(32u)), -(vec4<i32>(35272i, u_input.c, 1i, u_input.c) << (vec4<u32>(u_input.b, u_input.b, 19591u, u_input.b) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_div_i32(0i, -27499i), u_input.c, u_input.c, u_input.a.x)) | _wgslsmith_mult_vec4_i32(firstLeadingBit(max(vec4<i32>(-2085i, u_input.c, u_input.a.x, 2147483647i), vec4<i32>(-2147483647i, 10981i, u_input.c, -1i))) << (~var_1 % vec4<u32>(32u)), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c) & -vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 0i));
    let var_4 = func_4(func_1(func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2252f, 1240f, var_2.a.x, var_2.a.x))), func_5(func_4(true, var_0, Struct_1(var_2.a)), 13516u)), var_2.a.x, Struct_3(vec4<u32>(var_1.x & u_input.b, 4294967295u, var_1.x, 1u)), (_wgslsmith_div_vec3_i32(var_3.xwz, var_3.wzy) >> ((var_1.ywy ^ vec3<u32>(39317u, 17396u, u_input.b)) % vec3<u32>(32u))) | vec3<i32>(min(-8025i, -2147483647i), u_input.c << (0u % 32u), firstLeadingBit(-52570i))).d, func_5(func_4(!any(vec4<bool>(false, true, true, false)), var_0, func_5(func_4(true, var_2, var_2), var_1.x)), ~1u), func_5(func_4(false, var_0, func_5(func_4(false, Struct_1(vec4<f32>(var_2.a.x, var_0.a.x, var_0.a.x, -648f)), Struct_1(vec4<f32>(var_0.a.x, var_2.a.x, var_0.a.x, 453f))), 1u)), reverseBits(1u)));
    var var_5 = _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(258f, var_2.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(188f * var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)))))));
    var var_6 = -vec2<i32>(var_4.d.b.x, var_3.x);
    var_6 = _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, var_3.x), vec2<i32>(48696i ^ var_3.x, ~var_6.x)), min((vec2<i32>(var_3.x, -1613i) >> (var_4.d.c.yz % vec2<u32>(32u))) & ~var_3.zx, var_4.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 855f);
}

