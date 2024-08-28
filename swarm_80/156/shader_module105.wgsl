struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_i32(~max(_wgslsmith_div_i32(-26924i, u_input.d.x), u_input.e), u_input.e) | u_input.e;
    let var_1 = 0i;
    var var_2 = 42062i;
    var_2 = _wgslsmith_div_i32(i32(-1i) * -(11940i << (arg_0.b % 32u)), 0i);
    var_0 = abs(1i);
    return vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.b & 43102u, 5623u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 13823u)), u_input.a.xy)), _wgslsmith_sub_u32(31053u, 1u), ~u_input.a.x, _wgslsmith_mod_u32(reverseBits(~38323u), countOneBits(1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec3<i32> {
    let var_0 = u_input.e >= _wgslsmith_add_i32(max(i32(-1i) * -1i, u_input.d.x), ~(-26039i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1273f, 263f) * _wgslsmith_div_vec2_f32(vec2<f32>(-389f, -598f), vec2<f32>(666f, -1127f))))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1931f, 2192f, var_0)) + _wgslsmith_f_op_f32(min(-283f, 596f)))) - _wgslsmith_f_op_f32(step(347f, -1829f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-121f, _wgslsmith_f_op_f32(-165f * _wgslsmith_f_op_f32(max(-2035f, var_1.c)))) + var_1.a), _wgslsmith_mult_u32(1u, var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(var_1.a.x + -430f)), true == all(vec3<bool>(false, var_0, true)))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))))));
    var_1 = Struct_1(vec2<f32>(1184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.a.x, 1337f)))) + 1364f)), 2813u, _wgslsmith_f_op_f32(sign(328f)));
    let var_3 = ~select(-2765i, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b) & (1i << (min(0u, arg_0.x) % 32u)), var_0);
    return vec3<i32>(var_3, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-10322i, -1i), u_input.b.x), -vec2<i32>(0i, var_3) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 1506i), u_input.d)), _wgslsmith_sub_i32(2147483647i & (2147483647i << (var_1.b % 32u)), abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.e, 21607i), firstTrailingBit(u_input.d.x)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = -19524i;
    let var_1 = select(~(vec3<i32>(-1i) * -(u_input.b.zxz << (vec3<u32>(u_input.c, 61570u, 0u) % vec3<u32>(32u)))), func_4(vec2<u32>(41377u, 9558u | _wgslsmith_add_u32(arg_1.b, 4294967295u)), min(_wgslsmith_dot_vec4_u32(func_3(Struct_1(vec2<f32>(423f, -2230f), 4294967295u, arg_0.x), -116f, vec4<bool>(false, false, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, 0u, u_input.a.x, 0u), vec4<u32>(4294967295u, 38874u, u_input.c, 4294967295u), vec4<u32>(u_input.a.x, arg_1.b, u_input.a.x, 51139u))), 19016u)), vec3<bool>(select(any(vec3<bool>(false, true, false)), -1i != u_input.b.x, false) && true, false, any(vec4<bool>(true, true, all(vec2<bool>(false, false)), true))));
    let var_2 = Struct_1(arg_1.a, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(16942u, u_input.c, arg_1.b))), ~firstLeadingBit(_wgslsmith_add_u32(34832u, 29572u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))));
    let var_3 = _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(1u, ~countOneBits(abs(arg_1.b))));
    var_0 = -reverseBits(1i);
    return arg_1.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, 848f))), arg_2))));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, arg_1.b.x, arg_1.c, -1i) | -vec4<i32>(0i, -48303i, 55997i, arg_1.b.x), min(vec4<i32>(-27966i, 1044i, -10625i, u_input.e), firstLeadingBit(u_input.b))), 19275i, ~(countOneBits(u_input.b.x) ^ countOneBits(-3149i))), vec3<i32>(_wgslsmith_mult_i32(countOneBits(0i), func_4(u_input.a.xz, u_input.c).x | _wgslsmith_add_i32(25796i, arg_1.b.x)), _wgslsmith_mult_i32(u_input.e, _wgslsmith_mod_i32(_wgslsmith_add_i32(-39021i, u_input.d.x), ~0i)), _wgslsmith_mult_i32(-u_input.d.x, ~arg_1.c) | -23429i));
    var var_2 = Struct_2(arg_3, Struct_1(arg_0, _wgslsmith_mult_u32(13709u, 7937u), _wgslsmith_f_op_f32(select(559f, -676f, any(!vec2<bool>(true, arg_2))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(floor(-1532f))))), 292f), -2014f, arg_3);
    var var_3 = select(vec2<bool>(true, !arg_2), vec2<bool>(any(vec3<bool>(false, false, arg_2)), true || !any(vec2<bool>(false, arg_2))), !(any(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(true, false))) || true));
    var var_4 = abs(select(~u_input.a.xz, ~(~u_input.a.xz) | func_3(var_2.b, 1569f, !vec4<bool>(arg_2, var_3.x, var_3.x, var_3.x)).wy, false));
    return (select(var_4.x, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(var_2.b.b, u_input.c)), arg_2) != ~_wgslsmith_div_u32(~4294967295u, var_4.x)) | !all(vec3<bool>(arg_2, any(vec2<bool>(arg_2, false)), true));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec4<u32> {
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1))))))));
    var var_1 = ~(~_wgslsmith_clamp_u32(1u & arg_0.b.b, u_input.c, ~select(59700u, arg_0.b.b, true)));
    let var_2 = true;
    var var_3 = -1151f;
    var var_4 = Struct_2(1f, arg_0.b, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_0.x) + _wgslsmith_f_op_f32(-var_0.x)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(69688u, 0u, ~(~abs(26403u)), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.e, -1099f), vec2<f32>(arg_1, -668f))), 28228u, _wgslsmith_div_f32(var_0.x, 594f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_4.d)), !vec4<bool>(arg_2, true, false, var_2)).x), ~(~(~(~vec4<u32>(41023u, 4294967295u, 33462u, 1u)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(func_6(arg_0, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(-599f, _wgslsmith_f_op_f32(arg_0.b.c - 1859f))))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-333f, arg_3.d.x), arg_3.d.zy) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a))), arg_3, false, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_2(arg_3.d, Struct_1(vec2<f32>(arg_3.d.x, 377f), u_input.c, arg_3.d.x)))))), select(_wgslsmith_sub_vec4_u32(~arg_1 << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 103910u, arg_0.b.b), arg_1) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(arg_1.x, 44388u, arg_0.b.b, 39454u))), vec4<u32>(5701u, _wgslsmith_div_u32(u_input.c, 84750u), _wgslsmith_add_u32(22640u, firstTrailingBit(72297u)), arg_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2.x > u_input.b.x, true), any(vec2<bool>(true, true)))));
    var_0 = arg_1;
    let var_1 = select(!vec4<bool>(u_input.b.x >= 8510i, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, false)), true), select(vec4<bool>(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d.x, arg_0.c) * vec2<f32>(arg_0.a, arg_3.a)), Struct_3(641f, vec3<i32>(0i, -37191i, arg_3.b.x), 0i, arg_3.d, u_input.b.x), any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(arg_3.a * arg_0.a)), true, false, !all(vec4<bool>(true, false, true, false))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), true)), select(false, all(vec4<bool>(true, true, true, true)), arg_3.c == -25628i));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)) - _wgslsmith_f_op_f32(arg_0.e - -1162f))));
    var_0 = vec4<u32>(arg_0.b.b, ~(_wgslsmith_mult_u32(u_input.a.x, arg_0.b.b) & arg_1.x), func_3(Struct_1(arg_3.d.zy, var_0.x, -308f), arg_0.d, vec4<bool>(var_2 == 1646f, all(var_1.xyy), !var_1.x, true)).x, 45482u) & vec4<u32>(_wgslsmith_sub_u32(~arg_0.b.b, func_3(arg_0.b, _wgslsmith_f_op_f32(sign(2430f)), vec4<bool>(true, true, true, true)).x), _wgslsmith_mod_u32(func_6(arg_0, 151f, var_1.x).x & 12630u, 1u), 1u, _wgslsmith_div_u32(abs(u_input.c) << (~u_input.a.x % 32u), ~44116u));
    return arg_2.yx;
}

