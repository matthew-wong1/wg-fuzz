struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1, -1i), u_input.b.x);
    let var_1 = arg_0.x;
    var_0 = ~(-2147483647i);
    var var_2 = countOneBits(~(vec2<u32>(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), 0u) ^ vec2<u32>(u_input.c, u_input.c >> (4400u % 32u))));
    var_2 = ~vec2<u32>(_wgslsmith_div_u32(var_2.x, 0u), u_input.c) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(13246u, 32937u), vec2<u32>(u_input.c, 0u)), ~vec2<u32>(0u, u_input.c), vec2<bool>(false, false)), ~countOneBits(vec2<u32>(30603u, var_2.x)))) % vec2<u32>(32u));
    return select(!(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(arg_2.xxy, vec3<bool>(false, arg_2.x, arg_2.x), arg_2.ywy), !vec3<bool>(true, arg_2.x, true))), vec3<bool>(_wgslsmith_sub_u32(u_input.c, 38382u) < (var_2.x << (var_2.x % 32u)), any(vec2<bool>(!arg_2.x, false)), true), !all(vec3<bool>(u_input.b.x < u_input.a.x, !arg_2.x, any(vec4<bool>(false, arg_2.x, arg_2.x, false)))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_1(max(vec2<i32>(-76996i, 58086i), vec2<i32>(-26241i, ~arg_0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2060f + -863f), _wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(f32(-1f) * -1553f), 1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(259f, 820f, 1065f, -469f) - vec4<f32>(-519f, -1897f, -544f, 1020f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-605f, -336f, -1284f, 223f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1063f, 306f, 568f, 489f) + vec4<f32>(403f, -1339f, 503f, 696f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-194f, -963f, -1003f, 1126f))), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(1929f * -1951f), _wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(596f - -1360f))))), u_input.c);
    var var_1 = !vec2<bool>(true, (_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) != _wgslsmith_f_op_f32(430f * var_0.b.x)) && false);
    var_1 = select(func_2(abs(u_input.a), _wgslsmith_div_i32(2147483647i, ~arg_0) ^ u_input.b.x, vec4<bool>(true, var_1.x, all(select(vec2<bool>(true, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false))), !var_1.x)).xy, !vec2<bool>(true, var_0.c <= 1u), func_2(~(~u_input.a ^ (u_input.a >> (vec4<u32>(var_0.c, u_input.c, u_input.c, 1u) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32((vec2<i32>(arg_0, 22817i) ^ var_0.a) << ((vec2<u32>(42541u, 4294967295u) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(var_0.a >> (vec2<u32>(u_input.c, var_0.c) % vec2<u32>(32u)))), vec4<bool>(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, true, false, false))), true, !var_1.x, select(u_input.c, 0u, var_1.x) > u_input.c)).zz);
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(u_input.c, 0u), 4294967295u), vec2<u32>(_wgslsmith_mod_u32(countOneBits(var_0.c), 0u), var_0.c | 1u));
    var_1 = !vec2<bool>(any(vec3<bool>(false, all(vec2<bool>(true, false)), all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)))), true);
    return vec2<bool>(select(-2901i > u_input.a.x, var_1.x, !(max(29852u, u_input.c) >= _wgslsmith_div_u32(var_2, u_input.c))), any(select(select(func_2(vec4<i32>(-1i, 65830i, -15746i, 0i), var_0.a.x, vec4<bool>(var_1.x, false, false, false)).yz, select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x), true), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true)), true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec4<bool>(all(func_2(abs(u_input.a), reverseBits(-1i << (1u % 32u)), vec4<bool>(true, true, true, true))), !(!any(func_3(u_input.a.x))), true, all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), func_2(u_input.a, -10803i, vec4<bool>(true, false, false, true)), select(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_0 = select(select(!select(vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, true, true, var_0.x), var_0.x), true & var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, !var_0.x), !(var_0.x | true)), vec4<bool>(func_3(-_wgslsmith_mult_i32(1i, u_input.a.x)).x, true, true, _wgslsmith_div_i32(abs(u_input.a.x), ~(-1i)) == (~u_input.a.x & (i32(-1i) * -2147483647i))), (any(!vec4<bool>(var_0.x, var_0.x, false, true)) || var_0.x) | any(func_2(-vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.b.x), u_input.a.x, select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, false), false))));
    var var_1 = Struct_1(vec2<i32>(-1i) * -abs(~vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-2138f, 1034f)), -1718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(972f + 1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-678f)), _wgslsmith_f_op_f32(abs(-1685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f) * -1308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) - 1f))), firstTrailingBit(min(28937u, u_input.c << (u_input.c % 32u))));
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1.a.x, u_input.b.x), select(20487i, 0i, var_0.x)), ~vec2<i32>(var_1.a.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1549f - -663f), 1551f, var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.b.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_1.b.x, 2092f, 134f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.x, var_1.b.x, _wgslsmith_div_f32(-527f, -1809f), -930f)))), 1u);
    let var_3 = !vec4<bool>(!(!var_0.x), true, var_0.x, var_0.x | all(!vec3<bool>(var_0.x, var_0.x, var_0.x)));
    return !select(select(var_3, select(var_3, var_3, 12440i < var_2.a.x), select(select(var_3, var_3, var_3), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.x, true, true, var_3.x), var_3), select(var_3, vec4<bool>(var_3.x, true, var_3.x, var_0.x), var_3.x))), vec4<bool>(true, false, u_input.c <= var_1.c, !func_2(u_input.a, 1i, var_3).x), false && any(!var_3.wzz));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_1(~u_input.b.zz, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1215f, 1000f, -857f, 797f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1610f, -4242f, 494f, 2116f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(649f, -334f, 420f, -1000f) + vec4<f32>(-265f, 1413f, -1150f, 212f))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1015f, 639f)), 313f, -362f, _wgslsmith_f_op_f32(ceil(-1236f)))))), min(~(_wgslsmith_clamp_u32(arg_1, 4294967295u, u_input.c) << (1u % 32u)), arg_1));
    let var_1 = Struct_1(u_input.a.ww, _wgslsmith_f_op_vec4_f32(-var_0.b), ~arg_1);
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(825f, var_0.b.x, var_1.b.x, var_1.b.x) * vec4<f32>(var_1.b.x, -258f, var_0.b.x, var_0.b.x)))))), var_1.c);
    var_0 = var_1;
    let var_3 = vec2<i32>(~2147483647i, _wgslsmith_div_i32(~u_input.b.x | 27009i, ~_wgslsmith_mod_i32(var_1.a.x, 2147483647i))) | vec2<i32>(var_1.a.x, _wgslsmith_add_i32(var_1.a.x, var_0.a.x));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1391f))), _wgslsmith_f_op_f32(var_1.b.x * -1073f), var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 120f, var_2.b.x, -1254f) + var_1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(-select(vec2<i32>(-4i, 0i), u_input.b.yz, false), u_input.a.zy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(803f, -136f, -498f, _wgslsmith_f_op_f32(f32(-1f) * -1099f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(), 1u, false)))), u_input.c);
    var_1 = Struct_1(vec2<i32>(32814i, -var_1.a.x), _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(-317f, var_1.b.x, _wgslsmith_f_op_f32(trunc(var_1.b.x)), -544f)), 0u);
    var var_2 = vec4<u32>(0u, firstTrailingBit(~86736u) | 8628u, var_1.c >> (u_input.c % 32u), 34735u);
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_1.b.xwx, var_2.x);
}

