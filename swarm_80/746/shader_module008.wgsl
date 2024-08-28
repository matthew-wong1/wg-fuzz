struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: Struct_4,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.x * _wgslsmith_f_op_f32(arg_0.d.x + arg_0.a.x)))), _wgslsmith_f_op_f32(ceil(arg_0.c.c.x)), -1392f, 658f);
    let var_1 = vec4<bool>(arg_0.c.d, arg_0.c.d == arg_0.c.d, arg_0.c.d, !arg_0.c.d);
    var var_2 = firstLeadingBit(countOneBits(_wgslsmith_add_i32(arg_3.x, _wgslsmith_clamp_i32(arg_3.x, -2147483647i, -1i | arg_0.b))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-860f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.e.x, var_0.x)), -462f))))), _wgslsmith_clamp_i32(abs(-29383i), arg_3.x, u_input.b.x), Struct_4(56803u, _wgslsmith_add_vec3_u32(abs(arg_0.c.b), vec3<u32>(4294967295u, _wgslsmith_mult_u32(35046u, 1u), _wgslsmith_mod_u32(arg_0.c.b.x, 1u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-1138f)), _wgslsmith_f_op_f32(-1699f - 401f), _wgslsmith_f_op_f32(arg_0.d.x + 1904f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(1000f, arg_0.a.x, 141f, var_0.x)))), !(~arg_2 > ~arg_0.c.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(arg_0.c.c, vec4<f32>(974f, -345f, var_0.x, 1000f))))), _wgslsmith_f_op_vec4_f32(-var_0), var_1))), arg_0.e);
    var var_4 = true;
    return var_1.xyx;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec3_u32(abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(9223u, 4294967295u, 4294967295u), vec3<u32>(1u, 14006u, 4118u))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(max(vec3<u32>(4294967295u, 1u, 1798u), vec3<u32>(15654u, 25912u, 3893u)), reverseBits(vec3<u32>(40134u, 21402u, 64183u)), arg_0.b.x), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~24295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 67597u, 18751u, 904u), vec4<u32>(55347u, 44661u, 40597u, 64174u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 5988u), vec4<u32>(63071u, 76904u, 1u, 4294967295u))) | select(vec3<u32>(19382u, 23042u, 4294967295u), vec3<u32>(31711u, 32252u, 4294967295u), func_3(Struct_5(vec2<f32>(arg_2, -259f), u_input.b.x, Struct_4(1u, vec3<u32>(0u, 0u, 50351u), vec4<f32>(arg_1.a, 1115f, arg_1.b, 747f), true), vec4<f32>(-1000f, arg_1.b, arg_2, 945f), vec3<f32>(arg_1.a, arg_2, -1559f)), -1i, 0u, arg_0.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(3060f))), arg_2, arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-597f, arg_2, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_1.b), arg_2, _wgslsmith_f_op_f32(arg_2 + -126f))), vec4<bool>(true, !any(vec4<bool>(true, false, false, false)), arg_0.b.x, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -300f, 806f, arg_1.b) - vec4<f32>(arg_2, 2219f, -371f, arg_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1913f, arg_1.b, arg_2))))));
    var_0 = (vec3<u32>(abs(~34566u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 30316u), vec4<u32>(98797u, var_0.x, 36752u, 48406u), vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x)), vec4<u32>(1u, var_0.x, 109238u, var_0.x)), 45976u) >> (~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(1u, 1623u, 0u))) % vec3<u32>(32u))) & (abs(vec3<u32>(_wgslsmith_mult_u32(var_0.x, 1u), var_0.x | var_0.x, ~var_0.x)) >> (reverseBits(~vec3<u32>(0u, 88140u, var_0.x)) % vec3<u32>(32u)));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), -1766f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, -1000f)) + _wgslsmith_div_vec2_f32(var_1.xy, var_1.zw)), _wgslsmith_f_op_vec2_f32(sign(var_1.yz))))), i32(-1i) * -2147483647i, Struct_4(_wgslsmith_add_u32(_wgslsmith_div_u32(43301u & var_0.x, var_0.x), ~(~0u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(0u, 0u, 83446u)), var_0.x, ~var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, 403f)), var_1.x, _wgslsmith_f_op_f32(arg_2 + arg_1.b), _wgslsmith_f_op_f32(min(var_1.x, -106f)))), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 191f, 971f, arg_1.b))) - _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_div_vec4_f32(var_1, vec4<f32>(arg_1.a, var_1.x, -236f, -1000f)))), var_1, all(select(vec2<bool>(true, arg_0.b.x), select(arg_0.b.yx, arg_0.b.xz, vec2<bool>(arg_0.b.x, arg_0.b.x)), func_3(Struct_5(vec2<f32>(216f, 1000f), 9889i, Struct_4(var_0.x, vec3<u32>(65159u, var_0.x, 0u), var_1, false), vec4<f32>(arg_2, 634f, var_1.x, arg_2), vec3<f32>(-488f, -938f, 410f)), arg_0.a.x, var_0.x, vec2<i32>(0i, u_input.a)).xy)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-658f, arg_1.b), -1596f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1215f, _wgslsmith_div_f32(arg_2, arg_1.a), _wgslsmith_f_op_f32(arg_1.a * arg_2))))));
    var_0 = var_2.c.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(619f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f * var_2.d.x)))));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(35428i, u_input.b.x), 796i | (arg_0 | (u_input.c.x << (10051u % 32u)))) & ~u_input.c.zz;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(u_input.b, func_3(Struct_5(vec2<f32>(479f, 584f), -2147483647i, Struct_4(1u, vec3<u32>(54418u, 34017u, 15951u), vec4<f32>(-924f, 1241f, 477f, 547f), true), vec4<f32>(-157f, 290f, -162f, -875f), vec3<f32>(-1714f, 1476f, 683f)), ~41623i, abs(99162u), -vec2<i32>(u_input.a, 0i))), Struct_2(397f, _wgslsmith_f_op_f32(trunc(-957f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-661f * -1188f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-249f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -610f))), vec2<f32>(-2512f, _wgslsmith_f_op_f32(f32(-1f) * -245f)))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(u_input.b & vec2<i32>(u_input.b.x, -21525i), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(-2144f * -1302f), _wgslsmith_f_op_f32(floor(1586f))), _wgslsmith_f_op_f32(569f - -2029f)))));
    let var_2 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -687f)), _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1913f, var_1.x) * vec2<f32>(-1052f, var_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2137f, -2155f)))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<i32>(var_0.x, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), Struct_2(1f, -997f), 1182f))), ~_wgslsmith_sub_i32(select(u_input.b.x, abs(2147483647i), false), min(_wgslsmith_mult_i32(arg_1, u_input.a), arg_0 >> (6709u % 32u))), Struct_4(4835u, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 581f, 133f, -294f), vec4<f32>(-1023f, var_1.x, 139f, var_1.x), vec4<bool>(false, true, true, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1587f, -526f, 2290f, var_1.x) + vec4<f32>(var_1.x, var_1.x, var_1.x, 391f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-940f, 3218f, -1840f, 716f)))), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -463f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1304f, -1000f, var_1.x, 498f), vec4<f32>(203f, 1019f, -948f, var_1.x), vec4<bool>(false, false, false, false))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<i32>(1i, u_input.a), vec3<bool>(true, true, true)), Struct_2(var_1.x, var_1.x), var_1.x)).x + _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(sign(var_1.x)), var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(652f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, var_1.x), var_1.x))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_2.d.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * var_2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(trunc(773f))))));
    let var_3 = 1u;
    return any(!(!select(func_3(Struct_5(vec2<f32>(var_2.c.c.x, -1612f), 36052i, var_2.c, var_2.d, var_2.e), arg_0, var_3, vec2<i32>(var_2.b, u_input.a)), func_3(var_2, arg_1, var_2.c.a, vec2<i32>(var_2.b, 1i)), !var_2.c.d)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(281f, -755f) - vec2<f32>(454f, 1213f))))))), 3524i, Struct_4(74046u, vec3<u32>(firstTrailingBit(1u), abs(abs(28846u)), _wgslsmith_sub_u32(4294967295u, 0u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(45195u, 6186u, 0u), vec3<u32>(0u, 81747u, 4294967295u)) % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(894f, 664f), _wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(f32(-1f) * -2377f), _wgslsmith_f_op_f32(abs(1819f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(272f, 326f, -575f, -569f))), vec4<bool>(arg_0, arg_1.x, true, true))), all(!func_3(Struct_5(vec2<f32>(1146f, -2569f), u_input.c.x, Struct_4(4294967295u, vec3<u32>(17153u, 90332u, 1u), vec4<f32>(-1177f, -1835f, 998f, -189f), arg_0), vec4<f32>(-693f, 133f, -340f, -1000f), vec3<f32>(-110f, -820f, -229f)), 0i, 68734u, vec2<i32>(4377i, 2147483647i)))), vec4<f32>(1591f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1049f + -517f), _wgslsmith_f_op_f32(f32(-1f) * -909f), true)), -504f), 1f, 868f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1460f, 524f, 1200f), vec3<f32>(554f, 297f, 487f))))));
    var var_1 = ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, abs(48262u)), _wgslsmith_div_u32(reverseBits(~0u), 29058u));
    var_1 = ~(~(~(~(~0u))));
    var var_2 = Struct_1(countOneBits(_wgslsmith_sub_vec2_i32(abs(u_input.c.yy) & countOneBits(vec2<i32>(2147483647i, u_input.b.x)), -firstLeadingBit(vec2<i32>(u_input.a, var_0.b)))), select(select(func_3(var_0, u_input.c.x, countOneBits(65929u), countOneBits(vec2<i32>(var_0.b, -6957i))), !arg_1.yyz, vec3<bool>(true, true, true)), !vec3<bool>(2147483647i <= u_input.b.x, true, var_0.c.d), vec3<bool>(func_3(var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_0.b, u_input.a), vec4<i32>(u_input.b.x, -2147483647i, 4558i, var_0.b)), ~var_0.c.a, u_input.b).x, !(!var_0.c.d), select(true, all(vec4<bool>(var_0.c.d, true, arg_0, arg_1.x)), true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.d.wyx)));
    return !vec3<bool>(var_2.b.x, -1007f < var_0.c.c.x, var_0.c.d);
}

