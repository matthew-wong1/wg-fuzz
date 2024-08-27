struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = select(reverseBits(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a, arg_1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(46286u, 4294967295u), vec2<u32>(u_input.a, u_input.a))))), 55247u, arg_1.b.b.a);
    let var_1 = true || (!arg_1.b.b.a & false);
    var_0 = u_input.a;
    var_0 = arg_1.a << (27071u % 32u);
    var var_2 = _wgslsmith_clamp_i32(-1i, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(arg_0.b, arg_0.a)), -(vec2<i32>(-2147483647i, arg_0.b) & vec2<i32>(arg_0.a, arg_0.a))), abs(15540i)));
    return any(select(select(vec4<bool>(arg_2.b.a, all(vec4<bool>(arg_1.b.b.a, true, arg_2.b.a, true)), any(vec3<bool>(arg_2.b.a, true, false)), true), vec4<bool>(arg_0.c.b.a, var_1 && arg_0.c.b.a, var_1, false), false), select(select(!vec4<bool>(var_1, true, arg_0.c.b.a, arg_1.b.b.a), !vec4<bool>(false, false, arg_2.b.a, false), false), vec4<bool>(var_1, !arg_0.c.b.a, all(vec4<bool>(var_1, false, arg_1.b.b.a, arg_1.b.b.a)), any(vec4<bool>(false, true, true, true))), !select(vec4<bool>(arg_1.b.b.a, arg_2.b.a, false, var_1), vec4<bool>(arg_2.b.a, false, arg_0.c.b.a, arg_0.c.b.a), true)), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> vec2<i32> {
    var var_0 = !(!all(!(!vec2<bool>(arg_0.a, true))));
    var var_1 = all(!select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a)), arg_0.a), ~0u <= (u_input.a | 4294967295u)));
    var var_2 = !vec3<bool>(true, false, all(select(!vec2<bool>(arg_0.a, true), !vec2<bool>(true, arg_0.a), true)));
    var var_3 = -(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(1i, 29688i, 8360i, 21317i)), vec4<i32>(select(2147483647i, -15695i, false), ~10177i, _wgslsmith_dot_vec3_i32(vec3<i32>(41816i, 0i, 1i), vec3<i32>(-2147483647i, 50617i, 48291i)), 1i), vec4<i32>(1i, 1i, 1i, 1i)) >> ((vec4<u32>(~1u, 4294967295u, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 69939u, 12803u, u_input.a), vec4<u32>(4294967295u, u_input.a, 20825u, u_input.a))) << (abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, 540u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.a >> (29831u % 32u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a, 4294967295u, u_input.a), vec4<u32>(27238u, 9993u, 4294967295u, 0u)), ~arg_1.x)), vec4<u32>(u_input.a, abs(1u ^ _wgslsmith_sub_u32(arg_1.x, 4294967295u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1808u, 0u)), arg_1.yy), _wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(firstTrailingBit(u_input.a), arg_1.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(58248u, 4294967295u), ~arg_1.x))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(select(var_3.zy, vec2<i32>(~1i, -47470i >> (arg_1.x % 32u)), select(select(var_2.zz, vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_0.a)), var_2.xy, arg_0.a != var_2.x)), vec2<i32>(var_3.x, 29990i)), vec2<i32>(var_3.x, abs(var_3.x)));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_4(1i, max(~(~1i), -(~0i)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(391f, 232f)) - -660f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(exp2(arg_0)))), Struct_1(true)), u_input.a);
    var var_1 = _wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, -2147483647i, 0i), vec3<i32>(-61344i, -1i, -31458i)), var_0.b)), func_4(Struct_1(func_3(Struct_4(var_0.b, 1916i, var_0.c, var_0.d), Struct_3(var_0.d, var_0.c), var_0.c)), _wgslsmith_mod_vec3_u32(select(firstLeadingBit(vec3<u32>(u_input.a, 46361u, 40848u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(71602u, 0u, 17767u), vec3<u32>(var_0.d, u_input.a, u_input.a), vec3<u32>(1u, 3891u, var_0.d)), select(vec3<bool>(var_0.c.b.a, var_0.c.b.a, false), vec3<bool>(var_0.c.b.a, var_0.c.b.a, false), vec3<bool>(var_0.c.b.a, true, var_0.c.b.a))), vec3<u32>(1u, countOneBits(4294967295u), _wgslsmith_add_u32(u_input.a, 0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = Struct_4(var_0.b, -min(15477i, var_0.b), Struct_2(-453f, Struct_1(false)), _wgslsmith_clamp_u32(~(firstTrailingBit(var_0.d) << (~var_0.d % 32u)), firstTrailingBit(u_input.a), u_input.a));
    let var_2 = vec2<bool>(false, var_0.c.b.a);
    var_0 = Struct_4(var_0.a, var_0.a, Struct_2(_wgslsmith_f_op_f32(sign(var_0.c.a)), var_0.c.b), ~_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(70454u, 4294967295u), vec2<u32>(93160u, 4294967295u)), var_0.d << (var_0.d % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, -519f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(433f - var_0.c.a))), _wgslsmith_f_op_f32(f32(-1f) * -1876f))))));
}

