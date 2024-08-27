struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_2(-u_input.b, Struct_1(u_input.b), ~(~vec3<u32>(~54141u, 1u, ~9285u)), Struct_1(u_input.b << (~4294967295u % 32u)), vec4<f32>(arg_0, arg_0, -749f, arg_0));
    var var_1 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.b), vec2<i32>(43331i, 1i)) ^ _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, -1i), reverseBits(vec2<i32>(var_0.b.a, 0i))), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 16831i))), !vec2<bool>(all(vec2<bool>(true, true)), true)), -(-select(vec2<i32>(0i, var_0.b.a), vec2<i32>(u_input.b, 34898i), vec2<bool>(true, true)) | min(abs(vec2<i32>(u_input.b, 24703i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b)))));
    var_1 = var_0.d.a;
    var var_2 = var_0;
    var_2 = var_0;
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i) * -(vec3<i32>(7941i, 10111i, var_0.b.a) & vec3<i32>(u_input.b, var_2.d.a, var_2.a)), -_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.d.a, var_0.d.a, var_0.a), abs(vec3<i32>(-880i, -4805i, 11060i))), vec3<bool>(true, true, true)), reverseBits(countOneBits(vec3<i32>(_wgslsmith_mult_i32(4354i, var_0.d.a), _wgslsmith_clamp_i32(1i, -12350i, -1i), ~u_input.b))));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-select(-11993i, u_input.b, false) | (func_3(1203f) >> (firstTrailingBit(11552u) % 32u)), u_input.b), -(~(u_input.b & u_input.b)), firstTrailingBit(_wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(u_input.b, 2147483647i, 1i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 17355i, u_input.b, 2147483647i), vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)), vec4<bool>(true, true, false, true)), ~(-vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)))));
    var var_1 = ~u_input.a.xyx;
    return Struct_3(vec4<i32>(_wgslsmith_mod_i32(-11591i, _wgslsmith_div_i32(u_input.b, u_input.b) ^ u_input.b), ~(u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 130969u), vec2<u32>(1u, 29066u)) % 32u)), firstTrailingBit(~u_input.b), ~_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(u_input.b, 43762i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2041f * _wgslsmith_div_f32(1229f, -126f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-442f)), -415f)), all(vec4<bool>(true, true, true, true)) | any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, false), all(vec3<bool>(false, false, false)))), max(-63889i, u_input.b));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_1(u_input.b);
    let var_1 = func_2();
    let var_2 = -1000f > _wgslsmith_f_op_f32(exp2(arg_2));
    let var_3 = Struct_4(~var_1.d, arg_1.zwx, Struct_2(1i, var_0, vec3<u32>(~arg_0, countOneBits(4294967295u), reverseBits(u_input.a.x)), Struct_1(u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), func_2().b, -682f, var_1.b)), var_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(var_1.b - var_1.b)) + _wgslsmith_f_op_f32(abs(var_1.b))), arg_2));
    let var_4 = ~u_input.a.x;
    return var_3.c;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(u_input.b, func_1(~(~u_input.a.x << (_wgslsmith_clamp_u32(67490u, u_input.a.x, arg_0.c.x) % 32u)), vec4<bool>(true, all(vec3<bool>(true, true, true)), !(arg_0.e.x < arg_0.e.x), func_2().c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-681f, -928f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.e.x)))))).b, vec3<u32>(_wgslsmith_div_u32(4294967295u, arg_0.c.x), u_input.a.x >> (~select(7536u, 1u, true) % 32u), arg_0.c.x), Struct_1(2147483647i), arg_0.e);
    var_0 = func_1(arg_0.c.x, vec4<bool>(select(true, false, true), !(_wgslsmith_div_f32(arg_0.e.x, -977f) >= _wgslsmith_f_op_f32(var_0.e.x - arg_0.e.x)), !all(vec2<bool>(true, false)), true), -513f);
    var_0 = func_1(countOneBits(19888u), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(all(vec3<bool>(false, true, true)), true, all(vec3<bool>(false, false, true)), true), vec4<bool>(false, true, any(vec2<bool>(true, true)), true), true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1976f)))));
    var var_1 = arg_0;
    var var_2 = Struct_4(-2232i, select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), -33219i < u_input.b), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, false, true)), true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)))), arg_0, Struct_1(select(2147483647i, ~var_1.d.a & -1i, var_1.e.x <= _wgslsmith_f_op_f32(-var_1.e.x))), var_1.e.yz);
    return Struct_3(reverseBits(vec4<i32>(u_input.b, 27911i, firstTrailingBit(~61683i), firstTrailingBit(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - var_1.e.x)))), false & ((_wgslsmith_f_op_f32(1914f - -659f) < _wgslsmith_div_f32(arg_0.e.x, -1330f)) || any(vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x))), -_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(var_0.a, arg_0.d.a, var_0.b.a)), vec3<i32>(0i, -3502i, 6103i)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> i32 {
    var var_0 = select(!vec4<bool>(select(!arg_2.c, arg_2.c & arg_2.c, func_2().c), arg_2.c, true, all(!vec4<bool>(arg_2.c, arg_2.c, true, true))), select(select(select(select(vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<bool>(true, true, false, arg_2.c), arg_2.c), select(vec4<bool>(true, arg_2.c, arg_2.c, true), vec4<bool>(arg_2.c, true, true, arg_2.c), arg_2.c), vec4<bool>(false, true, arg_2.c, arg_2.c)), vec4<bool>(arg_2.c, arg_2.c | false, arg_2.c, arg_2.c | false), arg_2.c), !(!(!vec4<bool>(false, arg_2.c, true, arg_2.c))), vec4<bool>(true, true, arg_2.c, arg_2.c)), select(!vec4<bool>(func_2().c, 1000f != arg_2.b, !arg_2.c, arg_2.c), select(select(vec4<bool>(true, false, arg_2.c, true), !vec4<bool>(arg_2.c, false, false, false), !vec4<bool>(arg_2.c, true, false, true)), vec4<bool>(!arg_2.c, arg_2.c, any(vec3<bool>(arg_2.c, arg_2.c, arg_2.c)), arg_2.c), arg_1 != _wgslsmith_div_u32(107879u, u_input.a.x)), !(!vec4<bool>(false, false, arg_2.c, true))));
    let var_1 = ~_wgslsmith_mod_vec2_u32(u_input.a.wx, (vec2<u32>(1u, 44817u) ^ min(vec2<u32>(u_input.a.x, arg_1), u_input.a.yz)) & vec2<u32>(max(arg_1, 4294967295u), ~arg_1));
    var var_2 = func_1(4294967295u, !(!vec4<bool>(var_0.x, true | arg_2.c, all(vec3<bool>(arg_2.c, false, var_0.x)), false)), arg_2.b);
    var var_3 = select(select(select(select(vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(arg_2.c, arg_2.c, var_0.x, var_0.x), vec4<bool>(arg_2.c, false, true, false)), false), vec4<bool>(true, true, true, true), vec4<bool>(arg_2.c, arg_2.c, var_0.x, 15377u <= u_input.a.x)), vec4<bool>(arg_2.c, arg_2.c, true, true), !select(var_0.x, arg_0 <= 2147483647i, arg_2.c)), vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c), func_4(func_1(0u, vec4<bool>(1153f >= arg_2.b, 931f > var_2.e.x, var_0.x, var_0.x), 457f)).c);
    var_3 = !select(select(!vec4<bool>(arg_2.c, var_0.x, true, var_3.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_0.x, false, true, var_3.x), var_3.x), vec4<bool>(arg_2.c, var_3.x, var_0.x, false)), select(select(vec4<bool>(var_0.x, true, arg_2.c, var_3.x), vec4<bool>(var_0.x, true, true, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false)), !vec4<bool>(var_3.x, false, var_3.x, var_0.x), any(vec4<bool>(var_3.x, arg_2.c, arg_2.c, false)))), vec4<bool>(func_2().c, !var_3.x, all(select(vec4<bool>(false, arg_2.c, var_0.x, true), vec4<bool>(true, arg_2.c, false, var_3.x), arg_2.c)), true), vec4<bool>(var_3.x, func_4(Struct_2(var_2.d.a, Struct_1(arg_0), vec3<u32>(59027u, 13414u, u_input.a.x), Struct_1(38131i), vec4<f32>(arg_2.b, arg_2.b, arg_2.b, var_2.e.x))).c, !all(var_3.xw), !(!var_3.x)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(u_input.b, ~(~u_input.a.x), func_4(func_1(u_input.a.x, vec4<bool>(true, true, false, true), _wgslsmith_f_op_f32(-1298f + 680f)))));
    var var_1 = !(!vec4<bool>(~u_input.a.x != func_1(u_input.a.x, vec4<bool>(true, false, false, true), -1316f).c.x, false, any(vec3<bool>(true, true, true)), true));
    var var_2 = Struct_2(-(~_wgslsmith_add_i32(var_0.a >> (0u % 32u), var_0.a)), var_0, _wgslsmith_sub_vec3_u32(~(~(~u_input.a.zwx)), vec3<u32>(u_input.a.x | firstLeadingBit(u_input.a.x), func_1(u_input.a.x << (33373u % 32u), vec4<bool>(var_1.x, false, var_1.x, true), -1988f).c.x, 4294967295u)), func_1(_wgslsmith_mult_u32(select(63125u, _wgslsmith_dot_vec3_u32(vec3<u32>(43796u, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 34717u, u_input.a.x)), var_1.x), 15036u), !(!(!vec4<bool>(var_1.x, false, var_1.x, var_1.x))), func_1(u_input.a.x, select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, var_1.x, true, true)), _wgslsmith_f_op_f32(trunc(-1000f))).e.x).d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, func_4(Struct_2(var_0.a, Struct_1(-2147483647i), vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_0, vec4<f32>(1096f, -430f, -901f, 496f))).b, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(min(-408f, 246f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), !(!(!vec4<bool>(var_1.x, true, false, var_1.x))))));
    var var_3 = var_0;
    let var_4 = select(vec4<bool>(all(!(!vec2<bool>(var_1.x, true))), any(var_1.zw), !any(var_1.wyx), ((u_input.b << (4294967295u % 32u)) >= (i32(-1i) * -2147483647i)) && var_1.x), vec4<bool>(true, var_0.a >= u_input.b, true, var_1.x), !(!var_1.x));
    var var_5 = var_1.zy;
    var var_6 = func_1(17891u, select(select(vec4<bool>(var_2.e.x == 651f, !var_1.x, all(vec2<bool>(true, false)), var_1.x), var_4, !vec4<bool>(var_5.x, var_5.x, false, true)), vec4<bool>(!func_2().c, select(var_4.x, all(vec2<bool>(var_5.x, var_1.x)), var_1.x), true, var_1.x), var_1.x), var_2.e.x).d;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, func_4(func_1(61697u, !var_4, _wgslsmith_f_op_f32(abs(-1963f)))).b, select(u_input.a ^ ~(u_input.a | u_input.a), u_input.a >> (~abs(u_input.a) % vec4<u32>(32u)), func_4(Struct_2(var_6.a, var_0, vec3<u32>(18530u, 0u, var_2.c.x), var_2.d, var_2.e)).c == true), ~u_input.a);
}

