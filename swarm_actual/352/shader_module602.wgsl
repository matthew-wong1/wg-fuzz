struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a - -2375f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-545f + 1396f), _wgslsmith_f_op_f32(f32(-1f) * -134f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-798f)))))));
    var var_1 = Struct_2(vec3<bool>(true, !(!arg_1.b.a.x) & arg_1.b.a.x, all(vec3<bool>(!arg_1.b.a.x, true, arg_1.b.a.x))));
    var_1 = arg_1.b;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(min(1628f, _wgslsmith_f_op_f32(sign(arg_1.a)))), arg_1.c.xw, Struct_3(arg_1.a, Struct_2(select(arg_1.b.a, vec3<bool>(true, true, true), var_1.a.x)), ~(~abs(arg_1.c))));
    var_1 = Struct_2(var_2.c.b.a);
    return 0u << (~(~countOneBits(~1u)) % 32u);
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = vec4<bool>(true, false, 2148i <= _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~(~vec4<i32>(-1i, u_input.a, u_input.a, -8153i))), !arg_0);
    var var_1 = select(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(18601u, 0u), ~vec2<u32>(50657u, 0u)), countOneBits(vec2<u32>(1u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(~vec2<u32>(1801u, 0u), vec2<u32>(27538u, 4294967295u))), _wgslsmith_add_u32(~(~1u), 0u), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 38284u), func_3(vec2<i32>(0i, u_input.a), Struct_3(674f, Struct_2(var_0.yyx), vec4<u32>(1u, 32606u, 72756u, 34748u)), vec3<f32>(1126f, 751f, 1298f))) << (33291u % 32u)), select(reverseBits(~vec4<u32>(35795u, 20375u, 83586u, 23926u)), vec4<u32>(~(~4294967295u), 1u, 4294967295u, ~abs(22029u)), true), vec4<bool>(var_0.x, 1i < u_input.a, false, arg_0));
    var var_2 = Struct_3(_wgslsmith_div_f32(-669f, -993f), Struct_2(!vec3<bool>(true && arg_0, true, true)), vec4<u32>(var_1.x, countOneBits(var_1.x), var_1.x, ~47909u));
    var_1 = var_2.c;
    var var_3 = var_2.c.yzz;
    return select(vec3<bool>(arg_0, !var_2.b.a.x, true), var_0.yxy, select(vec3<bool>(any(!var_0), false, all(!vec3<bool>(arg_0, true, true))), var_2.b.a, var_2.b.a.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), func_2(false), !func_2(true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!all(vec4<bool>(false, true, true, false)))), select(vec3<bool>(true, func_2(any(vec2<bool>(false, false))).x, _wgslsmith_div_f32(arg_2, -1000f) != arg_1.a), !vec3<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), false), select(!vec3<bool>(u_input.a > 17754i, true, -62084i >= u_input.a), vec3<bool>(1u != ~arg_1.e.x, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, func_2(true).x, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -249f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_div_f32(arg_2, -626f)), 1258f))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(arg_1.c.x, -2147483647i, 4232i, 0i)), vec4<i32>(~u_input.a, abs(2147483647i), arg_1.c.x, _wgslsmith_div_i32(arg_1.b.x, arg_1.b.x))), arg_1.b), ~arg_1.b.zz, firstLeadingBit(1u & select(select(0u, 0u, false), ~0u, any(vec4<bool>(true, var_0.x, var_0.x, false)))), _wgslsmith_mult_vec2_u32(firstLeadingBit(arg_1.e), vec2<u32>(1u, arg_1.d)) >> (_wgslsmith_mult_vec2_u32(~arg_1.e, vec2<u32>(arg_0, ~arg_0)) % vec2<u32>(32u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(622f)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, 33922i, 44723i, -arg_1.b.x)), var_1.b), ~max(select(var_1.c, vec2<i32>(-8800i, var_1.c.x), vec2<bool>(true, var_0.x)), vec2<i32>(-53883i, u_input.a)) >> (_wgslsmith_sub_vec2_u32(arg_1.e, vec2<u32>(arg_1.d, _wgslsmith_add_u32(arg_1.e.x, arg_0))) % vec2<u32>(32u)), 52709u, _wgslsmith_add_vec2_u32(var_1.e, abs(vec2<u32>(_wgslsmith_sub_u32(var_1.e.x, 0u), 1u))));
    var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(793f, 607f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, -216f), vec2<f32>(2141f, -176f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 2183f), vec2<f32>(-1168f, -806f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(998f, arg_2) + vec2<f32>(-739f, 1363f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_2 - arg_1.a), _wgslsmith_f_op_f32(arg_2 - 1306f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a, var_1.a))), vec2<f32>(301f, 1000f))))));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + -1623f), vec2<u32>(_wgslsmith_add_u32(arg_1.d, arg_1.e.x), max(9805u, ~arg_1.e.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.e.x, 33938u), vec2<u32>(arg_1.d, arg_1.d)) % 32u)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * var_1.a), _wgslsmith_f_op_f32(abs(991f))) * arg_1.a), Struct_2(vec3<bool>(true, true, var_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, _wgslsmith_sub_u32(13463u, arg_1.e.x), reverseBits(22902u), 0u), countOneBits(vec4<u32>(var_1.e.x, var_1.e.x, 4294967295u, arg_1.e.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    var var_0 = func_1(0u, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), vec4<i32>(0i, u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), countOneBits(-2291i)), -(_wgslsmith_mult_vec2_i32(vec2<i32>(-14440i, arg_3), vec2<i32>(arg_3, u_input.a)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_3, -50223i))), min(arg_1.c.c.x, 25104u) | 0u, _wgslsmith_mod_vec2_u32(min(~arg_2.c.c.yz, ~arg_1.c.c.zy), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 5292u), vec2<u32>(28225u, arg_1.c.c.x)))), 171f);
    let var_1 = ~select(_wgslsmith_mod_vec4_u32(arg_1.c.c, ~var_0.c.c), vec4<u32>(arg_2.c.c.x, _wgslsmith_dot_vec3_u32(max(var_0.c.c.wxz, arg_2.c.c.zxx), arg_1.c.c.xzy), _wgslsmith_dot_vec3_u32(arg_1.c.c.zzx, ~arg_1.c.c.yzw), arg_2.b.x), ~1u >= _wgslsmith_dot_vec3_u32(reverseBits(arg_2.c.c.wyw), arg_2.c.c.zxy));
    var_0 = arg_2;
    var_0 = arg_1;
    let var_2 = 27062u;
    return ~vec3<u32>(arg_0 | ~var_1.x, 0u, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 454f;
    var var_1 = u_input.a;
    var var_2 = abs(reverseBits(~func_4(_wgslsmith_div_u32(1u, 38127u), Struct_4(-389f, vec2<u32>(36448u, 0u), Struct_3(-1665f, Struct_2(vec3<bool>(false, false, false)), vec4<u32>(0u, 1u, 4294967295u, 27933u))), func_1(1u, Struct_1(1000f, vec4<i32>(u_input.a, u_input.a, u_input.a, 13859i), vec2<i32>(-89827i, 0i), 0u, vec2<u32>(58505u, 18230u)), var_0), max(-18639i, 31042i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, var_0, false)) + var_0), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) - -154f), 644f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2206f, var_0, var_0, 1090f)))))))));
    let var_4 = true;
    var var_5 = -(~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 18809i) & vec2<i32>(u_input.a, u_input.a), countOneBits(vec2<i32>(19371i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_clamp_vec3_i32((firstLeadingBit(vec3<i32>(9713i, var_5.x, u_input.a)) ^ select(vec3<i32>(u_input.a, u_input.a, var_5.x), vec3<i32>(-533i, -1i, var_5.x), vec3<bool>(var_4, var_4, false))) ^ ~(vec3<i32>(0i, -2147483647i, 1i) << (vec3<u32>(10193u, var_2.x, var_2.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(~var_5.x, -4047i, 18907i), vec3<i32>(var_5.x, 2147483647i, -895i) & firstLeadingBit(vec3<i32>(48528i, 8677i, u_input.a))), vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, min(u_input.a, 1i)), _wgslsmith_mod_i32(abs(u_input.a), max(1i, var_5.x)))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -1i, var_5.x) >> (~min(vec3<u32>(0u, 28001u, 0u), vec3<u32>(82408u, 1u, 12885u)) % vec3<u32>(32u)), abs(select(vec3<i32>(u_input.a, 2147483647i, var_5.x), vec3<i32>(-2147483647i, 0i, 3592i), vec3<bool>(false, var_4, var_4))), vec3<i32>(0i, abs(var_5.x) ^ 0i, var_5.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-540f, -2086f), vec2<f32>(-428f, 748f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_3.x) + var_3.wz))))));
}

