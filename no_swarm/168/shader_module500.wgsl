struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 1i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<i32>(-1i) * -(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a, 36663i)), -vec2<i32>(-19218i, 0i)) ^ ~vec2<i32>(0i, 17994i));
    let var_1 = select(select(vec4<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), all(vec3<bool>(false, true, false)), true), select(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), true), true)), select(vec4<bool>(true, false, all(vec3<bool>(false, true, false)) | false, select(true, false, true)), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false), true), -2147483647i != firstLeadingBit(u_input.b));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-984f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -433f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-610f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) * -473f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1009f))))) * -406f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f + 924f)) * _wgslsmith_f_op_f32(f32(-1f) * -618f)), _wgslsmith_f_op_f32(max(560f, _wgslsmith_f_op_f32(ceil(927f)))))));
    var var_2 = vec4<f32>(956f, _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1511f + 349f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f + -696f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(sign(-225f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1513f * 573f))))));
    return ~vec3<i32>(u_input.a & firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(u_input.b, var_0.x, 2147483647i))), _wgslsmith_clamp_i32(var_0.x, var_0.x & 0i, u_input.b) | 2147483647i, countOneBits(~1i));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> bool {
    global0 = arg_3.x;
    let var_0 = vec3<bool>(false, arg_2 && true, all(select(!select(vec4<bool>(true, arg_2, false, false), vec4<bool>(true, false, arg_2, false), arg_2), !vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(any(vec4<bool>(true, arg_2, arg_2, true)), any(vec3<bool>(arg_2, true, true)), true, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1367f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(arg_3.xyw, vec3<f32>(-856f, 1000f, -1000f))), arg_3.yxz)) - arg_3.xyy)), Struct_1(1535f, ~(~vec4<i32>(-37899i, -1i, u_input.b, 0i)) >> (max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(70958u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(48030u, 29351u, 31281u)), ~22277u), -min(func_3(), ~vec3<i32>(2147483647i, u_input.b, 186i))), Struct_1(253f, ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-6578i, arg_0, arg_0, u_input.b), -vec4<i32>(-2147483647i, u_input.a, arg_0, -2147483647i), vec4<i32>(-2147483647i, 0i, -2147483647i, -16163i)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), -(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_1, arg_0), vec3<i32>(u_input.b, -1i, u_input.b)) | -vec3<i32>(2147483647i, u_input.a, arg_0))), select(select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_1, arg_0, 2147483647i)), -vec3<i32>(u_input.a, arg_1, -9115i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 0i, arg_0), vec3<i32>(arg_1, u_input.a, arg_0)), vec3<i32>(-18900i, u_input.a, arg_0)), !(false | arg_2)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, u_input.b, arg_0), ~vec3<i32>(arg_1, -1i, u_input.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, -19236i, -100008i), vec3<i32>(2147483647i, 1i, arg_1) >> (vec3<u32>(7649u, 62086u, 15732u) % vec3<u32>(32u)))), false), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) + _wgslsmith_f_op_f32(-148f - arg_3.x)), arg_3.x, true)), vec4<i32>(reverseBits(u_input.b), arg_0, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 77908i, 1i) << (vec3<u32>(30856u, 0u, 0u) % vec3<u32>(32u)), select(vec3<i32>(-8307i, 50681i, 180i), vec3<i32>(-2147483647i, u_input.a, 0i), var_0))), vec4<u32>(countOneBits(13186u), ~_wgslsmith_add_u32(899u, 47040u), ~(~0u), 1u), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_1, arg_1), vec3<i32>(-9915i, u_input.b, 7823i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.zz + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)), var_1.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_3.x)), 814f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_3.zxx)), arg_3.xzx, all(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, arg_2, true, var_0.x), vec4<bool>(true, false, arg_2, true)))))), var_1.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.x))), min(~(~var_1.e.b), vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a), abs(63062i), 1i, -22162i)), ~(~var_1.c.c), vec3<i32>(_wgslsmith_mult_i32(65867i, var_1.d.x), -14628i, _wgslsmith_clamp_i32(var_1.d.x, -36124i, arg_1))), abs(vec3<i32>(-u_input.b, ~(~u_input.a), -6923i)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1941f * var_2.x))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, -20168i, arg_0, 2147483647i) << (var_1.c.c % vec4<u32>(32u)), vec4<i32>(-1i, ~arg_0, 1i, arg_1 << (0u % 32u))), ~var_1.b.c, vec3<i32>(arg_1, 2147483647i, _wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-74711i, var_1.c.b.x), var_1.c.b.ww)))));
    return any(vec4<bool>(!(arg_2 & !arg_2), !(!arg_2), select(!(arg_0 < var_1.d.x), arg_2, all(vec4<bool>(arg_2, true, true, false))), true));
}

