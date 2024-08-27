struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = countOneBits(~vec4<u32>(0u, ~(~u_input.c), _wgslsmith_mod_u32(0u, u_input.b) << (_wgslsmith_div_u32(66067u, u_input.b) % 32u), u_input.a));
    return abs(min(vec4<i32>(1i, arg_0.x, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), arg_0.x ^ arg_0.x) << (min(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.a, 16791u), vec4<u32>(49735u, 58645u, u_input.c, 81159u)), ~var_0) % vec4<u32>(32u)), ~min(min(vec4<i32>(-2147483647i, arg_0.x, 8807i, arg_0.x), vec4<i32>(arg_0.x, 1i, arg_0.x, 1i)), vec4<i32>(arg_0.x, 0i, arg_0.x, -37659i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.b, arg_2.b), vec2<f32>(arg_2.b, -1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, 509f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b, arg_2.b))) * vec2<f32>(-151f, arg_2.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-136f, arg_2.b), vec2<f32>(985f, 441f))))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - -785f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1124f)) * _wgslsmith_f_op_f32(602f + arg_2.b))), 743f));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 738f, arg_2.b) * vec3<f32>(arg_2.b, var_0.x, -316f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1351f, var_0.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1416f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(883f, -1811f, var_0.x), vec3<f32>(arg_2.b, arg_2.b, -1000f)))))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1058f))), 2213f, 356f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-585f, arg_2.b, 1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1001f, var_0.x, -1487f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -1700f), vec3<f32>(arg_2.b, var_0.x, var_0.x), arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(636f, 655f, arg_2.b) - vec3<f32>(arg_2.b, 1301f, arg_2.b)))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(629f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))))));
    return _wgslsmith_div_vec4_i32(arg_0, arg_0);
}

