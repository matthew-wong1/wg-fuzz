struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = ~(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 1u))) | min(_wgslsmith_sub_vec2_u32(vec2<u32>(36606u, 74380u), vec2<u32>(4294967295u, u_input.c.x)), u_input.c.xx));
    var_0 = _wgslsmith_clamp_i32(38608i, u_input.b, max(i32(-1i) * -13675i, firstLeadingBit(u_input.b) | max(reverseBits(-2147483647i), _wgslsmith_sub_i32(u_input.a.x, u_input.b))));
    var var_2 = !(!(!(!(!vec3<bool>(arg_0, arg_0, true)))));
    var var_3 = Struct_1(all(!select(vec4<bool>(false, var_2.x, arg_0, false), vec4<bool>(arg_0, false, true, arg_0), var_2.x)) || all(select(!vec4<bool>(true, true, var_2.x, false), !vec4<bool>(arg_0, true, arg_0, true), false | arg_0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-855f, _wgslsmith_f_op_f32(ceil(399f)), -581f, -388f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-366f, 1440f, -1000f, -497f), vec4<f32>(-1869f, -1622f, 1111f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, 937f, -906f, -1802f))))))), _wgslsmith_mult_vec3_u32(~(~(u_input.c >> (u_input.c % vec3<u32>(32u)))), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1624f));
    return select(select(select(select(vec3<bool>(true, false, var_3.a), !vec3<bool>(arg_0, var_2.x, var_3.a), var_2.x), select(!vec3<bool>(var_2.x, false, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0, var_2.x, arg_0), arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(true, var_3.a, var_3.a), true)), any(vec2<bool>(var_2.x, false))), vec3<bool>(~4294967295u <= _wgslsmith_div_u32(var_1.x, 25282u), true, arg_0), select(any(vec3<bool>(var_2.x, true, true)), !var_2.x, true) && arg_0), select(!(!select(vec3<bool>(var_2.x, false, true), vec3<bool>(true, true, arg_0), vec3<bool>(true, var_3.a, var_3.a))), vec3<bool>(!var_3.a, all(vec4<bool>(false, false, false, var_2.x)) || !var_2.x, var_3.a), false), true);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(!all(func_3(select(false, false, true))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) - 274f), 707f, _wgslsmith_f_op_f32(-268f + -727f), _wgslsmith_f_op_f32(f32(-1f) * -746f)))), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -677f));
    var var_1 = Struct_1(!(!(var_0.b.x > _wgslsmith_f_op_f32(ceil(-1109f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(462f + var_0.b.x), var_0.b.x) * vec4<f32>(1f, -343f, 2530f, 1013f)))), ~(var_0.c & var_0.c) | ~(~(~u_input.c)), _wgslsmith_f_op_f32(-1f));
    var_1 = var_0;
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d * var_1.b.x), _wgslsmith_f_op_f32(step(var_1.d, 1000f)), _wgslsmith_f_op_f32(floor(var_0.d))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.d, var_1.d)), _wgslsmith_f_op_f32(672f + -349f), var_1.b.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, -1436f, 1194f) + vec3<f32>(var_1.d, var_1.b.x, var_1.d)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-974f, 982f, var_0.d), var_1.b.yyw)), vec3<f32>(_wgslsmith_f_op_f32(step(-2239f, var_0.d)), 369f, _wgslsmith_f_op_f32(-var_0.b.x)))))), var_1.a));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = true;
    let var_1 = 0u;
    let var_2 = arg_2;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(arg_2.d, -72132i, 1i)) >> (reverseBits(arg_0.c) % vec3<u32>(32u)), u_input.a.wxw), countOneBits(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2.d, var_2.c), u_input.a.xwy), ~u_input.a.xxz), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(10425i, u_input.b, -43066i), -u_input.b))));
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec4<bool>(true, all(!select(func_3(false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), true)), ((_wgslsmith_mod_u32(u_input.c.x, arg_1.a) > ~arg_1.a) & !(arg_1.a >= 42633u)) | false, !(!(u_input.c.x > arg_1.a)));
    var_0 = select(select(vec4<bool>(false, !var_0.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 0u, 1u)) != u_input.c.x, any(!vec4<bool>(true, var_0.x, false, true))), !select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x)), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)), select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, true, true), var_0.x), vec4<bool>(all(var_0.xz), var_0.x || true, true, true), all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), select(vec4<bool>(!(var_0.x || var_0.x), true, func_2(select(u_input.a.x, arg_1.d, false), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c, u_input.b, -1i, -1i), u_input.a, vec4<i32>(0i, 0i, -14144i, 1i))), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x)), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, false))), !vec4<bool>(false, var_0.x, !var_0.x, var_0.x & var_0.x)), select(vec4<bool>(!select(var_0.x, var_0.x, var_0.x), var_0.x, !var_0.x, true && !var_0.x), !(!select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec4<bool>(var_0.x, true, (var_0.x && true) && true, _wgslsmith_f_op_f32(arg_1.b.x - -403f) >= _wgslsmith_div_f32(-970f, -1000f))));
    let var_1 = Struct_1(any(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, false), !var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_0.x, 958f, 939f)), ~(~select(vec3<u32>(74813u, u_input.c.x, u_input.c.x), ~u_input.c, all(vec2<bool>(var_0.x, true)))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = select(select(!(!select(vec4<bool>(var_0.x, true, var_0.x, var_1.a), vec4<bool>(var_1.a, var_0.x, false, true), var_0.x)), select(vec4<bool>(var_1.a, true, var_1.a, true), select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_1.a, var_0.x, true)), select(vec4<bool>(var_1.a, var_1.a, true, var_0.x), vec4<bool>(var_1.a, false, true, false), vec4<bool>(true, false, var_0.x, true)), select(vec4<bool>(var_1.a, var_0.x, var_1.a, var_1.a), vec4<bool>(var_1.a, true, var_1.a, false), true)), select(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, true, var_1.a, false), false), !vec4<bool>(var_1.a, var_0.x, var_0.x, false), false)), !all(vec2<bool>(false, true))), select(select(select(!vec4<bool>(var_1.a, var_0.x, false, true), select(vec4<bool>(var_0.x, var_1.a, true, false), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), true), !(!vec4<bool>(false, var_0.x, false, var_1.a)), vec4<bool>(true, func_2(-11328i, u_input.a), var_1.a && var_0.x, var_1.a)), select(!vec4<bool>(true, var_1.a, true, false), vec4<bool>(var_1.a, var_0.x, false, var_1.a), any(vec4<bool>(false, true, false, true)) || false), any(var_0.yy)), vec4<bool>(false, any(select(select(vec4<bool>(var_0.x, var_1.a, false, true), vec4<bool>(true, var_0.x, var_1.a, true), vec4<bool>(var_1.a, var_1.a, var_0.x, true)), select(vec4<bool>(var_0.x, true, false, var_1.a), vec4<bool>(false, var_0.x, var_0.x, var_1.a), var_1.a), any(var_0.xy))), true, var_1.a));
    let var_3 = all(!vec3<bool>(any(!vec4<bool>(var_0.x, var_0.x, false, true)), any(vec3<bool>(false, var_2.x, var_2.x)), !(46927u <= u_input.c.x)));
    return _wgslsmith_f_op_f32(arg_0.x * 795f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_5(vec3<f32>(_wgslsmith_f_op_f32(603f * _wgslsmith_div_f32(-300f, 133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1581f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(277f, 1653f)))), func_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1430f, -223f, 221f, 157f)), firstTrailingBit(~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(187f, 735f)) - _wgslsmith_f_op_f32(-324f + 2819f))), func_2(-5904i, -u_input.a | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, -2147483647i, u_input.b), vec4<i32>(-1i, u_input.b, 1i, u_input.a.x), u_input.a)), Struct_2(u_input.c.x, vec4<f32>(558f, _wgslsmith_f_op_f32(-540f * -1157f), _wgslsmith_f_op_f32(f32(-1f) * -346f), -812f), ~(-2147483647i) | (-28609i >> (u_input.c.x % 32u)), -2147483647i), u_input.c.x >> ((1u ^ u_input.c.x) % 32u))));
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, -347f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(var_0 + var_0), -960f, 102f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, var_0, var_0, 517f) + vec4<f32>(var_0, 1469f, var_0, 858f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 665f, var_0, -1469f) + vec4<f32>(-1166f, -1222f, 237f, -1697f)))))), firstTrailingBit(vec3<u32>(43288u, abs(~u_input.c.x), _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, 1452f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-618f, 1536f, -230f), vec3<f32>(-298f, -1692f, var_0), vec3<bool>(true, false, false)))), false)), Struct_2(u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(1061f - -711f), -168f, _wgslsmith_div_f32(1362f, var_0), -1875f), u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 23390i), u_input.a.xy, u_input.a.zx))))));
}

