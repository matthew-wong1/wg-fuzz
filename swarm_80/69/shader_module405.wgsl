struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 37959u, 4294967295u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec2<i32>(-(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, 18557i))), u_input.a);
    var var_1 = (110u & ~(~(~global0.x))) ^ max(_wgslsmith_dot_vec3_u32(select(~global0.yxz, ~global0.wyw, vec3<bool>(true, true, true)), abs(vec3<u32>(1u, global0.x, 0u) << (global0.zzy % vec3<u32>(32u)))), 1u);
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(var_0.x, u_input.a), firstTrailingBit(-80877i), _wgslsmith_dot_vec3_i32(vec3<i32>(13290i, var_0.x, u_input.a), vec3<i32>(u_input.a, 2147483647i, 12971i))), ~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(13413i, var_0.x, 0i), vec3<i32>(2147483647i, 2147483647i, -1290i), vec3<i32>(u_input.a, 4105i, 2147483647i)), vec3<i32>(33149i, 0i, u_input.a))), ~vec4<u32>(global0.x, global0.x, _wgslsmith_div_u32(global0.x, 120960u), 1u) ^ vec4<u32>(global0.x, ~global0.x, select(abs(1u), _wgslsmith_div_u32(12545u, global0.x), select(false, false, false)), 4294967295u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, -901f)), vec2<f32>(1f, 1f))))), !(-1i >= _wgslsmith_dot_vec3_i32(vec3<i32>(-4891i, u_input.a, u_input.a) >> (global0.zwy % vec3<u32>(32u)), -vec3<i32>(var_0.x, 54452i, -25920i))), -(vec2<i32>(~var_0.x, var_0.x) ^ vec2<i32>(min(var_0.x, u_input.a), u_input.a)));
    var_0 = vec2<i32>(_wgslsmith_div_i32(~var_2.a.x, -42148i), _wgslsmith_div_i32(var_0.x, -1i));
    var_0 = select(var_2.a.zy, -(~vec2<i32>(u_input.a, 0i) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(var_0.x, -34960i))), vec2<bool>(var_2.d | all(select(vec4<bool>(var_2.d, false, true, true), vec4<bool>(true, false, var_2.d, var_2.d), vec4<bool>(var_2.d, var_2.d, false, true))), false));
    return countOneBits(~vec4<u32>(~_wgslsmith_mult_u32(global0.x, 49198u), firstTrailingBit(min(0u, 3932u)), ~firstTrailingBit(global0.x), global0.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec4<u32> {
    global0 = firstTrailingBit(_wgslsmith_mod_vec4_u32(func_3(), min(firstTrailingBit(~vec4<u32>(global0.x, 42804u, 1u, 4294967295u)), ~(~vec4<u32>(global0.x, global0.x, 4294967295u, 4294967295u)))));
    var var_0 = vec2<bool>(false, true);
    var_0 = select(select(select(select(!vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), vec2<bool>(var_0.x, true)), vec2<bool>(false, true)), select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, var_0.x)), !(!var_0.x)), !vec2<bool>(var_0.x, !var_0.x), !(!(!vec2<bool>(var_0.x, var_0.x)))), vec2<bool>(!(any(vec2<bool>(var_0.x, var_0.x)) || (var_0.x == var_0.x)), all(select(!vec2<bool>(var_0.x, false), vec2<bool>(true, true), true))), max(~_wgslsmith_add_u32(4294967295u, global0.x), 4294967295u) < ~21254u);
    var var_1 = global0.x != _wgslsmith_sub_u32(10785u, ~global0.x);
    var var_2 = _wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(33227u, global0.x, 0u, 0u)), ~vec4<u32>(4776u, 2488u, abs(global0.x), _wgslsmith_sub_u32(global0.x, global0.x)) & countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, 56937u, global0.x), vec4<u32>(global0.x, 3566u, 0u, global0.x), vec4<u32>(31362u, 59462u, 0u, global0.x)) & vec4<u32>(global0.x, global0.x, global0.x, 0u)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 4294967295u, var_2.x, 0u) << (vec4<u32>(2334u, var_2.x, 1u, 59665u) % vec4<u32>(32u)), vec4<u32>(var_2.x, global0.x, var_2.x, 1000u) << (vec4<u32>(global0.x, var_2.x, global0.x, 0u) % vec4<u32>(32u))), ~var_2.x, ~_wgslsmith_mod_u32(1u, 4294967295u), ~1u), min(vec4<u32>(4294967295u, 69570u, ~var_2.x, _wgslsmith_sub_u32(global0.x, 1u)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, var_2.x), vec4<u32>(33385u, global0.x, var_2.x, 1u))))), firstLeadingBit(reverseBits(select(abs(vec4<u32>(var_2.x, 1u, var_2.x, global0.x)), vec4<u32>(var_2.x, var_2.x, 1u, global0.x), var_0.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a)), vec3<i32>(abs(1i), firstLeadingBit(u_input.a), u_input.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(11252u, 4294967295u, global0.x, 64048u)), func_2(vec4<f32>(arg_0, -479f, -1173f, arg_0), 733f)), vec4<u32>(66613u, ~97938u, 23477u, 4294967295u >> (global0.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1022f, -1174f)))), false, vec2<i32>(-33345i, u_input.a << (reverseBits(global0.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(528f)))), Struct_2(vec3<i32>(countOneBits(1i), 0i, select(u_input.a << (0u % 32u), ~u_input.a, all(vec3<bool>(false, true, false)))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), Struct_1(select(vec3<i32>(u_input.a, u_input.a, 12023i) & vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, -1i) & vec3<i32>(-2147483647i, -4975i, -1i), vec3<bool>(true, true, true)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 1u, global0.x, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 45812u, global0.x), vec4<u32>(global0.x, global0.x, 1u, global0.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)))), true, vec2<i32>(29922i, u_input.a) & (vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(global0.x, 0u) % vec2<u32>(32u))))), Struct_1(-countOneBits(~vec3<i32>(u_input.a, 1i, u_input.a)), vec4<u32>(21368u, ~1u, global0.x, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -435f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 947f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1373f, arg_0) - vec2<f32>(156f, 161f))))), select(true, !all(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 20498i), vec2<i32>(u_input.a, 1i)), select(vec2<i32>(23651i, -22443i), vec2<i32>(u_input.a, 19826i), false), ~vec2<i32>(-1i, 1i)), vec2<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 19194i, u_input.a, u_input.a), vec4<i32>(0i, -2147483647i, -2147483647i, u_input.a))))), Struct_1(_wgslsmith_mult_vec3_i32(-max(vec3<i32>(u_input.a, 1i, -11951i), vec3<i32>(u_input.a, 12272i, u_input.a)), select(~vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(0i, 1i, u_input.a), false)), func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -258f, -1270f, arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, -333f), vec4<f32>(1076f, -1401f, arg_0, arg_0), false)))), arg_0), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), true, firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 14024i), vec2<i32>(-1i, 0i)) >> (~vec2<u32>(1u, global0.x) % vec2<u32>(32u)))));
    global0 = vec4<u32>(11095u, 1u | global0.x, _wgslsmith_add_u32(firstTrailingBit(countOneBits(_wgslsmith_sub_u32(4294967295u, global0.x))), var_0.a.b.x), abs(var_0.d.b.x));
    let var_1 = any(var_0.c.b);
    var var_2 = var_0.e.b.x;
    var_2 = 1u;
    return Struct_1(~(-var_0.a.a), vec4<u32>(~(~_wgslsmith_mod_u32(var_0.c.c.b.x, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, var_0.e.b.x), ~7633u), select(global0.x, global0.x, true)), 4294967295u, 16197u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.c))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f * arg_0)), arg_0))), all(!vec2<bool>(var_1 || var_0.c.c.d, true)), vec2<i32>(-u_input.a, ~_wgslsmith_mult_i32(abs(1i), -27969i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(-(arg_1.a << (vec3<u32>(4294967295u, _wgslsmith_sub_u32(arg_3, 39223u), 53936u) % vec3<u32>(32u))), vec4<bool>(true, !all(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, true, false))), any(vec4<bool>(true, true, arg_1.d, true)), all(select(select(vec2<bool>(true, arg_0.x), vec2<bool>(false, false), vec2<bool>(false, arg_1.d)), vec2<bool>(arg_0.x, true), true))), func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = select(var_0.b.yxx, !vec3<bool>(false == arg_0.x, true, any(var_0.b.xw)), all(vec4<bool>(arg_1.d, false, true, true)));
    let var_2 = arg_1;
    var var_3 = vec3<bool>(global0.x != var_0.c.b.x, _wgslsmith_f_op_f32(var_2.c.x - var_2.c.x) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.x))), any(select(arg_0.wz, !vec2<bool>(var_0.b.x, var_0.c.d), any(vec4<bool>(var_1.x, false, false, var_0.b.x)))));
    global0 = ~vec4<u32>(arg_1.b.x, ~abs(var_2.b.x), 26031u, var_2.b.x);
    return func_1(var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(941f - 430f), _wgslsmith_f_op_f32(-573f * 766f)))), u_input.a, _wgslsmith_mod_u32(abs(~global0.x), global0.x | 43604u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1296f, 611f))) - func_1(_wgslsmith_f_op_f32(select(-441f, _wgslsmith_f_op_f32(f32(-1f) * -420f), any(vec3<bool>(false, true, false))))).c.x), Struct_2(~select(-vec3<i32>(u_input.a, u_input.a, 1i), abs(vec3<i32>(u_input.a, u_input.a, -35145i)), false), select(vec4<bool>(global0.x == 27214u, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_f32(-func_4(vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(u_input.a, 61464i, 49617i), vec4<u32>(10454u, 0u, global0.x, 45769u), vec2<f32>(1635f, 1287f), true, vec2<i32>(14614i, u_input.a)), u_input.a, global0.x).c.x))), Struct_1(-func_4(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), Struct_1(vec3<i32>(-2147483647i, u_input.a, -11531i), vec4<u32>(global0.x, 15114u, global0.x, 33096u), vec2<f32>(-836f, -1202f), false, vec2<i32>(u_input.a, u_input.a)), 1i, _wgslsmith_mod_u32(global0.x, 29929u)).a, ~vec4<u32>(global0.x, 4294967295u ^ global0.x, global0.x, global0.x >> (global0.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1166f, -2389f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(601f, -1000f)))), func_4(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), func_1(503f), u_input.a, ~9406u >> (_wgslsmith_mod_u32(global0.x, global0.x) % 32u)).d, vec2<i32>(-1i) * -(~vec2<i32>(3628i, 0i))), Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -2147483647i) << (vec3<u32>(global0.x, global0.x, 4294967295u) % vec3<u32>(32u)), -(~vec3<i32>(26932i, u_input.a, u_input.a))), vec4<u32>(0u, global0.x, global0.x, func_3().x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-870f, -640f))))), true, _wgslsmith_div_vec2_i32(~func_4(vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(-30230i, 2147483647i, u_input.a), vec4<u32>(global0.x, 58439u, global0.x, global0.x), vec2<f32>(551f, 1762f), false, vec2<i32>(u_input.a, -1i)), -2147483647i, global0.x).e, (vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)) ^ -vec2<i32>(u_input.a, -2147483647i))));
    var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(var_0.a.a, vec3<i32>(var_0.d.e.x, -2147483647i, u_input.a)), abs(~(~var_0.a.b)), var_0.e.c, true, var_0.d.a.xx), -1000f, Struct_2(-(~vec3<i32>(u_input.a, u_input.a, var_0.c.a.x)) >> (~vec3<u32>(var_0.a.b.x, 1u, 1u) % vec3<u32>(32u)), !select(!var_0.c.b, select(vec4<bool>(true, false, var_0.c.c.d, true), vec4<bool>(var_0.a.d, var_0.d.d, true, false), var_0.c.b), vec4<bool>(var_0.e.d, var_0.c.b.x, var_0.c.c.d, var_0.d.d)), func_1(var_0.b)), var_0.d, var_0.d);
    var var_1 = var_0.e.b.x;
    var var_2 = -abs(var_0.d.e);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1918f), -1397f);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.a.x, u_input.a, var_2.x, -2147483647i), ~vec4<i32>(u_input.a, -1i, var_0.e.e.x, var_0.d.e.x)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(2151i, 1i, var_0.d.a.x, -38533i), vec4<i32>(var_2.x, var_0.a.e.x, var_0.d.a.x, u_input.a)), -vec4<i32>(var_0.a.a.x, var_0.d.a.x, -17956i, u_input.a)), select(select(vec4<bool>(false, false, var_0.e.d, true), var_0.c.b, var_0.c.b), select(var_0.c.b, var_0.c.b, true), var_0.a.d && var_0.a.d)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2407f, var_3.x, -825f, 1023f), vec4<f32>(2022f, 287f, -664f, -1584f), var_0.d.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_0.b, 577f, var_3.x)))))))), _wgslsmith_f_op_vec2_f32(var_0.a.c + vec2<f32>(313f, var_0.d.c.x)));
}

