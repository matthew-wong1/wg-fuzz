struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = abs(~_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), u_input.c, u_input.b)), _wgslsmith_mod_vec3_u32(~u_input.a.yyz, _wgslsmith_mod_vec3_u32(vec3<u32>(40507u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 17050u, u_input.b.x)))));
    var var_1 = u_input.c;
    let var_2 = reverseBits(~(firstTrailingBit(vec3<i32>(-1i, 16391i, 45231i)) | _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(1i, -55661i, -2147483647i), vec3<bool>(true, false, true)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, 19952i), vec3<i32>(24287i, 1i, -20349i)))));
    let var_3 = Struct_1(~(-44059i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), _wgslsmith_f_op_f32(round(224f)), (_wgslsmith_f_op_f32(abs(409f)) == _wgslsmith_f_op_f32(-arg_0.x)) | true)), _wgslsmith_f_op_f32(max(-625f, -1601f)), -reverseBits(-vec4<i32>(var_2.x, var_2.x, var_2.x, -39409i)) ^ _wgslsmith_mod_vec4_i32(abs(firstTrailingBit(vec4<i32>(var_2.x, var_2.x, 48578i, -2147483647i))), vec4<i32>(-var_2.x, -1i, _wgslsmith_sub_i32(var_2.x, 0i), var_2.x ^ var_2.x)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(abs(var_2.zy) >> (vec2<u32>(var_1.x, 36220u) % vec2<u32>(32u)), -var_2.zy), min(max(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -1i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_2.x, -1i), vec2<i32>(var_2.x, 40228i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -92784i))))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * -1659f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(var_3.b, var_3.c))))), _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(abs(var_3.c)));
    return !any(select(vec2<bool>(true, var_1.x <= var_0.x), vec2<bool>(true, true), false));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~1u) >= _wgslsmith_add_u32(u_input.a.x, ~1u);
    let var_1 = vec4<bool>(!func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, 797f))), true, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1935f, -356f)))), !(!any(vec3<bool>(false, false, true)) | true));
    var_0 = false;
    var var_2 = Struct_1(firstLeadingBit(2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(1976f + 745f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f), -1403f)))), abs(abs(vec4<i32>(~1i, _wgslsmith_mult_i32(1i, 19678i), _wgslsmith_div_i32(2440i, 1i), ~(-18616i)))), reverseBits(vec2<i32>(i32(-1i) * -66209i, 1i) >> (vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, 4294967295u), _wgslsmith_add_u32(u_input.c.x, 0u)) % vec2<u32>(32u))));
    let var_3 = Struct_1(var_2.e.x, 722f, var_2.b, _wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.d.x, var_2.d.x | var_2.d.x, 0i, 1i), vec4<i32>(firstLeadingBit(-var_2.d.x), abs(1i), _wgslsmith_sub_i32(~var_2.e.x, var_2.e.x), _wgslsmith_add_i32(var_2.d.x, var_2.e.x))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(max(vec2<i32>(var_2.d.x, -30969i), vec2<i32>(var_2.d.x, 10559i))), -vec2<i32>(var_2.d.x, 67178i), _wgslsmith_mod_vec2_i32(var_2.d.zw >> (vec2<u32>(38561u, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(var_2.e.x, 19313i))) & vec2<i32>(-28710i, -1i));
    return Struct_1(-1i, 657f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * var_2.b)), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_3.b))), select(vec4<i32>(1i, -var_3.a, var_2.e.x, firstTrailingBit(abs(-1i))), abs(_wgslsmith_mod_vec4_i32(var_3.d, vec4<i32>(0i, var_2.e.x, -1i, -21483i)) & vec4<i32>(var_3.a, 1i, 1i, var_2.e.x)), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec2<i32>(select(61649i, -35568i, any(var_1.zy)) >> (103958u % 32u), var_2.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(false, !(!any(vec2<bool>(true, true)) | all(vec3<bool>(false, true, true))), false);
    var var_1 = true;
    var_1 = false;
    let var_2 = true;
    let var_3 = Struct_1(arg_0.x, -915f, -1024f, -_wgslsmith_add_vec4_i32(func_2().d, vec4<i32>(1i, arg_1.e.x, arg_0.x, -23980i) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_div_vec2_i32(arg_0.wz | -arg_1.e, _wgslsmith_div_vec2_i32(-arg_1.e, -arg_1.d.xy)));
    return var_3;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = func_4(countOneBits(firstLeadingBit(~(vec4<i32>(-64951i, 18194i, -1i, 0i) << (u_input.a % vec4<u32>(32u))))), func_2());
    let var_1 = all(vec2<bool>(u_input.c.x == ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, u_input.b.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), false));
    var_0 = Struct_1(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 61976i, var_0.e.x), vec3<i32>(var_0.a, var_0.a, var_0.a) ^ var_0.d.yzz)), -595f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b))))), abs(var_0.d), (_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, var_0.d.x) & vec2<i32>(-1i, var_0.d.x), var_0.d.wx) >> (vec2<u32>(20986u | arg_0.x, ~arg_0.x) % vec2<u32>(32u))) << ((vec2<u32>(_wgslsmith_add_u32(1u, 1u), arg_0.x) ^ u_input.b.yy) % vec2<u32>(32u)));
    let var_2 = func_4(reverseBits(var_0.d), func_2());
    var var_3 = func_2();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, !(select(false, func_1(vec3<u32>(32081u, 1u, u_input.b.x)), false) | true));
    var var_1 = Struct_1(33982i, 1f, func_4(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -4159i, -14949i, -2147483647i)), -_wgslsmith_div_vec4_i32(vec4<i32>(0i, -53566i, -1i, -1i), vec4<i32>(-3478i, 49826i, 2147483647i, 2147483647i))), func_4(firstLeadingBit(vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i)), func_4(~vec4<i32>(0i, -52903i, 39055i, -3351i), func_4(vec4<i32>(0i, -1i, 1i, -28107i), Struct_1(49009i, -1000f, -1000f, vec4<i32>(-10230i, -19745i, 2147483647i, -1i), vec2<i32>(42582i, -1i)))))).c, abs(~vec4<i32>(3641i, 1i, 18745i, 45597i)) >> (vec4<u32>(1u, u_input.b.x, u_input.c.x, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(max(2147483647i, -31780i), 0i)), -vec2<i32>(1i, 1i)));
    let var_2 = !any(select(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), var_0.x));
    var_1 = Struct_1(~var_1.d.x, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(abs(var_1.b)), countOneBits(var_1.d), -var_1.e);
    var_1 = Struct_1(_wgslsmith_div_i32(select(_wgslsmith_mult_i32(var_1.d.x, var_1.a), func_2().e.x, true), -_wgslsmith_mod_i32(max(0i, -2147483647i), firstLeadingBit(var_1.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(abs(-243f))) + var_1.b)), vec4<i32>(1i, func_4(vec4<i32>(var_1.a, -85787i, var_1.a, -2147483647i), func_4(var_1.d, Struct_1(51164i, 253f, -499f, var_1.d, var_1.e))).a, -8079i, -2147483647i) | -(var_1.d | ~var_1.d), (var_1.d.xy & ~(-var_1.e)) ^ var_1.e);
    var_1 = Struct_1(func_4(var_1.d, func_4(vec4<i32>(~var_1.d.x, -var_1.e.x, var_1.e.x, 1i), Struct_1(abs(var_1.a), -426f, _wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_clamp_vec4_i32(var_1.d, vec4<i32>(78987i, 20251i, var_1.e.x, -1i), vec4<i32>(8531i, 2147483647i, var_1.e.x, -2147483647i)), select(var_1.d.xz, var_1.d.zw, false)))).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, var_1.b)))) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1520f)), var_1.b), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d.x, var_1.e.x, -46387i, 1i), ~var_1.d), ~(~var_1.d), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, 10750i, 0i, 1i), var_1.d)), abs(~vec4<i32>(var_1.e.x, -45816i, -2147483647i, var_1.d.x) ^ var_1.d), !vec4<bool>(func_1(u_input.b), all(vec2<bool>(false, false)), var_1.e.x >= -5319i, true)), vec2<i32>(-38914i, _wgslsmith_mod_i32(-reverseBits(-2147483647i), func_2().a)));
    var_0 = !(!select(vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), var_2, false), !(!vec3<bool>(true, var_0.x, var_0.x)), select(!vec3<bool>(false, var_2, var_0.x), vec3<bool>(var_2, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x))));
    var var_3 = Struct_1(2984i, 117f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(func_2().c)))), vec4<i32>(var_1.e.x, countOneBits(-25295i | var_1.d.x), -1i, var_1.a), var_1.e);
    var_0 = !vec3<bool>((u_input.a.x <= u_input.a.x) & any(vec2<bool>(false, var_0.x)), var_2, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(_wgslsmith_div_i32(var_1.e.x, -2147483647i) >> ((62801u >> (u_input.a.x % 32u)) % 32u))), _wgslsmith_f_op_f32(-162f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))))), u_input.a, 145f);
}

