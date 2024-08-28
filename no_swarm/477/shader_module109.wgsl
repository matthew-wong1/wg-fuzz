struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = vec2<bool>(!(!select(true, u_input.d > u_input.d, all(vec4<bool>(true, true, true, false)))), any(select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), false), true)));
    let var_1 = Struct_1(min(u_input.d, u_input.d), min(vec2<i32>(i32(-1i) * -u_input.b, u_input.b), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-66938i, u_input.b) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), vec2<i32>(12055i, u_input.c))), var_0.x, ~10919u);
    var var_2 = Struct_2(Struct_1(1396u, ((vec2<i32>(var_1.b.x, var_1.b.x) >> (vec2<u32>(var_1.d, u_input.d) % vec2<u32>(32u))) | -var_1.b) & ~(~var_1.b), select(all(select(vec3<bool>(var_1.c, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, false))), true, false), _wgslsmith_mod_u32(u_input.d, max(1u, u_input.d))), var_1, var_0.x, Struct_1(var_1.d, vec2<i32>(u_input.a, -2147483647i) & var_1.b, any(select(!vec4<bool>(var_1.c, true, var_1.c, var_0.x), !vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), vec4<bool>(var_0.x, false, true, false), var_1.c))), ~var_1.a));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), -177f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(select(-761f, _wgslsmith_f_op_f32(select(975f, -1034f, false & var_1.c)), var_2.d.d > 36608u))));
    let var_4 = true;
    return abs(-vec4<i32>(firstTrailingBit(var_1.b.x) << (u_input.d % 32u), var_1.b.x, var_2.b.b.x, select(-45188i, var_2.a.b.x | var_2.b.b.x, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    var var_1 = Struct_2(Struct_1(~u_input.d, vec2<i32>(var_0.x, u_input.c), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), ~u_input.d), Struct_1(27190u & ~(~u_input.d), ~(~vec2<i32>(u_input.b, u_input.c)), true, _wgslsmith_sub_u32(1u, u_input.d | ~u_input.d)), true, Struct_1(u_input.d | 4294967295u, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.wyz, vec3<i32>(u_input.c, var_0.x, u_input.c)), 2147483647i), vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-22208i, u_input.c)))), false, _wgslsmith_add_u32(41704u & u_input.d, firstLeadingBit(71110u)) ^ firstTrailingBit(_wgslsmith_add_u32(u_input.d, u_input.d))));
    var var_2 = Struct_2(Struct_1((var_1.b.d ^ _wgslsmith_add_u32(1u, 21758u)) & 4294967295u, vec2<i32>(~1i, ~(~var_1.d.b.x)), var_1.a.c, var_1.b.a), var_1.b, true, var_1.d);
    var_1 = Struct_2(Struct_1(29326u, min(_wgslsmith_div_vec2_i32(~vec2<i32>(51302i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(27711i, -30443i), var_0.xx)), vec2<i32>(select(-11958i, 2147483647i, false), var_0.x)), true, 0u), var_1.d, any(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, !var_1.d.c, all(select(vec2<bool>(var_1.b.c, true), vec2<bool>(var_1.c, true), var_1.a.c)))), Struct_1(firstTrailingBit(33961u), -vec2<i32>(var_1.a.b.x, ~2147483647i), !var_1.c, max(abs(7734u), select(0u, 1u, var_1.d.c) << (_wgslsmith_mod_u32(u_input.d, var_1.a.a) % 32u))));
    let var_3 = firstLeadingBit(1u);
    return var_2.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - -838f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.x, -752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-780f)) - _wgslsmith_f_op_f32(-arg_0.x)), all(vec4<bool>(true, true, true, true))))));
    let var_1 = !(!select(!select(vec3<bool>(false, false, arg_1.c), vec3<bool>(true, arg_1.c, false), arg_1.c), select(!vec3<bool>(true, true, arg_1.b.c), select(vec3<bool>(false, true, arg_1.c), vec3<bool>(false, arg_1.d.c, arg_1.b.c), vec3<bool>(false, arg_1.c, arg_1.a.c)), vec3<bool>(arg_1.a.c, true, arg_1.a.c)), true));
    return Struct_2(Struct_1(4294967295u, max(arg_1.d.b, vec2<i32>(1i, u_input.c)) ^ arg_1.a.b, !any(!vec4<bool>(true, true, var_1.x, false)), 105577u), arg_1.d, all(select(select(vec4<bool>(false, var_1.x, arg_1.d.c, false), vec4<bool>(false, false, true, false), true), !(!vec4<bool>(true, true, false, arg_1.a.c)), false)), arg_1.b);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2313f)), 812f)), 1528f, -518f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-604f, -1000f)), _wgslsmith_f_op_f32(-365f + -573f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, _wgslsmith_f_op_f32(abs(1925f)), _wgslsmith_div_f32(-428f, -389f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(func_2(), Struct_1(4294967295u, min(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 7441i), vec2<i32>(21274i, -11134i)), firstTrailingBit(vec2<i32>(-1i, -1i))), func_2().c, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(0u, u_input.d)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(~u_input.d, func_3().xw, true, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, u_input.d)), firstLeadingBit(vec2<u32>(0u, 38230u))))));
    let var_1 = (max(abs(u_input.b), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i), vec4<i32>(u_input.b, u_input.b, var_0.b.b.x, u_input.a)))) << ((var_0.b.a >> ((var_0.d.a << (abs(var_0.a.a) % 32u)) % 32u)) % 32u)) ^ (_wgslsmith_mod_i32(~u_input.b, 14850i) >> (~(~(var_0.b.a ^ 60537u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) + -141f) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f + 1139f))), -288f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1516f * _wgslsmith_div_f32(-1807f, -1578f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f * _wgslsmith_f_op_f32(f32(-1f) * -111f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(sign(2478f)), 1f, _wgslsmith_f_op_f32(max(296f, -848f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, 1501f, 1028f, -100f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, -891f, 382f, 1725f) - vec4<f32>(-244f, 1022f, 202f, 765f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(585f, -1000f, 682f, 1326f), vec4<f32>(-554f, -764f, -793f, 905f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2290f, -406f, -993f, -526f) - vec4<f32>(839f, 1502f, 1399f, 1000f)))))))));
    var var_3 = any(select(vec2<bool>(var_0.b.c, (u_input.d > var_0.b.d) | false), !vec2<bool>(var_0.d.c, true), vec2<bool>(_wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(-var_2.x), func_2().c)));
    let var_4 = _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(u_input.d, u_input.d, u_input.d, var_0.a.a), reverseBits(vec4<u32>(4294967295u, var_0.b.a, 4294967295u, var_0.a.d)), !select(vec4<bool>(var_0.a.c, var_0.b.c, var_0.b.c, true), vec4<bool>(var_0.d.c, false, true, true), var_0.d.c)), vec4<u32>(_wgslsmith_clamp_u32(~abs(var_0.b.a), _wgslsmith_sub_u32(~var_0.d.d, 45469u), 1u), 0u, ~u_input.d, abs(4294967295u)), ~(~firstTrailingBit(~vec4<u32>(var_0.d.d, 4294967295u, var_0.b.d, u_input.d))));
    return var_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(4152u, select(-func_1().b, vec2<i32>(0i, arg_0.b.x) | arg_0.b, true), !all(vec2<bool>(arg_0.c, false)) || arg_1.c, _wgslsmith_add_u32(func_2().a, 42131u)), func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(447f + -496f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1515f, 1418f))), 319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(395f)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1373f, 709f, -913f, 1027f) * vec4<f32>(2055f, -132f, 1041f, -588f))), func_4(vec4<f32>(-1537f, -994f, 799f, 610f), arg_1))).d, arg_1.a.c, arg_0);
    var var_1 = 1u;
    var_0 = arg_1;
    var_1 = countOneBits(~_wgslsmith_sub_u32(~u_input.d, abs(var_0.b.d)));
    let var_2 = !(!vec3<bool>(select(0u >= var_0.d.a, any(vec4<bool>(false, arg_0.c, false, true)), arg_1.b.c), arg_1.c, var_0.c));
    return -select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 1i) & vec2<i32>(arg_0.b.x, 2147483647i), vec2<i32>(u_input.b, var_0.d.b.x), vec2<i32>(arg_0.b.x, var_0.a.b.x)), arg_1.d.b), _wgslsmith_add_vec2_i32(max(vec2<i32>(arg_0.b.x, -10609i), -vec2<i32>(arg_1.a.b.x, arg_1.d.b.x)), arg_1.a.b), any(select(vec4<bool>(var_0.d.c, true, false, arg_0.c), select(vec4<bool>(false, var_0.c, true, var_0.a.c), vec4<bool>(true, false, arg_1.d.c, true), true), !vec4<bool>(true, true, var_0.a.c, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, 1014f, -1162f) - vec3<f32>(870f, 934f, -384f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-840f, 1657f, -591f), vec3<f32>(241f, -774f, 1744f)))))))));
    let var_1 = Struct_1(1u, func_5(Struct_1(0u, -vec2<i32>(u_input.b, u_input.a), false, reverseBits(64236u)), Struct_2(func_1(), func_4(vec4<f32>(150f, var_0.x, 1217f, 764f), Struct_2(Struct_1(16710u, vec2<i32>(-2147483647i, 1i), true, u_input.d), Struct_1(1u, vec2<i32>(-40800i, u_input.c), true, 0u), true, Struct_1(u_input.d, vec2<i32>(u_input.c, u_input.c), true, 65382u))).a, true, func_4(vec4<f32>(var_0.x, -944f, var_0.x, var_0.x), Struct_2(Struct_1(u_input.d, vec2<i32>(-47886i, u_input.b), true, 117086u), Struct_1(0u, vec2<i32>(20018i, -25555i), false, 37102u), true, Struct_1(26963u, vec2<i32>(1i, u_input.a), false, u_input.d))).b)) | ~vec2<i32>(~(-49856i), u_input.b), u_input.d < min(_wgslsmith_clamp_u32(u_input.d, func_4(vec4<f32>(-1271f, 1719f, var_0.x, -208f), Struct_2(Struct_1(1u, vec2<i32>(29034i, 1i), true, 23431u), Struct_1(u_input.d, vec2<i32>(u_input.c, -2147483647i), false, u_input.d), true, Struct_1(u_input.d, vec2<i32>(-98726i, u_input.c), true, u_input.d))).b.d, 0u), _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, u_input.d)))), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, func_4(vec4<f32>(var_0.x, -374f, var_0.x, var_0.x), Struct_2(Struct_1(20150u, vec2<i32>(u_input.c, u_input.b), true, u_input.d), Struct_1(u_input.d, vec2<i32>(19061i, u_input.a), true, 20225u), false, Struct_1(u_input.d, vec2<i32>(-12584i, u_input.c), true, 4294967295u))).d.a) & _wgslsmith_mod_u32(firstLeadingBit(u_input.d), select(u_input.d, 61364u, false)), ~(u_input.d ^ u_input.d)));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(110f, _wgslsmith_f_op_f32(f32(-1f) * -1772f), -450f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, 2126f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1935f, var_0.x, -660f)))))));
    let var_2 = _wgslsmith_mult_vec4_u32((select(vec4<u32>(4294967295u, 13292u, 24875u, 50434u), vec4<u32>(4294967295u, var_1.a, 14804u, 1u), !var_1.c) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, var_1.a, u_input.d), firstLeadingBit(vec4<u32>(57002u, var_1.d, var_1.a, 60907u)), vec4<u32>(var_1.d, 4294967295u, u_input.d, 65273u))) ^ select(vec4<u32>(4294967295u, ~u_input.d, 55461u, func_4(vec4<f32>(var_0.x, -1940f, 330f, 130f), Struct_2(var_1, var_1, var_1.c, Struct_1(4294967295u, vec2<i32>(var_1.b.x, var_1.b.x), var_1.c, 37368u))).d.a), ~vec4<u32>(15354u, 71573u, var_1.d, 24913u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d, 0u, 1u), vec4<u32>(4294967295u, var_1.d, 58622u, var_1.d)) % vec4<u32>(32u)), vec4<bool>(false, var_0.x > var_0.x, var_0.x <= 386f, true)), vec4<u32>(1u, ~func_2().a, 0u, firstLeadingBit((u_input.d << (var_1.a % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(33135u, u_input.d, 93567u, u_input.d), vec4<u32>(8300u, 1u, var_1.a, var_1.a)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(157f - 983f), _wgslsmith_f_op_f32(abs(-309f)), var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1448f, var_0.x) * vec3<f32>(var_0.x, var_0.x, 383f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 2692f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), -1193f, _wgslsmith_f_op_f32(f32(-1f) * -827f)))));
    var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(948f, var_0.x, true)))))), _wgslsmith_f_op_f32(-var_0.x));
    let var_3 = Struct_2(var_1, var_1, (any(vec2<bool>(var_1.c, var_1.c)) & !var_1.c) & (!(var_2.x != u_input.d) && func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -125f, -589f, 1698f)), Struct_2(Struct_1(0u, vec2<i32>(u_input.b, var_1.b.x), var_1.c, u_input.d), var_1, false, var_1)).c), Struct_1(4294967295u, var_1.b, var_1.c, firstLeadingBit(60868u ^ (u_input.d & 4294967295u))));
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 527f, var_0.x, 2132f)) + vec4<f32>(-614f, _wgslsmith_f_op_f32(var_0.x - 654f), var_0.x, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 802f, var_0.x)) - vec4<f32>(-2096f, var_0.x, var_0.x, -1726f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1557f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), false)) + vec4<f32>(var_0.x, -998f, var_0.x, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(var_4.wxw + vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.x, -2518f, true))), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1994f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.yzz) * var_4.xwz), vec3<u32>(func_2().d, _wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, min(11687u, 1u)), var_3.b.d), ~_wgslsmith_div_u32(0u, 1u)), vec3<i32>(0i, i32(-1i) * -1i, var_1.b.x));
}

