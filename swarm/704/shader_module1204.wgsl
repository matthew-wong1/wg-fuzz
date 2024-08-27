struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u << ((arg_1.a.x ^ 47628u) % 32u), 1u), firstLeadingBit(_wgslsmith_div_vec2_u32(arg_1.a.yx, vec2<u32>(arg_0.x, arg_1.a.x))) ^ vec2<u32>(arg_1.a.x, 0u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(abs(vec2<u32>(0u, arg_0.x))), abs(vec2<u32>(_wgslsmith_clamp_u32(0u, arg_0.x, 20902u), ~arg_0.x))));
    var var_1 = !all(vec2<bool>(!(u_input.a.x == 0i), all(vec3<bool>(false, true, true))));
    let var_2 = Struct_2(~select(~_wgslsmith_mod_vec3_u32(arg_1.a, vec3<u32>(1u, 4294967295u, 1u)), vec3<u32>(arg_1.a.x, arg_1.a.x ^ var_0.x, ~54425u), any(vec3<bool>(true, false, true))), _wgslsmith_sub_i32(arg_1.b, 77020i));
    var var_3 = countOneBits(vec3<i32>(firstTrailingBit(~1i), u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a | vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(max(arg_1.b, u_input.a.x), _wgslsmith_mult_i32(0i, -21398i)))));
    let var_4 = Struct_3(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))), !vec4<bool>(select(true, true, false), false, true, any(vec2<bool>(true, true))), true), arg_1.a, any(vec4<bool>(true, false, false, select(true, true, all(vec4<bool>(false, true, false, true))))), 2147483647i, ~(~1u));
    return vec3<bool>(true, any(var_4.a), var_4.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec3<u32> {
    let var_0 = ((vec2<u32>(~22570u, 20441u) & ~(~arg_2.a.yz)) << (arg_2.a.yx % vec2<u32>(32u))) | vec2<u32>(arg_2.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, arg_2.a.x) & ~arg_2.a.x, arg_2.a.x));
    var var_1 = Struct_3(!(!select(select(vec4<bool>(true, arg_1.d.x, true, false), vec4<bool>(false, true, true, arg_1.d.x), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x)), !vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x), !vec4<bool>(true, true, arg_1.d.x, false))), ~arg_2.a, func_3(arg_2.a.xy ^ select(vec2<u32>(25681u, arg_2.a.x), var_0, vec2<bool>(arg_1.d.x, arg_1.d.x)), Struct_2(vec3<u32>(arg_2.a.x, 1u, arg_2.a.x), arg_1.b)).x != (_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, 708f) - _wgslsmith_f_op_f32(-arg_0)) <= _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-1059f, arg_1.c)))), arg_2.b, 26625u);
    let var_2 = vec3<bool>(all(vec3<bool>(!all(var_1.a.xwz), arg_1.d.x, select(arg_1.d.x, u_input.a.x < arg_2.b, arg_1.d.x))), var_1.a.x | var_1.c, true);
    var_1 = Struct_3(!select(select(vec4<bool>(arg_1.d.x, var_1.c, false, arg_1.d.x), var_1.a, any(var_2)), select(select(vec4<bool>(false, true, var_1.c, false), vec4<bool>(var_2.x, arg_1.d.x, var_1.c, true), false), vec4<bool>(true, false, true, var_2.x), vec4<bool>(false, false, arg_1.d.x, arg_1.d.x)), !(arg_2.a.x >= 1u)), var_1.b, any(arg_1.d), 1i, ~var_0.x);
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x * arg_3), _wgslsmith_f_op_f32(max(1795f, -235f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, -317f), _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(arg_1.a.x, arg_3))))))), -arg_2.b, -1000f, arg_1.d);
    return _wgslsmith_sub_vec3_u32(arg_2.a, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 93219u), firstTrailingBit(vec3<u32>(var_1.e, arg_2.a.x, 4294967295u))), ~arg_2.a), 1u, 0u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_3(vec4<bool>(!(max(43961i, 2147483647i) == reverseBits(u_input.a.x)), !(any(vec3<bool>(false, false, false)) | all(vec3<bool>(false, true, false))), any(vec4<bool>(false, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), -2147483647i > u_input.a.x))), func_4(-1135f, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(877f, -674f))), firstLeadingBit(min(-2147483647i, -82811i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -870f) - _wgslsmith_f_op_f32(floor(-315f))), func_3(vec2<u32>(arg_0.x, 54575u) | vec2<u32>(arg_0.x, 60232u), Struct_2(vec3<u32>(arg_0.x, 27669u, 0u), u_input.a.x))), Struct_2(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), vec3<u32>(1u, arg_0.x, 50170u) << (vec3<u32>(72427u, arg_0.x, arg_0.x) % vec3<u32>(32u))), 25941i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(550f)), -230f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-693f * 241f))))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), func_3(~vec2<u32>(arg_0.x, 4294967295u), Struct_2(vec3<u32>(0u, arg_0.x, arg_0.x), -15487i)).x)), min(-countOneBits(_wgslsmith_clamp_i32(31787i, -2147483647i, u_input.a.x)), u_input.a.x), ~(~reverseBits(~arg_0.x)));
    var var_1 = Struct_2(var_0.b, u_input.a.x);
    var_1 = Struct_2(firstTrailingBit(select(~var_1.a, ~reverseBits(vec3<u32>(1u, var_1.a.x, 4294967295u)), any(vec4<bool>(var_0.c, var_0.c, var_0.c, false)))), 7038i);
    var var_2 = ~countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, 4294967295u) << (var_1.a.xz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.x, 55908u), vec2<u32>(var_1.a.x, arg_0.x))));
    let var_3 = Struct_3(vec4<bool>(all(func_3(~var_0.b.xy, Struct_2(var_0.b, -854i)).zz), true, true, true), ~var_0.b, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 6100u, var_0.b.x), vec4<u32>(21766u, var_1.a.x, 1u, 82623u)), ~var_1.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x | 4294967295u, 1u << (1u % 32u), var_1.a.x), ~(vec3<u32>(1u, arg_0.x, 31840u) & vec3<u32>(62042u, 33408u, 1u))), 62632i, 57369u);
    return Struct_1(vec2<f32>(889f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-786f, -565f))))), ~_wgslsmith_mod_i32(-17525i, i32(-1i) * -28797i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(984f)))), vec3<bool>(all(select(var_3.a, vec4<bool>(true, var_3.a.x, true, var_0.c), !var_0.a)), !(~arg_0.x <= ~var_1.a.x), true));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = Struct_2(~((~arg_3.b & arg_3.b) << (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3.b, arg_3.b), vec3<u32>(arg_3.b.x, arg_3.b.x, arg_0.x)) % vec3<u32>(32u))), ~(-(~arg_2.b)) ^ arg_2.b);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(315f, 554f, -212f, -1942f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.a.x, _wgslsmith_f_op_f32(trunc(-1257f)), func_2(var_0.a.xz).c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.c))))));
    var_1 = Struct_2(select(func_4(var_2.x, func_2(_wgslsmith_div_vec2_u32(vec2<u32>(2626u, 40296u), arg_0)), Struct_2(~vec3<u32>(0u, 3418u, 0u), _wgslsmith_mult_i32(8748i, 0i)), _wgslsmith_f_op_f32(round(-249f))), var_1.a, vec3<bool>(false, false, !(!arg_3.a.x))), u_input.a.x);
    var_1 = var_0;
    return _wgslsmith_f_op_vec2_f32(select(var_2.yz, arg_2.a, arg_3.a.x));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_i32(-(u_input.a.x | -18415i), select(2147483647i, _wgslsmith_clamp_i32(u_input.a.x, countOneBits(~1i), -2147483647i), true), 49922i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-2889f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + -671f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 1163f), vec2<f32>(var_1.x, var_1.x))))) + _wgslsmith_f_op_vec2_f32(func_5(~min(vec2<u32>(arg_0, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(10663u, 67972u), vec2<u32>(8400u, arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f))), ~var_0, var_1.x, vec3<bool>(true, true, true)), func_2(vec2<u32>(~arg_0, _wgslsmith_mod_u32(54155u, 4294967295u))), Struct_3(vec4<bool>(select(true, false, true), true, true, true), ~vec3<u32>(arg_0, 4294967295u, 40268u) | (vec3<u32>(0u, arg_0, arg_0) | vec3<u32>(arg_0, 55546u, arg_0)), true, -_wgslsmith_mod_i32(u_input.a.x, -1i), _wgslsmith_div_u32(_wgslsmith_clamp_u32(23380u, arg_0, arg_0), arg_0)))));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(340f * -3561f), var_1.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -912f) + vec2<f32>(var_1.x, 1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1761f, -657f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(func_2(~vec2<u32>(96381u, arg_0) & ~vec2<u32>(21686u, arg_0)).a, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -2205f, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1069f - -859f), 894f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1693f, -521f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1446f) - vec2<f32>(398f, -663f)))))))));
    return Struct_3(vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, false && !func_2(vec2<u32>(arg_0, arg_0)).d.x, true), select(firstTrailingBit(select(vec3<u32>(1u, arg_0, 1u), ~vec3<u32>(1u, arg_0, 0u), u_input.a.x > -22923i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(52730u, 1u, arg_0), vec3<u32>(1u, arg_0, 10032u)) ^ _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(arg_0, 28168u, arg_0)), select(vec3<u32>(102796u, 1u, 0u), vec3<u32>(74645u, 15707u, 4294967295u), vec3<bool>(true, false, false))), true), false, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, u_input.a.x, var_0)), _wgslsmith_mult_vec3_i32(vec3<i32>(9477i, 0i, u_input.a.x), vec3<i32>(-6686i, u_input.a.x, 23450i)))), _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(15565i, var_0, -10276i)), -vec3<i32>(-13067i, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(21217i, -20360i, var_0), vec3<i32>(1i, var_0, u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x)))), arg_0 ^ arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(26178u);
    var_0 = func_1(53121u);
    var_0 = Struct_3(vec4<bool>(var_0.c, !func_3(var_0.b.yy, Struct_2(var_0.b, u_input.a.x)).x, false, var_0.c), firstTrailingBit(~reverseBits(func_4(918f, Struct_1(vec2<f32>(-2526f, -1546f), var_0.d, -1564f, vec3<bool>(var_0.c, var_0.c, true)), Struct_2(vec3<u32>(var_0.b.x, 70510u, 43075u), u_input.a.x), 636f))), all(var_0.a.zy), _wgslsmith_div_i32(i32(-1i) * -27178i, u_input.a.x), select(~_wgslsmith_mult_u32(1u, var_0.e), 4294967295u, var_0.c) | var_0.b.x);
    var_0 = func_1(~countOneBits(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x) >> ((var_0.e << (36440u % 32u)) % 32u)));
    var_0 = func_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~4294967295u, 22128u << (var_0.b.x % 32u)), ~vec4<u32>(var_0.b.x, var_0.e, var_0.b.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-u_input.a.x, -33942i), reverseBits(-(~firstTrailingBit(vec4<i32>(u_input.a.x, var_0.d, 10116i, -2147483647i)))), var_0.d);
}

