struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(vec3<bool>(arg_1.x, 1551f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f - 1833f) + _wgslsmith_f_op_f32(trunc(371f))), ((true & arg_0) != all(vec2<bool>(arg_0, false))) | true), select(~reverseBits(vec4<i32>(-36720i, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec4_i32(-(vec4<i32>(-2147483647i, -2147483647i, -1i, 2147483647i) << (vec4<u32>(68843u, 15276u, 70162u, u_input.a) % vec4<u32>(32u))), -(vec4<i32>(38211i, u_input.b.x, 2147483647i, u_input.b.x) << (vec4<u32>(4294967295u, 0u, 1u, u_input.a) % vec4<u32>(32u)))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1f, -1000f, arg_1.x && true))))), u_input.b.x, min(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, 21734u, 56182u)), reverseBits(vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(44580u, u_input.a, 0u)), select(firstTrailingBit(vec3<u32>(0u, u_input.a, u_input.a)) << (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 14954u)) % vec3<u32>(32u)), ~vec3<u32>(65454u, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), arg_0)));
    let var_1 = var_0;
    let var_2 = firstTrailingBit(_wgslsmith_div_vec2_u32(abs(abs(var_0.e.zy)), var_1.e.yy));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1204f)));
    let var_4 = vec2<f32>(_wgslsmith_div_f32(934f, _wgslsmith_f_op_f32(f32(-1f) * -1739f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1418f))))));
    return _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(trunc(var_4.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(vec3<bool>(abs(_wgslsmith_add_i32(u_input.b.x, arg_0.b.x)) != (_wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b) >> (4294967295u % 32u)), arg_0.a.x, !(!all(vec2<bool>(arg_0.a.x, true)))), vec4<i32>(-2147483647i | max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, arg_0.b.x, 0i), arg_0.b.zxz), arg_0.b.x), 1i, -40810i, i32(-1i) * -80277i), _wgslsmith_f_op_f32(sign(arg_0.c)), abs(arg_0.b.x), ~(~(~arg_0.e)));
    var var_1 = vec4<bool>(any(!(!(!arg_0.a))), any(arg_0.a.zx), true, false);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, u_input.b.x), _wgslsmith_sub_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(arg_0.d, var_0.b.x))), vec2<i32>(u_input.b.x, var_0.b.x) << (var_0.e.yx % vec2<u32>(32u)))) | (_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b.x, -34716i), arg_0.b), arg_0.b) >> (abs(_wgslsmith_sub_u32(~var_0.e.x, 4294967295u)) % 32u));
    var_0 = arg_0;
    var_1 = select(vec4<bool>(!all(select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(true, var_1.x, var_0.a.x, var_1.x), arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a.x, var_0.a.zx))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -963f) - var_0.c), all(select(vec3<bool>(arg_0.a.x, false, true), select(var_0.a, var_0.a, vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(false, var_0.a.x, false))), true), select(select(select(!vec4<bool>(false, var_0.a.x, arg_0.a.x, false), vec4<bool>(var_1.x, var_0.a.x, true, arg_0.a.x), select(var_1.x, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0.a.x, false), vec4<bool>(false, false, arg_0.a.x, var_0.a.x), true), false || var_0.a.x), !(!vec4<bool>(arg_0.a.x, var_0.a.x, true, true))), select(!(!vec4<bool>(arg_0.a.x, var_0.a.x, var_1.x, arg_0.a.x)), !select(vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), false || !arg_0.a.x), false), !(!(var_0.c >= arg_0.c)) && any(var_0.a.yz));
    return _wgslsmith_mod_vec4_i32(-countOneBits(select(arg_0.b, vec4<i32>(var_2, 0i, var_2, arg_0.b.x), -77553i != var_2)), var_0.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(!(!select(!vec3<bool>(arg_3, true, arg_2), vec3<bool>(arg_3, false, false), false)), func_4(Struct_1(vec3<bool>(arg_3, true, arg_3), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-1i, 1i, -1i, u_input.b.x)), -vec4<i32>(57327i, 2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, vec2<bool>(arg_2, arg_3)))), -31461i, select(~vec3<u32>(12035u, 4294967295u, u_input.a), ~vec3<u32>(0u, 1u, u_input.a), true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(997f, _wgslsmith_f_op_f32(arg_1 * -1490f))))), 1434f, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, firstLeadingBit(u_input.b.x)) ^ ~reverseBits(u_input.b)), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(26262u, 16885u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(46184u, 0u, arg_0.x) & vec3<u32>(arg_0.x, u_input.a, 6058u), max(vec3<u32>(arg_0.x, u_input.a, 1u), vec3<u32>(arg_0.x, 0u, 84289u)))) >> ((~vec3<u32>(34929u, 59825u, arg_0.x) & vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, u_input.a)), u_input.a)) % vec3<u32>(32u)));
    var_0 = Struct_1(select(!(!vec3<bool>(true, var_0.a.x, false)), var_0.a, arg_0.x >= u_input.a), var_0.b, var_0.c, _wgslsmith_div_i32(1i, (74000i >> (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u)) >> (u_input.a % 32u)), vec3<u32>(_wgslsmith_add_u32(4294967295u, ~var_0.e.x) << (2294u % 32u), _wgslsmith_dot_vec3_u32(var_0.e, reverseBits(vec3<u32>(arg_0.x, 4294967295u, var_0.e.x))), firstLeadingBit(3181u << (_wgslsmith_div_u32(var_0.e.x, u_input.a) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.c));
    var_0 = Struct_1(vec3<bool>(!select(false, arg_2, arg_2), any(vec4<bool>(!arg_3, all(var_0.a.yz), arg_2, var_0.a.x || var_0.a.x)), arg_2), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -1351i, max(var_0.b.x, u_input.b.x), var_0.d), countOneBits(u_input.b.x)), ~2147483647i, 1i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(var_0.b.x, 2147483647i)), func_4(Struct_1(var_0.a, vec4<i32>(u_input.b.x, -26681i, -7727i, u_input.b.x), -652f, -2147483647i, vec3<u32>(arg_0.x, 31361u, var_0.e.x)), vec2<f32>(1377f, var_0.c)).xy)), -2402f, abs(-func_4(Struct_1(var_0.a, var_0.b, arg_1, -5002i, vec3<u32>(u_input.a, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1606f, var_0.c) + vec2<f32>(arg_1, -255f))).x), ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.x, arg_0.x), vec3<u32>(13947u, u_input.a, 0u)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e.x, u_input.a, 0u), var_0.e))));
    let var_2 = false;
    return Struct_1(!(!vec3<bool>(-1000f >= arg_1, false, arg_2)), vec4<i32>(var_0.b.x ^ var_0.b.x, _wgslsmith_add_i32(u_input.b.x, var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i ^ u_input.b.x, -1i, ~(-1i), select(var_0.b.x, 2147483647i, arg_2)), -select(var_0.b, vec4<i32>(-37565i, u_input.b.x, 0i, u_input.b.x), false)), min(_wgslsmith_div_i32(0i, -u_input.b.x), _wgslsmith_add_i32(-var_0.b.x, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * arg_1)))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(7268i, abs(-1i)), _wgslsmith_mod_i32(-25231i, (-1472i & var_0.d) | (i32(-1i) * -1i))), var_0.e);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(vec2<u32>(u_input.a, min(~(~u_input.a), ~_wgslsmith_clamp_u32(u_input.a, 42643u, 4294967295u))), 439f, false, !any(vec3<bool>(true, false, true)));
    let var_1 = var_0.a.x;
    var var_2 = func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(4294967295u), u_input.a), vec2<u32>(_wgslsmith_div_u32(4675u, 15330u), ~firstLeadingBit(42999u)), var_0.e.zx), -752f, var_0.a.x, !var_1);
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.b.xwz ^ vec3<i32>(arg_0.x, 1i, var_2.b.x)), arg_0.ywy), func_2(max(select(vec2<u32>(1u, var_2.e.x), vec2<u32>(var_0.e.x, var_0.e.x), true), var_0.e.yx & var_0.e.yz), var_2.c, true, !var_0.a.x).b.x), func_4(func_2(vec2<u32>(~u_input.a, 1u), -518f, !any(vec4<bool>(var_0.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), true), vec2<f32>(var_0.c, var_2.c)).x);
    var var_4 = _wgslsmith_clamp_vec2_i32(select(max(arg_0.xx, ~min(u_input.b, vec2<i32>(-16303i, arg_0.x))), select(vec2<i32>(reverseBits(46299i), 7336i), vec2<i32>(-2147483647i, var_0.d) << (~var_2.e.xx % vec2<u32>(32u)), vec2<bool>(var_2.a.x, var_1)), false), ~(~arg_0.xz), func_2(var_2.e.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f)), var_0.a.x, any(vec4<bool>(true, any(vec3<bool>(var_2.a.x, var_1, true)), true, true))).b.yw);
    return func_2(firstLeadingBit(countOneBits(var_2.e.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(step(1427f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-480f * var_2.c)))))), all(var_0.a), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(var_2.b.x, var_4.x), -(~(-58311i))) > -var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = func_1(vec4<i32>(var_0, 29145i, firstLeadingBit(1i), -13178i));
    var var_2 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(u_input.b.x >> (var_1.e.x % 32u), var_1.d), u_input.b.x)), var_1.b.xx);
    var_2 = -abs(u_input.b);
    let var_3 = func_1(var_1.b);
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(~vec3<i32>(-var_3.d, _wgslsmith_dot_vec4_i32(var_1.b, var_3.b), max(var_1.b.x, -25017i)), ~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, 8870i, -11640i), var_1.b.ywz, vec3<i32>(var_0, u_input.b.x, var_1.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-47080i, var_3.d, 2147483647i), var_3.b.xwz))), abs(countOneBits(4294967295u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.e.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(100550u, 34769u), var_1.e.yz)) ^ 18301u, var_3.e.x));
}

