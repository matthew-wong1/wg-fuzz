struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(201f, _wgslsmith_f_op_f32(abs(-1013f)))))));
    var var_1 = _wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, arg_1.x, ~arg_1.x ^ 0u), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(28125u, 26092u, u_input.b.x)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_0, vec3<u32>(arg_0.x, 1674u, u_input.b.x)), ~vec3<u32>(8080u, arg_0.x, u_input.a)))));
    var_1 = arg_0.x;
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.x)), 500f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -371f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(256f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), var_0.x));
    return !(!vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(arg_2, arg_2, arg_2), false)), arg_2, true));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = any(!func_3(vec3<u32>(arg_0 | 63148u, ~30274u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, arg_0))), vec3<u32>(u_input.b.x, ~1388u, u_input.b.x), arg_2.c.b));
    var_0 = (false & select(true, false, true)) && func_3(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(42033u, 1u), firstLeadingBit(141u), u_input.a)), firstTrailingBit(u_input.b.zzz), !(!(-797f == arg_1.a.a.x))).x;
    var var_1 = arg_2.c;
    var_1 = arg_2.c;
    var_1 = arg_1.a;
    return arg_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = countOneBits(abs(abs(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(48476i, u_input.c.x)))));
    var_0 = (u_input.c.wz << (u_input.b.wy % vec2<u32>(32u))) << (u_input.b.zz % vec2<u32>(32u));
    var var_1 = _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.d.x << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), vec2<u32>(1u, 24922u))) % 32u));
    var var_2 = u_input.b.ywy;
    var var_3 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1017f, 697f), vec2<f32>(-937f, 853f)) - vec2<f32>(arg_0.a.x, -1552f))), any(select(vec4<bool>(arg_1.b, false, arg_0.c.x, arg_1.c.x), vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(false, arg_0.b, arg_0.b, true))) || ((arg_1.c.x || arg_0.c.x) & any(arg_0.c)), vec2<bool>(_wgslsmith_f_op_f32(step(-844f, arg_0.a.x)) != _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.c.x)), func_2(1u, Struct_2(Struct_1(arg_1.a, true, !vec2<bool>(arg_0.b, false)), func_2(~var_2.x, Struct_2(Struct_1(arg_1.a, false, vec2<bool>(false, arg_0.c.x)), Struct_1(vec2<f32>(329f, 786f), arg_0.c.x, vec2<bool>(arg_1.b, true)), arg_0, vec2<i32>(u_input.c.x, -5527i)), Struct_2(Struct_1(arg_0.a, arg_0.c.x, vec2<bool>(false, true)), Struct_1(arg_0.a, arg_1.b, arg_0.c), Struct_1(arg_0.a, arg_1.b, arg_1.c), u_input.c.ww)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-908f, arg_0.a.x) - vec2<f32>(arg_0.a.x, arg_1.a.x)), true, vec2<bool>(arg_0.b, arg_1.c.x)), ~(~vec2<i32>(-4155i, u_input.c.x))), Struct_2(arg_0, arg_0, func_2(u_input.d.x, Struct_2(Struct_1(vec2<f32>(153f, -1196f), arg_1.c.x, vec2<bool>(arg_0.c.x, false)), arg_1, arg_1, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_2(arg_1, arg_1, Struct_1(vec2<f32>(-191f, -503f), arg_1.c.x, vec2<bool>(true, false)), u_input.c.wz)), vec2<i32>(abs(61134i), -41351i))), min(vec2<i32>(_wgslsmith_mod_i32(var_0.x ^ 0i, i32(-1i) * -6373i), var_0.x), -abs(-vec2<i32>(14083i, u_input.c.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.c.zxy, u_input.c.ywx);
    let var_1 = false;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1406f, arg_0.x) * vec2<f32>(-958f, arg_1.a.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, arg_0.x) + vec2<f32>(arg_0.x, arg_0.x)))), ((u_input.d.x >= 63202u) || arg_1.c.x) && (!var_1 || arg_1.c.x), func_3(select(abs(vec3<u32>(u_input.a, 28577u, 31448u)), ~u_input.b.wwx, select(vec3<bool>(false, arg_1.c.x, true), vec3<bool>(arg_1.c.x, var_1, var_1), var_1)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.xzz, u_input.b.zxx), u_input.b.xzx), false).xz), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_1.a.x, 578f)))))), false, func_2(~u_input.a, Struct_2(func_2(u_input.b.x, Struct_2(arg_1, Struct_1(vec2<f32>(459f, -244f), var_1, arg_1.c), Struct_1(arg_1.a, false, vec2<bool>(false, false)), u_input.c.xx), Struct_2(Struct_1(vec2<f32>(816f, 593f), false, vec2<bool>(var_1, true)), arg_1, Struct_1(arg_0, var_1, vec2<bool>(true, true)), vec2<i32>(u_input.c.x, 2147483647i))), arg_1, Struct_1(arg_1.a, var_1, vec2<bool>(arg_1.c.x, var_1)), vec2<i32>(1i, u_input.c.x)), Struct_2(Struct_1(vec2<f32>(-1776f, -429f), arg_1.b, vec2<bool>(var_1, false)), func_2(42225u, Struct_2(Struct_1(vec2<f32>(714f, -106f), arg_1.c.x, vec2<bool>(true, false)), Struct_1(vec2<f32>(arg_1.a.x, -287f), arg_1.c.x, arg_1.c), Struct_1(arg_1.a, arg_1.c.x, arg_1.c), u_input.c.xw), Struct_2(Struct_1(arg_1.a, true, vec2<bool>(var_1, true)), arg_1, arg_1, u_input.c.yw)), arg_1, _wgslsmith_div_vec2_i32(u_input.c.xw, vec2<i32>(2147483647i, 1i)))).c), arg_1, _wgslsmith_div_vec2_i32(~select(_wgslsmith_div_vec2_i32(u_input.c.yx, vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-15198i, -4808i), u_input.c.xz), true), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 601i), -vec2<i32>(u_input.c.x, u_input.c.x)))));
    var var_3 = ~u_input.a;
    var_0 = 1i;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-var_2.c.a.x)), (u_input.b.x >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, u_input.a, u_input.a), abs(u_input.b.ywy)) % 32u)) < _wgslsmith_div_u32(u_input.b.x, 0u), func_3(vec3<u32>(1u, ~_wgslsmith_mult_u32(u_input.d.x, u_input.a), 1u & u_input.a), vec3<u32>(0u, 24858u, abs(u_input.d.x)), select(!(u_input.c.x > var_2.d.x), all(!vec2<bool>(var_1, true)), true)).zy);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(4294967295u <= _wgslsmith_sub_u32(u_input.b.x, ~u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(step(-1912f, -808f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-970f))))));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(-1595f, -461f))), _wgslsmith_f_op_f32(func_4(func_2(u_input.d.x, Struct_2(Struct_1(vec2<f32>(220f, 1406f), false, var_0), Struct_1(vec2<f32>(268f, -1080f), true, var_0), Struct_1(vec2<f32>(544f, -1000f), var_0.x, var_0), u_input.c.wz), Struct_2(Struct_1(vec2<f32>(947f, -905f), var_0.x, vec2<bool>(var_0.x, true)), Struct_1(vec2<f32>(190f, -1735f), var_0.x, var_0), Struct_1(vec2<f32>(340f, -1850f), var_0.x, vec2<bool>(var_0.x, var_0.x)), u_input.c.yx)), func_2(u_input.a, Struct_2(Struct_1(vec2<f32>(-243f, 1243f), var_0.x, var_0), Struct_1(vec2<f32>(-157f, 1000f), true, vec2<bool>(true, var_0.x)), Struct_1(vec2<f32>(-1174f, -2284f), var_0.x, vec2<bool>(var_0.x, true)), vec2<i32>(1i, 28904i)), Struct_2(Struct_1(vec2<f32>(665f, 113f), var_0.x, var_0), Struct_1(vec2<f32>(-765f, 293f), var_0.x, var_0), Struct_1(vec2<f32>(-1000f, -791f), true, var_0), u_input.c.zz)))))), func_2(firstLeadingBit(firstLeadingBit(4294967295u)), Struct_2(func_2(firstTrailingBit(16282u), Struct_2(Struct_1(vec2<f32>(1283f, -1653f), var_0.x, var_0), Struct_1(vec2<f32>(-1940f, 689f), true, var_0), Struct_1(vec2<f32>(138f, -1401f), false, var_0), u_input.c.xx), Struct_2(Struct_1(vec2<f32>(1302f, 2605f), true, var_0), Struct_1(vec2<f32>(-847f, -1150f), true, vec2<bool>(var_0.x, false)), Struct_1(vec2<f32>(-1214f, 1000f), var_0.x, var_0), u_input.c.wz)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 221f) + vec2<f32>(-258f, -1640f)), select(false, var_0.x, var_0.x), func_3(vec3<u32>(146u, u_input.a, u_input.a), vec3<u32>(1u, u_input.b.x, u_input.b.x), var_0.x).xz), func_2(u_input.d.x, Struct_2(Struct_1(vec2<f32>(162f, 789f), var_0.x, var_0), Struct_1(vec2<f32>(942f, 1000f), var_0.x, vec2<bool>(var_0.x, true)), Struct_1(vec2<f32>(1660f, 632f), true, var_0), vec2<i32>(-17985i, -2147483647i)), Struct_2(Struct_1(vec2<f32>(-1639f, -1056f), false, var_0), Struct_1(vec2<f32>(305f, -985f), var_0.x, var_0), Struct_1(vec2<f32>(145f, 740f), var_0.x, var_0), vec2<i32>(4365i, 0i))), select(-u_input.c.yz, vec2<i32>(-2147483647i, -1i), var_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1124f, 652f) + vec2<f32>(-347f, 795f)), var_0.x, !var_0), func_2(~u_input.d.x, Struct_2(Struct_1(vec2<f32>(1204f, -271f), var_0.x, vec2<bool>(var_0.x, true)), Struct_1(vec2<f32>(1509f, -1000f), var_0.x, var_0), Struct_1(vec2<f32>(2529f, -369f), true, vec2<bool>(false, var_0.x)), vec2<i32>(32321i, 1i)), Struct_2(Struct_1(vec2<f32>(1000f, 505f), true, vec2<bool>(false, true)), Struct_1(vec2<f32>(-170f, 1000f), var_0.x, var_0), Struct_1(vec2<f32>(565f, -820f), var_0.x, var_0), u_input.c.zw)), Struct_1(vec2<f32>(157f, 563f), var_0.x, func_3(vec3<u32>(1u, u_input.a, u_input.b.x), u_input.b.zxz, false).yx), abs(vec2<i32>(-7301i, 1i)))));
    let var_2 = 20934u;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(984f * 2067f), _wgslsmith_f_op_f32(-var_1.a.x))), true, func_3(vec3<u32>(var_2 & var_2, var_2, ~u_input.d.x), vec3<u32>(_wgslsmith_mult_u32(var_2, 4294967295u), 31312u, u_input.d.x), _wgslsmith_div_i32(u_input.c.x, -1i) < firstLeadingBit(1i)).yz), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1666f) * vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), 917f)), !((false || var_0.x) || var_0.x), var_1.c), func_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-171f, var_1.a.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(650f, var_1.a.x), var_1.a)))), Struct_1(var_1.a, var_1.c.x, !vec2<bool>(false, var_1.c.x))), (vec2<i32>(0i, u_input.c.x) & vec2<i32>(-u_input.c.x, -2147483647i)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(21228u, 5713u)), vec2<u32>(u_input.a, var_2)), _wgslsmith_mod_vec2_u32(vec2<u32>(4556u, 4294967295u), ~vec2<u32>(1u, u_input.b.x))) % vec2<u32>(32u)));
    var var_4 = !var_3.a.c.x;
    return func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_1.a.x) * var_3.a.a.x), _wgslsmith_f_op_f32(-var_1.a.x)))), func_5(_wgslsmith_f_op_vec2_f32(abs(var_3.a.a)), var_3.c));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1, func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<f32>(arg_1.a.x, arg_0.x))), _wgslsmith_div_vec2_f32(arg_0.xx, vec2<f32>(arg_0.x, 636f))))), arg_1.c.x, !vec2<bool>(true & arg_1.c.x, true)), vec2<i32>(countOneBits(2147483647i), countOneBits(u_input.c.x)));
    var var_1 = u_input.c.x;
    let var_2 = arg_1;
    var var_3 = any(vec3<bool>(true | (_wgslsmith_f_op_f32(-1226f * var_2.a.x) == 2259f), !arg_1.c.x, !(!func_3(vec3<u32>(18698u, u_input.a, 3004u), vec3<u32>(u_input.a, 4294967295u, u_input.d.x), arg_1.c.x).x)));
    let var_4 = _wgslsmith_div_vec4_i32(-u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, reverseBits(vec4<i32>(21490i, var_0.d.x >> (u_input.a % 32u), 1i, _wgslsmith_sub_i32(-2147483647i, var_0.d.x))), vec4<i32>(-1i, select(var_0.d.x, var_0.d.x, select(true, false, false)), var_0.d.x, -(var_0.d.x >> (12271u % 32u)))));
    return var_0.b;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(vec2<i32>(max(abs(firstTrailingBit(u_input.c.x)), 1i), -(~(-u_input.c.x))));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(floor(arg_0.a)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), arg_0.a.x))), arg_0).a.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))), func_2(39159u, Struct_2(func_5(vec2<f32>(arg_0.a.x, 162f), func_5(vec2<f32>(1939f, var_1), arg_0)), Struct_1(vec2<f32>(1494f, arg_0.a.x), true, vec2<bool>(arg_0.c.x, arg_0.b)), arg_0, u_input.c.yz), Struct_2(Struct_1(arg_0.a, all(vec4<bool>(false, false, true, arg_0.b)), select(vec2<bool>(arg_0.c.x, true), arg_0.c, vec2<bool>(true, true))), arg_0, Struct_1(arg_0.a, !arg_0.b, arg_0.c), firstTrailingBit(-u_input.c.xy))).a.x);
    let var_3 = ~vec2<u32>(u_input.a, 1u);
    var_0 = ~max(vec2<i32>(-25564i, ~firstLeadingBit(var_0.x)), vec2<i32>(min(_wgslsmith_mult_i32(var_0.x, u_input.c.x), var_0.x), -_wgslsmith_add_i32(-24647i, var_0.x)));
    return func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), arg_0.a.x) - arg_0.a))), func_5(arg_0.a, Struct_1(arg_0.a, !any(vec4<bool>(true, arg_0.b, false, false)), arg_0.c)));
}