fn func_1() -> bool {
    global1 = (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 55695i), vec2<i32>(u_input.b, 36280i)))) | _wgslsmith_clamp_i32(u_input.a << (_wgslsmith_sub_u32(13969u, 1u) % 32u), 10931i, -2147483647i);
    global1 = ~(-32355i);
    var var_0 = ~(~(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a) | vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 1i))));
    return select(true || (func_2(firstTrailingBit(u_input.b), 25195i, any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1860f, 186f, -855f, 200f))) || true), true, true);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-991f)), _wgslsmith_f_op_f32(abs(703f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-306f * -351f) - _wgslsmith_f_op_f32(round(-1492f)))))), reverseBits(vec4<i32>(firstLeadingBit(1570i), ~u_input.b, ~u_input.a, ~(-2147483647i))) ^ abs(vec4<i32>(68967i, -u_input.a, -u_input.a, firstLeadingBit(-59083i))), _wgslsmith_clamp_vec4_u32((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u), vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(1u, 4294967295u, arg_1.x, 4294967295u)) & firstTrailingBit(vec4<u32>(90408u, arg_1.x, arg_1.x, arg_1.x))) | vec4<u32>(arg_1.x | 0u, _wgslsmith_mod_u32(4876u, arg_1.x), ~43378u, arg_1.x), max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 30643u, 45772u, arg_1.x) ^ vec4<u32>(arg_1.x, 0u, 0u, 26356u), ~vec4<u32>(4294967295u, 42453u, 4294967295u, 27634u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), ~vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(1u), arg_1.x, min(arg_1.x, 0u), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 4294967295u, arg_1.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.x, 0u), arg_1), arg_1.x, countOneBits(26852u), ~22630u))), _wgslsmith_mod_vec3_i32(firstTrailingBit(select(select(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(-9350i, u_input.a, 32i), false), vec3<i32>(9258i, u_input.a, u_input.b), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)))), -select(vec3<i32>(1i, 0i, 25972i), vec3<i32>(u_input.b, u_input.b, u_input.a), false) >> (~(~arg_1) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a, -1312f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 1f), arg_0)) * _wgslsmith_f_op_f32(ceil(-578f))), vec4<i32>(-min(u_input.b, 2147483647i), abs(-var_0.b.x), -var_0.d.x, _wgslsmith_add_i32(0i, firstLeadingBit(var_0.b.x))) & abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(18017i, -20958i, var_0.b.x, u_input.b), var_0.b)), select(var_0.c, reverseBits(vec4<u32>(~var_0.c.x, var_0.c.x | 47939u, ~39684u, 0u >> (var_0.c.x % 32u))), select(vec4<bool>(true, false, arg_0, !arg_0), select(!vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, false), all(vec4<bool>(arg_0, true, false, arg_0))), vec4<bool>(arg_0, !arg_0, true, any(vec3<bool>(arg_0, false, true))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_0.d.x, var_0.b.x, u_input.a), abs(var_0.b.xwx) | vec3<i32>(i32(-1i) * -1i, u_input.a ^ var_0.d.x, firstLeadingBit(0i)), var_0.d));
    let var_2 = select(!vec2<bool>(true, !select(arg_0, arg_0, arg_0)), !vec2<bool>(!arg_0, true), !vec2<bool>(arg_0, !(!arg_0)));
    var var_3 = var_1.a;
    global1 = -56163i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(0i <= u_input.b, true, true, func_1()))), vec3<u32>(4294967295u, _wgslsmith_mult_u32(0u, 5097u), _wgslsmith_mult_u32(min(4294967295u, _wgslsmith_mod_u32(47484u, 74121u)), min(52270u, _wgslsmith_add_u32(44838u, 7648u)))));
    var var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(var_0.d, vec3<i32>(-2147483647i, -55431i, var_0.b.x)), vec3<i32>(45686i, -2147483647i, var_0.b.x) & vec3<i32>(u_input.a, var_0.d.x, var_0.d.x)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 29358i)), select(vec3<i32>(17766i, -2147483647i, u_input.a), var_0.b.yyx, vec3<bool>(true, false, true)))), var_0.d);
    global0 = var_0.a;
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -u_input.b, var_1.x) | vec3<i32>(~(var_1.x << (19949u % 32u)), _wgslsmith_dot_vec3_i32(var_0.b.xwx, vec3<i32>(var_1.x, -9390i, u_input.b)), var_0.d.x), var_0.b.zyy & -vec3<i32>(2147483647i & var_1.x, ~u_input.a, var_1.x));
    global1 = ~firstTrailingBit(104012i);
    var var_2 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, select(false, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !vec3<bool>(true, 1u <= (0u | var_0.c.x), (31244u < var_0.c.x) != func_2(var_0.b.x, var_0.d.x, true, vec4<f32>(var_0.a, var_0.a, -126f, -754f))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1331f * _wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(ceil(var_0.a)))), -472f)), 1279f, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2323f))), select(_wgslsmith_sub_i32(var_0.b.x, var_1.x), ~var_0.b.x, func_1()), -abs(~vec3<i32>(1i, u_input.b, var_0.b.x)));
}