fn func_6(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-arg_0.b), ~(~u_input.c), _wgslsmith_f_op_f32(ceil(func_1().d)));
    let var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_mod_u32(~var_1, reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(2901u, var_0.c.x), arg_0.c.xy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1().b.x, 638f, arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))))), u_input.b | u_input.a.x, _wgslsmith_sub_i32(reverseBits(-u_input.b), 1i));
    let var_3 = arg_0.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1352f, -267f))) * vec2<f32>(672f, var_2.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, 190f), vec2<f32>(-879f, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d, var_2.b.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.ww)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1211f, var_0.d), vec2<f32>(arg_0.d, -977f), vec2<bool>(arg_0.a, false))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, var_4.x)) * _wgslsmith_f_op_f32(select(var_2.b.x, 1210f, !any(vec2<bool>(true, true)))));
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_2(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(621f, arg_2.d, 1000f, arg_0)) - vec4<f32>(_wgslsmith_f_op_f32(func_5(var_0.b.zzw, Struct_2(1u, var_0.b, -1i, -1i))), _wgslsmith_f_op_f32(-arg_0), var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -483f)))), u_input.b, reverseBits(-42057i));
    var_0 = Struct_1(!(-226f < _wgslsmith_div_f32(arg_1, 391f)), _wgslsmith_f_op_vec4_f32(-var_1.b), vec3<u32>(func_4(arg_2, var_0.a, Struct_2(var_0.c.x, arg_2.b, 1i, 2147483647i), var_0.c.x).a & ~var_1.a, 0u, arg_2.c.x) ^ var_0.c, arg_0);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.d))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -545f))), _wgslsmith_f_op_f32(arg_0 + -488f))), arg_2.c, -221f);
    let var_2 = arg_2;
    return Struct_1(all(!func_3(var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(floor(-210f)), _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(func_5(var_1.b.zzx, Struct_2(_wgslsmith_dot_vec2_u32(arg_2.c.yz, vec2<u32>(var_0.c.x, var_2.c.x)), _wgslsmith_f_op_vec4_f32(round(arg_2.b)), var_1.c, var_1.d)))), ~vec3<u32>(~(var_2.c.x << (var_0.c.x % 32u)), ~29193u, ~29462u >> (var_0.c.x % 32u)), -938f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1()))), -174f, Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -1000f, -221f, -275f)))), vec3<u32>(~u_input.c.x << (1u % 32u), ~firstTrailingBit(0u), u_input.c.x), 1f));
    var var_1 = vec4<bool>(var_0.a, (((u_input.a.x & u_input.a.x) > abs(u_input.b)) || var_0.a) & func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.d, Struct_1(var_0.b.x <= var_0.b.x, var_0.b, u_input.c, _wgslsmith_f_op_f32(ceil(-1194f)))).a, var_0.a, var_0.a || true);
    var var_2 = vec4<f32>(1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1000f, var_0.b.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-860f, var_0.b.x, 1183f), var_0.b.zyz)), Struct_2(~0u, vec4<f32>(var_0.b.x, -1763f, -146f, var_0.d), u_input.a.x, 1i))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_0.d)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - -1000f)), _wgslsmith_div_f32(var_0.b.x, 239f));
    let var_3 = ~4294967295u;
    var var_4 = abs(vec3<u32>(_wgslsmith_sub_u32(~var_0.c.x, _wgslsmith_sub_u32(u_input.c.x, 0u)), ~u_input.c.x, 1u) << (~(var_0.c << (~u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer((~u_input.c.zx >> (_wgslsmith_div_vec2_u32(~var_0.c.xy, u_input.c.zy) % vec2<u32>(32u))) | vec2<u32>(~_wgslsmith_add_u32(var_4.x, var_0.c.x), ~firstLeadingBit(var_4.x)), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x)))), func_4(func_1(), var_5, func_4(func_7(103f, -483f, Struct_1(true, var_0.b, vec3<u32>(1u, var_4.x, 4294967295u), var_2.x)), false, Struct_2(var_3, vec4<f32>(408f, -1000f, var_0.b.x, -2092f), u_input.a.x, u_input.a.x), ~90176u), _wgslsmith_mod_u32(24669u, 9805u)).b.x));
}

