struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(~(~_wgslsmith_div_i32(-1i, -1i)), 0u <= arg_2.d, select(select(!vec4<bool>(false, true, arg_0, arg_0), select(select(arg_2.c, arg_2.e, arg_2.c), vec4<bool>(true, false, arg_2.c.x, false), arg_2.d <= u_input.b), arg_2.c), !vec4<bool>(true || arg_0, all(vec2<bool>(arg_2.e.x, arg_2.b)), any(arg_2.e.yw), any(arg_2.e.xxy)), vec4<bool>(true, all(arg_2.c), arg_0, all(arg_2.e))), 0u, !arg_2.c);
    var_0 = arg_2;
    return ~vec2<u32>(arg_2.d, 0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    var var_0 = true;
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(arg_3.x, arg_1.x), _wgslsmith_sub_i32(arg_1.x, 11003i), ~arg_1.x), firstTrailingBit(select(vec4<i32>(arg_1.x, -28325i, arg_3.x, 1i), vec4<i32>(arg_3.x, -24154i, arg_1.x, arg_1.x), vec4<bool>(false, true, true, false)))) ^ firstLeadingBit(-abs(max(vec4<i32>(-49204i, arg_3.x, 1i, arg_3.x), vec4<i32>(arg_1.x, -2147483647i, -2147483647i, 0i))));
    var_1 = vec4<i32>(-firstTrailingBit(1i), max(_wgslsmith_clamp_i32(2241i, countOneBits(14719i), -16655i), var_1.x), 16653i, _wgslsmith_mult_i32(arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.x, arg_1.x), arg_3, arg_1), min(vec2<i32>(arg_3.x, 2147483647i), vec2<i32>(arg_1.x, 46736i))))) >> (vec4<u32>(0u, ~(~_wgslsmith_mod_u32(arg_0.x, 37702u)), abs(arg_0.x), 38026u) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1331f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))) - -865f), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1615f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, 948f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, 1740f, arg_2, arg_2), vec4<f32>(arg_2, arg_2, arg_2, 1588f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_2, arg_2, 1439f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1315f, arg_2, 196f, 832f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, 291f, arg_2, arg_2), vec4<f32>(1343f, 168f, 1419f, arg_2)))))), true))));
    return (~u_input.a >> (_wgslsmith_mod_u32(arg_0.x, arg_0.x) % 32u)) & ~(~_wgslsmith_add_u32(arg_0.x, 19162u));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = true;
    var var_1 = ~(~vec3<u32>(func_4(func_3(true, vec3<f32>(-641f, 125f, 1716f), Struct_1(43506i, false, vec4<bool>(false, false, true, true), 84774u, vec4<bool>(false, true, false, false))), vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(trunc(-262f)), vec2<i32>(-2147483647i, -40747i)), ~_wgslsmith_mod_u32(arg_0.x, u_input.b), 75048u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(1397f + 1953f), _wgslsmith_div_f32(358f, -2355f), _wgslsmith_f_op_f32(-260f - 1062f)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), true))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-754f)))), var_2.x)));
    var_0 = true;
    return true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec4<bool>(arg_2.e.x, !all(select(select(arg_3.c, vec4<bool>(arg_3.b, true, arg_1, arg_2.e.x), true), arg_3.c, arg_2.e.x)), (false | (!arg_2.b && select(false, false, arg_1))) | all(select(!vec2<bool>(arg_2.e.x, false), vec2<bool>(arg_1, false), false)), -arg_2.a <= 38509i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-613f))))), _wgslsmith_f_op_f32(-arg_0), arg_0);
    let var_2 = countOneBits(vec2<u32>(1u, 8929u));
    var_0 = select(vec4<bool>(!(!arg_1), true, firstTrailingBit(var_2.x) != _wgslsmith_dot_vec2_u32(~vec2<u32>(82764u, 11827u), vec2<u32>(0u, u_input.b)), func_2(vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, 1u), ~u_input.b))), select(vec4<bool>(true, !(!arg_3.e.x), all(vec4<bool>(true, var_0.x, true, arg_2.c.x)), var_0.x), !(!arg_3.c), arg_2.c), true);
    let var_3 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_2.x ^ arg_2.d, u_input.b, var_2.x | 4294967295u, 1u), select(~vec4<u32>(arg_3.d, 0u, 1u, 27495u), abs(vec4<u32>(arg_3.d, 134569u, arg_3.d, 20647u)), select(vec4<bool>(arg_1, true, true, var_0.x), arg_2.e, arg_3.e))), ~(~(~vec4<u32>(arg_2.d, 38918u, 4294967295u, 4294967295u)))) == var_2.x;
    return false;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = !(!func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f)), func_2(~vec3<u32>(u_input.a, u_input.a, arg_2.x)), Struct_1(abs(-40734i), arg_1 || arg_1, vec4<bool>(arg_0, true, false, arg_0), arg_2.x, !vec4<bool>(false, true, arg_1, false)), Struct_1(_wgslsmith_div_i32(2147483647i, 2147483647i), true, !vec4<bool>(arg_0, true, true, true), 4294967295u, !vec4<bool>(false, false, arg_0, true))));
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-391f)), _wgslsmith_f_op_f32(f32(-1f) * -252f))));
    var_0 = any(select(vec2<bool>(true, false), vec2<bool>(false, func_2(vec3<u32>(arg_3, 13675u, arg_3) << (vec3<u32>(u_input.b, 0u, 4294967295u) % vec3<u32>(32u)))), select(!select(vec2<bool>(false, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_1)), select(select(vec2<bool>(false, true), vec2<bool>(arg_1, false), true), vec2<bool>(true, true), func_2(vec3<u32>(13648u, arg_3, 77270u))), vec2<bool>(arg_1, !arg_1))));
    var var_2 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-726f)), _wgslsmith_f_op_f32(sign(-140f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1825f) - _wgslsmith_f_op_f32(-var_1)), true);
    var_2 = !select(select(!(!vec2<bool>(var_2.x, false)), !vec2<bool>(true, arg_0), true), vec2<bool>(arg_0, true), !vec2<bool>(true, all(vec4<bool>(var_2.x, true, false, var_2.x))));
    return vec2<u32>(1u, 5549u);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1685f)) - _wgslsmith_f_op_f32(f32(-1f) * -1033f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(463f * -351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) * -958f)), _wgslsmith_f_op_f32(max(-623f, _wgslsmith_f_op_f32(floor(-2156f)))), 1000f));
    let var_1 = (1u >> (arg_1.d % 32u)) | ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(29629u, arg_3.d, arg_1.d, arg_3.d)), reverseBits(vec4<u32>(41318u, arg_1.d, 10191u, arg_2.x))), arg_2.x);
    var var_2 = max(vec4<u32>(~_wgslsmith_div_u32(u_input.a, arg_1.d), 1u, ~firstLeadingBit(arg_1.d), _wgslsmith_mod_u32(1532u << (1u % 32u), 101082u)), vec4<u32>(~var_1 >> (func_3(arg_1.b, var_0.zyw, arg_1).x % 32u), u_input.a, (21476u << (0u % 32u)) | firstTrailingBit(arg_1.d), ~_wgslsmith_mod_u32(4294967295u, arg_1.d))) << (_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.d, arg_1.d, 34548u, 1u), vec4<u32>(41733u, arg_1.d, 0u, arg_1.d))) | _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, arg_3.d, arg_1.d), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, var_1), vec4<u32>(33085u, 0u, 41005u, var_1)), vec4<u32>(arg_3.d, arg_1.d, 1u, 52355u)), vec4<u32>(_wgslsmith_div_u32(1u, func_3(false, vec3<f32>(var_0.x, -231f, -1284f), Struct_1(22170i, arg_3.c.x, vec4<bool>(false, true, arg_3.e.x, true), 8398u, vec4<bool>(false, arg_3.c.x, arg_3.b, true))).x), _wgslsmith_dot_vec3_u32(vec3<u32>(36839u, var_1, arg_2.x) & vec3<u32>(u_input.a, 0u, u_input.b), firstLeadingBit(vec3<u32>(arg_2.x, 4294967295u, arg_2.x))), _wgslsmith_add_u32(arg_1.d, 1u << (var_1 % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, u_input.b, 50940u), abs(vec4<u32>(2429u, 1u, var_1, 1u))))) % vec4<u32>(32u));
    let var_3 = arg_3;
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1017f, -906f))))));
    return arg_1.e.x;
}

