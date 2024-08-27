struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.yzy;
    var var_1 = arg_0;
    let var_2 = vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.d.x), reverseBits(arg_0.c.zwz)) << (var_0.x % 32u)), var_1.c.x);
    let var_3 = !select(!arg_0.b, !var_1.b, vec4<bool>(false, true, all(var_1.b.yz) & !arg_2.b.x, true && all(arg_0.a)));
    let var_4 = arg_0;
    return !vec3<bool>(all(!var_4.b.wz), arg_2.b.x, !select(all(var_1.b.xz), u_input.e > 6219u, any(vec4<bool>(false, true, arg_2.b.x, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), true), vec4<bool>(all(func_3(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec4<i32>(70681i, -1i, 0i, 34643i), u_input.b.x), vec4<u32>(79862u, 45983u, 4294967295u, 1u), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), vec4<i32>(1i, -37218i, u_input.a, -44669i), u_input.d.x))), all(vec2<bool>(all(vec2<bool>(true, false)), true)), all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), select(countOneBits(vec4<i32>(41295i, -59804i >> (1u % 32u), reverseBits(-1i), _wgslsmith_add_i32(u_input.c.x, u_input.d.x))), reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -8332i, -2147483647i, 0i), vec4<i32>(82217i, 21808i, 39114i, u_input.b.x), vec4<i32>(u_input.d.x, -48411i, -13143i, u_input.b.x)), -vec4<i32>(u_input.a, u_input.a, u_input.b.x, -3812i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.a))), !(~0i == u_input.a)), u_input.b.x ^ u_input.b.x);
    let var_1 = !vec2<bool>(select(true, true, var_0.c.x <= -2147483647i) || true, false);
    let var_2 = min(u_input.d, ~_wgslsmith_clamp_vec2_i32(var_0.c.zz, u_input.b, ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.x, u_input.d.x), vec2<i32>(2147483647i, 44960i))));
    let var_3 = Struct_1(var_0.a, vec4<bool>(true, countOneBits(abs(var_0.c.x)) < firstTrailingBit(var_0.d), var_0.b.x, true), vec4<i32>(1i, 40131i, reverseBits(-u_input.a), var_2.x) ^ vec4<i32>(27769i, firstTrailingBit(~45416i), 1i, u_input.a ^ _wgslsmith_sub_i32(1i, var_2.x)), -1i);
    var var_4 = -(~_wgslsmith_mult_i32(~u_input.a, i32(-1i) * -6641i));
    return Struct_1(vec3<bool>(true & !(!var_3.b.x), all(!var_3.a), var_1.x), select(!select(vec4<bool>(var_3.a.x, var_0.a.x, false, var_0.b.x), var_0.b, var_3.b.x), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(var_3.b.xy) | (var_0.d <= var_0.d), !any(vec4<bool>(var_1.x, var_3.b.x, false, var_0.a.x))), true), var_0.c, abs(select(u_input.a, _wgslsmith_mod_i32(var_0.d ^ u_input.d.x, i32(-1i) * -1i), !var_0.b.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(select(arg_3, arg_3, any(vec2<bool>(!arg_2.x, arg_0.x))), vec4<bool>(true, false, true, !func_3(func_2(), vec4<u32>(1u, 0u, 0u, arg_1.x) >> (vec4<u32>(u_input.e, u_input.e, u_input.e, 38126u) % vec4<u32>(32u)), Struct_1(arg_2, var_0.b, vec4<i32>(-2147483647i, -69550i, 796i, 2147483647i), u_input.b.x)).x), var_0.c, func_2().c.x);
    var_0 = Struct_1(vec3<bool>(true, var_0.b.x, false), var_0.b, ~(-min(var_0.c, reverseBits(var_0.c))), _wgslsmith_clamp_i32(2147483647i, 1i, _wgslsmith_dot_vec2_i32(var_0.c.yy, var_0.c.zx)) | -30203i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), -1356f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, 369f) - vec2<f32>(764f, -289f))), select(select(var_0.a.yz, arg_2.zy, false), var_0.b.zy, select(var_0.a.zz, vec2<bool>(true, true), arg_2.zz))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1686f + _wgslsmith_f_op_f32(min(768f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - var_1.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-844f, 1533f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, var_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 661f))), !(!vec2<bool>(var_0.b.x, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, 165f)))))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1278f, 961f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, -213f, -178f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, arg_2, arg_2)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_2, -1105f, -439f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1873f, arg_2, 208f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1000f, arg_2))))));
    let var_1 = Struct_1(func_3(Struct_1(arg_0.b.xxz, arg_0.b, countOneBits(select(arg_0.c, vec4<i32>(arg_0.d, -7873i, -1i, u_input.a), vec4<bool>(arg_0.a.x, true, false, arg_0.b.x))), 18123i), abs(~vec4<u32>(20042u, 0u, 65912u, 0u)) & vec4<u32>(arg_1.x, 10772u, 1u, ~20735u), func_1(!func_2().a.xx, ~(~vec2<u32>(7913u, arg_1.x)), arg_0.a, arg_0.b.wyx)), arg_0.b, vec4<i32>(u_input.d.x, ~firstTrailingBit(2147483647i), -_wgslsmith_sub_i32(~u_input.b.x, arg_0.d), _wgslsmith_mod_i32(~firstLeadingBit(arg_0.d), 0i)), (i32(-1i) * -u_input.a) ^ 27581i);
    var var_2 = ~u_input.c.x;
    let var_3 = -759f;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x + arg_2))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 585f) - _wgslsmith_div_f32(331f, var_0.x)), _wgslsmith_f_op_f32(max(500f, -753f)), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(1287f * -316f)), arg_2)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_3, var_3, -1192f))))), select(var_1.a.x, false, !(func_1(vec2<bool>(true, var_1.a.x), vec2<u32>(4294967295u, arg_1.x), vec3<bool>(false, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x)).a.x | arg_0.b.x))));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 9658u, 4294967295u) & vec3<u32>(u_input.e, arg_1.x, u_input.e), ~vec3<u32>(4294967295u, 1u, 0u)), reverseBits(~vec3<u32>(arg_1.x, 64987u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.e, select(arg_3, u_input.e, true)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(37205u, arg_1.x, 0u)), abs(vec3<u32>(arg_3, 41213u, 0u))))), 8011u);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_1(vec2<bool>(true | (692f <= _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-441f - arg_0))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2671f, arg_0)))), countOneBits(~arg_1), !(!func_2().a), func_1(arg_2.wy, abs(_wgslsmith_mult_vec2_u32(~arg_1, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, u_input.e), vec2<u32>(13223u, arg_1.x)))), func_1(vec2<bool>(true, arg_2.x), arg_1, arg_2.ywx, arg_2.yyz).a, vec3<bool>(24859u >= ~arg_1.x, true, !any(arg_2.xy))).a).d;
    let var_1 = Struct_1(func_2().a, vec4<bool>(all(func_3(Struct_1(arg_2.zzw, vec4<bool>(false, false, false, true), arg_3, 17733i), vec4<u32>(u_input.e, arg_1.x, 31850u, arg_1.x), Struct_1(vec3<bool>(false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<i32>(var_0, -14785i, var_0, u_input.c.x), var_0)).xy) & (!arg_2.x && select(false, true, arg_2.x)), arg_0 != arg_0, select(true, false, any(!arg_2.xy)), func_1(func_3(func_2(), vec4<u32>(4294967295u, arg_1.x, u_input.e, 70346u), func_2()).zx, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 2713u) & arg_1, vec2<u32>(u_input.e, 1u)), select(vec3<bool>(false, true, false), !vec3<bool>(arg_2.x, false, arg_2.x), func_2().a.x), vec3<bool>(false, arg_2.x, arg_2.x & arg_2.x)).b.x), vec4<i32>(i32(-1i) * -13098i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(0i, 85016i), _wgslsmith_sub_i32(var_0, arg_3.x)), vec3<i32>(-1i, i32(-1i) * -4468i, _wgslsmith_sub_i32(0i, 19915i))), 45307i, _wgslsmith_mult_i32(20235i, u_input.a)), arg_3.x);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    return Struct_1(var_1.a, vec4<bool>(any(func_3(Struct_1(vec3<bool>(var_1.b.x, arg_2.x, false), vec4<bool>(arg_2.x, true, true, var_1.b.x), vec4<i32>(77250i, -1i, var_2.d, 1i), u_input.a), vec4<u32>(41721u, 0u, 0u, 104336u) << (vec4<u32>(4294967295u, arg_1.x, 0u, u_input.e) % vec4<u32>(32u)), Struct_1(vec3<bool>(var_1.b.x, true, false), var_1.b, arg_3, -2147483647i)).yy), any(!(!var_1.b)), select(64259u < (arg_1.x >> (arg_1.x % 32u)), var_1.b.x, all(!arg_2.xwz)), select(var_2.b.x && (var_2.a.x & arg_2.x), true, true)), arg_3, func_2().c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-1803f + _wgslsmith_f_op_f32(f32(-1f) * -1175f)), ~vec2<u32>(func_4(func_1(vec2<bool>(false, false), vec2<u32>(1u, u_input.e), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<u32>(u_input.e, u_input.e), 1f, ~u_input.e), u_input.e), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), -(select(-vec4<i32>(u_input.a, u_input.d.x, 80345i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 20468i, -49873i), vec4<i32>(u_input.a, u_input.b.x, -1i, u_input.d.x)), u_input.e >= 21886u) ^ ~vec4<i32>(-2147483647i, u_input.d.x, -19793i, u_input.b.x)));
    let var_1 = !vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.a.x);
    let var_2 = max(reverseBits(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, var_0.c.x, var_0.c.x, var_0.d), ~vec4<i32>(u_input.b.x, u_input.c.x, -56466i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, u_input.b.x, 72750i) ^ vec4<i32>(-48565i, u_input.b.x, -14874i, -8649i))), reverseBits(countOneBits(_wgslsmith_sub_vec4_i32(-var_0.c, vec4<i32>(u_input.c.x, var_0.d, u_input.c.x, 1i)))));
    let var_3 = func_2();
    var_0 = Struct_1(vec3<bool>(false, true, 25478u >= u_input.e), vec4<bool>(true, false, var_1.x, u_input.c.x > 1i), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c, var_3.c) & max(min(var_0.c, var_3.c), ~var_0.c), _wgslsmith_mult_vec4_i32(var_0.c, vec4<i32>(func_1(vec2<bool>(true, var_3.b.x), vec2<u32>(u_input.e, 46994u), vec3<bool>(false, true, var_3.a.x), vec3<bool>(var_1.x, false, true)).d, _wgslsmith_mult_i32(1i, 0i), -var_0.d, -2147483647i))), -2147483647i);
    var var_4 = countOneBits(61994u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1252f)), 1384f) + vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-737f, 758f) * _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -613f)))))), var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1283f * 828f), _wgslsmith_f_op_f32(-1000f - 1646f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(-732f - _wgslsmith_f_op_f32(f32(-1f) * -114f)))))));
}