fn func_8(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = -23506i;
    let var_1 = _wgslsmith_sub_vec3_u32(min(vec3<u32>(abs(_wgslsmith_add_u32(u_input.a, u_input.b.x)), arg_1, firstLeadingBit(firstLeadingBit(u_input.a))), (vec3<u32>(u_input.b.x, u_input.d.x, 4294967295u) | u_input.b.zzz) >> (countOneBits(vec3<u32>(arg_1, u_input.a, u_input.d.x)) % vec3<u32>(32u))), reverseBits(u_input.b.zyx));
    return Struct_2(Struct_1(vec2<f32>(-1819f, -1108f), false, vec2<bool>(true, func_3(vec3<u32>(0u, arg_1, 122140u), u_input.b.yzw, arg_2.b).x)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.zw), func_2(46024u, Struct_2(Struct_1(vec2<f32>(-1833f, arg_2.a.x), arg_2.b, arg_2.c), func_1(), arg_2, countOneBits(u_input.c.yz)), Struct_2(func_6(arg_0.wyy, arg_2), func_7(Struct_1(arg_2.a, arg_2.c.x, arg_2.c)), Struct_1(arg_2.a, true, vec2<bool>(arg_2.b, false)), firstLeadingBit(vec2<i32>(u_input.c.x, var_0)))).b, !vec2<bool>(arg_2.b, true)), func_2(arg_1, Struct_2(arg_2, func_6(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_2.a.x, arg_2.a.x), arg_0.yyz)), Struct_1(vec2<f32>(-1182f, arg_2.a.x), arg_2.c.x, arg_2.c)), Struct_1(vec2<f32>(arg_0.x, arg_2.a.x), arg_2.c.x, select(arg_2.c, vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c.x)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 27363i), u_input.c.yy), ~vec2<i32>(51575i, 1i))), Struct_2(func_7(Struct_1(vec2<f32>(-533f, arg_0.x), false, vec2<bool>(arg_2.b, false))), arg_2, Struct_1(_wgslsmith_div_vec2_f32(arg_0.wz, arg_0.yx), !arg_2.c.x, func_2(1u, Struct_2(Struct_1(vec2<f32>(430f, -1656f), arg_2.b, vec2<bool>(true, arg_2.b)), Struct_1(vec2<f32>(arg_2.a.x, arg_0.x), false, arg_2.c), arg_2, u_input.c.xx), Struct_2(arg_2, arg_2, Struct_1(arg_0.xy, arg_2.c.x, arg_2.c), vec2<i32>(u_input.c.x, -43421i))).c), vec2<i32>(_wgslsmith_sub_i32(1i, u_input.c.x), u_input.c.x))), vec2<i32>(-_wgslsmith_add_i32(-35509i, _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, -1i)), -4823i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_8(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1026f * 1000f), _wgslsmith_f_op_f32(-197f * -320f), -481f, _wgslsmith_f_op_f32(282f + -361f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(778f, 877f, -360f, 576f))))), 11291u, func_7(func_6(vec3<f32>(_wgslsmith_f_op_f32(-870f + -791f), _wgslsmith_f_op_f32(round(369f)), 2240f), func_1())));
    var_1 = func_8(vec4<f32>(143f, 147f, -1450f, var_1.a.a.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.b.yx) << (1u % 32u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.b.xy) & u_input.d.x, ~(~u_input.b.x)), 0u), var_1.a);
    var var_2 = !(max(64924u, _wgslsmith_add_u32(~4294967295u, ~40621u)) > (35713u ^ abs(u_input.a)));
    var_1 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a.a.x, var_1.b.a.x, var_1.a.a.x) - vec4<f32>(var_1.c.a.x, -468f, var_1.a.a.x, 1913f))))) - vec4<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) * func_5(vec2<f32>(var_1.c.a.x, var_1.b.a.x), Struct_1(var_1.a.a, var_0, var_1.b.c)).a.x), _wgslsmith_f_op_f32(trunc(-331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1595f)) * func_5(vec2<f32>(var_1.b.a.x, -497f), Struct_1(var_1.a.a, false, var_1.b.c)).a.x))), firstTrailingBit(u_input.a), var_1.c);
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.c.x, var_1.d.x, _wgslsmith_div_i32(-2147483647i, u_input.c.x)), u_input.c), -vec4<i32>(29137i, -var_1.d.x, countOneBits(var_1.d.x), -1i)));
}

