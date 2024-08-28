struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = -1114f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-527f, -1483f)), _wgslsmith_f_op_f32(trunc(-1052f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(563f, -1084f, arg_3.a.b.x)) - _wgslsmith_f_op_f32(step(-182f, 770f)))));
    let var_2 = true;
    return vec4<f32>(-1430f, _wgslsmith_f_op_f32(ceil(-180f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(328f, -1087f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-361f, -508f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -536f), -1108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1772f) - 1f));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = arg_2.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(select(u_input.b, ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), !vec3<bool>(true, arg_0, arg_0)), abs(~u_input.b), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec4<bool>(true, true, any(!vec4<bool>(true, arg_0, arg_0, true)), any(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), true), Struct_1(vec3<u32>(reverseBits(~u_input.a), 4294967295u, (u_input.a ^ u_input.a) ^ 61866u), !vec4<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0, any(vec3<bool>(false, true, arg_0)), false), false));
    var var_2 = Struct_1(~(u_input.b | firstLeadingBit(u_input.b)), var_1.b.b, !var_1.b.b.x);
    let var_3 = min(u_input.c.x, _wgslsmith_sub_i32(-abs(_wgslsmith_add_i32(-11336i, u_input.c.x)), u_input.c.x));
    var var_4 = vec4<i32>(u_input.c.x, -2147483647i, -6383i, -24152i) << (vec4<u32>(4294967295u, abs((var_1.b.a.x | 32692u) & ~var_2.a.x), 1u, ~var_2.a.x) % vec4<u32>(32u));
    return ~(~(-(~20814i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = 47185u;
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(min(1i, u_input.c.x), _wgslsmith_mod_i32(arg_3.b, ~1i), ~1i, arg_3.b | (arg_3.b ^ (u_input.c.x & arg_3.b))), vec4<i32>(~(u_input.c.x << (4294967295u % 32u)), ~(-13413i), u_input.c.x, func_4(true && (arg_0 & arg_0), _wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec4_f32(func_3(arg_1.a.c, Struct_4(vec4<i32>(arg_3.b, 0i, 2147483647i, -2147483647i)), select(arg_3.b, u_input.c.x, false), Struct_2(arg_1.a, arg_3.c))))));
    var_1 = -firstLeadingBit(abs(vec4<i32>(var_1.x, arg_3.b, 4800i, 35256i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(abs(1i), i32(-1i) * -58155i, u_input.c.x, -(arg_3.b ^ 6877i)), abs(vec4<i32>(0i, 2147483647i, -2147483647i, -14225i) >> (arg_3.a % vec4<u32>(32u))));
    var_1 = vec4<i32>(u_input.c.x, var_1.x, firstTrailingBit(select(reverseBits(0i >> (var_0 % 32u)), 38874i, arg_3.c.b.x)), -abs(~(-2147483647i)));
    var var_2 = Struct_1(reverseBits(min(vec3<u32>(_wgslsmith_add_u32(arg_1.a.a.x, 4294967295u), var_0, arg_3.a.x), u_input.b)), arg_1.b.b, !(!(arg_0 || (arg_0 && arg_3.c.b.x))));
    return arg_3.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = func_2(false, arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1297f)) - _wgslsmith_div_f32(-493f, 1502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)))), Struct_3(vec4<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(0u, arg_1.a.a.x, 18681u)), 0u, ~(~1u)), u_input.c.x, Struct_1(vec3<u32>(0u, 26116u, u_input.a) ^ arg_1.b.a, select(arg_1.a.b, arg_1.a.b, arg_1.a.b.x), all(select(vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c), vec3<bool>(true, arg_1.b.b.x, true), vec3<bool>(arg_1.a.b.x, arg_1.b.b.x, arg_1.a.b.x))))));
    var var_1 = 1i;
    var var_2 = arg_0.x;
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, !(arg_2.c.c & all(vec3<bool>(false, false, arg_0.b.b.x))));
    var var_1 = u_input.c.x;
    var_1 = 1081i;
    var var_2 = arg_0.a.b;
    var var_3 = Struct_1(abs(u_input.b) & arg_2.c.a, func_2(true, func_1(~vec3<i32>(2147483647i, arg_2.b, 0i) ^ vec3<i32>(arg_2.b, arg_2.b, arg_1.a.x), Struct_2(Struct_1(vec3<u32>(arg_2.a.x, arg_2.a.x, u_input.b.x), arg_0.b.b, arg_0.a.b.x), arg_2.c), vec2<i32>(abs(6199i), _wgslsmith_div_i32(-33993i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, -479f, 1283f))), Struct_3(vec4<u32>(1u, arg_2.a.x, ~52363u, select(u_input.b.x, arg_0.a.a.x, false)), ~countOneBits(arg_1.a.x), func_2(func_1(arg_1.a.zzx, Struct_2(arg_0.b, Struct_1(vec3<u32>(0u, 16942u, u_input.a), vec4<bool>(arg_0.a.b.x, arg_0.a.c, false, false), arg_0.b.c)), vec2<i32>(-21412i, 19593i)).b.c, func_1(vec3<i32>(u_input.c.x, 1i, 61945i), Struct_2(Struct_1(u_input.b, arg_2.c.b, var_2.x), Struct_1(arg_2.a.wyw, vec4<bool>(true, arg_2.c.c, arg_0.b.b.x, false), true)), arg_1.a.xx), _wgslsmith_f_op_vec3_f32(vec3<f32>(259f, -668f, 1669f) - vec3<f32>(727f, -1086f, 786f)), arg_2))).b, true);
    return Struct_1(firstLeadingBit(~var_3.a), select(!func_2(false, Struct_2(arg_0.a, arg_2.c), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(211f, 689f, 1753f))), arg_2).b, arg_2.c.b, true), true);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3.b.zxy;
    var var_1 = arg_0.a.x;
    var_0 = vec3<bool>(arg_0.b.x, false, any(arg_3.b));
    var var_2 = func_1(arg_2.a.wyz, Struct_2(func_2(!func_1(arg_2.a.wzy, Struct_2(arg_0, arg_0), arg_2.a.zy).b.c, func_1(~arg_2.a.wwx, func_1(arg_2.a.xww, Struct_2(Struct_1(vec3<u32>(u_input.b.x, arg_3.a.x, arg_0.a.x), vec4<bool>(arg_3.c, arg_0.c, arg_3.c, arg_0.b.x), false), arg_3), vec2<i32>(arg_1, u_input.c.x)), select(arg_2.a.zx, arg_2.a.yx, arg_3.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1877f, -228f, -2673f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(370f, 892f, -1287f)))), Struct_3(max(vec4<u32>(26657u, arg_0.a.x, 16435u, 4294967295u), vec4<u32>(1u, arg_3.a.x, arg_3.a.x, u_input.a)), -u_input.c.x, Struct_1(vec3<u32>(4294967295u, arg_3.a.x, 4294967295u), vec4<bool>(var_0.x, true, var_0.x, arg_0.c), true))), Struct_1(_wgslsmith_sub_vec3_u32(func_5(Struct_2(arg_3, Struct_1(u_input.b, arg_0.b, var_0.x)), arg_2, Struct_3(vec4<u32>(22219u, arg_3.a.x, u_input.b.x, arg_0.a.x), 1i, Struct_1(arg_0.a, arg_0.b, arg_0.c))).a, countOneBits(arg_0.a)), !arg_0.b, var_0.x)), arg_2.a.xz);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f - -1590f)), -794f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(211f)) - _wgslsmith_f_op_f32(ceil(-1380f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(827f, -112f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 402f, -1466f, 433f) * vec4<f32>(-665f, 1061f, 2209f, -1597f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(886f, 810f, 415f, 1901f), vec4<f32>(209f, -1000f, -2766f, 274f)), vec4<f32>(1107f, -1093f, -672f, -266f))))))), select(vec4<bool>(arg_3.b.x, 36186u != _wgslsmith_mult_u32(1u, arg_0.a.x), var_0.x, false), func_1(arg_2.a.wyx, func_1(_wgslsmith_sub_vec3_i32(arg_2.a.wxz, vec3<i32>(48232i, 14806i, arg_1)), Struct_2(Struct_1(vec3<u32>(var_2.a.a.x, arg_0.a.x, arg_3.a.x), var_2.b.b, false), arg_0), arg_2.a.zx), (vec2<i32>(-8149i, arg_2.a.x) ^ vec2<i32>(-54581i, u_input.c.x)) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))).b.b, false)));
    return Struct_3(_wgslsmith_sub_vec4_u32(select(min(min(vec4<u32>(var_2.b.a.x, 4294967295u, 0u, 0u), vec4<u32>(42567u, arg_3.a.x, arg_3.a.x, var_2.a.a.x)), vec4<u32>(arg_3.a.x, 1u, u_input.b.x, 1u)), ~(~vec4<u32>(arg_3.a.x, 8204u, 72106u, 0u)), vec4<bool>(!arg_3.b.x, func_2(var_0.x, Struct_2(arg_3, Struct_1(arg_0.a, arg_3.b, var_2.a.b.x)), vec3<f32>(var_3.x, var_3.x, 1110f), Struct_3(vec4<u32>(u_input.b.x, arg_3.a.x, 13577u, 0u), -45450i, arg_3)).b.x, false, !arg_0.c)), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 5918u, arg_0.a.x, 41575u), vec4<u32>(u_input.b.x, arg_0.a.x, 4294967295u, 1u)), vec4<u32>(u_input.a, 17404u, var_2.b.a.x, var_2.a.a.x) ^ vec4<u32>(arg_3.a.x, 52091u, var_2.b.a.x, 11825u))), select(0i, _wgslsmith_dot_vec4_i32(arg_2.a & (arg_2.a ^ arg_2.a), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-20944i, u_input.c.x, u_input.c.x, arg_1)), -arg_2.a)), any(select(vec4<bool>(true, true, true, false), func_5(Struct_2(Struct_1(vec3<u32>(arg_3.a.x, 26156u, arg_3.a.x), vec4<bool>(var_2.b.b.x, false, arg_0.c, true), true), var_2.b), arg_2, Struct_3(vec4<u32>(1u, u_input.b.x, arg_0.a.x, 7239u), arg_2.a.x, Struct_1(vec3<u32>(u_input.a, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_3.b.x, var_2.b.c, var_2.a.c, false), true))).b, vec4<bool>(arg_0.b.x, var_2.a.b.x, true, arg_0.b.x)))), func_1(arg_2.a.wyz, func_1(arg_2.a.yxw, func_1(vec3<i32>(u_input.c.x, arg_2.a.x, arg_2.a.x) ^ vec3<i32>(u_input.c.x, -1i, u_input.c.x), func_1(vec3<i32>(2147483647i, -2147483647i, u_input.c.x), Struct_2(arg_0, Struct_1(var_2.b.a, vec4<bool>(true, true, true, false), true)), vec2<i32>(2147483647i, 1i)), u_input.c ^ vec2<i32>(u_input.c.x, arg_2.a.x)), -(vec2<i32>(-7746i, u_input.c.x) ^ arg_2.a.zy)), u_input.c).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(~(~u_input.b)) >> (countOneBits(u_input.b) % vec3<u32>(32u)), !vec4<bool>(true, false, true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), false);
    let var_1 = func_6(Struct_1(vec3<u32>(var_0.a.x, 75147u, _wgslsmith_mod_u32(40040u, min(69934u, 11100u))), vec4<bool>(!any(vec4<bool>(false, true, var_0.b.x, false)), any(!var_0.b), false, all(var_0.b)), false), u_input.c.x, Struct_4(abs(select(vec4<i32>(27956i, 16818i, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), ~vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x), var_0.b.x))), func_5(func_1(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(-1i, u_input.c.x, u_input.c.x), var_0.b.wyx), _wgslsmith_sub_vec3_i32(vec3<i32>(-23420i, u_input.c.x, 36590i), vec3<i32>(-9867i, u_input.c.x, u_input.c.x))), Struct_2(Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, true, false), var_0.c), var_0), vec2<i32>(-2147483647i, -u_input.c.x)), Struct_4(_wgslsmith_div_vec4_i32(~vec4<i32>(25158i, -1i, 1948i, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), Struct_3(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.a, u_input.b.x)), u_input.b.x, _wgslsmith_div_u32(11452u, 9490u)), ~(-u_input.c.x), var_0)));
    var var_2 = u_input.a;
    var_2 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 3773u, 28511u), vec3<u32>(u_input.a, 54896u, u_input.a)), var_1.c.a.x), max(func_5(func_1(vec3<i32>(26563i, -21625i, u_input.c.x), Struct_2(var_1.c, Struct_1(vec3<u32>(u_input.b.x, 1u, 52030u), vec4<bool>(false, false, var_1.c.c, var_0.c), var_1.c.b.x)), vec2<i32>(u_input.c.x, var_1.b)), Struct_4(vec4<i32>(var_1.b, u_input.c.x, -49296i, -2147483647i)), var_1).a.x, _wgslsmith_dot_vec2_u32(~u_input.b.yx, _wgslsmith_sub_vec2_u32(var_0.a.yz, var_1.a.zx)))) & _wgslsmith_mult_u32(34710u, 7646u);
    let var_3 = var_1.c.c;
    var_2 = func_2(var_0.b.x, Struct_2(func_5(func_1(vec3<i32>(73988i, 9836i, 9932i), Struct_2(var_0, Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, u_input.b.x), vec4<bool>(var_1.c.c, false, var_3, false), var_0.c)), vec2<i32>(u_input.c.x, var_1.b)), Struct_4(vec4<i32>(var_1.b, -1i, var_1.b, -10449i)), func_6(var_0, 1i, Struct_4(vec4<i32>(var_1.b, u_input.c.x, -1i, -49005i)), var_1.c)), Struct_1(select(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(64684u, 42524u, 27671u), var_3), vec4<bool>(true, var_0.c, true, false), all(vec2<bool>(var_3, true)))), vec3<f32>(-368f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1356f + -2090f)), func_6(func_1(countOneBits(vec3<i32>(-2147483647i, var_1.b, var_1.b)), func_1(vec3<i32>(2147483647i, 39686i, 1i), Struct_2(var_0, Struct_1(var_0.a, var_0.b, true)), u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.b), u_input.c)).b, -2147483647i, Struct_4(~vec4<i32>(32259i, u_input.c.x, -1i, -1i)), Struct_1(_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(var_1.a.x, 0u, u_input.a)), vec4<bool>(false, var_1.c.b.x, var_1.c.c, var_3), !var_0.c))).a.x >> (4294967295u % 32u);
    var_2 = func_2(true, func_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, var_1.b, u_input.c.x), -vec3<i32>(var_1.b, 1i, 16649i))), Struct_2(func_6(func_1(vec3<i32>(53701i, -3393i, -2147483647i), Struct_2(var_1.c, var_0), u_input.c).b, -2147483647i, Struct_4(vec4<i32>(-26915i, var_1.b, 49439i, var_1.b)), Struct_1(var_0.a, vec4<bool>(true, true, true, var_1.c.b.x), true)).c, func_5(func_1(vec3<i32>(5922i, 2147483647i, 2147483647i), Struct_2(var_1.c, Struct_1(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), vec4<bool>(false, false, var_1.c.b.x, var_1.c.b.x), false)), vec2<i32>(var_1.b, var_1.b)), Struct_4(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 0i)), func_6(var_0, 35851i, Struct_4(vec4<i32>(-22704i, -33419i, -17659i, u_input.c.x)), Struct_1(vec3<u32>(var_1.a.x, 4294967295u, var_0.a.x), var_1.c.b, true)))), firstLeadingBit(select(abs(vec2<i32>(-23905i, u_input.c.x)), vec2<i32>(64i, var_1.b), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(2547u, ~0u, 64114u, var_0.a.x), var_1.a, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 13349u, u_input.a), var_1.a) ^ var_1.a), -43773i, var_1.c)).a.x;
    let var_4 = Struct_4(vec4<i32>(func_4(~u_input.c.x >= _wgslsmith_mult_i32(-2147483647i, var_1.b), _wgslsmith_f_op_vec4_f32(func_3(any(var_1.c.b), Struct_4(vec4<i32>(1i, 31798i, -1i, -19271i)), -3937i, func_1(vec3<i32>(u_input.c.x, u_input.c.x, -1i), Struct_2(var_0, var_0), vec2<i32>(-18705i, var_1.b)))).yww, vec4<f32>(_wgslsmith_f_op_f32(ceil(269f)), 255f, -532f, _wgslsmith_div_f32(-384f, 1742f))), 78219i, -var_1.b, ~(-u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_1(~vec3<u32>(u_input.a, 4294967295u, var_0.a.x), !var_0.b, var_1.c.b.x), i32(-1i) * -9289i, var_4, func_1(vec3<i32>(-1474i, u_input.c.x, 20688i), func_1(~var_4.a.wyy, func_1(var_4.a.xxx, Struct_2(var_1.c, Struct_1(var_0.a, var_0.b, var_3)), var_4.a.yx), vec2<i32>(-55277i, u_input.c.x)), ~abs(var_4.a.xz)).a).c.a.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, -138f, -1000f, 1078f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, 945f, 315f, 1406f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(651f, -131f, 496f, -2384f))))))));
}

