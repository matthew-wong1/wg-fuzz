struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = 1u;
    var var_2 = -1861f;
    let var_3 = arg_0.b;
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1537f + _wgslsmith_f_op_f32(179f + -139f)), _wgslsmith_f_op_f32(max(836f, -327f)))))));
    return ~var_0.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~(~24407u), 68492u) | vec2<u32>(0u, func_3(Struct_1(vec2<u32>(u_input.a, 7404u), -2147483647i, vec4<bool>(false, false, true, true), 1u, vec3<u32>(3070u, 9845u, u_input.b)))), arg_1.x, !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 21973u, vec3<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a), ~u_input.b), ~1u), u_input.b));
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, func_3(Struct_1(vec2<u32>(1u, 1u), -12988i, var_0.c, u_input.a, var_0.e))), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(44745u, 4294967295u), var_0.a), ~max(var_0.a, var_0.e.zz))) & firstTrailingBit(vec2<u32>(0u, 100711u));
    let var_2 = arg_1.xzy;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e.x, ~41853u & firstTrailingBit(0u)), vec2<u32>(_wgslsmith_mult_u32(var_0.e.x, ~39161u), 18147u)), var_0.b, select(select(select(!var_0.c, !var_0.c, any(var_0.c)), vec4<bool>(select(var_0.c.x, var_0.c.x, var_0.c.x), !var_0.c.x, arg_0.x <= -1000f, true), var_0.c.x), var_0.c, !select(var_0.c, var_0.c, !var_0.c.x)), 0u, vec3<u32>(22140u, u_input.b, ~33407u));
    var var_4 = ~var_3.d;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1390f)) * _wgslsmith_f_op_f32(-770f + -896f)), 931f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1670f - 1603f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-423f, -784f, true))))), _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f * 1007f))), 323f), ~(~abs(~vec4<i32>(arg_0.b, 0i, -17476i, arg_0.b))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-687f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1037f))), _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(f32(-1f) * -841f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -58584i, var_1.b, -2147483647i), vec4<i32>(arg_0.b, var_0, arg_1.b, -2147483647i) ^ vec4<i32>(1i, 2147483647i, -2278i, arg_1.b)), i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, var_1.b, 1i), vec3<i32>(1i, -97067i, 36495i), arg_0.c.xww), ~vec3<i32>(arg_0.b, -1i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-36311i, 1275i, -19873i), vec3<i32>(arg_0.b, -1i, 68717i)) & -var_0), _wgslsmith_div_vec4_i32(vec4<i32>(~arg_1.b, ~(-36729i), _wgslsmith_dot_vec3_i32(vec3<i32>(29540i, -19218i, arg_1.b), vec3<i32>(-46760i, 2147483647i, arg_1.b)), _wgslsmith_div_i32(8295i, 23819i)), min(vec4<i32>(arg_1.b, arg_1.b, var_0, arg_1.b), vec4<i32>(2147483647i, 1i, var_1.b, -1i))), vec4<i32>(0i, ~40558i, arg_0.b ^ _wgslsmith_sub_i32(1i, -22833i), abs(-1i))));
    let var_3 = abs(countOneBits(min(abs(u_input.b), ~arg_0.a.x))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, 1u, arg_1.e.x, u_input.a), max(vec4<u32>(0u, arg_0.e.x, var_1.e.x, arg_0.a.x), vec4<u32>(4294967295u, var_2.e.x, arg_1.d, 0u))) ^ vec4<u32>(u_input.b, _wgslsmith_mult_u32(arg_0.e.x, var_2.e.x), ~4294967295u, 20985u), vec4<u32>(abs(37012u), arg_0.d, abs(_wgslsmith_div_u32(u_input.a, u_input.a)), 1u)) % 32u);
    let var_4 = arg_0;
    return Struct_1(func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-424f, 251f))), 1f, 321f, 535f), abs(abs(~vec4<i32>(var_4.b, -35360i, 14290i, 1084i)))).a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(~var_4.b), 1i << (arg_0.d % 32u)), min(_wgslsmith_add_i32(arg_1.b, var_1.b), ~var_4.b << (~49322u % 32u))), !vec4<bool>(true, var_2.c.x, (36071i >> (1u % 32u)) >= ~arg_1.b, !all(var_2.c.zy)), 21021u, arg_0.e);
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = u_input.b;
    let var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-546f, _wgslsmith_f_op_f32(min(1040f, 932f)), _wgslsmith_f_op_f32(sign(-122f)), -1317f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, 600f, 1598f, -694f) - vec4<f32>(-1524f, -761f, -1508f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 348f, -209f, -370f))))), _wgslsmith_mod_vec4_i32(vec4<i32>(max(arg_0.b, arg_0.b), ~arg_0.b, _wgslsmith_mod_i32(~(-48005i), -arg_0.b), min(1i, min(2147483647i, arg_0.b))), -(~vec4<i32>(arg_0.b, 71993i, arg_0.b, arg_0.b) ^ vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 31733i))));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-452f)) + _wgslsmith_f_op_f32(-2932f - 754f)), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(805f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1381f)), 1971f)))), ~vec4<i32>(var_1.b, var_1.b | arg_0.b, var_1.b, -func_4(Struct_1(vec2<u32>(1u, var_1.e.x), 0i, var_1.c, 0u, var_1.e), arg_0).b));
    var_2 = Struct_1(vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(36492u, var_0) ^ arg_0.e.x), arg_0.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1354f, -1000f, 1024f, -960f) + vec4<f32>(750f, 730f, -815f, -1521f)))), abs(vec4<i32>(-1537i, arg_0.b, abs(-39838i), -arg_0.b))).c, func_3(arg_0), firstTrailingBit(var_2.e));
    var var_3 = var_1;
    return select(var_3.c.zxz, !vec3<bool>(!var_2.c.x, true, false), var_1.c.xzx);
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = vec2<bool>(any(func_5(func_4(Struct_1(vec2<u32>(u_input.a, 22276u), -13577i, vec4<bool>(true, true, arg_0.x, false), 1u, vec3<u32>(1u, 33985u, 55484u)), func_2(vec4<f32>(-1000f, 334f, 639f, -676f), vec4<i32>(-2661i, -2147483647i, -1i, 0i))))), arg_0.x);
    var var_1 = countOneBits(-_wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -3617i), vec2<i32>(-22062i, -1i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(32022u, u_input.a), vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    var_0 = vec2<bool>(arg_0.x, false);
    let var_2 = -1539f;
    let var_3 = vec4<i32>(select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, ~var_1.x, var_1.x), 0i >> (countOneBits(u_input.b) % 32u)), select(~43995i >> ((58647u >> (u_input.b % 32u)) % 32u), firstTrailingBit(28783i) ^ 0i, var_0.x), 2147483647i >= var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>((-2147483647i | var_1.x) | 18692i, 1i, 1i, -53498i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, var_1.x, -1i, 0i), abs(vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x))), firstLeadingBit(~vec4<i32>(var_1.x, -12529i, var_1.x, -43769i)))), -var_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(83914i, ~var_1.x, 13731i), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, 71131i, var_1.x), vec3<i32>(var_1.x, var_1.x, -1i)) | ~vec3<i32>(10675i, 1i, 22878i)));
    return countOneBits(vec3<u32>(min(~23523u, _wgslsmith_mod_u32(12308u, u_input.a)), 1u, u_input.a) ^ vec3<u32>(_wgslsmith_add_u32(func_2(vec4<f32>(1716f, var_2, var_2, -594f), var_3).e.x, firstLeadingBit(u_input.a)), 1u, ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(16960u, u_input.b, 41136u)), func_1(vec2<bool>(false, false))), min(reverseBits(u_input.a), ~87908u)), ~1i, vec4<bool>(true, true, all(vec3<bool>(true, any(vec2<bool>(true, true)), false)), true), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~u_input.a), 5759u & (u_input.b | u_input.b), abs(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(23515u, u_input.b), func_2(vec4<f32>(-1358f, -936f, -1506f, -831f), vec4<i32>(11555i, -38229i, 0i, 27801i)).a)), vec4<u32>(_wgslsmith_clamp_u32(reverseBits(u_input.b), _wgslsmith_mod_u32(24277u, 5794u), ~60185u), u_input.a, u_input.a, max(u_input.a, ~u_input.a))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(23536u, u_input.a, u_input.a), vec3<u32>(32237u, u_input.b, 26832u)) << (vec3<u32>(u_input.b, 1u, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, 8214u, u_input.b)));
    var var_1 = func_4(Struct_1(~countOneBits(select(var_0.a, vec2<u32>(68047u, 2616u), vec2<bool>(var_0.c.x, false))), _wgslsmith_add_i32(20302i, -1i & (var_0.b >> (4294967295u % 32u))), !var_0.c, 7744u, var_0.e), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1186f, -2020f, -1265f, 1347f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 1237f, -210f, -333f) + vec4<f32>(1021f, -515f, 549f, -735f)), vec4<bool>(true, var_0.c.x, true, var_0.c.x))))), -vec4<i32>(-9984i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, var_0.b, 1i), vec4<i32>(15212i, -4594i, -48212i, var_0.b)), 1i, var_0.b)));
    var_0 = Struct_1(~min(~(~vec2<u32>(4294967295u, 64419u)), var_1.a), max(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.b, var_1.b), var_1.b), ~vec2<i32>(-1i, 2147483647i) & vec2<i32>(var_1.b, var_0.b)), reverseBits(var_0.b)), var_0.c, u_input.a, select(var_0.e, vec3<u32>(func_1(vec2<bool>(var_0.c.x, var_1.c.x)).x, 0u, _wgslsmith_mod_u32(~20382u, var_0.d & var_1.d)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(var_1.c.x, var_0.c.x, false), var_0.c.zyz, false), vec3<bool>(false, var_0.c.x, true)), select(vec3<bool>(true, true, var_1.c.x), vec3<bool>(var_1.c.x, var_0.c.x, false), true), all(vec3<bool>(var_1.c.x, false, true)))));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), 1192f, _wgslsmith_f_op_f32(max(585f, -801f)), _wgslsmith_f_op_f32(f32(-1f) * -2245f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1228f, 308f, 785f, -673f), vec4<f32>(890f, 153f, -1359f, -247f))))), ~vec4<i32>(_wgslsmith_div_i32(1i, 1i), var_0.b, _wgslsmith_mult_i32(var_1.b, 2147483647i), -45338i) & ~countOneBits(~vec4<i32>(var_0.b, var_0.b, var_1.b, var_1.b)));
    let var_2 = all(!(!(!vec4<bool>(var_0.c.x, false, true, var_0.c.x))));
    var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~1u, var_0.d), var_1.a), -808i, var_1.c, ~var_1.e.x, vec3<u32>(abs(var_1.a.x), ~_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(u_input.a, u_input.b, u_input.b))), 16319u));
    let var_3 = -vec2<i32>(abs(i32(-1i) * -1i), firstLeadingBit(var_0.b)) ^ vec2<i32>(~(-var_0.b), ~77673i);
    var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, 1111f, 754f, 745f) + vec4<f32>(254f, -206f, 173f, -1761f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(trunc(475f)), _wgslsmith_f_op_f32(round(1535f)), _wgslsmith_f_op_f32(f32(-1f) * -944f))), vec4<i32>(func_4(func_2(vec4<f32>(516f, -1124f, 430f, 400f), vec4<i32>(-44076i, var_1.b, 0i, var_3.x)), func_2(vec4<f32>(2791f, 1000f, 884f, 134f), vec4<i32>(var_3.x, var_0.b, -1i, 0i))).b, _wgslsmith_clamp_i32(~0i, var_1.b, -9012i), var_1.b, -57201i)), Struct_1(~func_1(vec2<bool>(var_0.c.x, false)).zx, var_0.b, !(!var_0.c), var_0.d ^ 1u, var_0.e));
    var var_4 = Struct_1(~_wgslsmith_clamp_vec2_u32(firstTrailingBit(abs(var_1.a)), countOneBits(vec2<u32>(var_0.e.x, u_input.b)), vec2<u32>(0u, ~1u)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-2147483647i, var_3.x, var_0.b, var_1.b)), (vec4<i32>(5961i, var_1.b, var_1.b, var_0.b) & vec4<i32>(var_3.x, var_0.b, -34839i, -1i)) << (~vec4<u32>(1u, var_1.a.x, 131048u, 23396u) % vec4<u32>(32u))), _wgslsmith_div_i32(var_1.b, 0i)), vec4<bool>(var_0.c.x, false, !var_1.c.x && true, !var_0.c.x), 48588u, vec3<u32>(~(~(~u_input.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, var_0.e.x), vec4<u32>(25234u, 4294967295u, 18206u, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.d, 4294967295u, 0u, 1u), vec4<u32>(35453u, var_1.e.x, var_0.a.x, 66051u))), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(select(68909i, firstTrailingBit(var_1.b), false), 0i), _wgslsmith_mult_i32(-var_0.b, _wgslsmith_mod_i32(-var_1.b, var_1.b ^ -5153i)), var_4.b, ~select(-52289i, 0i, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(978f, 1861f)) * _wgslsmith_f_op_f32(max(-811f, 811f)))))), vec3<i32>(select(-14116i, 1i, false) << ((4688u & var_1.e.x) % 32u), var_4.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 1i, 0i, 2147483647i), vec4<i32>(1i, 2147483647i, var_4.b, 2147483647i)) << (4294967295u % 32u)) ^ vec3<i32>(-var_4.b & _wgslsmith_mod_i32(var_1.b, 21916i), var_3.x, var_4.b), ~0i);
}