fn func_7(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(4907u, arg_2.b, ~4294967295u);
    let var_1 = Struct_3(arg_2.c, _wgslsmith_mod_vec3_i32(u_input.b.xzy, vec3<i32>(-1i) * -arg_1.zxw), arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_f_op_f32(step(arg_2.a.x, 508f)), _wgslsmith_f_op_f32(select(arg_2.a.x, -834f, true))), u_input.d.x);
    let var_2 = Struct_2(1657f, Struct_1(arg_2.a, reverseBits(arg_2.b), _wgslsmith_f_op_f32(1014f - arg_2.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_f32(sign(-598f)), true)), var_1.a));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, _wgslsmith_f_op_f32(step(-921f, var_1.a))))), max(32424u, var_0.x) << ((var_0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, var_0.x), vec4<u32>(arg_2.b, 0u, 4294967295u, var_0.x)) % 32u)) % 32u), var_2.b.c);
    var_3 = arg_2;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1350f, -1643f))), vec2<f32>(var_2.e, var_3.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, 384f))))), reverseBits(0u ^ (27712u & arg_2.b)) ^ 0u, 1137f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), reverseBits(u_input.d), func_1(Struct_2(991f, Struct_1(vec2<f32>(417f, -308f), 0u, -592f), -1000f, 936f, 1086f), vec4<u32>(4294967295u, 41177u, u_input.a.x, 55463u), u_input.b, Struct_3(-289f, vec3<i32>(59886i, -4659i, -9769i), u_input.b.x, vec3<f32>(815f, -527f, -1228f), u_input.d.x))), vec2<i32>(~32445i, -2147483647i), true) << (u_input.a.xy % vec2<u32>(32u)), vec4<i32>(~(-firstTrailingBit(u_input.e)), select(-1i, u_input.d.x, true) | u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-955f, -1321f) * vec2<f32>(1000f, -1000f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-237f, 1691f))))), 70740u, _wgslsmith_f_op_f32(step(-172f, 1017f))));
    let x = u_input.a;
    s_output = StorageBuffer(44042u, ~(~firstTrailingBit(vec4<u32>(0u, u_input.c, 1u, var_0.b) >> (vec4<u32>(1u, u_input.a.x, u_input.c, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 0u, u_input.a.x, 1u), vec4<u32>(11528u, 157964u, 11390u, 0u)), u_input.a.x << (56536u % 32u), 1u), ~(vec4<u32>(1u, 14u, 21052u, var_0.b) << (vec4<u32>(1u, var_0.b, var_0.b, 4294967295u) % vec4<u32>(32u)))), var_0.b >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, var_0.b), 1u, ~u_input.a.x) % 32u)));
}

