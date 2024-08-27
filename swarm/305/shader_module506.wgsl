struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = -791f;
    let var_1 = 1646f;
    var var_2 = true;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(-15329i, -abs(-40829i)), firstTrailingBit(vec2<i32>(firstTrailingBit(1i), arg_0.a)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.c, _wgslsmith_div_f32(-624f, _wgslsmith_f_op_f32(trunc(137f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1729f * -1054f), 375f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_3.yw, arg_3.yz)))))), ~(~u_input.c) != min(u_input.b.x, 38191u)));
}

fn func_4(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = u_input.d.zw;
    var_0 = vec2<i32>(~_wgslsmith_div_i32(2147483647i, var_0.x), -2147483647i);
    let var_1 = Struct_1(false, 1548f, arg_0.x);
    var_0 = u_input.d.zz;
    var var_2 = 4294967295u | u_input.a.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1090f, 1203f, -1177f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -1000f, var_1.b)))), vec3<f32>(1023f, _wgslsmith_f_op_f32(var_1.c + 1431f), _wgslsmith_f_op_f32(-759f + var_1.b)))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = firstTrailingBit(u_input.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, arg_0.x)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_2(12526i, vec4<bool>(false, false, true, true), Struct_1(false, -1110f, arg_1.x), Struct_1(true, arg_1.x, arg_0.x), 46156u), Struct_2(14301i, vec4<bool>(true, true, true, false), Struct_1(false, 513f, -1000f), Struct_1(false, arg_0.x, 1115f), 14885u), vec4<i32>(40558i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<f32>(arg_0.x, arg_0.x, 125f, -838f)))), arg_1.x >= -134f)) + _wgslsmith_f_op_vec2_f32(-arg_0.xx))));
    var var_2 = Struct_1(min(1i, -countOneBits(18413i)) < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, abs(-18568i)), vec2<i32>(u_input.d.x, max(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(abs(var_1.x)));
    var_2 = Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec2_f32(var_1.zz, arg_1.wz))).x)), arg_1.x);
    let var_3 = !(!(!(!vec3<bool>(var_2.a, var_2.a, var_2.a))));
    return 101f;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = u_input.d;
    let var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -349f, -253f, -753f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(873f, 627f, 1000f, 748f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(-675f - 1240f), _wgslsmith_f_op_f32(round(1632f)), _wgslsmith_f_op_f32(f32(-1f) * -949f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1485f, 776f, -2827f, 1191f)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1082f)));
    var_3 = !all(!vec3<bool>(all(vec3<bool>(false, var_0, var_0)), false, var_0));
    return Struct_1(!any(vec4<bool>(true, true & var_0, var_0, u_input.c >= u_input.b.x)), 1488f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-837f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-351f, 402f))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-788f - 798f)), arg_0, _wgslsmith_f_op_f32(-arg_1.b), 796f) + vec4<f32>(181f, _wgslsmith_f_op_f32(trunc(arg_0)), 818f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-390f, -2280f, -100f, -1673f)))))));
    let var_1 = ~min(~vec4<u32>(47143u ^ u_input.a.x, firstLeadingBit(u_input.a.x), select(0u, u_input.c, arg_1.a), _wgslsmith_sub_u32(6571u, u_input.b.x)), ~firstTrailingBit(vec4<u32>(1u, u_input.b.x, 61647u, u_input.c) >> (vec4<u32>(u_input.c, u_input.a.x, 1u, u_input.c) % vec4<u32>(32u))));
    let var_2 = vec2<f32>(-1014f, 111f);
    var var_3 = func_1();
    var var_4 = 4294967295u << (_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(~9002u, 0u, u_input.a.x), ~(~vec3<u32>(var_1.x, 9978u, var_1.x)))) % 32u);
    return any(!select(vec2<bool>(arg_1.a, var_3.a), select(select(vec2<bool>(true, true), vec2<bool>(var_3.a, false), var_3.a), select(vec2<bool>(var_3.a, false), vec2<bool>(arg_1.a, var_3.a), vec2<bool>(var_3.a, var_3.a)), vec2<bool>(var_3.a, true)), select(!vec2<bool>(true, arg_1.a), vec2<bool>(var_3.a, arg_1.a), vec2<bool>(arg_1.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(select(vec2<bool>(func_5(974f, func_1()), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_clamp_i32(-2147483647i, ~min(u_input.d.x ^ u_input.d.x, countOneBits(-2147483647i)) & _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 706i), u_input.d.yxz), 1i), 2147483647i), min(-1i, -25450i));
    let var_2 = ~(~(~u_input.b & (u_input.a ^ u_input.a))) >> (((vec3<u32>(12601u >> (u_input.b.x % 32u), firstLeadingBit(0u), ~u_input.c) ^ reverseBits(~vec3<u32>(u_input.a.x, u_input.c, 71075u))) >> (((u_input.a >> (vec3<u32>(1u, 1u, 35371u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(u_input.c, u_input.b.x, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = func_5(-699f, Struct_1(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), -1202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-439f, -693f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1, vec4<bool>(false, false, true, true), Struct_1(true, 476f, -350f), Struct_1(false, 259f, -520f), var_2.x), Struct_2(-48953i, vec4<bool>(true, false, true, true), Struct_1(true, 565f, -1749f), Struct_1(false, 831f, -767f), var_2.x), vec4<i32>(-1i, u_input.d.x, 13460i, var_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(604f, 411f, -432f, 2576f))))).x)));
    var_0 = !(!(reverseBits(2257i) <= (-51655i & firstTrailingBit(-2595i))));
    let var_3 = _wgslsmith_div_f32(-823f, -892f);
    var var_4 = Struct_2(-(i32(-1i) * -(~var_1)), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), !vec4<bool>(false, all(vec3<bool>(true, false, true)), true, true), true), Struct_1(true, var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1237f - var_3)))))), Struct_1(all(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, var_3, true)) + var_3))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(1i, vec4<bool>(true, true, true, true), func_1(), Struct_1(false, -1000f, 874f), var_2.x | var_2.x), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_1, 50412i), u_input.d.wzw), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), func_1(), Struct_1(false, -721f, 714f), 11069u), _wgslsmith_sub_vec4_i32(vec4<i32>(-3631i, u_input.d.x, var_1, u_input.d.x), vec4<i32>(-3563i, -2147483647i, 45403i, var_1)), vec4<f32>(555f, _wgslsmith_f_op_f32(select(var_3, 1166f, true)), 377f, _wgslsmith_f_op_f32(ceil(var_3))))).x), ~4294967295u);
    let var_5 = select(!var_4.b, var_4.b, vec4<bool>(!((var_2.x >> (0u % 32u)) != ~30069u), true && (1i <= _wgslsmith_add_i32(var_4.a, var_1)), var_4.c.a, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-887f, var_3) + vec2<f32>(391f, var_3)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.c, var_4.d.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d.c, var_3))))))), -1i, var_4.e);
}

