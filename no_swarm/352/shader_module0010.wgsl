struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f + -453f) * -1671f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(918f, 870f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f + 1457f) * -2167f)), _wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1003f, 1000f)) + _wgslsmith_f_op_f32(trunc(-244f)))))));
    let var_1 = countOneBits(vec2<i32>(1i, 1i)) | ~firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(0i, 47899i), _wgslsmith_dot_vec2_i32(vec2<i32>(16918i, -2225i), vec2<i32>(12770i, 24817i))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1477f + var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), var_0.x);
    var var_3 = select(select(true, true, arg_0.x), !((_wgslsmith_div_f32(-561f, -1552f) < var_2.x) && (2147483647i > var_1.x)), _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -394f))));
    var var_4 = vec4<i32>(-(~(~var_1.x)), var_1.x << (_wgslsmith_sub_u32(1u, abs(firstTrailingBit(47451u))) % 32u), _wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, ~var_1.x, var_1.x), vec3<i32>(_wgslsmith_clamp_i32(354i, var_1.x, -1i), -10529i, var_1.x))), var_1.x);
    return true || !all(!arg_0.zz);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<bool>(!(true | func_3(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)), false);
    var_0 = !vec3<bool>(false, true, any(var_0.xx));
    var_0 = !(!vec3<bool>(true, false, !var_0.x));
    var_0 = vec3<bool>(var_0.x, any(vec3<bool>(true || var_0.x, false && (0u == u_input.a), (0u > arg_0) | true)), false);
    var_0 = vec3<bool>(true, 343f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), func_3(select(vec3<bool>(false, var_0.x, !var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, var_0.x, var_0.x))), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false)), !vec3<bool>(var_0.x, true, var_0.x), any(vec3<bool>(var_0.x, false, true))))));
    return Struct_1(max(-(~(-vec3<i32>(-12394i, 2147483647i, 2147483647i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 27683i, 15814i), vec3<i32>(0i, -16789i, 8425i))), _wgslsmith_mult_u32(0u, abs(18117u)), select(select(true, var_0.x, all(vec3<bool>(var_0.x, true, var_0.x))) | (var_0.x && var_0.x), !any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x | var_0.x));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = func_2(u_input.a);
    var var_1 = -544f;
    var var_2 = Struct_1(arg_0.a, ~(var_0.b | 39361u) << (1u % 32u), var_0.c);
    var var_3 = arg_0;
    let var_4 = !(!vec3<bool>(!(!var_2.c), !any(vec3<bool>(true, false, var_0.c)), !(!arg_0.c)));
    return arg_0.a.x;
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_1(vec3<i32>(-func_4(func_2(38284u)), 8227i >> (1u % 32u), -2147483647i), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1852f, -1294f), _wgslsmith_f_op_f32(max(1153f, -527f)), arg_0.x || arg_0.x))) == _wgslsmith_f_op_f32(select(-908f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(890f - 542f) - _wgslsmith_div_f32(864f, 873f)), false)));
    let var_1 = any(arg_0.yxz);
    var var_2 = func_2(~(~(~_wgslsmith_add_u32(108u, 1u))));
    var_2 = Struct_1(_wgslsmith_div_vec3_i32(-var_2.a, min(_wgslsmith_div_vec3_i32(var_2.a, ~var_2.a), -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 0i), vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x)))), _wgslsmith_dot_vec4_u32(abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.b, 1u, var_0.b), vec4<u32>(0u, var_0.b, var_2.b, var_2.b)))), vec4<u32>(~1365u, 4294967295u, var_2.b, ~(~1u))), ((var_0.a.x ^ 1i) | 2147483647i) != -1i);
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, var_2.b, var_0.b)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, var_0.b, 0u, var_0.b), ~vec4<u32>(36324u, 40976u, u_input.a, 1u))) ^ ~reverseBits(abs(vec4<u32>(var_0.b, 1u, 1u, var_0.b))));
    return (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_2.b, u_input.a) & var_3.xxz, _wgslsmith_mult_vec3_u32(vec3<u32>(31864u, 0u, var_3.x), countOneBits(vec3<u32>(0u, 0u, var_3.x)))) & _wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.a, 4294967295u, var_3.x), vec3<u32>(var_0.b, var_3.x, var_0.b) ^ vec3<u32>(var_2.b, u_input.a, u_input.a), select(arg_0.wxz, vec3<bool>(arg_0.x, var_0.c, var_0.c), var_1)), var_3.xyw & vec3<u32>(0u, 75500u, 5706u))) ^ (var_3.wyz | var_3.xzy);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_add_u32(arg_1.x, firstTrailingBit(arg_0)));
    let var_1 = 1u;
    var_0 = arg_2;
    var_0 = func_2(var_1);
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(2147483647i, 8363i, -1i, var_0.a.x)), ~vec4<i32>(var_0.a.x, 26215i, -1i, 0i)), vec4<i32>(~var_0.a.x, func_2(var_0.b).a.x, ~var_0.a.x, 2147483647i)), ~_wgslsmith_clamp_i32(arg_2.a.x & 26060i, max(-1002i, 2147483647i), abs(arg_2.a.x)), -(~var_0.a.x)), ~vec3<i32>(-2147483647i, arg_2.a.x, 4653i), -_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.a.x, var_0.a.x, arg_2.a.x)), -_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(var_0.a.x, -20309i, var_0.a.x))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-544f, -2569f, 928f), vec3<f32>(1000f, -1004f, 1024f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, 338f, -967f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-590f + -1611f)) - vec3<f32>(_wgslsmith_f_op_f32(-1238f + 1446f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-453f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f + 645f)))), !vec3<bool>(all(!vec4<bool>(var_0.c, false, arg_2.c, arg_2.c)), func_2(arg_0).c, var_0.c)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_1(vec3<i32>(-1i) * -abs(vec3<i32>(arg_2.x, -1i, 21890i) << (vec3<u32>(12016u, 14247u, u_input.a) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a) << (~vec4<u32>(u_input.a, 55996u, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 37485u, 29713u), vec4<u32>(u_input.a, 36196u, u_input.a, u_input.a)))), !((-2147483647i >> (u_input.a % 32u)) > arg_0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 114f)))), 1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(868f)) + -278f))));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(min(~arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(48259i, arg_2.x, arg_2.x), var_0.a)), arg_2.x, _wgslsmith_div_i32(0i, 1i))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b, var_0.b), firstLeadingBit(vec2<u32>(30667u, 4294967295u))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * var_1.x), 1000f) == _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, arg_1.x, arg_1.x), vec3<f32>(-218f, var_1.x, var_1.x), vec3<bool>(var_2.c, var_0.c, var_0.c)))))) - vec3<f32>(arg_1.x, -159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(~var_2.b, ~vec3<u32>(var_0.b, 64930u, 1u), func_2(var_0.b))).x * -1294f)));
    var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1484f, arg_1.x, _wgslsmith_f_op_f32(sign(-554f)))));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-((vec2<i32>(var_2.a.x, 1i) | arg_0) & vec2<i32>(0i, var_2.a.x)), abs(vec2<i32>(abs(-46074i), countOneBits(0i)))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-vec2<i32>(_wgslsmith_mod_i32(1i, 2147483647i >> (u_input.a % 32u)), -1i), _wgslsmith_f_op_vec3_f32(func_5(u_input.a, func_1(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, false, false)))), Struct_1(vec3<i32>(2147483647i, 1i, i32(-1i) * -20363i), min(u_input.a, firstTrailingBit(0u)), all(vec2<bool>(true, false))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-func_2(u_input.a).a.x, ~(i32(-1i) * -2147483647i), -43769i, -2147483647i), vec4<i32>(-32182i, max(-59905i, 0i), _wgslsmith_sub_i32(-17341i, -28727i), func_4(Struct_1(vec3<i32>(2147483647i, -32481i, 1i), u_input.a, true))) & select(vec4<i32>(2147483647i, 1i, 2147483647i, -1i), abs(vec4<i32>(39109i, 1i, 1i, 15558i)), true), vec4<i32>(~(~(-2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 47179i), vec2<i32>(2147483647i, -2147483647i)), 12358i, -1i), ~func_4(Struct_1(vec3<i32>(-6643i, 37522i, -2045i), 4294967295u, false)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, 1i), -34848i, 1i))));
    let var_1 = firstLeadingBit(countOneBits(63478u));
    var var_2 = func_2(33149u);
    var var_3 = Struct_1(firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, var_2.a.x, _wgslsmith_add_i32(var_2.a.x, ~(-29586i)))), 22152u, var_2.c);
    var var_4 = var_2.c;
    var var_5 = vec3<i32>(-_wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, 25530i), vec4<i32>(2147483647i, -1i, var_0, -1i)), vec4<i32>(var_0, -18563i, 1i, var_3.a.x)), 9337i, var_2.a.x);
    var_5 = ~select(-var_2.a, (var_3.a << (~vec3<u32>(1u, var_2.b, var_2.b) % vec3<u32>(32u))) & (vec3<i32>(-1i) * -vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_2.c, var_3.c), vec3<bool>(true, var_2.c, true), var_3.c), var_2.c), vec3<bool>(!var_3.c, true, var_2.c), select(select(vec3<bool>(var_3.c, true, var_2.c), vec3<bool>(false, var_2.c, var_3.c), vec3<bool>(true, false, var_3.c)), vec3<bool>(true, false, false), var_2.c)));
    var_5 = ~var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~var_2.a, _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(1i, var_0, 735i)), var_3.a)), 1u, -_wgslsmith_dot_vec2_i32(var_3.a.yx, _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 2147483647i), -vec2<i32>(-2147483647i, var_5.x), ~vec2<i32>(0i, -1i))), vec2<f32>(_wgslsmith_f_op_f32(-1303f + -2136f), 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, -477f, _wgslsmith_f_op_f32(max(-378f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2039f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1310f, 474f, 1808f, -1688f)))))));
}

