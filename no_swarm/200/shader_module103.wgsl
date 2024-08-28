struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_add_u32(37135u, reverseBits(countOneBits(~_wgslsmith_mod_u32(arg_0.a, arg_0.a))));
    var var_1 = min(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(reverseBits(34266i)), 60092i), _wgslsmith_sub_vec2_i32(-max(vec2<i32>(1i, 1i), vec2<i32>(7327i, -27800i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(28988i, 11084i)))), ~vec2<i32>(-38437i, abs(firstTrailingBit(75194i))));
    var_1 = select(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(min(-55290i, var_1.x), 2147483647i), firstLeadingBit(abs(vec2<i32>(-2147483647i, var_1.x)))), vec2<i32>(1111i, 0i), (vec2<i32>(1i, 1i) & (vec2<i32>(44005i, var_1.x) & vec2<i32>(var_1.x, var_1.x))) >> (u_input.a.yy % vec2<u32>(32u))), -(vec2<i32>(-1i) * -vec2<i32>(var_1.x, 1i)) >> (countOneBits(u_input.a.xz) % vec2<u32>(32u)), select(!vec2<bool>(true, select(true, true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), var_1.x > 32060i), !vec2<bool>(true, any(vec4<bool>(false, true, false, true)))));
    var_1 = select(vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_add_i32(var_1.x, var_1.x), firstTrailingBit(-var_1.x)), -select(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x, true)), ~min(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 0i), vec2<i32>(var_1.x, -28509i)) >> (_wgslsmith_div_vec2_u32(u_input.a.yz, u_input.a.xx) % vec2<u32>(32u)), vec2<i32>(2447i, ~1i)), true);
    let var_2 = -vec3<i32>(var_1.x, -(i32(-1i) * -var_1.x), firstLeadingBit(~21371i) >> (_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), ~u_input.a) % 32u));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, var_0, u_input.a.x), ~abs(u_input.a) >> (vec4<u32>(4294967295u, select(4294967295u, u_input.a.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5933u, 4257u), u_input.a.zxx), 0u) % vec4<u32>(32u))), 36876u, 1u);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(Struct_1(abs(~u_input.a.xz), -2147483647i, ~_wgslsmith_add_u32(4294967295u, ~u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f * -805f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-210f, -346f, -470f, 901f), vec4<f32>(-135f, -1095f, 678f, -432f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1387f, -982f, -281f, 212f), vec4<f32>(728f, -273f, 1158f, -940f))))))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-357f, -558f, -629f), vec3<f32>(1343f, 513f, -587f)))))), vec2<bool>(true, true), Struct_3(u_input.a.x), !all(vec4<bool>(true, true, true, true)), ~(~_wgslsmith_add_i32(38454i, -1i))), 27887u & (1u | _wgslsmith_sub_u32(u_input.a.x, func_3(Struct_3(u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(round(var_0.c.a.x));
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(-1030f));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(139f, var_0, arg_1))), arg_3.b.xzx, arg_3.c.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.a) + arg_3.b.wyw)) * _wgslsmith_f_op_vec3_f32(arg_3.b.wwz - arg_3.c.a));
    var var_3 = false;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-938f + arg_3.b.x) - _wgslsmith_div_f32(665f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(arg_3.b.x, 1036f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2013f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_mod_vec4_u32(abs(u_input.a), vec4<u32>(101891u, 1u, 9324u, 1u)) & firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -424f), arg_0, func_2()));
    let var_1 = vec3<i32>(~46388i, 1i, func_2().a.b);
    let var_2 = func_2();
    let var_3 = !arg_0;
    let var_4 = vec4<u32>(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 22161u, 4294967295u, 32170u), u_input.a ^ vec4<u32>(var_2.d, 0u, 64705u, 0u))), u_input.a.x, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_2.d, var_2.d, 0u)), ~vec3<u32>(19134u, 90443u, 19540u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_2.c.c.a, 0u), u_input.a.zxw, vec3<u32>(var_2.c.c.a, u_input.a.x, 1u))), 0u);
    return Struct_3(~abs(~23255u));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = ~_wgslsmith_sub_u32(func_2().a.a.x, arg_0.c.a);
    let var_2 = vec3<f32>(var_0.c.a.x, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(947f * _wgslsmith_f_op_f32(480f - var_0.c.a.x)), var_0.a.d)), _wgslsmith_f_op_f32(261f + _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_3 = Struct_1(~(~(u_input.a.zy >> (u_input.a.zw % vec2<u32>(32u)))), 2147483647i, min(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c.c.a, var_0.c.c.a << (0u % 32u)), ~(vec2<u32>(var_1, u_input.a.x) ^ vec2<u32>(u_input.a.x, var_1))), ~var_0.d), 1000f);
    let var_4 = -2147483647i;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1722f, 1000f, _wgslsmith_f_op_f32(sign(911f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(317f, -1000f, -1000f), vec3<f32>(-639f, 1000f, -482f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, -294f, 1207f))))), select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false)))), func_1(all(vec3<bool>(false, false, true)) & true, -215f), true, ~firstLeadingBit(-132i)), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(select(-1000f, 1554f, true))), select(!vec4<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, false, false)), select(true, false, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false), true), vec4<bool>(false, true, true, true), true), select(!any(vec2<bool>(true, true)), true, false)));
}

