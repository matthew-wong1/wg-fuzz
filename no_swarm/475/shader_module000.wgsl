struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(700f, -1689f, -951f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1610f, 1000f, 976f) - vec3<f32>(1000f, -682f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1123f, -1650f)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f * -2051f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1790f + 1204f), _wgslsmith_f_op_f32(f32(-1f) * -743f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1593f, 844f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1481f))) + _wgslsmith_f_op_f32(min(1212f, _wgslsmith_f_op_f32(-1114f - 582f))))));
    return !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(false, false, true)))));
}

fn func_2() -> Struct_3 {
    let var_0 = 1f;
    var var_1 = !(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), func_3(4294967295u, vec4<i32>(0i, 2147483647i, 2814i, 3187i)))) || !func_3(min(u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(5910i, -37585i, -2147483647i, -2147483647i))).x);
    let var_2 = -_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(-10214i, 1i), 25405i, 2147483647i, ~(-6261i)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(vec4<i32>(-24277i, 0i, 21255i, -28077i)))));
    var var_3 = select(select(!vec3<bool>(func_3(26424u, var_2).x, false, false), select(select(func_3(u_input.a.x, var_2), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(true, var_2.x >= 56584i, false)), var_0 < var_0), func_3(u_input.a.x, abs(-(~var_2))), vec3<bool>(false, !(!all(vec4<bool>(false, false, false, false))), true));
    let var_4 = Struct_2(var_2, Struct_1(87727u, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(~u_input.a.x, _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a.x, 4088u, 12554u, u_input.a.x) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 10960u, u_input.a.x))), Struct_1(1u, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 35234u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(40699u, 0u, 4294967295u, 1u))) | _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(70022u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 41046u)), ~vec4<u32>(68382u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_u32(min(~(~u_input.a.x), u_input.a.x), select(~u_input.a.x, _wgslsmith_sub_u32(40743u, u_input.a.x), !select(true, true, true))));
    return Struct_3(select(select(!vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(var_3.x, true, true, all(vec3<bool>(true, var_3.x, var_3.x))), select(!vec4<bool>(true, var_3.x, false, var_3.x), vec4<bool>(true, true, false, true), select(vec4<bool>(false, var_3.x, true, true), vec4<bool>(true, false, true, var_3.x), var_3.x))), !vec4<bool>(true, var_3.x, false, any(vec3<bool>(false, false, var_3.x))), var_3.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = true;
    var var_1 = arg_1;
    let var_2 = true;
    let var_3 = func_3(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(var_1.b.b.xwx, var_1.b.b.zzz) << (vec3<u32>(25606u, var_1.c.b.x, 1u) % vec3<u32>(32u))), arg_1.d.b.wxw >> (~arg_1.c.b.xxw % vec3<u32>(32u))), vec4<i32>(var_1.a.x, firstLeadingBit(_wgslsmith_clamp_i32(arg_1.a.x & 35506i, var_1.a.x, arg_1.a.x ^ -2147483647i)), var_1.a.x, 400i)).x;
    let var_4 = Struct_1(select(~(abs(u_input.a.x) | ~1u), 37672u, true), firstLeadingBit(~(~var_1.b.b)));
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-600f)), _wgslsmith_f_op_f32(min(478f, 562f)), -834f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(448f, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2022f + var_0.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(var_0.x * 1604f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -206f))), _wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(abs(-1767f))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -624f)))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -972f), var_0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -704f, -1031f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1104f, var_0.x, 1773f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, -1038f, var_0.x))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))), any(vec4<bool>(false, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(-2038f * 1780f);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) * var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1351f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x))));
    return func_4(func_2(), Struct_2(-abs(vec4<i32>(-19493i, 0i, 2147483647i, -8049i) << (vec4<u32>(37066u, 27860u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), Struct_1(arg_0.x, ~reverseBits(vec4<u32>(u_input.a.x, arg_0.x, 1u, u_input.a.x))), Struct_1(1u, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) ^ vec4<u32>(arg_0.x, arg_0.x, 0u, 127303u), vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x))), Struct_1(~(~1u), firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 0u, 1u) >> (vec4<u32>(62922u, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u)))), ~(countOneBits(61182u) & ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 60138u, u_input.a.x), vec3<u32>(39768u, u_input.a.x, 9683u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)) >> (~vec3<u32>(89157u, 1u, _wgslsmith_mod_u32(14473u, u_input.a.x)) % vec3<u32>(32u)));
    let var_2 = func_4(Struct_3(!select(!vec4<bool>(var_0, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false))), Struct_2(~_wgslsmith_mod_vec4_i32(var_1.a, var_1.a) ^ vec4<i32>(var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a.x, var_1.a.x, 11759i), vec4<i32>(var_1.a.x, var_1.a.x, -23343i, var_1.a.x)), 76093i ^ var_1.a.x, -var_1.a.x), Struct_1(30074u, vec4<u32>(_wgslsmith_dot_vec4_u32(var_1.d.b, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 22245u)), ~u_input.a.x, 42003u, ~4294967295u)), var_1.b, func_1(~_wgslsmith_mod_vec3_u32(var_1.d.b.www, vec3<u32>(var_1.c.a, 102318u, 4294967295u))).c, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), var_1.c.b.zzx) & select(0u, 0u, false)))).d;
    let var_3 = select(!select(select(vec4<bool>(var_0, true, false, false), !vec4<bool>(true, false, var_0, false), any(vec2<bool>(true, true))), !vec4<bool>(var_0, true, var_0, var_0), func_2().a), !(!(!func_2().a)), vec4<bool>(any(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(false, var_0, var_0, true), false)), !var_0, true, !select(true, any(vec2<bool>(var_0, var_0)), true)));
    var var_4 = var_1.a.x;
    let var_5 = Struct_4(1u, func_2(), func_4(Struct_3(select(vec4<bool>(true, false, var_0, var_0), select(var_3, var_3, vec4<bool>(true, false, var_3.x, var_3.x)), false)), Struct_2(vec4<i32>(var_1.a.x | -14371i, -var_1.a.x, var_1.a.x, var_1.a.x), var_2, var_2, Struct_1(~37570u, firstLeadingBit(vec4<u32>(var_1.e, u_input.a.x, var_2.a, var_2.a))), 1u)), true);
    let var_6 = 1u;
    var var_7 = func_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.d.a, ~abs(var_6), _wgslsmith_dot_vec2_u32(u_input.a ^ vec2<u32>(0u, 13452u), vec2<u32>(0u, var_2.a))), vec3<u32>(~1u, var_5.c.d.b.x, 31762u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(min(4294967295u, var_7.b.b.x), 12521u & u_input.a.x, ~0u, reverseBits(64988u)), abs(var_1.b.b))));
}

