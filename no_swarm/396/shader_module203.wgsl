struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = select(!vec2<bool>(arg_1.a, arg_1.c.b.x), select(vec2<bool>(any(!arg_1.c.b.yxy), !all(arg_1.c.b.ywz)), select(arg_1.c.b.wx, select(arg_1.c.b.yy, !vec2<bool>(arg_1.c.b.x, true), arg_1.c.b.xy), !any(vec4<bool>(false, true, false, arg_1.c.a))), !select(vec2<bool>(arg_1.c.a, true), arg_1.c.b.xz, false)), arg_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + 1000f))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(!arg_3.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1115f, -128f)))), _wgslsmith_f_op_f32(func_3(abs(vec2<u32>(0u, 1u)), Struct_2(arg_0.b.x, vec4<f32>(-414f, 137f, 196f, -693f), Struct_1(true, arg_0.b, true)), firstTrailingBit(33562u) | ~12189u, -_wgslsmith_add_i32(-2147483647i, 48161i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) * 1000f), -1433f), _wgslsmith_f_op_f32(step(562f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1570f, 148f))))), Struct_1(!(u_input.a.x < u_input.a.x), !(!arg_0.b), false));
    let var_1 = vec3<bool>(arg_3.a, true, all(select(vec2<bool>(any(arg_3.b.yxw), true), select(!var_0.c.b.wy, !arg_0.b.zw, var_0.b.x >= 571f), !arg_3.b.x)));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~1u, 1u), 4294967295u, firstTrailingBit(~firstLeadingBit(~40078u)), 37714u);
    var_0 = Struct_2(arg_0.a, vec4<f32>(-1832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1754f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(340f * 1815f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x + -722f))))), var_0.b.x), arg_0);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -1375f)) * -1000f), 953f);
    return -(~2147483647i);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    var var_0 = 15918u;
    let var_1 = _wgslsmith_clamp_vec3_i32((abs(vec3<i32>(arg_2.x, -1i, 13628i)) ^ vec3<i32>(abs(arg_2.x), i32(-1i) * -36609i, i32(-1i) * -2147483647i)) >> ((vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<u32>(25913u, 0u, 19887u, arg_0)), 58895u) | firstLeadingBit(~vec3<u32>(15151u, 1u, arg_0))) % vec3<u32>(32u)), -(countOneBits(vec3<i32>(-12261i, 2147483647i, 18376i)) | vec3<i32>(arg_1, max(arg_2.x, arg_1), ~8487i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-4673i, ~0i, i32(-1i) * -12091i) ^ abs(arg_2), arg_2, arg_2));
    var_0 = firstTrailingBit(4294967295u);
    return false;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    var var_0 = ~_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(u_input.a.x & u_input.a.x, u_input.a.x)));
    var var_1 = select(all(vec2<bool>(arg_2 & true, any(vec3<bool>(false, arg_0, arg_2)))), select(func_4(13744u, _wgslsmith_add_i32(_wgslsmith_mult_i32(26982i, u_input.a.x), 1i), vec3<i32>(-9103i, ~0i, func_2(Struct_1(false, vec4<bool>(arg_1.a, arg_2, false, arg_0), false), arg_1.a, u_input.a.x, Struct_1(arg_2, vec4<bool>(false, true, true, arg_1.b.x), arg_1.c))), Struct_2(!arg_2, vec4<f32>(-181f, -1299f, -1433f, -1000f), arg_1)), true && select(any(arg_1.b.xx), false, arg_1.b.x && arg_2), -812f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-704f)) * -1082f)), true);
    return u_input.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    let var_0 = ~(~1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2145f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1198f)), -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, 1834f) + vec2<f32>(711f, 903f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1110f, -1046f)))))))));
    return min(_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0), ~vec2<u32>(0u, 100817u))), _wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(var_0, 4294967295u)), select(~vec2<u32>(var_0, 8353u), ~vec2<u32>(var_0, 100851u), select(arg_2.b.xw, vec2<bool>(false, arg_1.x), arg_2.b.zw)))), ~min(select(countOneBits(vec2<u32>(var_0, 0u)), reverseBits(vec2<u32>(77696u, var_0)), arg_2.b.zw), vec2<u32>(_wgslsmith_mult_u32(var_0, var_0), firstTrailingBit(22707u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(1u, ~(~7741u), 1u);
    var_0 = ~(64366u << (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(736u, 29224u, 1u, 1u), vec4<u32>(0u, 4294967295u, 14525u, 1u))) % 32u)) | 1u;
    var_0 = _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 46338u)), func_5(func_1(true, Struct_1(false, vec4<bool>(false, false, true, false), false), true) ^ u_input.a, vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), true), Struct_1(true, select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), true), -30529i)) & reverseBits(1u);
    var_0 = 39824u;
    var var_1 = 21884u;
    var_0 = 4294967295u;
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49565u, 1u), vec2<u32>(4796u, 4294967295u)), _wgslsmith_add_u32(72743u, 25462u)), 1u, 1u), 1u << (~4294967295u % 32u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 27966u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(42775u, 4294967295u), vec2<u32>(0u, 33407u), vec2<u32>(31839u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(88307u, 4130u), _wgslsmith_sub_u32(4294967295u, 0u))));
    var_0 = _wgslsmith_mod_u32(~6592u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(80613u, 1u)), vec2<u32>(1u, 1u)), select(~vec2<u32>(61542u, 4294967295u), countOneBits(vec2<u32>(4294967295u, 66591u)), true) | vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_div_i32(u_input.a.x, 2147483647i) << (min(~0u, 1u) % 32u), -(u_input.a.x | u_input.a.x)), -(~(vec3<i32>(-23253i, u_input.a.x, -14262i) >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)))), vec3<u32>(1u, 45098u, 48941u), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, ~(~u_input.a.x)), ~u_input.a.x, -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 1u), Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, 297f, 1776f, -431f)), Struct_1(false, vec4<bool>(false, false, true, false), true)), firstLeadingBit(~60286u), 50912i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 66336u), Struct_2(true, vec4<f32>(962f, 1000f, -646f, -1000f), Struct_1(false, vec4<bool>(true, true, false, true), true)), 26071u, u_input.a.x)) * -1719f))), -3109f, _wgslsmith_f_op_f32(440f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -2002f, false)), _wgslsmith_f_op_f32(1156f * -1476f)))));
}

