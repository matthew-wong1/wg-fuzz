struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f - _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(arg_0.x - 457f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-761f))))) - arg_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505f * 739f))) + -159f));
    var_0 = _wgslsmith_f_op_f32(round(-1502f));
    var var_1 = ~_wgslsmith_sub_u32(89396u, _wgslsmith_sub_u32(~17239u, _wgslsmith_clamp_u32(13584u, 0u, 0u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    return ~(~0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    var var_0 = vec2<u32>(42937u & arg_0.b.b.x, ~(arg_0.b.b.x ^ arg_0.b.b.x) & 1u) ^ vec2<u32>(abs(arg_0.b.b.x), arg_0.b.b.x);
    let var_1 = arg_0.a.zxy;
    var_0 = min(vec2<u32>(arg_0.b.b.x, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, arg_0.b.a, arg_0.b.a, -782f)) + vec4<f32>(306f, -1186f, arg_0.b.a, -669f)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(var_0.x), abs(arg_0.b.b.x), 0u), abs(50611u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(21544u, 9141u), vec2<u32>(83864u, var_0.x)), ~arg_0.b.b.zy), ~abs(vec2<u32>(4294967295u, 4294967295u)))));
    let var_2 = -abs(select(vec2<i32>(u_input.b.x, u_input.b.x >> (53779u % 32u)), _wgslsmith_clamp_vec2_i32(max(u_input.a, u_input.a), vec2<i32>(u_input.b.x, 0i), firstLeadingBit(u_input.a)), var_1.zz));
    var_0 = arg_0.b.b.zx;
    return u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_2(vec4<bool>(!any(vec3<bool>(arg_1, false, arg_1)), ((arg_1 != arg_1) || any(vec3<bool>(true, arg_1, false))) && !(!arg_1), arg_1, all(vec4<bool>(arg_1, arg_1, true, true && arg_1))), arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1067f, var_0.b.a), vec2<f32>(var_0.b.a, arg_2.a), vec2<bool>(false, true))), _wgslsmith_div_vec2_f32(vec2<f32>(201f, 719f), vec2<f32>(-1724f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 445f) + vec2<f32>(arg_2.a, var_0.b.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(935f, -667f) * vec2<f32>(996f, var_0.b.a)) * vec2<f32>(arg_2.a, 815f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, -689f) + vec2<f32>(-501f, -864f)), vec2<f32>(arg_2.a, var_0.b.a)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, 418f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, -468f))))));
    let var_2 = !(!(!var_0.a.xy));
    let var_3 = vec2<u32>(var_0.b.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(8035u, _wgslsmith_add_u32(firstTrailingBit(32642u), ~3732u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.b.b, vec4<u32>(arg_2.b.x, 54082u, var_0.b.b.x, var_0.b.b.x)), arg_2.b.x)), abs(var_0.b.b.zyw)));
    var_0 = Struct_2(!vec4<bool>(!(arg_2.b.x != var_0.b.b.x), (var_0.b.b.x ^ 12229u) >= ~var_0.b.b.x, false, all(vec3<bool>(false, true, arg_1))), Struct_1(1838f, var_0.b.b));
    return vec4<i32>(-arg_0, 24807i >> (_wgslsmith_mult_u32(var_0.b.b.x, func_3(vec4<f32>(arg_2.a, -544f, -1002f, arg_2.a)) >> (~0u % 32u)) % 32u), -40796i, arg_0);
}

