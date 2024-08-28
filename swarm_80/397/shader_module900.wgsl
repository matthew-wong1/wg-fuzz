struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = max(vec4<i32>(-select(arg_0.d, -311i, arg_0.b), _wgslsmith_sub_i32(max(arg_0.d & arg_0.d, arg_0.d << (60921u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, 16534i, arg_0.c.x), vec3<i32>(arg_0.d, arg_0.c.x, arg_0.c.x) >> (vec3<u32>(arg_0.a, 4294967295u, 0u) % vec3<u32>(32u)))), ~abs(countOneBits(arg_0.c.x)), ~(abs(arg_0.d) >> (1u % 32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, min(arg_0.d, -27163i), min(arg_0.c.x, arg_0.c.x), abs(arg_0.c.x)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(17912u, u_input.c, 18439u, 70438u)), vec4<u32>(1u, arg_0.a, u_input.a.x, 8924u), ~vec4<u32>(39476u, u_input.b, u_input.b, 0u)) % vec4<u32>(32u)), max(vec4<i32>(-22902i, arg_0.d, -1i, 36296i) & vec4<i32>(arg_0.d, arg_0.d, -50639i, arg_0.c.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(-17923i, 0i, arg_0.d, -4162i), _wgslsmith_mod_vec4_i32(vec4<i32>(18165i, 0i, arg_0.d, arg_0.c.x), vec4<i32>(-2147483647i, 53804i, -1717i, -3217i))))));
    var_0 = firstLeadingBit(~(~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(15092i, 30515i, arg_0.c.x, arg_0.c.x), vec4<i32>(arg_0.c.x, -1i, -29836i, arg_0.d)))));
    var var_1 = arg_0;
    var var_2 = vec2<i32>(0i, -_wgslsmith_clamp_i32(i32(-1i) * -25613i, ~_wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(var_0.x, -1i)), _wgslsmith_clamp_i32(var_0.x >> (32321u % 32u), ~2147483647i, var_1.d & arg_0.c.x)));
    var var_3 = Struct_3(Struct_1(reverseBits(~_wgslsmith_mod_u32(1062u, arg_0.a)), all(select(vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b), false)), vec2<i32>(_wgslsmith_mod_i32(var_2.x, firstLeadingBit(8906i)), min(var_2.x, arg_0.d)), var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-780f))))), 1f), Struct_2(Struct_1(1u, var_1.b & any(vec2<bool>(false, arg_0.b)), countOneBits(vec2<i32>(arg_0.c.x, 2147483647i)), -25649i)));
    return vec4<i32>(1i, ~801i, _wgslsmith_div_i32(arg_0.c.x, -(~(~var_3.c.a.c.x))), -(i32(-1i) * -2147483647i));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -31880i, 0i, abs(1i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(43110i << (u_input.c % 32u), -2147483647i, 2147483647i, 1i), -abs(vec4<i32>(-48041i, 1i, -30064i, 11288i))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, -7972i), func_3(Struct_1(25127u, false, vec2<i32>(3240i, 1i), 2147483647i)), vec4<i32>(1i, -85905i, -2147483647i, -1i)))));
    let var_1 = Struct_2(Struct_1(u_input.a.x, any(vec2<bool>(true, true)), ~vec2<i32>(1i, countOneBits(-9200i)), -_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, -37526i), _wgslsmith_clamp_i32(-26084i, 2093i, 1i))));
    var var_2 = Struct_3(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), arg_0), var_1);
    let var_3 = var_1;
    var var_4 = -44502i;
    return 1000f;
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(1u, true, (_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 29101i), vec2<i32>(20300i, 1i)) & (vec2<i32>(-47567i, 1i) >> (u_input.a % vec2<u32>(32u)))) ^ ~(-vec2<i32>(1i, -11147i)), firstTrailingBit(-func_3(Struct_1(u_input.c, true, vec2<i32>(18666i, 0i), -1i)).x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1003f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -356f))), all(select(vec3<bool>(true, true, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, false)))))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = Struct_3(var_1.a, var_2.xx, Struct_2(Struct_1(40297u, any(!vec4<bool>(false, var_1.a.b, var_1.a.b, var_1.a.b)), ~(-var_1.a.c), -55564i)));
    var var_4 = vec3<i32>(reverseBits(var_1.a.d), -(~firstTrailingBit(reverseBits(3077i))), select(abs(~var_1.a.c.x), ~(-var_3.c.a.c.x), var_1.a.b));
    return ~var_3.c.a.a & ~_wgslsmith_mult_u32(4294967295u, 0u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(!(false & ((arg_0.b | arg_0.b) || true)), true, arg_0.b, false);
    var var_1 = vec4<i32>(abs(arg_0.c.x), -1i, arg_0.c.x << (firstLeadingBit(~31867u) % 32u), ~49927i);
    let var_2 = -var_1.ww & var_1.zx;
    var var_3 = 0u;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - -311f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2219f, -815f)) - _wgslsmith_f_op_f32(f32(-1f) * -632f)), -1307f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1346f + _wgslsmith_f_op_f32(max(293f, -217f))) + -447f), 106f)));
    return Struct_1(func_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(var_4.yx)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + var_4.x) * _wgslsmith_f_op_f32(min(var_4.x, 207f))), _wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(step(-328f, 580f))))), all(!vec3<bool>(false, var_0.x, false)) == !(var_4.x >= var_4.x), -arg_0.c, -1i);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = u_input.a | u_input.a;
    let var_1 = Struct_3(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, -666f)), _wgslsmith_f_op_f32(-1132f - _wgslsmith_f_op_f32(select(1609f, -611f, true))))), _wgslsmith_div_f32(-2036f, -1000f)), arg_1);
    var_0 = u_input.a;
    var var_2 = !(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), var_1.c.a.b), !vec4<bool>(false, arg_0.a.b, false, arg_1.a.b), var_1.c.a.d != arg_1.a.d)));
    var_2 = select(!select(select(select(vec4<bool>(var_2.x, var_1.c.a.b, false, arg_1.a.b), vec4<bool>(true, arg_0.a.b, var_1.a.b, arg_0.a.b), arg_0.a.b), !vec4<bool>(arg_1.a.b, var_2.x, true, var_2.x), var_2.x), vec4<bool>(true, true, true, true), !(arg_0.a.b & arg_0.a.b)), vec4<bool>(min(i32(-1i) * -10806i, ~(-3370i)) <= -(~arg_0.a.c.x), !var_2.x, !any(vec2<bool>(var_2.x, arg_0.a.b)), true), !var_2.x | any(select(var_2.wyz, !var_2.zyy, true)));
    return arg_0.a;
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1163f);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1506f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f - _wgslsmith_f_op_f32(trunc(1019f))))));
    var_1 = arg_2;
    let var_3 = true;
    return Struct_2(func_5(Struct_2(func_5(Struct_2(arg_2), Struct_2(Struct_1(5874u, true, vec2<i32>(arg_2.d, var_1.d), 0i)))), Struct_2(Struct_1(2515u, false, vec2<i32>(arg_2.c.x, 2147483647i), arg_2.d))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_0.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(abs(-299f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f - 677f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -514f, -325f)))), vec4<f32>(-648f, -1968f, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(var_1.x * var_1.x)), select(vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_1.x), arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -904f, -168f) + vec4<f32>(-2114f, 1103f, -1481f, var_1.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 433f, 2113f) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 531f, 142f, var_1.x), vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x)))))), !arg_2)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -495f, 395f, 816f), vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -2579f, var_1.x, 445f) - vec4<f32>(var_1.x, var_1.x, -369f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(floor(-1039f)), -177f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -1439f, -270f, 608f))))), arg_2))));
    var var_2 = vec4<u32>(84857u, ~(~arg_0.a.a), 4294967295u, 4294967295u & (u_input.a.x & ~(75451u & u_input.b)));
    let var_3 = var_0.a;
    return !arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, all(vec3<bool>(true, any(vec2<bool>(false, false)), u_input.b <= u_input.a.x)) & !all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), -vec2<i32>(51139i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -52109i, 2147483647i), vec4<i32>(-1i, 31905i, 1i, -27549i))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i >> (0u % 32u), firstTrailingBit(-2147483647i)), _wgslsmith_sub_i32(~0i, i32(-1i) * -74288i)) ^ 50328i);
    let var_1 = Struct_2(var_0);
    var var_2 = vec3<bool>(true != !any(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_1.a.b, var_0.b), true)), !var_0.b, false);
    var var_3 = var_0;
    let var_4 = select(4294967295u, 44730u, true);
    let var_5 = func_7(func_6(any(vec4<bool>(61008u == var_0.a, true & var_2.x, select(var_0.b, false, var_1.a.b), var_3.b | var_3.b)), vec2<bool>(var_1.a.b, !var_1.a.b && var_3.b), func_5(Struct_2(var_0), Struct_2(func_1(Struct_1(0u, false, vec2<i32>(1i, -2147483647i), -2147483647i))))), !(!select(!vec3<bool>(var_0.b, var_0.b, var_3.b), vec3<bool>(true, false, var_1.a.b), true)), select(vec4<bool>(!(var_4 < 31037u), var_1.a.b, var_2.x, true), vec4<bool>(func_6(true, vec2<bool>(var_1.a.b, true), var_0).a.b, !select(var_2.x, var_3.b, true), !(var_0.b | true), true), vec4<bool>(true, all(var_2.yx), var_0.b, !(!var_0.b))));
    let var_6 = func_6(_wgslsmith_add_u32(u_input.b, 0u) >= _wgslsmith_add_u32(11620u, u_input.a.x), var_2.zy, var_1.a).a;
    var var_7 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(1102f, var_7.c.x, min(-(~(vec3<i32>(62251i, -2147483647i, -1i) | vec3<i32>(var_7.d, var_3.d, var_7.d))), ~(firstTrailingBit(vec3<i32>(12160i, 30631i, var_7.d)) >> (vec3<u32>(40158u, 32759u, 1u) % vec3<u32>(32u)))), func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, 2354f, 349f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, 1000f, 1043f)))))));
}

