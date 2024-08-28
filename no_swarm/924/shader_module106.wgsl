struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(0u, 4294967295u, u_input.b.x)), u_input.b), ~vec3<u32>(~u_input.b.x, u_input.b.x >> (u_input.b.x % 32u), select(1u, 44890u, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(992f, -1996f, -792f)), vec3<f32>(-1065f, -267f, -1821f)))), firstTrailingBit((vec3<i32>(u_input.a, u_input.a, -1i) | (vec3<i32>(u_input.a, 0i, u_input.a) >> (vec3<u32>(30238u, 15098u, 17801u) % vec3<u32>(32u)))) << (select(u_input.c ^ vec3<u32>(u_input.b.x, arg_0.x, arg_0.x), arg_0.wyw, u_input.a > 1i) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~0i, 37651i), u_input.d), abs(6680i), u_input.d.x, u_input.d.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, -u_input.a), u_input.d >> (vec2<u32>(arg_0.x, 4294967295u) % vec2<u32>(32u))));
    let var_1 = vec2<bool>(!select(false, false, true), true);
    let var_2 = var_0;
    let var_3 = ~1u != _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_sub_u32(var_2.a, 0u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.x, var_0.a) | vec2<u32>(86003u, u_input.c.x)), u_input.c.yy << (~arg_0.zy % vec2<u32>(32u))));
    let var_4 = Struct_1(~(488u & ~arg_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.b.x)), var_2.b.x)), _wgslsmith_f_op_f32(310f - var_0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, -307f, 508f) + vec3<f32>(183f, -1930f, var_0.b.x)) * var_2.b) * vec3<f32>(1005f, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(floor(var_0.b.x))))), var_0.d.yxy, ~countOneBits(vec4<i32>(0i, u_input.a, -2147483647i, var_0.d.x) & -var_0.d), _wgslsmith_add_i32(~1i, abs(abs(~0i))));
    return ~vec3<u32>(2315u, reverseBits((var_0.a >> (37535u % 32u)) >> (reverseBits(var_0.a) % 32u)), ~var_2.a);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.zz, u_input.c.yx, vec2<u32>(u_input.c.x, u_input.b.x)), min(vec2<u32>(0u, 4294967295u), u_input.c.yx)), _wgslsmith_dot_vec2_u32(u_input.b.yy, max(u_input.b.zz, vec2<u32>(1u, u_input.c.x)))), ~func_3(firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x))));
    let var_1 = var_0.x;
    var var_2 = reverseBits(abs(~(-reverseBits(vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, 344f, 206f, arg_0) * vec4<f32>(arg_0, arg_0, 798f, -124f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 337f, 2368f, arg_0), vec4<f32>(360f, arg_0, 1273f, -123f))), vec4<f32>(arg_0, arg_0, arg_0, -1967f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(f32(-1f) * -587f), 1027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -987f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -871f), 764f, _wgslsmith_f_op_f32(-840f + -312f)))));
    return Struct_1(~(var_0.x ^ _wgslsmith_mod_u32(~1090u, ~var_1)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, 499f))), var_3.x), var_3.ywx, vec3<bool>(true, select(true, false, true), select(true, true, true)))), ~vec3<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, var_2.x), var_2.xxy)), _wgslsmith_mult_i32(1i, 2147483647i), abs(reverseBits(0i))), _wgslsmith_div_vec4_i32(~(-(vec4<i32>(1i, -1i, u_input.a, var_2.x) ^ vec4<i32>(33390i, 0i, var_2.x, u_input.d.x))), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -1i, -12033i, 1i), vec4<i32>(var_2.x, 0i, 33792i, 2147483647i)), vec4<i32>(0i, var_2.x, -25078i, var_2.x) & vec4<i32>(u_input.a, u_input.a, u_input.d.x, u_input.a), vec4<bool>(false, true, true, true)) | vec4<i32>(u_input.a, 56096i, min(u_input.d.x, 2147483647i), _wgslsmith_mult_i32(var_2.x, u_input.d.x))), -34983i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 2238f;
    let var_1 = arg_3;
    var var_2 = arg_3.a;
    let var_3 = arg_1;
    let var_4 = Struct_1((abs(arg_3.a) ^ arg_3.a) & (~reverseBits(arg_3.a) | (~u_input.b.x ^ var_1.a)), arg_2, vec3<i32>(-9205i, abs(arg_0.c.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_3, arg_0.c), _wgslsmith_sub_i32(-1i, 19757i))), vec4<i32>(-(u_input.d.x << (arg_3.a % 32u)), reverseBits(-var_1.c.x), reverseBits(-2147483647i), firstTrailingBit(arg_3.d.x)), max(_wgslsmith_sub_i32(var_1.c.x, 1i), i32(-1i) * -arg_3.d.x));
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(func_4(arg_2, arg_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.x, -633f, 1358f))))) - vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-212f, arg_2.b.x)))), Struct_1(~(~arg_2.a), arg_0, reverseBits(vec3<i32>(u_input.a, -38881i, arg_2.c.x)), (vec4<i32>(arg_2.c.x, arg_2.e, arg_2.d.x, u_input.a) | arg_2.d) ^ arg_2.d, -1i))).x);
    var var_1 = var_0;
    let var_2 = ~firstLeadingBit(var_0.e);
    var var_3 = _wgslsmith_div_f32(-1289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)))));
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~38042u), u_input.b.zx), arg_2.b, var_0.c, max(vec4<i32>(i32(-1i) * -u_input.a, ~(~arg_2.d.x), _wgslsmith_sub_i32(~var_0.e, -2700i), u_input.d.x), select(vec4<i32>(-27897i >> (0u % 32u), ~u_input.d.x, firstTrailingBit(-19722i), min(arg_2.d.x, 2147483647i)), _wgslsmith_sub_vec4_i32(var_1.d & vec4<i32>(var_0.c.x, 0i, 1i, arg_2.e), select(vec4<i32>(-18506i, 10677i, 1i, -5757i), var_1.d, vec4<bool>(false, arg_1.x, arg_3.x, arg_1.x))), arg_3)), 1i);
    return firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(~var_1.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.d.xy, var_1.c.xx), _wgslsmith_mod_i32(2501i, -10898i))), _wgslsmith_dot_vec3_i32(min(var_0.d.zyz, var_4.d.yxy), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(24720i, arg_2.e, var_0.e), var_4.c), vec3<i32>(var_0.e, -2147483647i, 31090i), vec3<i32>(2147483647i, 22091i, -1i))), -(~var_0.d.x) << (0u % 32u), ~3988i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(~_wgslsmith_mod_u32(u_input.b.x, 1u), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2422f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - arg_0.b.x)), vec3<i32>(min(~1i, select(var_0.d.x ^ 56700i, -10607i, false)), -var_0.d.x, -2147483647i), -func_5(_wgslsmith_f_op_vec3_f32(func_4(func_2(-954f), -vec3<i32>(arg_0.e, arg_0.d.x, 18010i), arg_0.b, arg_0)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), Struct_1(~4294967295u, vec3<f32>(arg_0.b.x, -315f, -210f), vec3<i32>(4776i, var_0.e, 1i), countOneBits(var_0.d), u_input.a << (var_0.a % 32u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, true))), arg_0.c.x);
    var_0 = func_2(-658f);
    var var_1 = var_0.d.zyz;
    let var_2 = Struct_1(func_3(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 37163u, 0u, 24205u), vec4<u32>(u_input.b.x, u_input.b.x, var_0.a, 20022u))), var_0.a, u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 82364u, arg_0.a), vec3<u32>(u_input.b.x, 37327u, u_input.c.x)), u_input.c))).x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1177f * arg_0.b.x)) * _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.b.x, -462f)))), 727f), vec3<i32>(-1i, func_2(_wgslsmith_f_op_f32(sign(arg_0.b.x))).c.x, 1i), arg_0.d, -31435i);
    return func_2(_wgslsmith_f_op_f32(floor(597f)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = -137f;
    let var_1 = func_2(func_2(_wgslsmith_f_op_f32(floor(1331f))).b.x);
    var var_2 = Struct_1(_wgslsmith_div_u32(~(reverseBits(u_input.c.x) & func_3(vec4<u32>(1u, arg_0.a, 0u, u_input.b.x)).x), abs(~_wgslsmith_div_u32(65629u, 1u))), _wgslsmith_f_op_vec3_f32(func_4(var_1, reverseBits(arg_0.c) & var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.x, arg_0.b.x, arg_1.x))))), func_1(func_1(func_1(var_1))))), -arg_0.d.yyy, vec4<i32>(max(-var_1.c.x, firstTrailingBit(arg_0.c.x)), func_1(var_1).d.x, _wgslsmith_sub_i32(var_1.e, 2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 12647u, 16828u), vec3<u32>(arg_0.a, 1u, 4294967295u)) % 32u), -57575i) & select(vec4<i32>(19593i, u_input.a, arg_0.d.x & var_1.d.x, -1i), vec4<i32>(countOneBits(35008i), countOneBits(arg_0.e), -33612i, var_1.d.x), var_1.b.x < 1187f), _wgslsmith_add_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f + arg_1.x) - func_1(var_1).b.x)).d.x, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 446f, arg_0.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), Struct_1(9263u, _wgslsmith_f_op_vec3_f32(arg_0.b - arg_1), arg_0.d.zxw, ~arg_0.d, _wgslsmith_sub_i32(-35187i, u_input.a)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false)).x));
    let var_3 = func_1(arg_0);
    var_0 = _wgslsmith_f_op_f32(sign(var_2.b.x));
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(round(arg_0.b.x)), var_2.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, arg_1.x, 1000f)))) + arg_0.b), vec3<i32>(~(~func_1(Struct_1(4294967295u, arg_1, vec3<i32>(-1414i, 1i, var_3.e), var_2.d, -45260i)).e), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(var_3.c), min(arg_0.c, var_1.d.zyx)), vec3<i32>(-1i) * -arg_0.d.xyy), ~24617i), var_3.d, -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = func_6(func_1(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, 94152u), vec4<u32>(14346u, u_input.c.x, 505u, 4294967295u)), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x) & vec4<u32>(33903u, u_input.c.x, u_input.c.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -14612i), vec3<i32>(var_0.x, var_0.x, 10914i)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(-1i, 0i, 2147483647i, 13612i), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)), -vec4<i32>(u_input.d.x, u_input.a, 31217i, 22768i)), u_input.a >> (countOneBits(u_input.c.x) % 32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(830f, 2169f, -1475f)))))));
    var var_2 = (~(~(21478u << (u_input.b.x % 32u))) & 0u) > ~4294967295u;
    var_2 = reverseBits(firstLeadingBit(~var_0.x) << (~(~var_1.a) % 32u)) > -21013i;
    let var_3 = -675f;
    var var_4 = var_1;
    var var_5 = var_1;
    var_5 = var_1;
    var_5 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, var_5.a, var_5.a, u_input.c.x), vec4<u32>(var_4.a, ~var_1.a, ~58310u, ~1u)), var_1.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(var_4.b.x).b.x, 329f))), max(~var_5.d.zyz ^ (var_4.d.wyy & _wgslsmith_add_vec3_i32(vec3<i32>(31846i, u_input.d.x, 2147483647i), vec3<i32>(var_4.e, var_1.e, var_1.c.x))), min(vec3<i32>(-5871i, min(67765i, 1i), var_0.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(23795i, var_4.d.x, var_4.e, -9410i), var_1.d), var_5.c.x, var_5.d.x))), (select(vec4<i32>(var_4.d.x, -1i, u_input.d.x, var_0.x), vec4<i32>(20263i, -2147483647i, var_4.e, var_5.c.x), var_3 >= var_5.b.x) >> (~vec4<u32>(var_5.a, u_input.b.x, 0u, 18239u) % vec4<u32>(32u))) ^ var_5.d, -11460i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, min(34358i, -(~u_input.a & var_0.x)), _wgslsmith_sub_u32(abs(~var_1.a), 4294967295u) & _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(72049u), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)), _wgslsmith_add_u32(firstLeadingBit(5894u), 0u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(Struct_1(var_1.a, var_1.b, var_5.c, vec4<i32>(16653i, var_1.e, var_4.d.x, -1i), -45353i), vec3<f32>(189f, 316f, 407f)).b - vec3<f32>(var_5.b.x, -355f, -484f)), var_4.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.b)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_5.b.x, 1000f), vec3<f32>(-244f, var_5.b.x, -989f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, var_5.b.x, var_1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-697f, _wgslsmith_f_op_f32(f32(-1f) * -1662f))), -279f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(var_3).b.x), _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_1(var_1.a, vec3<f32>(var_1.b.x, var_5.b.x, 203f), vec3<i32>(12736i, 26425i, -2147483647i), var_5.d, 0i)), var_1.d.zzy ^ var_1.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, 722f, 1000f))), var_1)).x))));
}

