struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-347f * -738f) - _wgslsmith_f_op_f32(abs(-1042f)))))), _wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(~u_input.a, select(vec3<i32>(u_input.a.x, u_input.a.x, -30797i), u_input.a, vec3<bool>(true, false, false)))) & (u_input.a ^ vec3<i32>(-1i, 3566i, -u_input.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f + 231f)), -814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f + -297f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(818f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(418f - -1027f))), _wgslsmith_f_op_f32(f32(-1f) * -181f)))), _wgslsmith_div_f32(362f, 312f), !vec4<bool>(~u_input.b != u_input.b, false, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.c.x, -1000f)))), var_0.c.x)) - _wgslsmith_f_op_f32(round(-870f))), reverseBits(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 23688i, u_input.a.x), var_0.b), u_input.a, vec3<bool>(var_0.e.x, all(var_0.e.zz), var_0.e.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.d, -1391f, -1747f)))), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -206f)), _wgslsmith_f_op_f32(f32(-1f) * -214f)))), var_0.e);
    let var_1 = u_input.b;
    let var_2 = reverseBits(firstTrailingBit((~29145u | (4294967295u >> (u_input.b % 32u))) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 71957u, 3203u, var_1), vec4<u32>(var_1, 4294967295u, var_1, 0u), vec4<bool>(var_0.e.x, var_0.e.x, false, true)), vec4<u32>(9776u, 4294967295u, u_input.b, var_1)) % 32u)));
    let var_3 = ~vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), ~87625u, var_2), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_2, u_input.b), vec2<u32>(var_2, var_1), var_0.e.yz), firstTrailingBit(vec2<u32>(0u, 21753u))), 11962u ^ (u_input.b | 0u));
    return var_0.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1527f)), _wgslsmith_f_op_f32(max(arg_3.c.x, -642f)), all(arg_1.d.e)))) - 1029f), arg_1.d.b, vec4<f32>(_wgslsmith_f_op_f32(floor(arg_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(arg_1.a.x, -1393f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x - 1474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(-arg_1.a.x), select(select(vec4<bool>(true, true, arg_1.c.x != 798f, arg_1.b == 1u), vec4<bool>(any(arg_3.e), arg_0.x == u_input.b, arg_3.e.x, u_input.b >= 1u), vec4<bool>(true, true, u_input.b <= 4294967295u, arg_3.e.x)), !arg_1.d.e, arg_1.d.e.x));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1587f));
    var var_2 = Struct_2(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(round(-949f))));
    let var_3 = arg_0.xyx;
    let var_4 = var_1.a;
    return Struct_2(574f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 453f) + vec2<f32>(-1203f, 2433f)))))), _wgslsmith_sub_u32(abs(firstTrailingBit(u_input.b)) | ~_wgslsmith_add_u32(1u, 63715u), u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(450f + _wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) * 1014f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2510f)) - _wgslsmith_f_op_f32(-arg_0.a))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-298f)), arg_0.a, _wgslsmith_f_op_f32(arg_0.a * 1000f), 441f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-582f, arg_0.a, arg_0.a, arg_0.a))))), vec4<bool>(true, any(vec2<bool>(false, true)), true, true)))), Struct_1(arg_0.a, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 62051i, -35482i) >> (vec3<u32>(u_input.b, 93038u, 4294967295u) % vec3<u32>(32u))), countOneBits(countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(306f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1173f * arg_0.a) - arg_0.a), arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -913f) + -291f), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), arg_0);
    var var_1 = vec3<bool>((false & !var_0.d.e.x) != all(vec2<bool>(true, -51376i <= u_input.a.x)), var_0.d.e.x & true, false);
    var var_2 = vec3<f32>(var_0.e.a, _wgslsmith_f_op_f32(trunc(-1353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))))));
    let var_3 = var_0.d;
    var var_4 = Struct_3(var_0.a, ~(~u_input.b << (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, var_0.b), vec3<u32>(28143u, 32405u, 0u)), vec3<u32>(0u, u_input.b, 4294967295u)) % 32u)), vec4<f32>(arg_0.a, 759f, _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * _wgslsmith_div_f32(764f, var_3.c.x)))), 456f), Struct_1(var_3.a, var_3.b, var_0.d.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.d), -619f)))), var_0.d.e), func_2(countOneBits(vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(52787u, var_0.b), vec2<u32>(1u, 1u)), 31055u)), var_0, !var_0.d.e.x, var_3));
    return var_3.c.xx;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)));
    let var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(false, true, true), 168f == var_0), any(vec4<bool>(false, false, true, all(vec3<bool>(true, true, true))))), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), vec2<bool>(false, true));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1973f, -1009f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec4<u32>(u_input.b, 18122u, 0u, 68302u), Struct_3(arg_1, u_input.b, vec4<f32>(var_0, -972f, -477f, 166f), Struct_1(arg_1.x, u_input.a, vec4<f32>(467f, 1525f, var_0, 1636f), 109f, vec4<bool>(var_1.x, false, false, false)), Struct_2(1000f)), true, Struct_1(-816f, vec3<i32>(21187i, arg_0.x, -3788i), vec4<f32>(arg_1.x, var_0, arg_1.x, arg_1.x), var_0, vec4<bool>(false, true, var_1.x, false))).a))), _wgslsmith_add_u32(u_input.b, 6835u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(624f, var_0, arg_1.x, 504f)))))), Struct_1(_wgslsmith_f_op_f32(sign(var_0)), vec3<i32>(_wgslsmith_sub_i32(~0i, ~u_input.a.x), _wgslsmith_div_i32(-47744i, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, 0i))), _wgslsmith_sub_i32(-2147483647i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-812f, -596f, arg_1.x, -245f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(trunc(578f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0), vec3<i32>(u_input.a.x, 9627i, 29763i))).x))), select(vec4<bool>(true, true, true, u_input.b < u_input.b), vec4<bool>(u_input.a.x != 2147483647i, any(var_1), any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), false), !var_1.x)), func_2(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 19668u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 10660u))), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, var_0), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -405f), arg_1)), _wgslsmith_clamp_u32(0u, 51778u & u_input.b, 72140u), vec4<f32>(-112f, _wgslsmith_f_op_f32(-604f + -1762f), _wgslsmith_f_op_f32(-593f * -208f), _wgslsmith_f_op_f32(step(693f, -188f))), Struct_1(-2105f, ~u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1499f, -1975f, var_0, var_0) - vec4<f32>(1000f, arg_1.x, var_0, -1033f)), 619f, !vec4<bool>(false, var_1.x, true, true)), func_2(reverseBits(vec4<u32>(u_input.b, u_input.b, 5899u, u_input.b)), Struct_3(arg_1, u_input.b, vec4<f32>(arg_1.x, var_0, 748f, var_0), Struct_1(-729f, vec3<i32>(arg_0.x, 2147483647i, 41912i), vec4<f32>(1000f, 626f, -688f, var_0), -379f, vec4<bool>(false, var_1.x, var_1.x, false)), Struct_2(arg_1.x)), all(vec3<bool>(true, var_1.x, var_1.x)), Struct_1(-691f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-1583f, 540f, 805f, arg_1.x), -1000f, vec4<bool>(true, false, var_1.x, var_1.x)))), true == (var_1.x | true), Struct_1(2207f, u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, var_0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, arg_1.x, arg_1.x, -167f), vec4<f32>(var_0, var_0, arg_1.x, var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -260f), vec4<bool>(var_1.x, true, true, true))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_2.e, countOneBits(abs(var_2.d.b)))).x), _wgslsmith_f_op_f32(-var_2.d.d), _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(sign(arg_1.x)))));
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x - var_0), _wgslsmith_f_op_f32(974f - 403f))), ~25198u, var_2.d.c, var_2.d, var_2.e);
    return Struct_2(_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(571f, _wgslsmith_f_op_f32(-var_2.d.a)))), !any(select(var_2.d.e.xx, vec2<bool>(true, false), var_1)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = vec2<u32>(~u_input.b, 44273u);
    var var_1 = func_5(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a.x, -2147483647i) >> (var_0 % vec2<u32>(32u)), vec2<i32>(39258i, u_input.a.x) ^ u_input.a.xz) & -abs(u_input.a.zy), ~_wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.yz, u_input.a.yz) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, arg_0.x) | vec2<u32>(u_input.b, arg_0.x), vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u)), min(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 2147483647i), _wgslsmith_sub_i32(u_input.a.x, 51141i)), u_input.a.yy)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(func_2(vec4<u32>(6835u, var_0.x, u_input.b, arg_0.x), Struct_3(vec2<f32>(-1027f, 235f), 231u, vec4<f32>(-448f, -431f, -830f, -1688f), Struct_1(-380f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(559f, -746f, 188f, 1016f), 572f, vec4<bool>(arg_1, arg_1, arg_1, false)), Struct_2(1619f)), false, Struct_1(1263f, u_input.a, vec4<f32>(124f, -332f, -373f, 472f), 1290f, vec4<bool>(arg_1, true, true, true))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))))))));
    var var_2 = 452f;
    var var_3 = min(abs(~(~vec3<u32>(arg_0.x, var_0.x, arg_0.x))), vec3<u32>(0u, u_input.b, ~var_0.x << (4294967295u % 32u))) >> (reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, var_0.x, var_0.x), vec3<u32>(19295u, arg_0.x, u_input.b)) ^ ~vec3<u32>(646u, 1u, 0u)) % vec3<u32>(32u));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(397f, var_1.a) - vec2<f32>(var_1.a, -579f)))))), ~63428u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1000f * -232f), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 111329u, arg_0.x, u_input.b), vec4<u32>(4294967295u, 4294967295u, 4209u, 43307u)), Struct_3(vec2<f32>(706f, -271f), var_0.x, vec4<f32>(1738f, 1118f, var_1.a, -760f), Struct_1(-1905f, u_input.a, vec4<f32>(var_1.a, 156f, -802f, var_1.a), 669f, vec4<bool>(true, true, true, arg_1)), Struct_2(255f)), arg_1, Struct_1(var_1.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-611f, -554f, var_1.a, var_1.a), 898f, vec4<bool>(arg_1, true, false, arg_1))).a, var_1.a)), Struct_1(-608f, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-func_5(u_input.a.zz, vec2<f32>(828f, -927f)).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(369f)) * 1301f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 1176f)), var_1.a), var_1.a, select(vec4<bool>(all(vec2<bool>(arg_1, arg_1)), 0i != u_input.a.x, !arg_1, -1701f > var_1.a), vec4<bool>(arg_1, false, arg_1, arg_1), 48495u >= ~var_0.x)), func_2(countOneBits(vec4<u32>(27270u, ~1u, var_3.x, 7204u)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, 1458f)))), ~var_0.x ^ arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a))), Struct_1(-1429f, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a.x), vec3<i32>(46523i, -2147483647i, 10680i)), vec4<f32>(var_1.a, var_1.a, 133f, -1067f), _wgslsmith_f_op_f32(-var_1.a), !vec4<bool>(true, true, arg_1, arg_1)), func_2(~vec4<u32>(u_input.b, var_3.x, 31877u, arg_0.x), Struct_3(vec2<f32>(-153f, 202f), 74544u, vec4<f32>(var_1.a, -730f, -563f, -1000f), Struct_1(-1529f, u_input.a, vec4<f32>(var_1.a, var_1.a, var_1.a, 686f), var_1.a, vec4<bool>(true, true, true, false)), Struct_2(var_1.a)), !arg_1, Struct_1(var_1.a, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec4<f32>(1343f, var_1.a, 394f, var_1.a), 427f, vec4<bool>(false, arg_1, arg_1, false)))), arg_1, Struct_1(_wgslsmith_f_op_f32(floor(var_1.a)), firstTrailingBit(-u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(817f, 532f, var_1.a, var_1.a)))), var_1.a, vec4<bool>(!arg_1, u_input.a.x == 2759i, all(vec2<bool>(false, arg_1)), any(vec4<bool>(true, false, true, false))))));
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(28505u, 23842u), vec2<u32>(u_input.b, u_input.b)), countOneBits(vec2<u32>(u_input.b, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 66566u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(4294967295u, 0u)), vec2<bool>(true, true)), min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 31316u), vec2<u32>(1u, 0u) | vec2<u32>(u_input.b, u_input.b)), vec2<u32>(117465u ^ u_input.b, ~u_input.b)), firstLeadingBit(abs(vec2<u32>(0u, 5626u)))), true);
    var var_1 = var_0.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.c.x), vec3<i32>(26692i, var_0.b.x, 1917i))).x - func_2(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), Struct_3(vec2<f32>(365f, var_0.a), 4294967295u, var_0.c, Struct_1(520f, u_input.a, var_0.c, var_0.c.x, vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x)), Struct_2(var_0.c.x)), var_0.e.x, var_0).a)) + var_0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.yy, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), -530f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(vec2<i32>(var_0.b.x, var_0.b.x), vec2<f32>(401f, var_2.a)).a))));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.b, select(u_input.a, -(vec3<i32>(19877i, u_input.a.x, var_0.b.x) ^ vec3<i32>(1i, u_input.a.x, var_0.b.x)), !any(var_0.e))), _wgslsmith_div_i32(reverseBits(reverseBits(~var_0.b.x)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, var_0.b.x, var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.b.x, 2147483647i, 2147483647i), min(vec4<i32>(2147483647i, -4556i, -52064i, 16054i), vec4<i32>(var_0.b.x, 0i, 0i, -1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(35736u);
}

