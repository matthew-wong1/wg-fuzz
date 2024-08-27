struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, -27922i, u_input.a.x, -2147483647i)), ~vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)), -firstTrailingBit(vec4<i32>(u_input.d, u_input.b.x, 23623i, 1044i))), vec4<i32>(67444i, _wgslsmith_clamp_i32(u_input.d, -2147483647i, -28695i), u_input.b.x, abs(2147483647i)));
    let var_1 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -174f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f * -1000f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) * _wgslsmith_f_op_f32(select(-1042f, -460f, true))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-513f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(574f)) * _wgslsmith_f_op_f32(-579f * -231f))))), false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f * var_2.a))) - _wgslsmith_f_op_f32(-1f)), var_2.a, _wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))), true);
    var var_4 = vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(-max(var_0.zw, vec2<i32>(29527i, -1i)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 2147483647i))), u_input.d);
    return select(select(select(!select(vec3<bool>(var_2.d, var_2.d, var_3.d), vec3<bool>(false, true, var_3.d), vec3<bool>(var_3.d, true, true)), select(select(vec3<bool>(true, var_3.d, var_3.d), vec3<bool>(false, var_1.x, var_3.d), var_1.x), !vec3<bool>(true, var_2.d, false), var_2.d), vec3<bool>(true, !var_1.x, false)), !(!select(vec3<bool>(false, true, var_2.d), vec3<bool>(false, true, var_2.d), vec3<bool>(var_2.d, false, true))), vec3<bool>(true, true, true)), !select(!(!vec3<bool>(false, var_3.d, var_2.d)), !vec3<bool>(var_1.x, var_2.d, true), var_2.d), select(select(select(vec3<bool>(false, true, var_3.d), !vec3<bool>(false, false, var_1.x), select(vec3<bool>(var_1.x, false, var_2.d), vec3<bool>(var_3.d, var_3.d, true), true)), select(select(vec3<bool>(var_1.x, var_2.d, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_2.d, var_3.d)), select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, true, false), false), vec3<bool>(var_3.d, var_3.d, var_2.d)), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_2.d, true), vec3<bool>(false, var_2.d, var_2.d))), select(select(vec3<bool>(var_1.x, var_2.d, var_3.d), vec3<bool>(var_2.d, var_3.d, false), !vec3<bool>(var_2.d, var_2.d, var_1.x)), vec3<bool>(true, var_1.x, true), select(!vec3<bool>(var_1.x, var_3.d, false), select(vec3<bool>(true, var_2.d, false), vec3<bool>(var_3.d, false, var_2.d), var_2.d), var_2.d)), true));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = vec4<bool>(any(select(vec3<bool>(arg_2.d, arg_2.d, any(vec2<bool>(arg_2.d, arg_2.d))), vec3<bool>(!arg_2.d, !arg_2.d, all(vec2<bool>(true, false))), func_3())), !all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.d, arg_2.d, false, arg_2.d), arg_2.d), select(vec4<bool>(false, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(arg_2.d, true, false, true), arg_2.d), select(vec4<bool>(true, false, arg_2.d, false), vec4<bool>(arg_2.d, true, true, arg_2.d), arg_2.d))), any(select(vec3<bool>(arg_2.d, true & arg_2.d, false), func_3(), vec3<bool>(arg_2.d, false, any(vec4<bool>(false, arg_2.d, false, arg_2.d))))), !arg_2.d);
    var_0 = true;
    var_0 = var_1.x;
    var var_2 = ~((~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2453i, u_input.a.x)) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(-9190i, 1i, 0i, 1559i)) | vec4<i32>(u_input.d, -1i, -28634i, 2147483647i))) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(min(u_input.a.xz, u_input.a.xz), abs(u_input.b)), _wgslsmith_sub_i32(-19123i >> (u_input.c % 32u), 0i << (0u % 32u)), firstTrailingBit(i32(-1i) * -2147483647i), 0i));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2450f + arg_1), _wgslsmith_f_op_f32(-852f * arg_0.x), true)))))), arg_1, _wgslsmith_f_op_f32(floor(arg_0.x)), var_1.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(707f, _wgslsmith_f_op_f32(floor(1327f)), 1628f, any(select(!vec4<bool>(true, true, arg_2.d, arg_2.d), !(!vec4<bool>(arg_1.d, arg_2.d, true, arg_1.d)), arg_1.d)));
    var var_2 = arg_2.c;
    var var_3 = ~max(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, u_input.d, 29549i) << (vec4<u32>(u_input.c, var_0.x, arg_0.x, 50917u) % vec4<u32>(32u)), abs(vec4<i32>(1i, 1i, -1i, u_input.b.x))), vec4<i32>(u_input.b.x, -2147483647i, 31306i, u_input.d) >> ((vec4<u32>(4294967295u, 77426u, var_0.x, arg_0.x) & vec4<u32>(4294967295u, var_0.x, 8032u, u_input.c)) % vec4<u32>(32u))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-1294i, 42820i, u_input.d, u_input.b.x), vec4<i32>(-13022i, u_input.b.x, 0i, u_input.b.x))));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c)));
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1899f, arg_1.a) - var_1.a), _wgslsmith_f_op_f32(319f + _wgslsmith_f_op_f32(var_4 + 249f)))), 1f, func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(120f, arg_3, arg_2.c), vec3<f32>(var_4, var_1.a, 1397f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -1073f, var_4)))))), 874f, arg_1));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(~(~select(~vec3<u32>(72470u, u_input.c, u_input.c), max(vec3<u32>(30108u, u_input.c, u_input.c), vec3<u32>(4294967295u, 1u, 18335u)), vec3<bool>(arg_1.d, false, arg_1.d))));
    var var_1 = func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, 43959u, var_0.x, 4294967295u), vec4<u32>(var_0.x, 559u, var_0.x, 1u), vec4<bool>(false, true, true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, var_0.x), vec4<u32>(4294967295u, 1u, 1u, u_input.c))), ~u_input.c), var_0.zz, ~var_0.zx), arg_1, arg_0, 1085f).b;
    let var_2 = false;
    let var_3 = func_4(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(15592u, 8872u))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_0.x, 4294967295u)), firstTrailingBit(select(vec2<u32>(19981u, 20315u), var_0.xz, var_2)), _wgslsmith_add_vec2_u32(~vec2<u32>(25416u, u_input.c), vec2<u32>(u_input.c, var_0.x)))), Struct_1(arg_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))))), arg_1.b, true), arg_1, arg_1.a);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -665f);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_3.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - var_3.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-714f, 216f)) - 1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * -356f))), _wgslsmith_f_op_f32(-func_4(vec2<u32>(67934u, abs(var_0.x)), Struct_1(-131f, _wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(-var_3.c), true), arg_0, var_3.a).c), false);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(-429f, -1000f, arg_1.x, arg_2.d);
    var var_1 = func_5(arg_2, func_4(vec2<u32>(~45817u, 47053u), func_2(vec3<f32>(-2747f, arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1722f + var_0.b)), Struct_1(1f, 2270f, arg_2.a, 84779i <= u_input.b.x)), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -2873f, arg_1.x) - vec3<f32>(510f, 716f, var_0.c)))), var_0.b, arg_2), _wgslsmith_f_op_f32(2171f * _wgslsmith_f_op_f32(ceil(-1665f)))));
    let var_2 = select(vec3<bool>(!(!var_1.d), false, any(select(select(vec4<bool>(arg_0.x, arg_0.x, true, var_1.d), vec4<bool>(var_1.d, var_0.d, false, true), vec4<bool>(arg_0.x, var_0.d, false, arg_0.x)), !vec4<bool>(false, var_1.d, var_0.d, false), select(vec4<bool>(var_0.d, false, false, false), vec4<bool>(var_1.d, var_0.d, true, false), true)))), func_3(), !all(select(select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(var_0.d, true, false, true), arg_2.d), select(vec4<bool>(true, var_1.d, false, false), vec4<bool>(var_0.d, false, arg_0.x, true), vec4<bool>(false, false, var_0.d, true)), arg_0.x)));
    var var_3 = vec3<bool>(!(!func_2(vec3<f32>(var_1.c, arg_2.a, -1041f), _wgslsmith_f_op_f32(497f + arg_2.c), var_0).d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2074f, 1000f))))) < var_0.a, (false & arg_0.x) | false);
    let var_4 = vec2<bool>(true, !var_0.d);
    return func_4(countOneBits(~select(_wgslsmith_mult_vec2_u32(arg_3, arg_3), arg_3, true)), func_4(vec2<u32>(u_input.c, 33232u), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, arg_1.x, -1463f))), _wgslsmith_f_op_f32(f32(-1f) * -683f), Struct_1(_wgslsmith_f_op_f32(-var_0.c), arg_2.b, -403f, true)), arg_2, _wgslsmith_f_op_f32(ceil(-597f))), arg_2, arg_2.c);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = func_2(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f * -1117f)) + _wgslsmith_f_op_f32(sign(func_4(vec2<u32>(0u, 29580u), arg_1, Struct_1(1343f, arg_1.b, 1143f, arg_1.d), arg_1.a).a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f + arg_1.a) - _wgslsmith_f_op_f32(sign(arg_1.b)))), _wgslsmith_div_f32(arg_1.a, 321f), func_4(~firstLeadingBit(~vec2<u32>(13852u, arg_0)), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 367f, 1445f)))), arg_1.b, func_2(vec3<f32>(arg_1.c, arg_1.a, arg_1.a), 596f, func_4(vec2<u32>(1u, 14879u), arg_1, Struct_1(arg_1.b, -261f, arg_1.a, arg_1.d), 237f))), Struct_1(arg_1.a, -1158f, _wgslsmith_f_op_f32(arg_1.c * func_4(vec2<u32>(arg_0, arg_0), arg_1, Struct_1(arg_1.a, arg_1.b, -139f, arg_1.d), arg_1.b).c), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = ~max(min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(20970u, u_input.c), vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(11765u, u_input.c & 54837u)), ~select(~vec2<u32>(25406u, u_input.c), select(vec2<u32>(57668u, arg_0), vec2<u32>(3515u, 9655u), vec2<bool>(var_0.d, var_0.d)), var_0.d | var_0.d));
    let var_2 = arg_1.d;
    let var_3 = _wgslsmith_div_f32(func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.c)), arg_1.a)), var_0, var_1).c, _wgslsmith_f_op_f32(trunc(-1673f)));
    var var_4 = arg_1.d;
    return _wgslsmith_add_i32(-max(_wgslsmith_sub_i32(countOneBits(u_input.d), -u_input.a.x), -2147483647i & u_input.d), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_mult_i32(-func_6(u_input.c, func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(543f, -1000f))), Struct_1(265f, -208f, 545f, true), vec2<u32>(40067u, u_input.c))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(1135i, ~var_0, _wgslsmith_div_i32(u_input.a.x, 2147483647i))), -2147483647i));
    let var_2 = ~_wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(-vec3<i32>(-2147483647i, 17840i, u_input.b.x)));
    let var_3 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), !select(true, true, false)), vec2<bool>(false, func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1923f, -368f))), Struct_1(740f, -216f, 1681f, false), firstLeadingBit(vec2<u32>(u_input.c, 0u))).d), vec2<bool>(false, true));
    var_1 = var_0;
    let var_4 = vec3<bool>(any(vec3<bool>(select(u_input.c > 35026u, true, all(var_3)), var_3.x, true)), var_3.x, func_2(vec3<f32>(1332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(602f))), _wgslsmith_f_op_f32(f32(-1f) * -2158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-705f)), _wgslsmith_f_op_f32(890f * 103f)))), Struct_1(_wgslsmith_f_op_f32(809f - func_4(vec2<u32>(u_input.c, u_input.c), Struct_1(1014f, -1595f, 437f, var_3.x), Struct_1(-305f, 1038f, 661f, false), 1000f).a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2052f)), func_4(vec2<u32>(31899u, 1u), Struct_1(-2096f, -303f, 857f, true), Struct_1(806f, -237f, 1782f, var_3.x), -710f).b)), -430f, var_3.x)).d);
    var_1 = u_input.a.x ^ ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), 80986u, reverseBits(_wgslsmith_add_u32(0u, u_input.c) >> (0u % 32u)), vec3<u32>(1u, (~4294967295u ^ u_input.c) | 4294967295u, ~77095u), -_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(39736i), countOneBits(u_input.d), _wgslsmith_mult_i32(u_input.a.x, -70522i), -u_input.a.x), vec4<i32>(abs(2274i), i32(-1i) * -21087i, -2147483647i, _wgslsmith_div_i32(u_input.d, -1i))));
}