fn func_5(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(-548f, ~vec4<u32>(_wgslsmith_div_u32(4294967295u, 61599u), ~1u, 1u, ~1u)));
    var var_1 = var_0.b;
    var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1000f - var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -814f))), vec4<u32>(~var_0.b.b.x, _wgslsmith_dot_vec3_u32(~firstLeadingBit(var_1.b.xyz), var_0.b.b.wxy), firstTrailingBit(_wgslsmith_clamp_u32(var_0.b.b.x, 1u, min(var_1.b.x, 4294967295u))), _wgslsmith_sub_u32(41771u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(17439u, 0u, 22057u, 0u), vec4<u32>(91594u, 69920u, 69849u, 0u))))));
    var_1 = var_0.b;
    let var_2 = abs(arg_0.x);
    return var_0.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, 207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-510f, 755f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -187f, -816f))))));
    var var_1 = vec3<bool>(true, ((select(false, true, false) && true) & true) || (true & (firstLeadingBit(u_input.a.x) <= -u_input.a.x)), true);
    var_1 = vec3<bool>(!(!any(!vec2<bool>(var_1.x, false))), select(var_1.x, all(!var_1.zx), _wgslsmith_f_op_f32(var_0.x * -657f) == -1533f), func_5(func_4(_wgslsmith_sub_i32(~(-2147483647i), func_2(Struct_2(vec4<bool>(var_1.x, true, false, var_1.x), Struct_1(1000f, vec4<u32>(64164u, 84903u, 1u, 29502u))), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !var_1.x, Struct_1(_wgslsmith_f_op_f32(-891f + var_0.x), ~vec4<u32>(19988u, 4294967295u, 18781u, 1u)), 53108i)));
    var_1 = vec3<bool>(!(any(vec3<bool>(false, var_1.x, var_1.x)) == any(vec4<bool>(true, false, var_1.x, var_1.x))) & false, !(u_input.b.x == u_input.b.x), false);
    var_1 = select(vec3<bool>(true, !select(all(var_1.yz), any(vec3<bool>(var_1.x, false, var_1.x)), all(var_1.yz)), var_1.x), select(vec3<bool>(false, any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, true, true, true), var_1.x)), true), vec3<bool>(var_1.x, false, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) > _wgslsmith_add_i32(u_input.b.x, u_input.a.x)), !(!(!vec3<bool>(var_1.x, true, true)))), !select(!(!vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, true, false), !vec3<bool>(var_1.x, var_1.x, var_1.x))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -455f)), -1077f))), vec4<u32>(reverseBits(~60320u), 47250u, ~32019u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(41601u, 25085u), vec2<u32>(0u, 1u)), ~1u, var_1.x)) ^ vec4<u32>(countOneBits(reverseBits(1u)), 0u, 4294967295u, _wgslsmith_clamp_u32(1u, 66138u, _wgslsmith_sub_u32(4183u, 0u))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    let var_0 = Struct_2(vec4<bool>(!(!arg_1.x), true, !all(select(arg_1.wxy, vec3<bool>(false, true, arg_1.x), arg_1.x)), true), arg_0);
    var var_1 = !arg_1.xyx;
    var_1 = vec3<bool>(arg_1.x, var_1.x, all(var_0.a.zxx));
    var_1 = arg_1.zwz;
    var_1 = select(var_0.a.ywx, var_0.a.xzx, select(1577f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2094f + arg_0.a), -999f)), func_5(~func_4(arg_2.x, var_1.x, Struct_1(306f, arg_0.b), arg_2.x)), any(!(!vec2<bool>(var_0.a.x, true)))));
    return _wgslsmith_f_op_f32(arg_3 + var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_6(func_1(), vec4<bool>(true, true, true, true), vec2<i32>(u_input.a.x, u_input.b.x), _wgslsmith_div_f32(-618f, 1378f)))))), 1f);
    let var_1 = Struct_2(vec4<bool>(true, false, false, -1944f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.x, -1241f))))), func_1());
    let var_2 = var_1.b.b.zxy;
    let var_3 = vec2<f32>(_wgslsmith_div_f32(-1386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1670f))))), -313f);
    let var_4 = ~abs(-vec2<i32>(u_input.b.x, u_input.b.x) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-32046i, u_input.b.x)), -2147483647i ^ u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)), 1263f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(func_6(var_1.b, !var_1.a, _wgslsmith_mod_vec2_i32(var_4, vec2<i32>(u_input.a.x, 32180i)), -1049f)))), 15482u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.x, -148f)))), var_0.x, -127f, -1000f));
}

