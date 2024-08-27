struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<f32> {
    global0 = arg_2.x;
    let var_0 = min(max(abs(vec3<u32>(7327u, arg_0.e.x, ~arg_0.e.x)), vec3<u32>(~(~39711u), arg_0.e.x, 0u)), ~min(select(vec3<u32>(arg_0.e.x, 1u, 37472u), vec3<u32>(19650u, 19631u, arg_0.e.x), vec3<bool>(true, false, true)) | countOneBits(vec3<u32>(arg_0.e.x, 4294967295u, 1563u)), vec3<u32>(arg_0.e.x, arg_0.e.x, 16024u) << (vec3<u32>(0u, 1u, arg_0.e.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(arg_3, arg_3.xy, 285f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1941f, -799f, 1539f) * _wgslsmith_f_op_vec3_f32(-arg_3.zzz))), arg_0.e);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, _wgslsmith_div_f32(1868f, arg_0.b.x), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(sign(-531f))) * _wgslsmith_f_op_vec4_f32(ceil(arg_0.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a) * _wgslsmith_f_op_vec4_f32(max(arg_3, vec4<f32>(-862f, 1252f, var_1.d.x, var_1.a.x)))), arg_0.a)))), vec2<f32>(arg_3.x, -1816f), -659f, vec3<f32>(_wgslsmith_f_op_f32(step(-1228f, var_1.b.x)), _wgslsmith_f_op_f32(-var_1.a.x), -129f), min(max(abs(vec2<u32>(var_0.x, 4294967295u)), var_1.e) ^ var_1.e, vec2<u32>(var_1.e.x, ~1u) | _wgslsmith_clamp_vec2_u32(firstLeadingBit(var_0.zx), arg_0.e, select(vec2<u32>(63466u, 4294967295u), var_0.yy, true))));
    global0 = 1i;
    return _wgslsmith_f_op_vec4_f32(-var_2.a);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-686f, 1812f, 1741f, arg_0))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_1.a, arg_1.a.yy, -1013f, vec3<f32>(425f, arg_0, 543f), vec2<u32>(arg_1.e.x, arg_1.e.x)), vec4<i32>(-1859i, u_input.a, u_input.d, -1i), vec2<i32>(-2147483647i, u_input.a), vec4<f32>(arg_1.c, arg_0, arg_1.a.x, 791f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, arg_0, arg_0, arg_1.d.x), _wgslsmith_f_op_vec4_f32(-arg_1.a)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(ceil(1000f))))), -1628f, _wgslsmith_f_op_vec3_f32(abs(arg_1.d)), ~(~abs(vec2<u32>(arg_1.e.x, arg_1.e.x))));
    var var_1 = vec3<bool>(reverseBits(u_input.a) == -11340i, (!all(vec2<bool>(false, true)) && (any(vec4<bool>(false, true, false, true)) | true)) | false, all(select(vec4<bool>(true, select(false, false, false), select(false, true, true), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true))));
    var var_2 = vec2<bool>(!(!all(!vec3<bool>(false, var_1.x, false))), false);
    let var_3 = ~vec4<u32>(abs(var_0.e.x), var_0.e.x, _wgslsmith_mult_u32(var_0.e.x & min(747u, arg_1.e.x), var_0.e.x), ~_wgslsmith_mult_u32(4294967295u, arg_1.e.x & arg_1.e.x));
    let var_4 = var_0;
    return _wgslsmith_clamp_u32(~(~abs(1u)), 6894u, 1u);
}

fn func_1() -> vec3<bool> {
    global0 = select(-19701i, _wgslsmith_add_i32(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13601i, 0i, u_input.c, u_input.d), vec4<i32>(u_input.c, u_input.d, u_input.a, u_input.c))), 13020i), true);
    global0 = u_input.d;
    var var_0 = vec3<u32>(0u, 1u << (func_2(-260f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1195f, -1000f, 826f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 1449f)), -1000f, _wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 671f, 1643f) - vec3<f32>(342f, -747f, -1701f)), vec2<u32>(32631u, 13532u))) % 32u), 1u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1599f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1260f, 531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-751f, 878f)) + _wgslsmith_f_op_f32(sign(-311f)))), -490f, -1000f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -876f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(888f, 607f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1019f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(round(-346f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(790f, -354f, 1365f, 1002f), vec2<f32>(165f, 962f), 2070f, vec3<f32>(246f, 159f, -1565f), vec2<u32>(1u, 18161u)), vec4<i32>(20609i, -8537i, -47986i, u_input.d), vec2<i32>(u_input.d, u_input.a), vec4<f32>(1548f, -546f, 2077f, 1779f))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1312f))), _wgslsmith_f_op_f32(min(-1108f, -1125f))), vec3<f32>(-848f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-551f + -1057f))))), ~(~var_0.xx));
    let var_2 = u_input.b;
    return !vec3<bool>(8849u >= abs(firstTrailingBit(var_0.x)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!any(func_1()) & !(any(vec4<bool>(true, false, true, true)) || true), true, !(!((-1i << (0u % 32u)) <= abs(u_input.a))));
    global0 = 32465i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(602f, -360f, 166f, -626f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-854f, 922f))) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(485f - 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2494f, 352f, -998f) - vec3<f32>(759f, 247f, -917f)) - vec3<f32>(-1026f, 2562f, 622f)), abs(vec2<u32>(1u, 1u))), select(vec4<i32>(2147483647i, u_input.c, u_input.d, 19433i) | (vec4<i32>(-34493i, 8323i, -2147483647i, -2147483647i) | vec4<i32>(1i, 11i, u_input.b, u_input.a)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, -3044i, u_input.a), vec4<i32>(u_input.d, 0i, u_input.b, u_input.b)), vec4<bool>(true, var_0.x, var_0.x, 79400i == u_input.c)), vec2<i32>(-2147483647i, select(u_input.a, -22390i, any(vec4<bool>(false, var_0.x, false, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1079f, -412f, -875f, -118f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(463f, -148f, 1756f, -1540f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -1000f, 769f, -1000f) * vec4<f32>(325f, -2436f, -800f, 315f)) + vec4<f32>(-339f, -695f, -1000f, 848f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(877f, -1540f), vec2<f32>(-1268f, 625f), var_0.x)), vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-190f, 1530f), vec2<f32>(-1000f, -768f)))), _wgslsmith_div_vec2_f32(vec2<f32>(738f, 536f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-901f, 1259f) - vec2<f32>(414f, -1121f))), func_1().xz))), 1f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, _wgslsmith_f_op_f32(1138f * -767f), -1000f)))), ~(~min(vec2<u32>(4294967295u, 0u), vec2<u32>(35046u, 72571u))));
    global0 = _wgslsmith_div_i32(0i, ~_wgslsmith_div_i32(-1i, -2147483647i) | _wgslsmith_div_i32(u_input.d, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))) + _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-148f, var_1.a.x))))));
    var var_3 = abs(vec2<u32>(1u, var_1.e.x));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(func_2(_wgslsmith_f_op_f32(-332f * var_1.a.x), var_1), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.e.x, var_3.x), vec2<u32>(0u, 49363u)), ~vec2<u32>(var_3.x, var_3.x))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(min(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.a, 0i)), vec2<i32>(1i, u_input.a)) << (vec2<u32>(var_1.e.x & 55631u, 1u) % vec2<u32>(32u)), ~reverseBits(-vec2<i32>(u_input.b, u_input.a))), 8508u, min(-u_input.d, ~(u_input.b >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u))));
}

