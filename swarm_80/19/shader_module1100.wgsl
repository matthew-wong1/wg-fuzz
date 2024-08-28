struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.d.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1733f + 1061f) * arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d.x, 689f)) + _wgslsmith_f_op_f32(max(-1174f, 428f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f - arg_2.b.d.a.x) - -1232f), 1f)));
    let var_2 = _wgslsmith_f_op_f32(trunc(1333f));
    let var_3 = 19361u;
    var_1 = arg_2.b.d;
    return any(vec4<bool>(all(vec4<bool>(true, false, true, false)), !(arg_1.e && false), select(all(vec2<bool>(arg_2.b.b.x, arg_1.e)), !arg_1.b, arg_2.a.x), arg_1.a)) | arg_2.a.x;
}

fn func_2() -> f32 {
    let var_0 = ~_wgslsmith_div_i32(u_input.b, u_input.d);
    let var_1 = vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(var_0, u_input.b, true) == var_0)), func_3(_wgslsmith_add_u32(u_input.a.x, select(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.c.x)), u_input.a.x, true)), Struct_4(true, true, ~abs(u_input.c.x), vec4<f32>(641f, _wgslsmith_f_op_f32(min(-354f, -507f)), _wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(-377f * -1009f)), true), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, true, true), vec2<bool>(true, true), Struct_1(vec4<f32>(583f, -1244f, 492f, 1000f)), Struct_1(vec4<f32>(631f, 267f, 836f, -533f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1031f, 337f)))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false), u_input.a.x >= u_input.c.x))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~select(~(~u_input.c.xx), ~abs(vec2<u32>(59733u, 4294967295u)), select(var_1.x, true, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, -420f, -938f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, 923f, -950f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2442f, 456f, 978f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -1914f, -1268f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, 1000f, -541f))))));
    var var_4 = u_input.a.x;
    return _wgslsmith_f_op_f32(sign(var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = select(!vec2<bool>(func_3(_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, u_input.a.x), Struct_4(true, false, u_input.c.x, arg_0.a, false), Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(true, false, true), vec2<bool>(false, false), arg_0, arg_0), vec2<f32>(1256f, -982f))), all(vec3<bool>(false, true, true))), vec2<bool>(true, !select(func_3(0u, Struct_4(false, false, 11654u, arg_0.a, false), Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(true, false, true), vec2<bool>(false, true), Struct_1(arg_0.a), arg_0), vec2<f32>(arg_1.x, arg_1.x))), false, all(vec4<bool>(true, true, false, false)))), !select(vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec4<bool>(false, false, false, true))));
    var var_1 = Struct_3(var_0, Struct_2(vec3<bool>(!var_0.x || false, func_3(~u_input.c.x, Struct_4(var_0.x, true, u_input.c.x, arg_0.a, true), Struct_3(var_0, Struct_2(vec3<bool>(true, var_0.x, true), var_0, Struct_1(arg_0.a), arg_0), vec2<f32>(arg_0.a.x, -650f))), var_0.x), !(!(!vec2<bool>(var_0.x, var_0.x))), arg_0, arg_0), arg_0.a.zx);
    let var_2 = var_1.a;
    var_1 = Struct_3(!vec2<bool>(var_2.x, true), Struct_2(select(var_1.b.a, !var_1.b.a, !any(vec4<bool>(false, var_1.a.x, var_1.a.x, true))), vec2<bool>(any(select(vec4<bool>(true, var_0.x, var_2.x, var_1.b.b.x), vec4<bool>(true, var_0.x, var_1.a.x, true), vec4<bool>(false, var_0.x, true, true))), true), var_1.b.d, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1853f, 1440f, -402f, arg_0.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1439f + 770f))), _wgslsmith_f_op_f32(-arg_1.x), -373f == var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f * _wgslsmith_f_op_f32(trunc(var_1.c.x))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-158f, 455f, arg_1.x, arg_0.a.x), arg_0.a, vec4<bool>(var_2.x, var_1.a.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.a.x, arg_1.x, -2204f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.d.a), vec4<f32>(-1695f, -1468f, arg_1.x, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.b.c.a)))))));
    return Struct_2(!(!var_1.b.a), vec2<bool>(all(!select(vec2<bool>(true, var_2.x), var_1.b.b, true)), true), arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3)) - vec4<f32>(459f, _wgslsmith_f_op_f32(trunc(1225f)), _wgslsmith_f_op_f32(arg_1.x + -1347f), _wgslsmith_f_op_f32(sign(1325f))))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-879f, 437f, 309f, 348f))), _wgslsmith_div_vec4_f32(vec4<f32>(-785f, 141f, -569f, 1742f), vec4<f32>(1597f, -501f, 769f, 1427f)))))), vec2<f32>(360f, _wgslsmith_f_op_f32(func_2())));
    var var_1 = Struct_5(var_0.b);
    let var_2 = Struct_5(vec2<bool>(!all(var_1.a), all(vec2<bool>(func_3(22093u, Struct_4(true, var_0.a.x, u_input.c.x, vec4<f32>(var_0.c.a.x, var_0.c.a.x, var_0.d.a.x, var_0.c.a.x), var_0.a.x), Struct_3(vec2<bool>(var_0.a.x, var_0.b.x), var_0, var_0.c.a.zx)), false))));
    var var_3 = Struct_3(vec2<bool>(all(!vec4<bool>(var_0.b.x, var_2.a.x, var_2.a.x, true)), var_2.a.x), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, var_0.d.a.x)), 1f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.c.a.yz)))));
    let var_4 = abs(abs(vec4<i32>(~1i, (arg_0 ^ arg_0) ^ (arg_0 & arg_0), arg_0, ~u_input.b)));
    return select(select(select(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, var_3.a.x, var_2.a.x, true), vec4<bool>(false, var_0.b.x, var_0.a.x, true)), !vec4<bool>(var_2.a.x, true, true, var_2.a.x), !(!vec4<bool>(var_0.b.x, true, true, true))), !select(!vec4<bool>(var_3.b.b.x, var_0.b.x, var_2.a.x, var_0.b.x), select(vec4<bool>(var_2.a.x, true, false, false), vec4<bool>(true, var_2.a.x, var_2.a.x, var_1.a.x), false), var_3.a.x && var_1.a.x), vec4<bool>(var_2.a.x, var_0.b.x, true, false)), vec4<bool>(true, !var_1.a.x && false, false, u_input.b == (select(var_4.x, -1i, var_1.a.x) >> (1u % 32u))), !select(vec4<bool>(true, true, func_3(u_input.a.x, Struct_4(var_2.a.x, true, u_input.c.x, vec4<f32>(692f, var_0.c.a.x, var_3.b.c.a.x, 434f), var_2.a.x), Struct_3(vec2<bool>(var_3.b.b.x, var_2.a.x), Struct_2(var_3.b.a, var_0.a.zy, Struct_1(var_3.b.c.a), Struct_1(vec4<f32>(1053f, var_3.c.x, 1323f, 347f))), vec2<f32>(-182f, var_3.b.d.a.x))), true), vec4<bool>(func_4(Struct_1(var_0.c.a), vec2<f32>(393f, var_3.c.x)).b.x, 16324i != var_4.x, var_1.a.x, var_2.a.x), !(-1i <= u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(abs(-(~vec4<i32>(-2147483647i, u_input.d, -42661i, -2147483647i))), ~select(-vec4<i32>(u_input.d, 13791i, u_input.d, u_input.b), select(vec4<i32>(-1i, 2147483647i, 0i, u_input.d), vec4<i32>(1i, 42824i, 38627i, 62491i), vec4<bool>(false, true, false, true)), true)) << (u_input.c % vec4<u32>(32u));
    let var_1 = select(func_1(1i << (u_input.a.x % 32u)), vec4<bool>(func_4(Struct_1(vec4<f32>(-1900f, 501f, 797f, 1190f)), vec2<f32>(_wgslsmith_f_op_f32(func_2()), 1627f)).b.x, !(all(vec4<bool>(true, true, true, true)) & false), false, true), func_3(~(~_wgslsmith_add_u32(1u, u_input.a.x)), Struct_4(!any(vec3<bool>(true, true, false)), true, u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 552f, 588f, 101f)))), abs(14094i) >= _wgslsmith_dot_vec3_i32(var_0.zyz, var_0.zzw)), Struct_3(func_4(func_4(Struct_1(vec4<f32>(710f, 1648f, 888f, -757f)), vec2<f32>(-624f, 496f)).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(911f, 1000f))).b, Struct_2(vec3<bool>(true, true, true), vec2<bool>(true, true), func_4(Struct_1(vec4<f32>(-476f, -224f, 836f, -1290f)), vec2<f32>(169f, 857f)).c, Struct_1(vec4<f32>(796f, -717f, 703f, 532f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(944f, 1476f) + vec2<f32>(334f, -218f))))));
    var_0 = ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x, u_input.b, var_0.x, 11376i)) >> (~(vec4<u32>(u_input.a.x, u_input.c.x, 50049u, u_input.a.x) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-1i, var_0.x, 15610i, u_input.d)) << (reverseBits(vec4<u32>(27794u, 20226u, u_input.c.x, u_input.c.x) >> (vec4<u32>(16219u, u_input.c.x, u_input.a.x, 101831u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(880i, 18663i, 0i), -2147483647i, _wgslsmith_mod_i32(var_0.x, -2147483647i), u_input.d), countOneBits(~vec4<i32>(14269i, -2662i, var_0.x, var_0.x)), countOneBits(firstTrailingBit(vec4<i32>(var_0.x, 1i, var_0.x, u_input.b)))));
    let var_2 = u_input.a.x;
    let var_3 = var_0.yx;
    var_0 = firstLeadingBit(-_wgslsmith_div_vec4_i32(-vec4<i32>(0i, var_0.x, -1i, -3174i), countOneBits(vec4<i32>(61428i, var_3.x, -15624i, var_0.x))) & _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(var_3.x, 2147483647i, u_input.d, var_3.x)), ~(vec4<i32>(var_3.x, -320i, -1i, var_0.x) | vec4<i32>(1i, var_0.x, u_input.d, var_3.x))));
    let var_4 = countOneBits(max(2147483647i, countOneBits(-71059i)));
    var var_5 = Struct_4(var_1.x, true, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, -526f, 576f, 737f) * vec4<f32>(684f, -1556f, -184f, -824f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-531f, -363f, -267f, 2175f), vec4<f32>(-114f, 1526f, -1542f, 2528f))))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, -1209f, 708f, 411f)))), func_4(func_4(func_4(Struct_1(vec4<f32>(647f, -631f, 1335f, -394f)), vec2<f32>(228f, 142f)).c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(522f, -1743f)))).c, vec2<f32>(1f, _wgslsmith_f_op_f32(floor(540f)))).d.a.yx).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xw, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-4529i, var_4 & var_4), -54426i, firstLeadingBit(0i << (u_input.c.x % 32u)), ~_wgslsmith_dot_vec2_i32(var_0.zy, var_0.zz)), firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_sub_i32(var_4, var_0.x), _wgslsmith_div_i32(u_input.b, 33545i), i32(-1i) * -64980i))));
}