fn func_7(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<i32>(~(-2656i), _wgslsmith_dot_vec2_i32(~select(arg_2.yz, arg_2.yx, vec2<bool>(arg_0, arg_0)) >> (~vec2<u32>(u_input.b, 49633u) % vec2<u32>(32u)), ~(-arg_2.xz)), arg_2.x, 1i);
    var var_1 = Struct_1(-28573i, !(!arg_0), vec4<bool>(false, true, false, arg_0), _wgslsmith_div_u32(69199u, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 70352u), vec2<u32>(46978u, 1u))), func_1(all(vec2<bool>(false, arg_0)), arg_0, ~vec2<u32>(u_input.a, 4294967295u), ~4294967295u))), select(!vec4<bool>(arg_0, true, arg_0, func_5(-1391f, false, Struct_1(arg_1, false, vec4<bool>(arg_0, arg_0, false, arg_0), u_input.b, vec4<bool>(false, true, arg_0, false)), Struct_1(arg_1, true, vec4<bool>(true, arg_0, false, arg_0), u_input.b, vec4<bool>(true, false, arg_0, arg_0)))), !select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, true, true, arg_0), !vec4<bool>(arg_0, false, false, arg_0)), true));
    let var_2 = ~firstLeadingBit(min(var_0.x & var_1.a, firstTrailingBit(-38516i))) & -42068i;
    var var_3 = Struct_1(var_0.x, var_1.e.x, var_1.e, func_3(func_5(-309f, func_2(vec3<u32>(var_1.d, var_1.d, 13150u)), Struct_1(-13707i, arg_0, vec4<bool>(arg_0, var_1.b, false, false), var_1.d, vec4<bool>(true, true, var_1.c.x, var_1.b)), Struct_1(-32006i, arg_0, vec4<bool>(arg_0, true, arg_0, true), 4294967295u, var_1.c)), vec3<f32>(1000f, _wgslsmith_f_op_f32(min(-610f, 581f)), _wgslsmith_f_op_f32(f32(-1f) * -757f)), Struct_1(abs(1i), !arg_0, !var_1.e, ~var_1.d, vec4<bool>(true, false, var_1.c.x, true))).x | ~abs(~var_1.d), vec4<bool>(u_input.b > 16764u, false, arg_0, !((-1i >> (u_input.a % 32u)) <= reverseBits(11522i))));
    var var_4 = Struct_1(7698i, func_5(-594f, func_2(~select(vec3<u32>(var_3.d, 1u, 0u), vec3<u32>(var_1.d, 4294967295u, u_input.a), arg_0)), Struct_1(firstLeadingBit(-14437i), 0i == select(arg_1, var_3.a, var_1.b), var_3.e, ~var_3.d, var_1.e), Struct_1(~(-1i & var_3.a), ~arg_1 != max(2147483647i, 2147483647i), var_1.c, ~(~u_input.b), vec4<bool>(false && var_3.e.x, false, var_1.c.x, any(vec3<bool>(arg_0, false, false))))), vec4<bool>(false, true, true, arg_0), max(~var_3.d, firstTrailingBit(29577u)), vec4<bool>(arg_0, var_3.e.x, true, false));
    return Struct_1(abs(~(-arg_1)) << ((0u | _wgslsmith_mod_u32(_wgslsmith_div_u32(var_3.d, 43748u), ~var_3.d)) % 32u), arg_1 >= 7908i, !vec4<bool>(var_1.c.x, true, var_1.c.x, true), ~0u, vec4<bool>(true, var_3.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.d, 48145u), max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 23698u))) >= ~18059u, any(var_1.c)));
}

