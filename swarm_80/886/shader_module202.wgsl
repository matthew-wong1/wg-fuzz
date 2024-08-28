struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(floor(arg_0.x)), vec2<bool>(all(vec2<bool>(true, true)), true), Struct_1(~0u, abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, 4294967295u, 17821u, u_input.d), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.e))), vec2<bool>(false, false)), Struct_1(20663u, reverseBits(select(~vec4<u32>(u_input.e, 55218u, u_input.d, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.d, 4294967295u, u_input.e, 4294967295u)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(u_input.a != 0i, true))));
    let var_1 = vec2<i32>(-43594i, _wgslsmith_mod_i32(8100i, firstTrailingBit(18003i)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), var_0.b, var_0.c, var_0.d);
    var var_2 = var_0.d;
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.c.a, var_0.d.a, var_2.a), select(var_0.c.b.zzy, vec3<u32>(var_2.b.x, 4294967295u, u_input.d) ^ var_2.b.yww, false)) >> ((u_input.d << (~4294967295u % 32u)) % 32u), _wgslsmith_sub_u32(~var_0.c.b.x, _wgslsmith_add_u32(~27624u, 1u)), 1928u, 48285u);
    return ~max(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.x, 4404i), vec3<i32>(var_1.x, var_1.x, 0i)), -2147483647i, i32(-1i) * -var_1.x, -(~var_1.x)), (vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, var_1.x, -2147483647i)) ^ vec4<i32>(20379i, 44926i ^ var_1.x, firstLeadingBit(var_1.x), -var_1.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_4(1f, select(!select(vec2<bool>(false, true), select(arg_3.c.c, arg_1.c, arg_2.c.x), select(arg_3.c.c, vec2<bool>(true, false), vec2<bool>(arg_3.d.c.x, false))), arg_1.c, false), arg_1, arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(765f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * 1000f) * var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-581f * arg_3.a))), 1f)));
    var var_2 = 40158u ^ arg_2.b.x;
    var var_3 = Struct_2(var_0.a, var_1.x, vec3<u32>(~(~1u), ~(~u_input.c.x), u_input.b.x), var_0.c.c.x, Struct_1(~(~arg_1.b.x), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 75719u, var_0.d.a, arg_1.a), arg_1.b), ~vec4<u32>(0u, 0u, var_0.d.a, 75610u)), select(!select(var_0.b, arg_2.c, arg_2.c.x), vec2<bool>(var_0.c.c.x, arg_3.b.x), true)));
    var var_4 = Struct_3(Struct_2(1000f, var_1.x, min(~arg_1.b.wzw, ~min(arg_2.b.wzw, vec3<u32>(42825u, arg_3.d.a, u_input.b.x))), true, Struct_1(~_wgslsmith_sub_u32(arg_2.b.x, u_input.b.x), vec4<u32>(min(var_0.d.b.x, 1u), ~24212u, ~var_0.c.a, 12710u << (arg_1.a % 32u)), !vec2<bool>(false, arg_3.c.c.x))));
    return -1006f;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -534f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2009f))) + -229f);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(min(-func_3(vec3<f32>(1658f, 148f, 585f)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)), i32(-1i) * -5502i, i32(-1i) * -16246i, ~(-1i))), Struct_1(abs(u_input.b.x | 77908u), abs(vec4<u32>(u_input.e, 59188u, 12444u, 1u)) | _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.e, 5670u, 1u), vec4<u32>(0u, 51263u, 32058u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), Struct_1(_wgslsmith_sub_u32(u_input.c.x, 23714u >> (u_input.b.x % 32u)), select(vec4<u32>(u_input.e, u_input.c.x, 49554u, u_input.d) >> (vec4<u32>(4294967295u, 25119u, 1u, 0u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.d, u_input.b.x, u_input.b.x) << (vec4<u32>(9782u, 1u, u_input.e, u_input.b.x) % vec4<u32>(32u)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1048f), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(28761u, vec4<u32>(u_input.e, u_input.e, 1u, 0u), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), Struct_1(u_input.e, vec4<u32>(u_input.c.x, u_input.b.x, 101851u, u_input.b.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(445f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f)))), vec3<u32>(0u, ~u_input.e, 22565u), all(vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, false)) & false)), Struct_1(1u, ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 89010u, u_input.e, u_input.e), vec4<u32>(19342u, 0u, 89631u, 1u)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true)));
    var var_2 = 1f;
    var var_3 = (countOneBits(var_1.c) | u_input.c) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 1u, ~u_input.d, 70579u & u_input.c.x), vec4<u32>(~u_input.e, ~14665u, u_input.b.x, countOneBits(4294967295u))), u_input.b.x, ~(~(~u_input.c.x)));
    return select(select(!select(select(vec3<bool>(var_1.e.c.x, var_1.e.c.x, false), vec3<bool>(var_1.d, true, var_1.d), vec3<bool>(var_1.e.c.x, var_1.d, false)), select(vec3<bool>(var_1.d, var_1.e.c.x, var_1.e.c.x), vec3<bool>(true, var_1.d, true), vec3<bool>(var_1.d, var_1.d, false)), select(vec3<bool>(false, var_1.e.c.x, var_1.d), vec3<bool>(true, true, false), var_1.d)), vec3<bool>(false, var_1.a >= _wgslsmith_f_op_f32(sign(1919f)), all(vec4<bool>(false, true, var_1.d, true))), !var_1.d), select(!(!vec3<bool>(false, var_1.e.c.x, var_1.e.c.x)), select(!(!vec3<bool>(var_1.e.c.x, var_1.d, var_1.e.c.x)), select(vec3<bool>(var_1.e.c.x, var_1.d, var_1.e.c.x), select(vec3<bool>(true, var_1.e.c.x, var_1.d), vec3<bool>(var_1.d, var_1.d, var_1.e.c.x), var_1.d), vec3<bool>(false, var_1.d, true)), all(!vec3<bool>(false, false, var_1.e.c.x))), true), all(!(!select(vec3<bool>(var_1.e.c.x, var_1.e.c.x, var_1.e.c.x), vec3<bool>(var_1.e.c.x, var_1.d, var_1.e.c.x), vec3<bool>(var_1.d, false, var_1.d)))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = select(!vec3<bool>(all(vec4<bool>(arg_0.a.e.c.x, false, arg_0.a.e.c.x, true)) && (arg_0.a.e.c.x != arg_0.a.d), arg_0.a.e.c.x, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(false, arg_0.a.d, true), select(select(vec3<bool>(arg_0.a.e.c.x, false, arg_0.a.d), vec3<bool>(arg_0.a.e.c.x, false, arg_0.a.d), vec3<bool>(arg_0.a.e.c.x, arg_0.a.e.c.x, arg_0.a.d)), !vec3<bool>(true, false, arg_0.a.d), any(vec3<bool>(true, false, arg_0.a.d))), select(!vec3<bool>(true, arg_0.a.e.c.x, true), select(vec3<bool>(arg_0.a.d, arg_0.a.e.c.x, arg_0.a.e.c.x), vec3<bool>(true, arg_0.a.e.c.x, true), vec3<bool>(false, false, false)), true)), func_2(), vec3<bool>(arg_0.a.d, _wgslsmith_div_f32(arg_0.a.a, arg_0.a.a) == 264f, arg_0.a.d)), any(!select(vec3<bool>(false, arg_0.a.d, true), !vec3<bool>(true, false, arg_0.a.e.c.x), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1503f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.a), 1f))) + 348f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.b))));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 1000f;
    let var_1 = arg_1.e.c;
    let var_2 = reverseBits(_wgslsmith_dot_vec3_u32(arg_1.e.b.yzz, vec3<u32>(~u_input.b.x, _wgslsmith_mult_u32(~u_input.b.x, 26078u), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.e.b.x, 19082u), ~7234u))));
    let var_3 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-var_3.b);
    return Struct_2(_wgslsmith_f_op_f32(var_3.a + -1262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1647f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), arg_1.e.b.wxx >> (vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.c.x, 4294967295u), firstLeadingBit(45291u)), var_3.c.x) % vec3<u32>(32u)), var_3.e.c.x, arg_1.e);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec2_i32(min(countOneBits(~(~vec2<i32>(u_input.a, u_input.a))), vec2<i32>(reverseBits(-u_input.a), u_input.a)), _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(func_3(vec3<f32>(1000f, arg_2.a, arg_0.a.b)).xw, select(vec2<i32>(-39474i, 37972i), vec2<i32>(u_input.a, -1i), arg_0.a.e.c)), abs(vec2<i32>(37610i, -20456i >> (u_input.c.x % 32u)))));
    var var_1 = arg_2.d;
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~func_5(u_input.a, arg_0.a).e.b)), firstTrailingBit(var_1.b), vec4<u32>(min(_wgslsmith_dot_vec3_u32(arg_2.c.b.xyy | var_1.b.wyy, ~arg_0.a.e.b.yzz), _wgslsmith_clamp_u32(abs(u_input.d), ~u_input.d, reverseBits(arg_0.a.e.b.x))), var_1.a, arg_0.a.e.b.x, ~reverseBits(arg_1)));
    let var_3 = !(!(!vec4<bool>(!var_1.c.x, var_1.c.x, true, true)));
    let var_4 = func_5(~var_0.x, func_5(var_0.x, Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-151f - 672f))), 1008f, ~_wgslsmith_clamp_vec3_u32(var_1.b.wxw, arg_2.d.b.zwx, vec3<u32>(4294967295u, 34644u, u_input.b.x)), 1085f >= _wgslsmith_f_op_f32(-arg_2.a), arg_0.a.e))).e;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(func_5(-(u_input.a ^ u_input.a), Struct_2(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(-1053f, 1000f, vec3<u32>(u_input.e, 4294967295u, u_input.d), true, Struct_1(0u, vec4<u32>(u_input.e, 0u, 0u, 12915u), vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(-1055f, -547f, u_input.c, true, Struct_1(u_input.e, vec4<u32>(u_input.c.x, 0u, u_input.b.x, 36065u), vec2<bool>(false, true)))))), u_input.c << (u_input.c % vec3<u32>(32u)), true, Struct_1(58417u, vec4<u32>(u_input.e, 36761u, 0u, 65018u), vec2<bool>(true, false))))), _wgslsmith_mod_u32(0u, 23902u), Struct_4(_wgslsmith_f_op_f32(max(424f, -740f)), select(vec2<bool>(true, u_input.b.x < u_input.b.x), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), u_input.a < firstTrailingBit(u_input.a)), Struct_1(func_5(2147483647i, func_5(25688i, Struct_2(928f, 568f, vec3<u32>(4294967295u, u_input.e, 20132u), false, Struct_1(u_input.d, vec4<u32>(15440u, 51794u, 67110u, 1u), vec2<bool>(false, true))))).c.x, vec4<u32>(u_input.d, 1u ^ u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.e), u_input.e), !func_2().zz), func_5(u_input.a, Struct_2(1195f, 709f, vec3<u32>(0u, u_input.c.x, 0u), true, func_5(2059i, Struct_2(-510f, 1613f, u_input.c, true, Struct_1(u_input.d, vec4<u32>(4294967295u, u_input.e, u_input.c.x, 16238u), vec2<bool>(false, true)))).e)).e));
    var var_1 = !select(select(select(vec4<bool>(var_0.a.d, false, var_0.a.d, var_0.a.d), !vec4<bool>(var_0.a.d, var_0.a.e.c.x, false, var_0.a.e.c.x), select(vec4<bool>(false, true, false, var_0.a.e.c.x), vec4<bool>(var_0.a.d, false, var_0.a.d, true), vec4<bool>(false, true, true, true))), !(!vec4<bool>(false, var_0.a.e.c.x, var_0.a.d, var_0.a.d)), !select(vec4<bool>(var_0.a.e.c.x, var_0.a.e.c.x, var_0.a.d, true), vec4<bool>(var_0.a.e.c.x, false, false, true), vec4<bool>(var_0.a.d, false, var_0.a.d, false))), select(vec4<bool>(var_0.a.e.c.x, true, any(vec3<bool>(true, true, true)), !var_0.a.e.c.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.a.d, var_0.a.e.c.x, true), var_0.a.d), !vec4<bool>(var_0.a.e.c.x, var_0.a.e.c.x, var_0.a.d, true), !vec4<bool>(var_0.a.e.c.x, true, false, var_0.a.e.c.x)), select(select(vec4<bool>(true, false, var_0.a.d, var_0.a.d), vec4<bool>(var_0.a.d, true, true, false), vec4<bool>(false, true, true, var_0.a.d)), vec4<bool>(var_0.a.e.c.x, false, false, false), true)), vec4<bool>(!var_0.a.e.c.x, !var_0.a.d, true | any(vec3<bool>(var_0.a.d, false, var_0.a.d)), (i32(-1i) * -25386i) > _wgslsmith_mult_i32(1i, u_input.a)));
    var_0 = Struct_3(var_0.a);
    var_1 = !select(!(!vec4<bool>(var_1.x, var_0.a.e.c.x, false, true)), vec4<bool>(all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), -u_input.a < u_input.a, (1u >> (1u % 32u)) != (368u << (u_input.c.x % 32u)), var_1.x), true);
    var var_2 = 0u;
    var var_3 = var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.a.a, 302f), _wgslsmith_f_op_f32(floor(759f)));
}

