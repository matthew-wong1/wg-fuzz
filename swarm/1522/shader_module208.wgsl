struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), ~1i, abs(vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~reverseBits(u_input.a.x), ~min(13709u, 51491u))), -505f, ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.b, 1u), vec3<u32>(u_input.a.x, 12822u, u_input.a.x), true), vec3<u32>(23143u, 1u, u_input.b)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 22336u, 36874u), true), vec3<u32>(1u, u_input.a.x, 4294967295u) & vec3<u32>(0u, 4294967295u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(49515u, u_input.b, 47415u), vec3<u32>(u_input.b, 0u, u_input.a.x)))));
    return !vec4<bool>(!var_0.a.x, !(~var_0.e.x == abs(17954u)), true, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = select(_wgslsmith_add_vec3_u32(arg_2.c, arg_2.e) >> (~vec3<u32>(u_input.b, min(9004u, arg_2.c.x), ~0u) % vec3<u32>(32u)), arg_1.c, ~_wgslsmith_sub_i32(-arg_2.b, _wgslsmith_div_i32(arg_1.b, arg_1.b)) != arg_1.b);
    var var_1 = abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(arg_1.b, arg_1.b, arg_2.b)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -2147483647i, arg_1.b), vec3<i32>(arg_1.b, arg_1.b, 0i), vec3<i32>(arg_2.b, 1i, arg_1.b)), abs(vec3<i32>(-2147483647i, 0i, arg_1.b)))));
    var_0 = _wgslsmith_mult_vec3_u32(firstTrailingBit(arg_1.e), ~select(arg_1.c, _wgslsmith_add_vec3_u32(arg_2.e, vec3<u32>(1u, 1u, 0u)), arg_0.yyy));
    let var_2 = -max(_wgslsmith_sub_i32(min(arg_2.b, ~var_1.x), var_1.x), (min(60741i, -1i) | (var_1.x | 2147483647i)) ^ -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(arg_3.x, -1112f), _wgslsmith_f_op_f32(-132f + 1000f))))))));
    return any(vec4<bool>(all(!select(arg_1.a, vec3<bool>(arg_0.x, true, true), arg_1.a.x)), !arg_1.a.x, arg_2.a.x, func_3().x));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = !(((~1u | ~u_input.a.x) & 57527u) > _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, ~4294967295u), ~u_input.b));
    var_0 = true;
    var_0 = func_4(vec4<bool>(all(func_3()), false, !(true | any(vec3<bool>(false, true, false))), true || any(func_3().yxw)), Struct_1(!vec3<bool>(true, all(vec4<bool>(false, true, true, false)), false), countOneBits(1i), ~(~(~vec3<u32>(71703u, u_input.b, 80315u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-169f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-184f)) + 1355f))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x >> (1u % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), ~vec3<u32>(0u, u_input.a.x, 29578u)))), Struct_1(!vec3<bool>(true, func_3().x, true), arg_0.x, ~(select(vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<u32>(4294967295u, 0u, 57000u), false) & vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_f_op_f32(min(258f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-288f - -2102f), 1f))), vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(floor(-911f))) + _wgslsmith_f_op_f32(trunc(467f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1651f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1968f - 658f)))));
    let var_1 = arg_0.x;
    let var_2 = ~_wgslsmith_mult_u32(abs(~firstTrailingBit(53768u)), 1969u);
    return countOneBits(-2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = all(vec3<bool>(arg_0.a.x, countOneBits(arg_0.c.x) > reverseBits(1u << (0u % 32u)), arg_0.a.x));
    var var_1 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(func_2(-vec4<i32>(0i, arg_1.b, -89994i, arg_1.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(33677i, arg_0.b, -53750i, arg_0.b), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 2147483647i)), select(func_2(vec4<i32>(arg_1.b, -7170i, arg_1.b, arg_1.b)), arg_1.b, true & var_0), -1i)), abs(~(-(~vec4<i32>(-40688i, arg_0.b, arg_1.b, arg_1.b)))));
    var var_2 = arg_0;
    return vec3<i32>(var_2.b, max(-2147483647i, _wgslsmith_mod_i32(-28120i, -1i)), _wgslsmith_add_i32(-2147483647i, 6367i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(all(vec2<bool>(false, false)), true != all(vec2<bool>(false, true)), !any(vec2<bool>(true, false))));
    var_0 = !vec3<bool>(!(!(true | var_0.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -3796i, 11111i), vec3<i32>(2147483647i, 1i, 18652i)) != (_wgslsmith_dot_vec3_i32(vec3<i32>(20768i, -2147483647i, 67735i), vec3<i32>(-13062i, 27890i, -7297i)) | 0i), u_input.b != ~u_input.b);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~func_1(Struct_1(vec3<bool>(var_0.x, var_0.x, true), 23039i, vec3<u32>(19241u, 26766u, u_input.a.x), -1000f, vec3<u32>(0u, u_input.b, 0u)), Struct_1(vec3<bool>(var_0.x, false, var_0.x), 26211i, vec3<u32>(u_input.b, 4294967295u, 4294967295u), 701f, vec3<u32>(u_input.a.x, 4294967295u, 3985u))), vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_i32(firstTrailingBit(14417i << (~u_input.a.x % 32u)), -2147483647i), _wgslsmith_add_i32(firstLeadingBit(1i), -_wgslsmith_div_i32(abs(2147483647i), 29902i)));
    var var_2 = Struct_1(!vec3<bool>(false | var_0.x, !(!var_0.x), (u_input.a.x >> (67769u % 32u)) == _wgslsmith_mult_u32(u_input.b, 21364u)), -var_1.x, _wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(u_input.b, u_input.b, 20625u)) & (~vec3<u32>(0u, 1u, 1u) ^ vec3<u32>(66986u, 1u, u_input.a.x)), ~vec3<u32>(~u_input.a.x, 4294967295u, 1u)), -752f, _wgslsmith_add_vec3_u32(select(~min(vec3<u32>(10297u, 8154u, u_input.b), vec3<u32>(1u, u_input.a.x, u_input.a.x)), ~(vec3<u32>(u_input.a.x, u_input.b, 80748u) >> (vec3<u32>(u_input.a.x, 56741u, u_input.a.x) % vec3<u32>(32u))), !func_3().zzz), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(67489u, 4294967295u, u_input.a.x), vec3<u32>(84514u, 43005u, u_input.b)))));
    let var_3 = var_1.x;
    var var_4 = Struct_1(!var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(41895i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_2.b, var_1.x, var_2.b) >> (vec4<u32>(65599u, var_2.c.x, 3492u, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_2.b, var_1.x, 69758i), vec4<i32>(37357i, var_1.x, var_3, var_3)))), -var_1.xy), vec3<u32>(max(var_2.c.x, firstTrailingBit(var_2.c.x) | var_2.e.x), 25331u, ~(_wgslsmith_add_u32(0u, var_2.c.x) ^ var_2.c.x)), _wgslsmith_f_op_f32(901f + 621f), vec3<u32>(countOneBits(u_input.a.x), ~(~u_input.a.x), 1u) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.x, 4294967295u, select(12412u, var_2.e.x, true)), var_2.c) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-924f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(308f, _wgslsmith_f_op_f32(max(var_4.d, -123f)))), _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(926f * var_4.d))), var_4.b, 1u, vec2<u32>(_wgslsmith_sub_u32(72416u, var_2.e.x), firstTrailingBit(~_wgslsmith_add_u32(53830u, var_4.e.x))), ~var_2.b);
}

