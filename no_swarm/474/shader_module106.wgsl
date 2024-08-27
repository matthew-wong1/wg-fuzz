struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~vec4<u32>(4294967295u, u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, abs(0u)), u_input.b.x), 10727u);
    let var_1 = vec4<bool>(false, (u_input.a == ~(-47475i)) | true, true | any(vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec2<bool>(false, true)))), true);
    var var_2 = Struct_1(var_1.xy, vec2<f32>(1615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f - _wgslsmith_f_op_f32(f32(-1f) * -517f)))), vec3<bool>(all(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)) | true, all(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yyz, true), vec3<bool>(false, true, var_1.x), 1u > u_input.b.x)), var_1.x), var_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-308f, 1435f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + -516f)), -867f, -507f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, -451f, -1779f, 1503f)), vec4<f32>(-431f, -346f, -291f, -936f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-913f, 572f, -1874f, -1199f), vec4<f32>(1679f, -784f, 1878f, -981f)))))));
    let var_3 = u_input.a;
    let var_4 = Struct_1(!vec2<bool>(var_2.c.x, var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1311f, 234f))))), var_1.zzw, !(-2813f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), var_2.b.x, var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + 282f))) - vec4<f32>(1179f, 1943f, var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-353f, var_2.b.x)) * var_2.b.x))));
    return u_input.a;
}

