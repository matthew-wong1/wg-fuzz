struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(!select(true, false, true) | (!any(vec4<bool>(false, false, false, false)) & true), u_input.c, ~u_input.a.yx, reverseBits(abs(vec4<u32>(u_input.b.x << (u_input.a.x % 32u), u_input.a.x, _wgslsmith_clamp_u32(0u, 1u, 39610u), _wgslsmith_div_u32(25960u, u_input.b.x)))), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-7483i, 21470i, 2147483647i)) << (vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), abs(u_input.c), 1u) % vec3<u32>(32u)), vec3<i32>(-8082i, _wgslsmith_div_i32(-2147483647i, 20946i) << (_wgslsmith_clamp_u32(0u, 4294967295u, 7231u) % 32u), 1i)));
    var var_1 = var_0.d.wy;
    var var_2 = abs(abs(-_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.e, var_0.e, var_0.e, var_0.e)), ~vec4<i32>(-72331i, var_0.e, var_0.e, 0i), abs(vec4<i32>(var_0.e, 774i, var_0.e, -14896i)))));
    var var_3 = var_0;
    let var_4 = !select(select(vec3<bool>(all(vec3<bool>(var_3.a, var_3.a, var_3.a)), any(vec4<bool>(true, true, false, false)), var_0.a), !(!vec3<bool>(var_0.a, true, false)), select(select(vec3<bool>(false, var_3.a, var_0.a), vec3<bool>(true, false, true), vec3<bool>(var_3.a, false, var_0.a)), vec3<bool>(var_3.a, var_3.a, var_0.a), true)), vec3<bool>(var_3.a, false, var_0.a), select(!(!vec3<bool>(var_3.a, var_3.a, var_0.a)), !select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_3.a, true, var_3.a)), vec3<bool>(all(vec2<bool>(var_3.a, var_0.a)), var_0.a, false)));
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + 288f) - _wgslsmith_f_op_f32(func_3(338f))), -1000f)), 281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1886f * 546f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-161f * 2036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f * -1033f)), _wgslsmith_f_op_f32(f32(-1f) * -580f)))), !select(vec3<bool>(arg_0.a, true, true), select(!vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !vec3<bool>(true, arg_1.x, true)), select(select(vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, false)), vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_0.a, false, arg_3.a)))));
    var var_1 = select(1u, 0u, !arg_0.a) < ~u_input.b.x;
    var_1 = all(vec2<bool>(any(select(!arg_1, arg_1, arg_1)), false));
    return _wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(-1560f, -672f, 1000f), select(select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_1.x, true, true)), select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_3.a), false)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~select(~34260u, min(u_input.b.x, 1u), true) | u_input.c;
    let var_1 = u_input.a.zy;
    let var_2 = -vec3<i32>(abs(arg_1.x), 1i, ~2147483647i);
    let var_3 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(~(~4294967295u), ~(~var_0)), abs(~var_0));
    var var_4 = Struct_1(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)) && !select(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true), var_0, u_input.b.zy, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u) ^ 85227u, _wgslsmith_mod_u32(41449u, 60818u), reverseBits(_wgslsmith_add_u32(var_1.x, u_input.b.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 16421u), vec3<u32>(var_3, 38837u, var_0))), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(20403u, 0u, var_3, 1u), vec4<u32>(5064u, var_1.x, u_input.c, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, var_0, 102018u) ^ vec4<u32>(var_3, 48803u, 36562u, var_0), ~vec4<u32>(0u, u_input.c, var_3, 21044u), ~vec4<u32>(109437u, var_3, var_0, u_input.b.x)))), _wgslsmith_clamp_i32(46633i ^ arg_1.x, ~(~1i), _wgslsmith_clamp_i32(arg_1.x, 16714i | _wgslsmith_mult_i32(var_2.x, var_2.x), arg_1.x)));
    return Struct_1(var_4.a, var_1.x, select(vec2<u32>(~_wgslsmith_mult_u32(29952u, var_4.b), ~abs(0u)), vec2<u32>(countOneBits(0u), ~9651u), all(!(!vec2<bool>(true, var_4.a)))), ~max(max(min(vec4<u32>(73222u, 28553u, u_input.c, var_0), var_4.d), vec4<u32>(0u, 19416u, 1u, 13547u)), _wgslsmith_div_vec4_u32(var_4.d, var_4.d) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 1u, var_1.x, var_4.d.x), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.c)) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(arg_1, select(vec2<i32>(~(-11454i), 1i), arg_1, var_4.a)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(vec3<f32>(arg_1.x, -560f, -561f), -_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_0.e), vec2<i32>(2147483647i, -2147483647i)) ^ countOneBits(vec2<i32>(-1i, arg_0.e)), vec2<i32>(2147483647i, firstLeadingBit(arg_2.e)), vec2<i32>(arg_0.e, arg_2.e << (arg_0.b % 32u))));
    var var_1 = select(vec3<i32>(~reverseBits(min(var_0.e, arg_0.e)), -_wgslsmith_add_i32(_wgslsmith_sub_i32(31945i, arg_0.e), var_0.e), i32(-1i) * -49924i), vec3<i32>(reverseBits(~arg_0.e), arg_2.e, -2340i), !select(!(!vec3<bool>(arg_2.a, true, var_0.a)), select(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(false, false, arg_0.a), true), !vec3<bool>(true, var_0.a, true), vec3<bool>(false, var_0.a, true)), true));
    var_1 = _wgslsmith_sub_vec3_i32(abs(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(21178i, var_0.e, 2147483647i), vec3<i32>(var_1.x, 26774i, -28407i)))) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_0.e, -29301i, var_0.e), _wgslsmith_div_vec3_i32(-vec3<i32>(21817i, var_1.x, arg_0.e), -vec3<i32>(-7443i, 2147483647i, arg_2.e))), firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e, 0i, var_0.e), vec3<i32>(arg_0.e, arg_0.e, arg_2.e)), vec3<i32>(arg_2.e, var_0.e, -62761i))) << (vec3<u32>(var_0.d.x, select(~70682u, 4294967295u, any(vec2<bool>(arg_2.a, arg_2.a))), 4294967295u) % vec3<u32>(32u)));
    let var_2 = vec2<bool>(arg_2.a, all(select(select(vec4<bool>(var_0.a, true, arg_2.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), true), vec4<bool>(arg_0.a, var_0.a, false, arg_0.a), !vec4<bool>(var_0.a, true, arg_0.a, arg_0.a))) & !((10767u >> (var_0.b % 32u)) > (u_input.b.x << (3752u % 32u))));
    var_1 = ~(~(~(~vec3<i32>(19569i, var_0.e, -26761i))));
    return func_4(vec3<f32>(_wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(select(203f, arg_1.x, true))), _wgslsmith_f_op_f32(1f - -1751f), _wgslsmith_f_op_f32(-arg_1.x)), (-min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_0.e, var_0.e)) | vec2<i32>(5817i, i32(-1i) * -1049i)) << (u_input.b.yy % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_2, u_input.a.x, vec2<u32>(u_input.c, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 4294967295u), arg_0), vec2<bool>(arg_2, false), arg_0, Struct_1(arg_2, u_input.a.x, u_input.b.zx, vec4<u32>(0u, u_input.b.x, 10317u, u_input.a.x), 5682i))))), firstLeadingBit(select(reverseBits(vec2<i32>(arg_0, -23789i)), vec2<i32>(-1i, arg_1), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(427f, -2060f) + vec2<f32>(-545f, 355f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, -919f) + vec2<f32>(-453f, -189f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -329f) * vec2<f32>(683f, -384f)))))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-967f * -406f))), _wgslsmith_sub_vec2_i32(vec2<i32>(-68401i, -12434i) ^ abs(vec2<i32>(arg_0, arg_1)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_1), vec2<i32>(1i, arg_1)))));
    var var_1 = var_0;
    var_1 = Struct_1(arg_2, var_1.b, var_0.c, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(func_4(vec3<f32>(897f, -466f, 360f), vec2<i32>(arg_1, -6680i)).d, firstLeadingBit(vec4<u32>(var_1.b, var_0.b, u_input.c, var_0.c.x))), ~var_1.d), ~var_0.e);
    let var_2 = var_0;
    var_1 = Struct_1(all(select(vec3<bool>(any(vec3<bool>(false, var_2.a, var_1.a)), false || arg_2, arg_2), select(select(vec3<bool>(false, false, var_2.a), vec3<bool>(false, true, true), vec3<bool>(true, var_1.a, true)), vec3<bool>(var_0.a, var_1.a, arg_2), true), var_0.a)), 83842u, ~(~vec2<u32>(var_1.c.x, 1u)) ^ var_1.d.zz, var_1.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(var_1.e, -1i)), select(~vec2<i32>(-5003i, var_2.e), vec2<i32>(33519i, -2147483647i), arg_2)), _wgslsmith_add_i32(2147483647i, 0i)));
    return func_5(var_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(507f, 102f))) * 1f), _wgslsmith_f_op_f32(-847f * _wgslsmith_div_f32(-1780f, _wgslsmith_f_op_f32(min(-288f, -1200f))))), func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -663f), 1f, -1701f), vec2<i32>(25604i, arg_1) | select(vec2<i32>(9443i, var_2.e), vec2<i32>(-1i, 2147483647i), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-158f, 137f), vec2<f32>(1002f, 305f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(508f, -282f), vec2<f32>(1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(798f, 2263f)), var_0.a))), func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2623f, 730f, -176f)))), abs(reverseBits(vec2<i32>(-2147483647i, var_2.e)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-abs(-(~20635i)), -1i, !(any(vec2<bool>(true, false)) && false));
    var var_1 = Struct_1(any(vec4<bool>(all(vec2<bool>(var_0, var_0)), !(var_0 & var_0), true, var_0 | true)), ~(~(~select(0u, 1u, var_0))), _wgslsmith_sub_vec2_u32(~func_4(vec3<f32>(1308f, -540f, 602f), min(vec2<i32>(39417i, 1i), vec2<i32>(1i, 7013i))).c, select(vec2<u32>(func_4(vec3<f32>(-389f, -291f, -331f), vec2<i32>(0i, 2147483647i)).d.x, u_input.b.x), u_input.b.zy, vec2<bool>(select(true, var_0, var_0), true))), vec4<u32>(u_input.a.x, ~_wgslsmith_mod_u32(u_input.c << (u_input.b.x % 32u), 0u << (1u % 32u)), u_input.a.x, ~0u), -11427i);
    var_1 = func_4(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(272f)) * _wgslsmith_f_op_f32(step(2041f, -162f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(abs(243f)), func_1(5011i, var_1.e, false))))), max(vec2<i32>(-37594i, ~var_1.e) ^ vec2<i32>(1i, _wgslsmith_sub_i32(var_1.e, -1i)), firstLeadingBit(firstLeadingBit(vec2<i32>(0i, -1i)))));
    var var_2 = func_5(Struct_1(var_0, 20019u, var_1.d.yy, var_1.d, 2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(185f, 748f) * vec2<f32>(-1143f, 509f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(258f, 262f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, -181f)), var_1.e < 31712i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(562f, 2471f) - vec2<f32>(-784f, 1000f))) + vec2<f32>(_wgslsmith_f_op_f32(1000f + -155f), _wgslsmith_f_op_f32(1548f + 1897f))))), Struct_1(!func_1(~var_1.e, var_1.e ^ -2147483647i, var_1.a), u_input.b.x, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b, 4294967295u), vec2<u32>(66234u, var_1.c.x) >> (vec2<u32>(var_1.b, var_1.c.x) % vec2<u32>(32u))), _wgslsmith_div_vec4_u32(var_1.d << ((var_1.d | var_1.d) % vec4<u32>(32u)), ~var_1.d), -_wgslsmith_div_i32(-var_1.e, min(54350i, var_1.e))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_2(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-101f, 1061f, _wgslsmith_f_op_f32(min(2043f, 1205f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, -101f, -1000f)) - vec3<f32>(1475f, 884f, -557f)), var_1.a)), abs(abs(vec2<i32>(2147483647i, var_2.e)))), select(select(!(!vec2<bool>(var_1.a, true)), !select(vec2<bool>(false, var_2.a), vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, true)), select(select(vec2<bool>(true, false), vec2<bool>(var_2.a, false), var_2.a), vec2<bool>(false, false), vec2<bool>(var_1.a, true))), !vec2<bool>(false, func_1(-7200i, var_1.e, var_2.a)), 1i <= ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.e, var_1.e, var_2.e), vec4<i32>(var_2.e, var_2.e, var_2.e, 0i))), min(var_2.e, countOneBits(_wgslsmith_mod_i32(firstTrailingBit(var_2.e), -var_2.e))), func_5(Struct_1(all(vec4<bool>(true, true, true, true)), 4342u, var_1.d.zz, ~(vec4<u32>(var_1.d.x, var_2.b, 1278u, var_2.b) >> (vec4<u32>(var_2.c.x, 1u, var_1.c.x, 54829u) % vec4<u32>(32u))), -(-19070i >> (var_1.b % 32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -173f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1508f, 573f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, -478f)))))), Struct_1(var_2.a, var_2.c.x, var_1.c, var_1.d, var_2.e)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1111f, var_3))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), var_1.d.yyz);
}