fn func_5(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_4(-max(reverseBits(0i), _wgslsmith_clamp_i32(1i, countOneBits(1i), ~64569i)), ~min(1i, func_4(Struct_1(false), ~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(max(996f, -194f))).x), Struct_2(-959f, Struct_1(arg_0)), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(40865u, 1u, ~u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(996f + _wgslsmith_f_op_f32(min(-241f, var_0.c.a))))), 410f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-612f + var_0.c.a))));
    let var_2 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.a, var_0.a >> (var_0.d % 32u)), vec2<i32>(-46880i, _wgslsmith_div_i32(var_0.a, 2147483647i))) ^ (-2147483647i << (select(0u, _wgslsmith_add_u32(var_0.d, var_0.d), any(vec3<bool>(arg_0, true, var_0.c.b.a))) % 32u)), var_0.a, Struct_2(var_1.x, var_0.c.b), 30446u);
    let var_3 = Struct_4(var_0.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2.a, max(var_0.b, 1i)), var_2.a >> ((u_input.a >> (0u % 32u)) % 32u)), var_2.c, firstTrailingBit(~0u));
    var var_4 = var_0;
    return Struct_3(~select(87204u & abs(u_input.a), ~firstLeadingBit(17485u), any(vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1107f, _wgslsmith_f_op_f32(1970f + -2544f)))), Struct_1(any(vec2<bool>(true, var_2.c.b.a)))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_2 {
    return arg_0.b;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(2722i, 2147483647i, -2147483647i), ~55374i), _wgslsmith_add_vec3_i32(~vec3<i32>(18917i, -1i, 0i), vec3<i32>(21177i, -1i, 0i)))), -26040i, arg_0, _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(1u, ~u_input.a)) & abs(u_input.a));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(select(max(var_0.d, var_0.d), _wgslsmith_add_u32(0u, var_0.d), arg_1.a | true) ^ var_0.d, 0u | _wgslsmith_add_u32(countOneBits(11769u), u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(41592u, var_0.d), 4294967295u), (vec2<u32>(var_0.d, var_0.d) << (vec2<u32>(19078u, 1u) % vec2<u32>(32u))) & firstLeadingBit(vec2<u32>(1u, u_input.a))), ~vec2<u32>(_wgslsmith_add_u32(1u, 1u), 25384u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a, 520f)), 450f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.c.a))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, -1065f, var_0.c.a))))))));
    var var_3 = firstLeadingBit(reverseBits(select(2147483647i, ~(var_0.b >> (u_input.a % 32u)), _wgslsmith_f_op_f32(round(var_0.c.a)) > -1416f)));
    let var_4 = -2147483647i;
    return Struct_3(var_1.x, Struct_2(254f, Struct_1(var_0.c.b.a)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = func_7(func_6(func_5(_wgslsmith_div_f32(109f, 860f) <= _wgslsmith_f_op_f32(func_2(-1514f))), vec2<u32>(36566u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 65260u) | vec2<u32>(arg_0, 0u))), vec2<i32>(~_wgslsmith_add_i32(-10058i, 30510i), _wgslsmith_mult_i32(-18418i, arg_2) << (abs(37094u) % 32u))), func_6(func_5(true), ~(~vec2<u32>(arg_0, 6089u)), vec2<i32>(firstTrailingBit(-24874i), -43129i)).b);
    let var_1 = ~reverseBits(45353i ^ _wgslsmith_div_i32(arg_2 >> (u_input.a % 32u), 1i));
    var var_2 = ~(~firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, -6177i), vec2<i32>(2147483647i, -46843i))));
    let var_3 = var_0.b;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f - -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.a, 1000f)))) + _wgslsmith_f_op_f32(ceil(1731f))), Struct_1(false));
    return Struct_1(all(vec2<bool>(func_5(arg_1).b.b.a, !any(vec2<bool>(var_4.b.a, var_0.b.b.a)))));
}

