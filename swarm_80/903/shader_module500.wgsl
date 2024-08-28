struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_2(u_input.b.x, !(true && !(u_input.b.x == var_0)), u_input.c.xxy, Struct_1(~min(u_input.d, vec2<u32>(var_0, u_input.b.x) & vec2<u32>(u_input.b.x, 21919u)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), ~1u, u_input.b.yz, countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yz))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1027f * -1086f), _wgslsmith_f_op_f32(f32(-1f) * -390f)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(489f)), -1199f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(462f)), _wgslsmith_f_op_f32(345f - 123f)))), _wgslsmith_f_op_f32(trunc(-514f)))));
    var var_3 = Struct_1(~(firstLeadingBit(vec2<u32>(var_0, 29818u) ^ u_input.b.yy) & vec2<u32>(u_input.a & 4294967295u, ~u_input.b.x)), select(vec2<bool>(any(vec3<bool>(false, var_1.d.b.x, var_1.b)), true), vec2<bool>(!var_1.d.b.x, (var_0 < var_1.a) && !var_1.d.b.x), var_1.d.b.x), abs(1u), vec2<u32>(~var_1.d.d.x, 1u), var_1.c.xx | u_input.c.ww);
    var var_4 = Struct_2(~var_1.d.a.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(194f, var_1.e.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(313f * 868f), _wgslsmith_f_op_f32(-705f + 159f))), u_input.c.zzz, Struct_1(u_input.d, !vec2<bool>(true, var_1.d.b.x), 1u, ~select(vec2<u32>(0u, 51966u) | var_3.d, _wgslsmith_clamp_vec2_u32(var_3.d, var_1.d.d, var_3.d), var_3.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(var_3.e.x), countOneBits(u_input.c.x)), countOneBits(vec2<i32>(-30571i, var_1.d.e.x)) >> (~var_1.d.a % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(1185f - var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-697f, var_2.x) - _wgslsmith_f_op_f32(floor(254f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1085f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = 57726u;
    var var_1 = _wgslsmith_div_f32(862f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(-1354f))))));
    var_1 = _wgslsmith_f_op_f32(min(699f, _wgslsmith_f_op_f32(func_3())));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1567f, _wgslsmith_f_op_f32(ceil(-1099f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -381f))))));
    var_1 = -405f;
    return Struct_1(u_input.d, !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), var_0, u_input.d, ~arg_0.xy);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> u32 {
    return ~u_input.b.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_2(u_input.c.wxz);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f + 136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1152f, _wgslsmith_f_op_f32(-1156f + 1329f)))));
    var_1 = all(vec3<bool>(!var_0.b.x, false, !var_0.b.x));
    var var_2 = _wgslsmith_sub_i32(-var_0.e.x, 25674i);
    let var_3 = Struct_3(-(~(-1i)), -2115f, var_0.e.x);
    return func_2(u_input.c.wzx ^ u_input.c.yxz);
}

fn func_1() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = u_input.c.x;
    var var_2 = false;
    let var_3 = func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b.x), func_4(func_2(u_input.c.yzw), ~0u), ~_wgslsmith_clamp_u32(4294967295u, 41642u, 0u), _wgslsmith_clamp_u32(reverseBits(var_0), u_input.b.x, ~4294967295u)), vec4<u32>(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.d | u_input.d), u_input.a, select(_wgslsmith_mult_u32(0u, u_input.b.x), ~4294967295u, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-423f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(671f))))) <= -1492f);
    var_1 = -2147483647i;
    return !var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = !all(select(vec3<bool>(func_1(), true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true));
    var var_2 = _wgslsmith_sub_vec4_u32(~reverseBits(countOneBits(vec4<u32>(1u, 1u, u_input.d.x, 35534u))) ^ countOneBits(~vec4<u32>(u_input.d.x, 16404u, u_input.b.x, 64824u)), ~((vec4<u32>(u_input.a, u_input.a, u_input.a, 21324u) << (~vec4<u32>(u_input.b.x, 0u, u_input.d.x, 70246u) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 55837u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))));
    var var_3 = all(!select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), u_input.c.x > 2147483647i), vec4<bool>(false, false, true, true), func_2(var_0.zyw).b.x));
    let var_4 = vec3<i32>(1i, -var_0.x, (var_0.x & var_0.x) << (55539u % 32u));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f), -1018f))), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(1035f)))))));
    var_2 = select(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, 4294967295u), vec4<u32>(4294967295u, 7747u, 1u, 1u)) ^ ~(vec4<u32>(var_2.x, var_2.x, 21220u, u_input.a) & vec4<u32>(u_input.b.x, 37140u, var_2.x, 0u)), vec4<u32>(u_input.d.x, u_input.a, ~0u, func_4(Struct_1(u_input.d, vec2<bool>(true, false), 14084u, vec2<u32>(var_2.x, 50788u), var_0.zy), _wgslsmith_dot_vec4_u32(vec4<u32>(10172u, var_2.x, 4294967295u, var_2.x), vec4<u32>(var_2.x, 0u, 4294967295u, 0u))))), ~select(vec4<u32>(0u, var_2.x & 4294967295u, var_2.x, _wgslsmith_add_u32(var_2.x, 8542u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, var_2.x, u_input.b.x), vec4<u32>(u_input.d.x, var_2.x, var_2.x, u_input.a), vec4<u32>(1u, u_input.a, 17936u, 1u)), vec4<u32>(4294967295u, u_input.a, u_input.b.x, 15016u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), !(u_input.c.x <= ~(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<u32>(3405u, ~(~var_2.x)), func_2(vec3<i32>(~(-52372i) | (var_4.x >> (u_input.b.x % 32u)), var_4.x, firstTrailingBit(~(-41220i)))).e.x);
}

