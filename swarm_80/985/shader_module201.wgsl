struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(-2359f), Struct_2(Struct_1(arg_3)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d, arg_2.b, arg_3, _wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, 582f, arg_2.a, arg_3) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 584f, arg_2.c, -1000f))))));
    var var_1 = abs(vec3<i32>(-2147483647i ^ firstLeadingBit(u_input.a >> (0u % 32u)), u_input.a, u_input.a));
    let var_2 = all(select(!select(vec3<bool>(arg_2.e, false, true), vec3<bool>(arg_2.e, arg_2.e, true), true), select(vec3<bool>(true, arg_0, arg_2.e), select(select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_2.e, arg_0), arg_0), !vec3<bool>(arg_0, arg_2.e, false), !arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1612f) != _wgslsmith_f_op_f32(round(-502f))), all(!(!vec2<bool>(arg_2.e, false)))));
    let var_3 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c.x << (0u % 32u), arg_1.x, 17726u), select(select(u_input.c.wwz, u_input.c.zxz, select(vec3<bool>(true, false, arg_2.e), vec3<bool>(arg_0, false, false), vec3<bool>(var_2, true, true))), ~u_input.c.ywx & ~arg_1.yzw, select(any(vec2<bool>(arg_2.e, var_2)), !arg_2.e, !arg_0))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1.x), vec2<u32>(~arg_1.x, 1u << (arg_1.x % 32u))), arg_1.x, u_input.c.x), vec3<bool>(var_2, all(!(!vec4<bool>(true, var_2, false, var_2))), all(select(!vec2<bool>(arg_2.e, arg_0), vec2<bool>(false, false), true))));
    return vec3<bool>(!var_2, all(select(vec3<bool>(arg_1.x < var_3.x, var_2, true), !vec3<bool>(var_2, false, false), !vec3<bool>(true, true, arg_0))), !(arg_0 == true));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = all(select(select(select(select(vec3<bool>(true, arg_0, arg_1.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(true, arg_1.x, true), vec3<bool>(true, false, arg_0)), !(!vec3<bool>(false, arg_1.x, arg_1.x)), select(func_3(arg_1.x, u_input.c, Struct_4(1000f, 1000f, -1083f, -583f, arg_0), 1471f), !vec3<bool>(arg_1.x, false, arg_1.x), any(vec4<bool>(false, true, arg_1.x, true)))), func_3(arg_0, reverseBits(u_input.c) ^ select(vec4<u32>(1u, 14490u, 26821u, 1u), vec4<u32>(u_input.c.x, 113588u, 65990u, 20620u), arg_0), Struct_4(_wgslsmith_f_op_f32(step(549f, 548f)), _wgslsmith_f_op_f32(sign(-262f)), _wgslsmith_f_op_f32(select(513f, 398f, true)), -650f, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1583f, 1312f))))), vec3<bool>(true, true, true)));
    var var_1 = vec4<bool>(!all(arg_1), func_3(any(!vec3<bool>(arg_1.x, var_0, true)), max(u_input.c, u_input.c), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) - _wgslsmith_f_op_f32(f32(-1f) * -894f)), -484f, -625f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-754f)))), any(vec3<bool>(true, true, true))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(249f))))).x, func_3(true, ~(min(u_input.c, u_input.c) & ~vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.b)), Struct_4(657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-497f)) - _wgslsmith_f_op_f32(-503f * 1736f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(min(1041f, -1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1210f)), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1057f, 1109f, arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(215f))))).x, func_3(u_input.c.x > u_input.c.x, ~(u_input.c & ~u_input.c), Struct_4(1f, 750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-346f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(986f, 291f), arg_0)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1478f, _wgslsmith_f_op_f32(trunc(1158f)), true)))).x);
    var_1 = select(!(!select(vec4<bool>(var_0, var_1.x, false, true), !vec4<bool>(var_1.x, arg_1.x, arg_0, var_0), select(vec4<bool>(arg_0, var_0, false, true), vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, false, arg_1.x, var_1.x)))), vec4<bool>(!all(var_1.xww), var_0, var_0, all(vec2<bool>(true, true))), !(!select(vec4<bool>(var_0, false, var_1.x, arg_0), vec4<bool>(true, true, var_0, arg_0), true)));
    var var_2 = _wgslsmith_f_op_f32(-1111f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + -464f));
    var var_3 = vec2<u32>((u_input.c.x ^ u_input.c.x) << (u_input.c.x % 32u), abs(u_input.b));
    return Struct_3(Struct_1(1886f), Struct_2(Struct_1(_wgslsmith_f_op_f32(155f - _wgslsmith_f_op_f32(select(1000f, -1000f, arg_1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1481f, -1351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1851f)) + _wgslsmith_f_op_f32(-745f - -2027f)))));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = -62834i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(max(-1852f, -190f))));
    var_0 = -firstLeadingBit(~u_input.a);
    var var_2 = func_2(true, select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), 52560u != u_input.b)));
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, false)), u_input.a >= u_input.a, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1406f - -2348f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(638f, -499f) * _wgslsmith_f_op_f32(-var_2.c.x)), all(vec3<bool>(u_input.b < 8769u, true, true)), !(func_3(true, u_input.c, Struct_4(var_2.b.a.a, -264f, var_1.x, 226f, false), var_1.x).x | true), false), true);
    return !vec3<bool>(all(vec4<bool>(-1137f >= var_1.x, var_3.x & false, false, var_3.x)), var_3.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(all(func_1(Struct_2(Struct_1(699f)))) || !any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, true)));
    let var_1 = select(select(func_1(Struct_2(func_2(var_0.x, vec2<bool>(false, var_0.x)).b.a)).zx, func_3(true, _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, u_input.b, 21716u), firstTrailingBit(u_input.c)), Struct_4(-1762f, 1f, 1f, _wgslsmith_f_op_f32(371f - -2026f), var_0.x), func_2(!var_0.x, func_1(Struct_2(Struct_1(-280f))).zy).a.a).zy, var_0), !var_0, any(vec4<bool>(!(u_input.c.x >= 6260u), any(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x)), !var_0.x, true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, func_1(func_2(false, var_0).b).xz).c.x - _wgslsmith_f_op_f32(abs(1138f))) - -1573f);
    let var_3 = true;
    var var_4 = !select(vec4<bool>(true, u_input.b > ~109418u, true, true), select(vec4<bool>(1225i < u_input.a, !var_1.x, false, true), vec4<bool>(var_3, false, var_3, false), vec4<bool>(u_input.a <= 12515i, true, true, any(var_1))), var_3);
    var_4 = select(!(!select(!vec4<bool>(var_3, true, true, var_1.x), select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_1.x, false, var_1.x, false), true), var_1.x)), select(!select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, var_3, true, false), var_4.x), !vec4<bool>(var_1.x, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, var_4.x, false)), vec4<bool>(true, all(!vec4<bool>(var_0.x, var_4.x, var_3, var_4.x)), false, func_3(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(48282u, u_input.c.x, u_input.b, 37912u), vec4<u32>(u_input.b, 29751u, 48991u, u_input.b), u_input.c), Struct_4(1871f, var_2, 1307f, -574f, var_3), _wgslsmith_div_f32(-1164f, var_2)).x), vec4<bool>(true, any(!var_0), !(var_2 != var_2), false)), !(!(!(!vec4<bool>(false, var_4.x, var_1.x, false)))));
    var var_5 = false;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(2459u ^ ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 1070f)) + _wgslsmith_f_op_f32(1134f - var_2)) - var_2)), _wgslsmith_mod_vec2_i32(firstLeadingBit(abs(~vec2<i32>(0i, -1i))), vec2<i32>(61207i, 14516i)), ~u_input.c.x, max(_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, 4294967295u), 851u), countOneBits(1u)));
}