fn func_1() -> vec2<f32> {
    let var_0 = func_5(true | (1u > firstTrailingBit(countOneBits(33212u))), select(select(vec4<bool>(func_2(-2147483647i, 27219i), false, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, (0i == u_input.c.x) & (u_input.a > u_input.b.x), true), true));
    var var_1 = Struct_2(1606f, _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-429f, -351f) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 1542f))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<i32>(-1217i, -15385i), vec3<bool>(true, var_0.x, var_0.x)), Struct_2(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b)))).x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-285f * -867f), _wgslsmith_f_op_f32(floor(-1000f))))))));
    var var_2 = true || var_0.x;
    var_1 = Struct_2(-2991f, -332f);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(630f, 665f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b, var_1.a))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(199f, 1290f) - vec2<f32>(var_1.a, var_1.a)), vec2<f32>(var_1.b, var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1426f, -255f) - vec2<f32>(1661f, 929f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, 595f)), vec2<f32>(-1272f, -1044f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1())))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(func_1()), u_input.b.x, Struct_4(78994u, min(select(vec3<u32>(0u, 4294967295u, 0u), firstLeadingBit(vec3<u32>(12082u, 41699u, 0u)), vec3<bool>(true, false, false)), ~abs(vec3<u32>(0u, 1u, 51646u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -446f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 2144f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -365f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(floor(-1096f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 188f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_0.x, var_0.x)))), var_1.e, var_1.c.d));
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(var_1.c.b.x, 0u, var_1.c.b.x) | ~var_1.c.a, abs(var_1.c.b.x), var_1.c.b.x), reverseBits(vec3<u32>(~countOneBits(46368u), 0u, 1u >> (var_1.c.b.x % 32u))));
    var var_4 = _wgslsmith_add_vec4_u32(firstTrailingBit(select(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.c.b.x, var_3.x, var_1.c.a), vec4<u32>(23346u, var_3.x, 4294967295u, var_3.x))), ~(vec4<u32>(28159u, 6262u, 23081u, 4294967295u) ^ vec4<u32>(var_3.x, var_1.c.a, 14704u, var_3.x)), !select(vec4<bool>(true, var_1.c.d, var_1.c.d, var_1.c.d), vec4<bool>(true, false, false, true), true))), reverseBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, var_1.c.b.x, 4294967295u)), vec4<u32>(1u, 0u, var_1.c.a, 25550u))) ^ _wgslsmith_sub_vec4_u32(min(~vec4<u32>(var_1.c.b.x, 60278u, 4294967295u, var_3.x), vec4<u32>(1u, 9488u, var_3.x, var_3.x)), vec4<u32>(~1u, var_1.c.b.x & var_1.c.a, firstLeadingBit(var_1.c.b.x), ~31604u)));
    let x = u_input.a;
    s_output = StorageBuffer(1696f);
}