fn func_2() -> u32 {
    var var_0 = vec3<i32>(-(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -799i), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(-26107i, u_input.a)) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(35038i, 0i)) & -9374i)), u_input.a, 1i);
    var var_1 = Struct_1(!vec2<bool>(true, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(1004f + 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, 1441f) - vec2<f32>(-1339f, 1061f))))), vec3<bool>(true, false, true), func_3(vec3<i32>(select(var_0.x, 27587i, false), ~var_0.x, -1i)) != _wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(_wgslsmith_div_i32(var_0.x, -2147483647i), var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1539f, 859f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-994f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(867f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(var_1.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(-808f, var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x), -706f) * vec4<f32>(-1692f, _wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_f_op_f32(-2279f - _wgslsmith_f_op_f32(var_1.b.x * var_1.e.x)), 722f))));
    var var_3 = var_2;
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-685f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-2746f + var_2.x))))), _wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1383f)), _wgslsmith_div_f32(-408f, var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_1.b.x)) - _wgslsmith_f_op_f32(max(-580f, _wgslsmith_f_op_f32(var_1.b.x - -436f)))) + _wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(1000f * -995f))));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> vec2<f32> {
    var var_0 = vec4<u32>(~4294967295u, countOneBits(0u), abs(55870u), _wgslsmith_dot_vec2_u32(~min(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.yz));
    var_0 = firstLeadingBit(~countOneBits(~(~vec4<u32>(u_input.b.x, var_0.x, 16791u, 26654u))));
    var var_1 = arg_2;
    var var_2 = true;
    var_0 = ~(select(vec4<u32>(u_input.b.x, var_0.x, countOneBits(21014u), _wgslsmith_mod_u32(26317u, 56270u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b.x, 1u), ~vec4<u32>(68419u, 4294967295u, 41222u, var_0.x)), vec4<bool>(false & arg_0.a.x, false, !arg_0.a.x, true)) << ((vec4<u32>(var_0.x, _wgslsmith_div_u32(4692u, 44382u), ~var_0.x, u_input.b.x) << (vec4<u32>(u_input.b.x, var_0.x, var_0.x, func_2()) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e.x, -1615f), vec2<f32>(-1012f, -537f), false))), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-632f * 3268f))))) - _wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(ceil(arg_0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) + _wgslsmith_f_op_f32(arg_0.b.x + arg_1.b.x)) + _wgslsmith_div_f32(arg_1.e.x, _wgslsmith_f_op_f32(422f + arg_1.e.x)))), -1197f);
    var var_1 = !arg_0.a.x;
    let var_2 = arg_0.e;
    let var_3 = firstTrailingBit(~select(abs(72120i), reverseBits(u_input.a), _wgslsmith_f_op_f32(max(arg_0.e.x, var_0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -814f)));
    var_1 = all(vec4<bool>(false == !(!arg_1.c.x), any(vec3<bool>(arg_1.d, arg_1.c.x, all(vec3<bool>(false, false, true)))), !arg_1.a.x, true));
    return vec4<bool>(true, true, all(select(vec4<bool>(true, true && arg_0.c.x, all(arg_1.c), arg_1.c.x), select(select(vec4<bool>(false, true, false, arg_0.d), vec4<bool>(arg_1.c.x, true, true, arg_1.a.x), vec4<bool>(true, false, true, arg_1.d)), vec4<bool>(arg_1.c.x, arg_0.d, false, arg_0.a.x), !vec4<bool>(arg_1.a.x, arg_1.c.x, true, arg_1.d)), vec4<bool>(any(vec3<bool>(true, arg_0.d, arg_1.d)), true, true, false))), !(!arg_1.d | !all(arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 524f;
    let var_1 = select(func_4(Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -370f) - vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(true, true), vec2<f32>(var_0, -1206f), vec3<bool>(false, false, false), true, vec4<f32>(1218f, -264f, -1000f, 403f)), Struct_1(vec2<bool>(false, false), vec2<f32>(var_0, var_0), vec3<bool>(false, true, true), false, vec4<f32>(var_0, var_0, 110f, var_0)), vec4<i32>(u_input.a, 0i, -2523i, u_input.a), u_input.a))), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1275f, 797f, 2969f, -392f))), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1859f, var_0, var_0, var_0))))), vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(206f, var_0)))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1287f) * _wgslsmith_f_op_f32(var_0 - var_0)), ((440f >= var_0) | (4294967295u >= u_input.b.x)) || false, true, true), true && any(func_4(Struct_1(vec2<bool>(true, false), vec2<f32>(var_0, 1277f), vec3<bool>(true, true, false), true, vec4<f32>(var_0, var_0, var_0, var_0)), Struct_1(vec2<bool>(false, false), vec2<f32>(-493f, var_0), vec3<bool>(false, true, true), true, vec4<f32>(480f, 2578f, var_0, var_0))).wy));
    let var_2 = Struct_1(vec2<bool>(true, all(select(select(var_1, vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1), select(var_1, vec4<bool>(true, var_1.x, false, var_1.x), var_1), false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 723f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2621f, var_0), vec2<f32>(var_0, var_0), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, -1562f)), vec2<bool>(true, var_1.x))))), select(func_4(Struct_1(var_1.yz, vec2<f32>(var_0, 1668f), var_1.wzy, var_1.x, vec4<f32>(1000f, var_0, var_0, var_0)), Struct_1(var_1.yx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-219f, var_0), vec2<f32>(-605f, var_0))), var_1.wzz, true, vec4<f32>(var_0, var_0, 474f, -228f))).zzy, func_4(Struct_1(!var_1.wx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(696f, 741f)), func_4(Struct_1(var_1.xx, vec2<f32>(181f, var_0), var_1.yzz, true, vec4<f32>(-2297f, 411f, 175f, var_0)), Struct_1(vec2<bool>(true, true), vec2<f32>(2412f, var_0), var_1.xwy, false, vec4<f32>(997f, var_0, var_0, 394f))).wxz, var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1546f, var_0, var_0, var_0))), Struct_1(var_1.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1666f, 750f) + vec2<f32>(898f, var_0)), var_1.xzx, var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, -771f, -291f, 102f)))).xwz, vec3<bool>(true, var_1.x, all(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, true), vec3<bool>(true, var_1.x, var_1.x))))), all(vec3<bool>(!(-2147483647i != u_input.a), all(vec2<bool>(true, true)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(false, var_1.x), vec2<f32>(var_0, var_0), vec3<bool>(true, var_1.x, false), var_1.x, vec4<f32>(1000f, -2380f, var_0, var_0)), Struct_1(vec2<bool>(false, true), vec2<f32>(1381f, 497f), vec3<bool>(false, var_1.x, var_1.x), true, vec4<f32>(var_0, var_0, var_0, 545f)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -10299i)), u_input.a ^ 0i)).x, _wgslsmith_f_op_f32(trunc(535f)), 2460f)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(exp2(var_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.e.x)) + -209f)))));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(var_2.e, vec4<f32>(_wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(floor(-294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -185f) * -688f), _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(var_2.e.x, -1647f)), _wgslsmith_f_op_f32(-197f + -2523f)), ~(~39408u) <= min(u_input.b.x, u_input.b.x & 4294967295u))), _wgslsmith_mult_i32(abs(-38191i), _wgslsmith_div_i32(max(_wgslsmith_sub_i32(-8593i, -1i), -24343i), firstLeadingBit(u_input.a))));
}