fn func_8(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = func_7(Struct_2(-833f, func_7(func_5(true).b, Struct_1(false)).b.b), func_6(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.a, 11741u) << (vec4<u32>(39652u, arg_2, 0u, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_2, arg_2, 1u, 18343u))), Struct_2(_wgslsmith_f_op_f32(round(1088f)), Struct_1(true))), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(105315u, 0u), vec2<u32>(arg_2, u_input.a), select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), abs(vec2<u32>(24030u, 39421u))), max(-vec2<i32>(arg_1, arg_3), min(vec2<i32>(2147483647i, arg_1), vec2<i32>(arg_3, 2147483647i))) << (vec2<u32>(arg_2, 1u) % vec2<u32>(32u))).b).b.b;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2049f, -251f) - vec2<f32>(-716f, -1661f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-211f, 877f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 909f), vec2<f32>(284f, -980f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, -1909f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(630f, 917f)))))), vec2<f32>(672f, 214f));
    let var_2 = arg_1;
    var var_3 = arg_0;
    var_3 = Struct_1((func_1(_wgslsmith_sub_u32(54596u, 1u), var_0.a, _wgslsmith_add_i32(0i, 2147483647i)).a && !all(vec2<bool>(false, arg_0.a))) | var_0.a);
    return func_7(func_7(Struct_2(408f, func_5(true).b.b), func_5(all(vec2<bool>(arg_0.a, true))).b.b).b, Struct_1(var_3.a)).b.a;
}

fn func_9(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_7(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1017f * _wgslsmith_f_op_f32(f32(-1f) * -638f)))), func_5(all(vec4<bool>(true, true, true, true))).b.b), arg_1.b.b);
    let var_1 = Struct_4(~(~1i), 2147483647i, arg_1.b, _wgslsmith_div_u32(~countOneBits(~5719u), var_0.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(-1113f, var_2.x, var_2.x)), arg_0)), var_2, vec3<bool>(true, !(!var_0.b.b.a), !arg_1.b.b.a))));
    var_3 = arg_0;
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1180f, func_9(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) * _wgslsmith_f_op_f32(sign(-1945f))), _wgslsmith_f_op_f32(func_8(func_1(1u, true, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(24100i, -20253i, -13302i, 18914i), vec4<i32>(2147483647i, 2147483647i, -1i, 5580i)), _wgslsmith_add_u32(u_input.a, 1u), firstLeadingBit(-1i))), -361f), func_7(func_6(Struct_3(u_input.a, Struct_2(1917f, Struct_1(true))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), vec2<u32>(91541u, u_input.a)), vec2<i32>(-2147483647i, 21734i) << (vec2<u32>(u_input.a, 2396u) % vec2<u32>(32u))), Struct_1(false))));
    let var_1 = func_7(var_0, var_0.b);
    var var_2 = countOneBits(-22884i);
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(i32(-1i) * -19227i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 16663i), vec3<i32>(0i, -1i, -2147483647i)), -2147483647i, 2147483647i)), -(~vec4<i32>(29888i, 40061i, -28474i, 55630i))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1053f))))), func_6(var_1, vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_i32(-vec2<i32>(-3898i, var_3.x), _wgslsmith_sub_vec2_i32(-var_3.zz, func_4(Struct_1(true), vec3<u32>(29309u, var_1.a, u_input.a), -140f)))).a);
    var var_5 = Struct_4(_wgslsmith_mult_i32(func_4(func_5(false || var_1.b.b.a).b.b, (vec3<u32>(var_1.a, 0u, var_1.a) & vec3<u32>(var_1.a, 358u, u_input.a)) | min(vec3<u32>(1u, 32201u, var_1.a), vec3<u32>(11436u, u_input.a, 34306u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x + 1162f), _wgslsmith_f_op_f32(f32(-1f) * -523f))).x, var_3.x ^ -4115i), ((var_3.x ^ ~var_3.x) & _wgslsmith_div_i32(~0i, 1i)) >> (min(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 70223u), 1u), 4294967295u) % 32u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f * _wgslsmith_f_op_f32(var_1.b.a - var_0.a)) * _wgslsmith_f_op_f32(-890f - _wgslsmith_f_op_f32(-var_0.a))), Struct_1(true)), _wgslsmith_add_u32(select(var_1.a, ~27770u, any(select(vec4<bool>(false, var_1.b.b.a, false, var_0.b.a), vec4<bool>(var_0.b.a, true, var_0.b.a, var_1.b.b.a), vec4<bool>(true, true, var_1.b.b.a, true)))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_5.c.a * _wgslsmith_f_op_f32(140f - var_5.c.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.x)), -1188f)) * vec2<f32>(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -179f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_7(Struct_2(2220f, var_5.c.b), var_5.c.b).b.a, var_4.x, _wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(f32(-1f) * -794f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), var_5.c.a)))));
}

