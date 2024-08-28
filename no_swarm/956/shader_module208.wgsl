struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-787f))), -1000f));
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(22371u, 1u, arg_1, arg_1), vec4<u32>(u_input.b, arg_0.a.x >> (2990u % 32u), arg_1, u_input.b)), (firstLeadingBit(4294967295u) << (~arg_1 % 32u)) | arg_0.a.x, 11174u), vec3<u32>(4294967295u, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(35512u, 96786u, 1u, u_input.b), arg_0.a)), abs(44679u)));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(select(countOneBits(arg_0.a), arg_0.a & arg_0.a, vec4<bool>(true, true, true, true)), arg_0.a) ^ vec4<u32>(_wgslsmith_sub_u32(~7663u, _wgslsmith_add_u32(arg_0.a.x, u_input.c.x)), u_input.b, ~arg_0.a.x, _wgslsmith_dot_vec3_u32(arg_0.a.xyx, u_input.c)), arg_0.b, _wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_0.c.x, arg_0.b, -2147483647i, u_input.a.x)), min(_wgslsmith_mult_vec4_i32(arg_0.c, vec4<i32>(u_input.a.x, 0i, -2147483647i, u_input.a.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(43245i, u_input.a.x, arg_0.c.x, arg_0.b), ~vec4<i32>(u_input.a.x, 2271i, -1i, 1i)))));
    var_2 = Struct_1(abs(max(var_2.a, ~countOneBits(arg_0.a))), arg_0.b, ~(-(_wgslsmith_add_vec4_i32(var_2.c, vec4<i32>(17961i, -2147483647i, u_input.a.x, 1i)) >> (~arg_0.a % vec4<u32>(32u)))));
    var_1 = ~(vec3<u32>(44023u, ~(~var_2.a.x), ~1u) | vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.x, arg_1), min(0u, 1u)), 31884u, _wgslsmith_clamp_u32(~0u, min(var_1.x, var_1.x), 0u)));
    return vec2<i32>(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a.x, 0i, -1i), -59434i) ^ u_input.a;
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x)) | ~_wgslsmith_div_i32(u_input.a.x, -1i), _wgslsmith_div_i32(-u_input.a.x & abs(u_input.a.x), arg_1.c.x)) >> (((_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.a.x, arg_0), u_input.b | arg_0) & (u_input.b | ~43723u)) ^ ~25308u) % 32u);
    var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, _wgslsmith_mult_i32(arg_1.b.d.x, -1i)), u_input.a.x | -u_input.a.x);
    var var_1 = 0i;
    var_0 = 2147483647i;
    var var_2 = vec4<i32>(~(-arg_1.c.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.b.d.xx), abs(select(func_3(Struct_1(vec4<u32>(arg_0, 50415u, 1u, 1u), 21130i, vec4<i32>(u_input.a.x, arg_1.b.d.x, 49568i, u_input.a.x)), 61423u), vec2<i32>(u_input.a.x, u_input.a.x), false))), 2147483647i, abs(_wgslsmith_sub_i32(~u_input.a.x, u_input.a.x)) << (0u % 32u));
    return Struct_1(vec4<u32>(select(134915u, max(1u, ~arg_0), !all(vec3<bool>(false, true, false))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0), u_input.c.zy, u_input.c.yx), u_input.c.xz) ^ 1u, 61233u, ~reverseBits(4294967295u)), select(var_2.x, -_wgslsmith_add_i32(i32(-1i) * -37491i, _wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(0i, var_2.x, 36848i))), true), -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, arg_1.b.d.x, var_2.x, 13666i) << (vec4<u32>(arg_0, u_input.c.x, arg_1.e, 0u) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, arg_1.c.x, 1i, -1i)), vec4<i32>(5381i, 2147483647i, arg_1.c.x, u_input.a.x) ^ vec4<i32>(-2147483647i, var_2.x, u_input.a.x, 2147483647i)), vec4<i32>(abs(u_input.a.x), var_2.x ^ 25376i, 2147483647i, ~var_2.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_mod_i32(-(-2147483647i ^ u_input.a.x), arg_1);
    var var_1 = func_2(~4294967295u, Struct_4(vec4<u32>(4294967295u, ~u_input.c.x, u_input.c.x, u_input.b) << ((~vec4<u32>(94012u, u_input.b, u_input.c.x, u_input.c.x) >> (vec4<u32>(48587u, u_input.b, u_input.c.x, 568u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_3(_wgslsmith_div_vec3_f32(arg_2.wxz, _wgslsmith_f_op_vec3_f32(exp2(arg_2.yzz))), vec2<f32>(-1121f, -630f), firstLeadingBit(u_input.c.x), select(vec3<i32>(arg_1, 24486i, -1i) & vec3<i32>(u_input.a.x, arg_1, -23121i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, 0i, 41623i), vec3<i32>(var_0, arg_1, var_0)), 0u > u_input.c.x)), vec3<i32>(1i, ~_wgslsmith_clamp_i32(16842i, u_input.a.x, 31539i), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), countOneBits(u_input.c.x)));
    var var_2 = -abs(-10048i);
    var_1 = Struct_1(vec4<u32>(~u_input.c.x, 1u, ~(~(~var_1.a.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, var_1.a.x), 4304u, ~4294967295u) | 1u), var_0, vec4<i32>(u_input.a.x | _wgslsmith_dot_vec4_i32(var_1.c | vec4<i32>(10084i, var_0, var_0, -15699i), -var_1.c), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(max(31191i, var_0), -var_1.c.x), abs(~1i)), _wgslsmith_dot_vec4_i32(select(-var_1.c, var_1.c, !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), ~_wgslsmith_mod_vec4_i32(var_1.c, vec4<i32>(var_0, -15304i, 2147483647i, -15567i)))));
    var_1 = func_2(var_1.a.x, Struct_4(select(~(~vec4<u32>(1u, var_1.a.x, u_input.c.x, u_input.b)), var_1.a, select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), true), !vec4<bool>(arg_0.x, true, arg_0.x, false))), Struct_3(vec3<f32>(-396f, -747f, _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_vec2_f32(arg_2.xw * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), arg_2.xz)), 44395u, -vec3<i32>(var_0, u_input.a.x, 2147483647i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(11033i, 1i, -20876i), firstLeadingBit(~vec3<i32>(u_input.a.x, var_0, 0i)), var_1.c.xzy), -719f, ~45770u));
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: f32) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-475f, arg_3, arg_3), vec3<f32>(687f, arg_3, arg_3)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, -2306f, arg_3))))) - vec3<f32>(1109f, _wgslsmith_f_op_f32(max(arg_3, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1049f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, arg_3)))), abs(u_input.c.x), vec3<i32>(arg_0.x | 20400i, reverseBits(~(-14051i)), _wgslsmith_add_i32(arg_0.x, arg_0.x)));
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(func_2(u_input.c.x, Struct_4(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.c, 23149u, var_0.c, u_input.c.x), vec4<u32>(0u, u_input.c.x, 37208u, 4294967295u)), var_0, arg_0, _wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_add_u32(var_0.c, _wgslsmith_clamp_u32(var_0.c, 0u, 12144u)))));
    var var_3 = _wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(0i, -u_input.a.x, abs(-34626i), i32(-1i) * -8653i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, var_2.a.c.x), -8946i, 0i, -38290i), vec4<i32>(1i >> (~u_input.b % 32u), arg_0.x, abs(72931i), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, 2147483647i, var_2.a.c.x, arg_0.x), vec4<i32>(-11040i, var_0.d.x, -2147483647i, var_2.a.b))), vec4<i32>(~(45502i << (var_2.a.a.x % 32u)), min(~(-40835i), func_2(u_input.b, Struct_4(var_2.a.a, var_0, arg_0, arg_3, var_0.c)).c.x), u_input.a.x, var_2.a.b)));
    var var_4 = var_2.a.a.x;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~(1u << (u_input.b % 32u)), _wgslsmith_clamp_u32(~u_input.b, u_input.c.x, 18580u), u_input.b), vec3<u32>(u_input.c.x, countOneBits(~(~u_input.c.x)), select(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xx, u_input.c.yy), ~vec2<u32>(u_input.b, 1u)), abs(u_input.c.x) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 62230u)))));
    var_0 = _wgslsmith_add_vec3_u32(u_input.c, u_input.c);
    var_0 = u_input.c;
    let var_1 = firstLeadingBit(var_0.x);
    let var_2 = any(vec2<bool>(true, true)) | true;
    let x = u_input.a;
    s_output = func_4(-vec3<i32>(~_wgslsmith_add_i32(-34897i, 6656i), u_input.a.x, -(~(-22262i))), vec4<bool>(var_2, !(!var_2) || select(false, any(vec4<bool>(false, var_2, var_2, true)), true), true, func_1(vec2<bool>(true, var_2), u_input.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, 2599f, -1825f, -261f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 1012f, 1622f, 1000f) + vec4<f32>(168f, 491f, 320f, -475f)))))), vec3<u32>(0u | var_0.x, 29807u, 56383u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-569f, -943f)));
}