fn func_8(arg_0: Struct_1) -> i32 {
    let var_0 = func_6(~(~(arg_0.a ^ firstTrailingBit(6352i))), func_7(true, max(arg_0.a, -2147483647i), ~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, 23382i, arg_0.a, -18635i), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(-1i, arg_0.a, -2147483647i, 0i)))), _wgslsmith_sub_vec2_u32(~countOneBits(abs(vec2<u32>(1u, 28707u))), vec2<u32>(_wgslsmith_sub_u32(u_input.a << (1u % 32u), 1u), countOneBits(4294967295u))), func_7(false, arg_0.a, -vec4<i32>(arg_0.a, max(arg_0.a, arg_0.a), -arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -3503i, arg_0.a, -20374i), vec4<i32>(2147483647i, arg_0.a, -52950i, arg_0.a)))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = var_0;
    let var_3 = func_7(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1092f * -1792f), _wgslsmith_f_op_f32(f32(-1f) * -460f), var_0 & false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f))), all(vec2<bool>(var_1.x, false)), func_7(arg_0.b && false, -29602i, select(-vec4<i32>(16618i, arg_0.a, 6731i, arg_0.a), -vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), arg_0.c)), func_7(false, -arg_0.a, ~(vec4<i32>(arg_0.a, -1i, -1i, 2147483647i) >> (vec4<u32>(u_input.b, arg_0.d, u_input.a, 7823u) % vec4<u32>(32u))))), -27048i, (firstTrailingBit(vec4<i32>(arg_0.a, -1i, arg_0.a, -2147483647i) >> (vec4<u32>(u_input.a, 0u, arg_0.d, 31041u) % vec4<u32>(32u))) | ~vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)) << (~(_wgslsmith_div_vec4_u32(vec4<u32>(41724u, 150906u, u_input.a, 4294967295u), vec4<u32>(u_input.b, arg_0.d, arg_0.d, 1u)) << (vec4<u32>(arg_0.d, 0u, 4294967295u, 36028u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1676f, _wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_f32(abs(-786f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 876f), _wgslsmith_f_op_f32(floor(-197f)), any(vec2<bool>(false, true)))) * _wgslsmith_f_op_f32(-1631f - -1973f))) * vec4<f32>(428f, _wgslsmith_div_f32(-1216f, -445f), -1037f, 2002f));
    return ~arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(68348u, ~u_input.b);
    var var_1 = Struct_1(func_8(func_7(func_6(abs(-2147483647i), Struct_1(14953i, true, vec4<bool>(false, true, false, true), 52955u, vec4<bool>(true, false, true, false)), func_1(true, false, vec2<u32>(4294967295u, u_input.a), 41026u), Struct_1(-14283i, false, vec4<bool>(true, true, true, true), 4294967295u, vec4<bool>(false, false, true, true))), _wgslsmith_mult_i32(max(2147483647i, -1i), _wgslsmith_clamp_i32(59134i, 40230i, -1i)), -vec4<i32>(-11831i, 1i, 38344i, 2147483647i) & select(vec4<i32>(1i, -1i, -1i, -13645i), vec4<i32>(-50551i, 0i, -5908i, -2147483647i), false))), any(vec4<bool>(!func_6(-1i, Struct_1(23673i, false, vec4<bool>(false, true, true, true), 0u, vec4<bool>(true, false, false, false)), vec2<u32>(u_input.b, u_input.b), Struct_1(14791i, true, vec4<bool>(false, true, true, false), 0u, vec4<bool>(true, true, false, true))), false, any(vec3<bool>(true, true, true)), true)), vec4<bool>(false, func_5(1f, func_7(true, -53318i, vec4<i32>(-20888i, 2147483647i, 2147483647i, 29554i)).b && true, func_7(true, -2147483647i, -vec4<i32>(48271i, 1i, 2147483647i, 34790i)), Struct_1(12476i, true, vec4<bool>(true, true, true, true), _wgslsmith_sub_u32(28654u, u_input.a), func_7(false, -20339i, vec4<i32>(27083i, 5276i, -2147483647i, -30610i)).c)), all(vec3<bool>(true, true, true)), (~65040u | ~u_input.a) != firstTrailingBit(reverseBits(0u))), 4294967295u, !(!select(func_7(false, 2147483647i, vec4<i32>(44817i, -72113i, 9876i, 53854i)).e, func_7(false, 0i, vec4<i32>(-14751i, 31512i, -33127i, 0i)).c, vec4<bool>(true, false, false, true))));
    var_0 = ~var_1.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(281f))));
    let var_3 = func_7(any(vec3<bool>(_wgslsmith_div_i32(var_1.a, var_1.a) <= -2994i, false, !var_1.e.x)), 20417i, select(-select(vec4<i32>(1i, var_1.a, var_1.a, var_1.a), ~vec4<i32>(var_1.a, -3694i, 0i, -39577i), !var_1.b), max(~abs(vec4<i32>(-12947i, 2147483647i, var_1.a, var_1.a)), vec4<i32>(1i, var_1.a << (1u % 32u), -28138i, var_1.a)), !all(select(vec2<bool>(false, true), var_1.e.xw, vec2<bool>(true, false)))));
    let var_4 = _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(abs(countOneBits(vec4<u32>(var_3.d, 4294967295u, var_3.d, 14667u))), min(min(vec4<u32>(var_3.d, var_3.d, 2568u, var_3.d), vec4<u32>(u_input.b, var_1.d, 4294967295u, var_1.d)), vec4<u32>(101932u, var_1.d, 36050u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 9783u, var_3.d, u_input.a), vec4<u32>(10340u, 1u, var_1.d, 16768u)))), _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(var_1.d, 1u, 1u, 3756u))), ~(~abs(vec4<u32>(u_input.b, u_input.a, 4294967295u, var_1.d)))));
    let var_5 = -(_wgslsmith_clamp_i32(var_1.a, -var_1.a, var_1.a) & -2147483647i);
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(46814u);
}

