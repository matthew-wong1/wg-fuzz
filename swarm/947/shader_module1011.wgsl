struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -504f, _wgslsmith_f_op_f32(step(arg_0.a, 521f)), _wgslsmith_f_op_f32(arg_0.a - -441f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-704f * -101f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-158f, 447f)))))), true), all(!(!select(vec2<bool>(true, arg_0.c), vec2<bool>(false, false), false))), arg_0.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 8363i, 0i, -1i), vec4<i32>(arg_1, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(2147483647i, arg_1, 18616i, arg_1)) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 2147483647i, -26451i, -6020i), vec4<i32>(2147483647i, -23626i, -20016i, arg_1)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(firstLeadingBit(-1i), -1i), arg_1, abs(~arg_1))));
    var var_1 = arg_0;
    return countOneBits(~select(firstLeadingBit(vec3<i32>(13024i, u_input.a.x, arg_1)), vec3<i32>(var_0.d, arg_1, arg_1), any(vec2<bool>(true, var_1.c)))) << (vec3<u32>(0u, u_input.b, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x), 4294967295u)) % vec3<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(-arg_1.yy, vec2<i32>(32469i, arg_1.x), _wgslsmith_mult_vec2_i32(arg_1.yx, arg_1.zx))), select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1042i, -1i), vec2<i32>(-21366i, arg_2.d)), u_input.a, vec2<i32>(-2266i, arg_1.x)), -vec2<i32>(0i, -31612i)), -arg_1.xx, vec2<bool>(!any(vec4<bool>(arg_2.a.c, false, arg_2.a.c, true)), _wgslsmith_f_op_f32(arg_2.a.b - arg_2.a.a.x) >= _wgslsmith_div_f32(150f, 698f))));
    let var_1 = arg_2;
    var_0 = vec2<i32>(arg_1.x, arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1528f))))))))));
    let var_3 = u_input.b > ~countOneBits(54160u);
    return _wgslsmith_f_op_vec4_f32(max(var_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, arg_2.a.a.x, 1618f, 394f))), var_1.a.a) - _wgslsmith_f_op_vec4_f32(select(arg_2.a.a, vec4<f32>(_wgslsmith_f_op_f32(select(var_2, -557f, var_1.c)), -524f, var_2, -548f), vec4<bool>(var_1.c, select(var_3, false, arg_2.c), select(true, var_3, true), var_1.c))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_u32(14173u, u_input.b), func_3(Struct_3(-367f, vec2<u32>(u_input.b, 1u), false), u_input.a.x), Struct_2(Struct_1(vec4<f32>(1393f, 1712f, -672f, -1544f), 736f, false), true, true || arg_0.x, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-600f + -208f), _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(-1000f - -500f))), true), true, true, u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ((abs(~u_input.b) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 10470u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 60196u, u_input.b), vec3<u32>(u_input.b, 0u, 65833u), vec3<u32>(34729u, u_input.b, u_input.b)))) << (~4294967295u % 32u)) < ~_wgslsmith_clamp_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 0u), u_input.b);
    let var_1 = Struct_2(func_2(!select(vec4<bool>(false, arg_2.x, arg_2.x, true), !vec4<bool>(arg_0.a.c, arg_3.c, arg_2.x, arg_0.a.c), false)).a, !all(!select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_2.x, arg_0.b), arg_2.x)), true, -(~(~(-2147483647i))));
    var_0 = any(select(vec2<bool>(arg_0.a.c, true), !select(arg_2.zy, arg_2.zy, !arg_2.zy), any(!arg_2.zz)));
    var_0 = _wgslsmith_sub_i32(u_input.a.x, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, 9787i), vec2<i32>(u_input.a.x, 1i)))) >= -13165i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(56332u, 4294967295u), vec2<u32>(13880u, 0u), true)), min(abs(vec2<u32>(u_input.b, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 38507u), vec2<u32>(31500u, u_input.b)))), abs(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(31357i, arg_3.d, 1i), vec3<i32>(-1i, -24082i, u_input.a.x)))), arg_3)).x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_3.a.a.x) * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1)))), arg_1, true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = !(!select(vec4<bool>(false, true & arg_0.c, false, false), !(!vec4<bool>(false, arg_2, false, true)), true));
    var_0 = !vec4<bool>(true == arg_0.c, !all(var_0.zy), !(false && (u_input.a.x != arg_1.d)), false);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -306f);
    let var_2 = arg_1;
    let var_3 = Struct_3(-465f, _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(101091u, arg_3) & vec2<u32>(u_input.b, 39002u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, 54318u), vec2<u32>(u_input.b, u_input.b))), firstTrailingBit(vec2<u32>(0u, arg_3)) << (firstTrailingBit(~vec2<u32>(4294967295u, 17488u)) % vec2<u32>(32u))), !arg_0.c);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a.a, vec4<f32>(768f, arg_1.a.b, 156f, var_1), false)), _wgslsmith_div_vec4_f32(vec4<f32>(129f, -392f, -662f, 954f), var_2.a.a))), arg_1.a.a.x, false), var_0.x, arg_2, i32(-1i) * -22597i);
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0.a.a.x));
    let var_1 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2357f, arg_3.a.b, arg_3.a.a.x, arg_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.a.b, 889f)))), arg_3.a.c), Struct_2(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a.a), _wgslsmith_f_op_f32(floor(arg_3.a.a.x)), true), func_2(select(vec4<bool>(arg_3.a.c, true, arg_3.b, arg_3.c), vec4<bool>(false, arg_0.c, arg_3.b, arg_0.c), true)), arg_0.a.c, ~firstLeadingBit(arg_1)).a, !all(!vec2<bool>(arg_0.a.c, arg_0.a.c)), arg_0.c, _wgslsmith_sub_i32(abs(48871i), 0i)), true, u_input.b).a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(203f, arg_3.a.b))) * var_1.b), -338f, all(!vec4<bool>(true, arg_0.c, arg_0.a.c, arg_3.b)))));
    var var_2 = max(~max(u_input.b, _wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 24u))), _wgslsmith_add_u32(4294967295u, u_input.b));
    var_2 = ~u_input.b;
    return Struct_1(_wgslsmith_div_vec4_f32(arg_3.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(320f, var_1.b, -366f, var_1.a.x) - arg_0.a.a)) - arg_0.a.a)), -1443f, !(_wgslsmith_add_i32(u_input.a.x, 2776i << (arg_1 % 32u)) < max(_wgslsmith_add_i32(0i, arg_0.d), 25214i)));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.a.x, reverseBits(-1i)), -6893i) | min(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -16049i) >> (vec4<u32>(u_input.b, 67289u, u_input.b, 65518u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), -27548i);
    var var_1 = func_7(Struct_2(arg_0, arg_1.c, true, -(1i >> (~u_input.b % 32u))), select(_wgslsmith_mult_u32(select(u_input.b, 1u, false), firstTrailingBit(u_input.b)), 0u, true) << (109308u % 32u), countOneBits(vec4<i32>(1i, -2147483647i, var_0, i32(-1i) * -2559i) << (~vec4<u32>(41309u, 1u, 4294967295u, u_input.b) % vec4<u32>(32u))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(arg_1.b, arg_1.b), _wgslsmith_div_f32(-1000f, 1823f), _wgslsmith_f_op_f32(round(1101f)), 1f), 578f, func_6(Struct_1(vec4<f32>(arg_1.b, 1065f, arg_0.a.x, arg_1.b), 757f, arg_0.c), Struct_2(Struct_1(arg_1.a, arg_0.a.x, arg_0.c), false, false, 12318i), all(vec4<bool>(arg_0.c, arg_0.c, arg_1.c, true)), u_input.b).c), false, false, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -26116i, var_0), vec3<i32>(var_0, u_input.a.x, var_0)) ^ firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, var_0)), vec3<i32>(~u_input.a.x, -1i, 1i << (u_input.b % 32u)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + func_2(vec4<bool>(arg_1.c, false, var_1.c, arg_1.c)).a.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b, arg_0.b)), _wgslsmith_f_op_f32(var_1.b * arg_0.a.x)))), ~vec2<u32>(_wgslsmith_clamp_u32(~28753u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(45046u, 8106u, 0u))), firstTrailingBit(_wgslsmith_mod_u32(u_input.b, 1u))), func_6(func_2(vec4<bool>(false, var_1.c, any(vec2<bool>(arg_0.c, arg_0.c)), func_2(vec4<bool>(true, false, true, arg_1.c)).c)).a, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(1469f, 919f, arg_0.a.x, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1527f), true), true, true, _wgslsmith_add_i32(~var_0, 2147483647i)), arg_1.c, ~u_input.b).b);
    let var_3 = _wgslsmith_f_op_f32(var_2.a - arg_1.b);
    var_1 = arg_1;
    return func_6(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)), _wgslsmith_f_op_vec4_f32(abs(arg_0.a)), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f + var_1.a.x) - var_2.a))), false), Struct_2(func_2(vec4<bool>(true, true, arg_1.c, arg_0.a.x < -1519f)).a, any(vec4<bool>(var_2.c | var_1.c, any(vec4<bool>(arg_0.c, false, var_2.c, true)), true, func_2(vec4<bool>(true, arg_1.c, arg_0.c, false)).a.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(var_0, var_0)), max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, 13066i))) <= _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 3595i), firstTrailingBit(vec3<i32>(u_input.a.x, var_0, var_0))), -1i), true, ~2566u);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<bool>(true, false, select(any(vec2<bool>(true, true)) & true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1224f))) * 689f)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(u_input.b, 1u, arg_0)), ~arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 12023u), vec2<u32>(1u, arg_1), vec2<u32>(4294967295u, arg_0)))), any(select(select(!vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, true, var_0.x, var_0.x), true && var_0.x), !vec4<bool>(false, true, var_0.x, var_0.x), all(!vec4<bool>(var_0.x, true, true, var_0.x)))));
    let var_2 = func_8(func_7(func_6(func_5(func_2(vec4<bool>(var_0.x, var_0.x, true, false)), var_1.a, select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0), Struct_2(Struct_1(vec4<f32>(201f, var_1.a, var_1.a, -253f), 942f, true), false, var_1.c, u_input.a.x)), func_2(vec4<bool>(true, true, true, true)), var_0.x, ~(~1u)), arg_1, max(~vec4<i32>(40711i, 2147483647i, -10324i, u_input.a.x) << (vec4<u32>(1u, var_1.b.x, 68356u, 67455u) % vec4<u32>(32u)), select(vec4<i32>(u_input.a.x, u_input.a.x, 12881i, 19501i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 74480i), vec4<bool>(true, var_1.c, true, true)) & vec4<i32>(u_input.a.x, 1i, 11688i, -52633i)), func_6(func_5(Struct_2(Struct_1(vec4<f32>(-233f, 929f, var_1.a, var_1.a), -799f, var_0.x), true, var_0.x, u_input.a.x), _wgslsmith_f_op_f32(-var_1.a), var_0, Struct_2(Struct_1(vec4<f32>(-983f, -572f, -745f, -1000f), -770f, false), var_1.c, true, 1i)), Struct_2(Struct_1(vec4<f32>(713f, var_1.a, var_1.a, var_1.a), var_1.a, var_1.c), !var_1.c, !var_0.x, 16947i), !all(vec4<bool>(false, var_0.x, true, var_0.x)), 61422u)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, var_1.a, -1221f, var_1.a), vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))))), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1385f)))))), arg_1 != 1u));
    var var_3 = vec2<u32>(u_input.b, ~arg_1);
    var var_4 = _wgslsmith_f_op_f32(-813f + _wgslsmith_div_f32(-2340f, var_1.a));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(394f))), var_1.a, 2594f, _wgslsmith_div_f32(var_2.a.b, -492f))), _wgslsmith_f_op_f32(round(-1737f)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b, u_input.b, _wgslsmith_div_u32(4294967295u, u_input.b));
    var var_1 = var_0;
    let var_2 = var_0.x;
    let var_3 = countOneBits(min(0u, u_input.b) ^ _wgslsmith_mult_u32(52348u, 0u));
    let var_4 = func_1(0u, abs(u_input.b));
    var var_5 = func_1(_wgslsmith_clamp_u32(~u_input.b, ~min(~var_2, var_0.x ^ 4294967295u), select(0u, firstLeadingBit(var_2), true) >> (var_1.x % 32u)), ~_wgslsmith_sub_u32(~(~15272u), _wgslsmith_add_u32(_wgslsmith_div_u32(var_2, var_3), 36782u)));
    var var_6 = _wgslsmith_f_op_vec4_f32(-var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) - -1232f) - _wgslsmith_f_op_f32(f32(-1f) * -229f)) * _wgslsmith_f_op_f32(-var_6.x)), var_4.a.yxw, ~u_input.b);
}