fn func_2() -> Struct_1 {
    var var_0 = ~min(_wgslsmith_mod_vec4_i32(-vec4<i32>(-19469i, 2147483647i, 1i, 1i), vec4<i32>(i32(-1i) * -739i, 0i, -7648i, _wgslsmith_dot_vec2_i32(vec2<i32>(-25030i, 1i), vec2<i32>(2147483647i, 1i)))), vec4<i32>(firstTrailingBit(firstTrailingBit(-1i)), countOneBits(-9667i), -21529i, ~1i));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, -59275i, 42987i), vec4<i32>(var_0.x, var_0.x, var_0.x, -7335i))), _wgslsmith_sub_i32(var_0.x | _wgslsmith_clamp_i32(-81287i, 2147483647i, -34974i), -(var_0.x | var_0.x))), var_0.zzx);
    var_0 = _wgslsmith_mod_vec4_i32(func_4(func_3(vec2<i32>(1i, 58798i)) << (reverseBits(vec4<u32>(u_input.c, u_input.a, u_input.b, 29480u) | vec4<u32>(4294967295u, u_input.d, u_input.a, 4294967295u)) % vec4<u32>(32u)), vec3<bool>(false, false | all(vec2<bool>(false, false)), _wgslsmith_sub_i32(23855i, var_0.x) <= ~23839i), Struct_1(~var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(588f)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.b, 59268u)), u_input.a, _wgslsmith_add_u32(0u, u_input.b)))), vec4<i32>(-44963i, min(31784i, var_1.x), var_1.x, var_1.x));
    return Struct_1(_wgslsmith_clamp_i32(var_0.x, -2147483647i, var_1.x), -2062f, abs(~_wgslsmith_mult_u32(reverseBits(u_input.b), select(u_input.c, 1u, true))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(true, func_2(), ~(~max(~vec2<u32>(31942u, 1u), firstLeadingBit(vec2<u32>(u_input.b, 1u)))), vec2<u32>(u_input.d, u_input.a));
    var var_1 = select(select(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.a, 1i, var_0.b.a), vec3<i32>(var_0.b.a, var_0.b.a, -52348i)), vec3<i32>(-1i) * -min(vec3<i32>(var_0.b.a, -14023i, -1i), vec3<i32>(var_0.b.a, arg_1, arg_1)), vec3<bool>(true, true, true)), -func_4(vec4<i32>(func_2().a, -1i, arg_1, func_3(vec2<i32>(var_0.b.a, 2147483647i)).x), vec3<bool>(any(vec2<bool>(arg_0, true)), arg_0, true), var_0.b).xyx, !var_0.a);
    var_1 = ~func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -32595i, var_0.b.a, ~0i), vec4<i32>(4798i, arg_1, var_1.x, var_1.x) >> (~vec4<u32>(90940u, var_0.d.x, 22672u, u_input.d) % vec4<u32>(32u))), vec3<bool>(true, true, true), func_2()).zyz;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-271f, var_0.b.b, var_0.b.b))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(358f, var_0.b.b, var_0.b.b) + vec3<f32>(-861f, var_0.b.b, var_0.b.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b, var_0.b.b, var_0.b.b), vec3<f32>(2722f, var_0.b.b, -1000f)), vec3<f32>(-1089f, var_0.b.b, var_0.b.b)))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.b, -1296f), -1574f)), 1106f, var_0.b.b));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b), -2424f, var_2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-957f, 1124f, var_2.x), vec3<f32>(537f, -1251f, -1513f), true))))));
    return Struct_3(vec4<i32>(arg_1, 3769i, firstLeadingBit(2147483647i), ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(-6358i, 5158i, var_1.x), vec3<i32>(var_1.x, 27596i, var_0.b.a)), -1i)), func_2(), var_1.x, var_0.b.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<i32>(~(~arg_2.b.a), firstLeadingBit(abs(1i) >> ((u_input.a & u_input.d) % 32u)) | 0i, -(0i ^ (i32(-1i) * -arg_3.a)));
    var var_1 = -1592f;
    var var_2 = max(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.a.yy, vec2<i32>(~6703i, -21124i), select(func_3(var_0.yz).wx, vec2<i32>(1i, arg_3.a), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), ~abs(vec2<i32>(arg_2.a.x, var_0.x))), (_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i), firstLeadingBit(var_0.yx)) | firstTrailingBit(var_0.zx)) << ((vec2<u32>(firstLeadingBit(arg_0.x), select(0u, arg_2.b.c, true)) ^ arg_0.yz) % vec2<u32>(32u)));
    var var_3 = var_2.x;
    var var_4 = Struct_3(vec4<i32>(_wgslsmith_div_i32(6906i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7188i, -1i, arg_2.a.x, var_2.x), arg_2.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i) << (vec2<u32>(arg_2.b.c, 24527u) % vec2<u32>(32u)), vec2<i32>(var_0.x, -2147483647i)), func_3(vec2<i32>(-2147483647i, 2147483647i)).x, -1i) & vec4<i32>(-2147483647i, arg_3.a, arg_3.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2489i, var_0.x), var_0.xz) | _wgslsmith_add_i32(arg_3.a, 0i)), func_2(), firstLeadingBit(-max(var_2.x, -1i)) ^ -(~_wgslsmith_mod_i32(arg_3.a, arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1024f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, 0u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(0u, 23345u)), ~vec2<u32>(u_input.c, u_input.d) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, u_input.d)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(38618u, u_input.d), vec2<u32>(0u, u_input.c)) & _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, u_input.b)))), Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -13164i, 25578i), vec3<i32>(52867i, -4000i, 15905i)), -vec3<i32>(10135i, -2147483647i, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<u32>(u_input.a, u_input.c, 22302u) | vec3<u32>(u_input.d, u_input.a, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, 460f) - vec2<f32>(687f, 989f)), func_1(true, 30398i), func_1(false, 0i).b)), 1f), u_input.a));
    var var_1 = vec4<bool>(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.b.c, var_0.a), var_0.b.c)) < var_0.a, any(vec3<bool>(true, false, var_0.b.a != 2147483647i)), !((false | (var_0.b.a < var_0.b.a)) || (any(vec2<bool>(true, false)) & any(vec2<bool>(true, true)))), true);
    var_1 = select(!select(vec4<bool>(any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), any(var_1.zz), var_1.x, var_0.b.a > var_0.b.a), vec4<bool>(any(vec4<bool>(true, false, false, var_1.x)), all(vec4<bool>(false, var_1.x, true, false)), true, true || var_1.x), !(!var_1.x)), vec4<bool>(false || (var_0.b.b >= -1156f), false & var_1.x, var_1.x, !(-8279i != var_0.b.a) && !var_1.x), !(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))));
    var_1 = vec4<bool>(false, true, true, !any(select(var_1.xwy, vec3<bool>(var_1.x, var_1.x, false), var_1.x && false)));
    var_1 = select(vec4<bool>(var_1.x, all(select(!vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x))), all(!(!var_1.zxx)), !(var_0.b.c < (36542u >> (1u % 32u)))), select(vec4<bool>(var_1.x, var_0.b.a >= 2147483647i, true, any(vec4<bool>(var_1.x, var_1.x, true, var_1.x))), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, !var_1.x, var_1.x)), all(!select(var_1.xxz, var_1.yxx, var_1.x))), var_1.x);
    let var_2 = func_1(true, var_0.b.a).d;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, (~(~vec2<u32>(0u, u_input.d)) & abs(~vec2<u32>(var_0.a, 4294967295u))) << (vec2<u32>(16593u | _wgslsmith_sub_u32(14346u, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(62021u, u_input.d) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(13080u, 44344u))) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(307f)), 1452f, _wgslsmith_f_op_f32(floor(var_2)), -1315f), vec4<f32>(-620f, -761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-932f))), -845f)), min(reverseBits(~vec4<i32>(2147483647i, var_0.b.a, var_0.b.a, -5398i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(30397i, var_0.b.a, 2147483647i, var_0.b.a), -vec4<i32>(var_0.b.a, var_0.b.a, 0i, 50210i)), vec4<i32>(max(-27585i, 21608i), var_0.b.a, -30376i, var_0.b.a))));
}

