struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b))) > -986f);
    var var_1 = 5300u;
    var_1 = u_input.a;
    let var_2 = countOneBits(abs(~arg_1.a.zx));
    let var_3 = countOneBits(firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -1i, 4906i, 1i), countOneBits(vec4<i32>(u_input.d, -2147483647i, u_input.c.x, -41637i))))));
    return 0u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.zyw, _wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-353f)) - 213f)));
    var var_1 = !vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true)) && (any(vec3<bool>(false, true, false)) & true), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true, any(vec3<bool>(any(vec2<bool>(true, true)), true, true)));
    var var_2 = vec4<u32>(4294967295u & _wgslsmith_dot_vec3_u32(var_0.a, ~vec3<u32>(arg_2, u_input.a, 121426u)), 14098u, 223u, ~4294967295u);
    var var_3 = select(reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, 1i, u_input.d), ~vec3<i32>(0i, 23960i, u_input.d))) << (vec3<u32>(min(~arg_1.x, var_0.a.x), 34419u, reverseBits(~0u)) % vec3<u32>(32u)), u_input.c << (var_0.a % vec3<u32>(32u)), u_input.d >= ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.c.x), select(vec2<i32>(u_input.d, u_input.c.x), vec2<i32>(u_input.c.x, -2147483647i), var_1.zw)));
    let var_4 = -(~(-(~(-vec4<i32>(u_input.d, var_3.x, var_3.x, u_input.d)))));
    return Struct_2(~var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_3(~_wgslsmith_sub_vec4_u32(~vec4<u32>(31920u, 4294967295u, 6223u, 4294967295u), vec4<u32>(~arg_1.x, u_input.a, _wgslsmith_clamp_u32(u_input.b, arg_1.x, 4294967295u), func_2(-25566i, Struct_2(arg_1.xwz, 1873f), arg_2))), abs(~(~vec2<u32>(arg_1.x, arg_1.x))), _wgslsmith_div_u32(arg_1.x, ~arg_2.c));
    let var_1 = arg_0;
    let var_2 = select(_wgslsmith_div_vec4_i32(-(~vec4<i32>(-24761i, 2147483647i, u_input.c.x, -42394i)), firstTrailingBit(countOneBits(abs(vec4<i32>(-1i, arg_2.b, u_input.d, 18026i))))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -30605i, ~_wgslsmith_add_i32(arg_2.b, u_input.c.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-41904i, arg_2.a.x, u_input.c.x)), vec3<i32>(u_input.c.x, -1i, 0i))), vec4<i32>(-(~15892i), _wgslsmith_sub_i32(select(-2147483647i, arg_2.a.x, true), ~arg_2.a.x), ~arg_2.b, 1i)), false);
    let var_3 = select(_wgslsmith_add_vec3_i32(var_2.zyx, vec3<i32>(arg_2.a.x, _wgslsmith_mult_i32(var_2.x | 6536i, arg_2.a.x), _wgslsmith_sub_i32(reverseBits(u_input.d), ~u_input.d))), var_2.zyx, select(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, false)), vec3<bool>(true, true, true), all(arg_0)), select(select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(arg_0.x, var_1.x, arg_0.x), vec3<bool>(true, var_1.x, true)), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, var_1.x, false), vec3<bool>(true, false, true)), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(arg_0.x, var_1.x, arg_0.x), true), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, true), var_1.x), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, var_1.x, var_1.x), var_1.x)), var_1.x), vec3<bool>(var_1.x, any(arg_0), true)));
    var_0 = func_3(firstTrailingBit(~vec4<u32>(_wgslsmith_mult_u32(arg_1.x, 9698u), u_input.a, u_input.a, ~arg_2.c)), ~(vec2<u32>(~1u, ~50987u) & var_0.a.yy), 1u ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(24670u, u_input.a, 4294967295u) << (vec3<u32>(43816u, arg_1.x, var_0.a.x) % vec3<u32>(32u)), arg_1.xyy)));
    return func_3(~firstLeadingBit((vec4<u32>(u_input.b, u_input.a, 68177u, u_input.b) << (arg_1 % vec4<u32>(32u))) >> (arg_1 % vec4<u32>(32u))), select(~countOneBits(vec2<u32>(14506u, 44979u)), _wgslsmith_div_vec2_u32(arg_1.wy, vec2<u32>(0u, 1u)) & _wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(44371u, 11135u)), !all(arg_0)) & abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a.x), vec2<u32>(4294967295u, arg_1.x))), 64447u);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.a.x, u_input.a, u_input.a), vec3<u32>(31100u, u_input.b, 34895u)), 228f);
    var_0 = arg_2;
    var_0 = Struct_2(abs(vec3<u32>(~select(0u, var_0.a.x, false), arg_2.a.x, ~reverseBits(4294967295u))), _wgslsmith_f_op_f32(arg_2.b + -1223f));
    var_0 = arg_2;
    var_0 = arg_2;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), func_4(-59534i, false, func_1(vec2<bool>(false, true), ~vec4<u32>(u_input.a, 0u, 8414u, u_input.b), Struct_1(u_input.c.zz, 1824i, u_input.b))), vec2<bool>(true, func_4(-11635i, false, func_3(vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b), vec2<u32>(0u, u_input.b), 54162u)).x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(639f + 1725f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f))));
    var var_2 = ~(-countOneBits(vec4<i32>(~u_input.d, ~u_input.c.x, firstLeadingBit(u_input.d), abs(0i))));
    var var_3 = select(select(select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), !vec3<bool>(var_0.x, true, true)), !vec3<bool>(true, false, var_0.x)), !select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, var_0.x), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), var_0.x), select(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), false, any(vec2<bool>(var_0.x, false))), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), var_0.x))), !vec3<bool>(true, false, func_3(vec4<u32>(u_input.b, 19932u, 1u, 1u), vec2<u32>(0u, u_input.b), 1u).b > -182f), select(vec3<bool>(all(vec3<bool>(false, var_0.x, var_0.x)) | var_0.x, any(vec2<bool>(true, var_0.x)), all(vec3<bool>(false, true, false)) | true), vec3<bool>(any(!var_0), true, var_1.x <= var_1.x), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), !vec3<bool>(false, var_0.x, true), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, false)))));
    var_2 = _wgslsmith_div_vec4_i32(firstLeadingBit(abs(vec4<i32>(-var_2.x, _wgslsmith_mod_i32(var_2.x, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 65600i), var_2.zwy), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2552i, 1i, 34852i), vec4<i32>(u_input.d, u_input.c.x, u_input.d, -28530i))))), _wgslsmith_add_vec4_i32(vec4<i32>(~23364i, -(~u_input.d), u_input.d, u_input.d), vec4<i32>(_wgslsmith_add_i32(~(-2185i), -u_input.c.x), -39090i, _wgslsmith_mod_i32(u_input.d, 1i) & var_2.x, _wgslsmith_sub_i32(var_2.x, -1i))));
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -356f, var_1.x), vec3<f32>(635f, var_1.x, var_1.x), vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 356f) * vec3<f32>(var_1.x, -754f, -1569f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2818f, -777f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(-357f * -1915f)), -1166f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2914f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(var_1.x + -1195f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_4.x, var_1.x)), -353f, 675f, _wgslsmith_f_op_f32(trunc(1314f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.x, var_1.x, var_4.x, -467f)))))), u_input.c.x, vec4<i32>(-70408i, ~24770i, -12150i, u_input.c.x), vec3<u32>(countOneBits(func_3(vec4<u32>(u_input.a, 0u, 0u, u_input.b), vec2<u32>(u_input.a, u_input.a), u_input.b).a.x & u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(29508u, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.b, 4294967295u)) | (vec3<u32>(u_input.a, u_input.a, 23673u) ^ vec3<u32>(u_input.b, u_input.b, 60518u)), ~countOneBits(vec3<u32>(u_input.b, 0u, 1u))), u_input.b));
}

