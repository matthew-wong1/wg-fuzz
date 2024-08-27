struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 22>();
    var var_0 = true;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - 371f)), _wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(sign(812f)))), -168f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(select(arg_3.b.b, 1791f, true)))))), 1772f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1332f, arg_1.x, 259f, arg_0.b)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_0.b), _wgslsmith_f_op_f32(-arg_3.a.b), _wgslsmith_f_op_f32(f32(-1f) * -881f), 1f))), ~(-vec4<i32>(firstLeadingBit(-31407i), 0i, 23412i, 0i)), select(u_input.d.yw, abs(vec2<u32>(u_input.d.x, 54867u)), any(select(vec3<bool>(arg_3.d.a.x, arg_0.c.x, false), vec3<bool>(true, arg_0.a.x, false), !vec3<bool>(arg_0.a.x, true, false)))));
    var_0 = Struct_3(arg_3.a.b, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1570f - -331f), _wgslsmith_f_op_f32(sign(292f)), _wgslsmith_f_op_f32(674f - arg_0.b), _wgslsmith_div_f32(arg_1.x, arg_3.a.b)) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -291f), 1361f, 482f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1543f, -556f, -1326f))), var_0.d, countOneBits(~vec2<u32>(var_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 17973u, 7300u), u_input.d.yyy))));
    global0 = array<Struct_3, 22>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1444f + 2817f) * -586f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), vec4<f32>(_wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(select(arg_1.x, var_0.a, true))), 330f, arg_0.b, _wgslsmith_f_op_f32(arg_0.b + 669f)), var_0.d, vec2<u32>(13215u, var_0.e.x));
    global0 = array<Struct_3, 22>();
    return select(arg_3.b.a, !select(select(arg_0.c, arg_3.a.c, vec2<bool>(true, arg_3.d.c.x)), vec2<bool>(true, all(vec3<bool>(arg_3.a.a.x, true, false))), true), !arg_3.b.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(248f - _wgslsmith_f_op_f32(f32(-1f) * -407f)), func_4(Struct_1(vec2<bool>(true, true), -720f, select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), false)), arg_1.yz, 1i, Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(func_3()), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_0.x), vec2<bool>(false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(310f, -963f)), -533f), Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), true), -358f, vec2<bool>(true, false)))));
    global0 = array<Struct_3, 22>();
    var var_1 = ~arg_2.e;
    global0 = array<Struct_3, 22>();
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, var_0.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a))), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, !all(vec4<bool>(false, false, var_0.c.x, var_0.c.x))), 1155f, vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(605f - arg_0.x))))), var_0);
    return u_input.e.x << (4294967295u % 32u);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(-(~u_input.a), vec4<i32>(2147483647i, func_2(vec3<f32>(964f, -1995f, -121f), vec3<f32>(508f, -380f, -177f), Struct_3(349f, 530f, vec4<f32>(234f, -1044f, 680f, -633f), vec4<i32>(u_input.a.x, -1543i, u_input.e.x, u_input.e.x), u_input.d.zx)) & (u_input.e.x << (0u % 32u)), 0i, -1i ^ u_input.a.x) >> (~(u_input.d & u_input.d) % vec4<u32>(32u)));
    global0 = array<Struct_3, 22>();
    var var_1 = var_0.xy;
    let var_2 = u_input.c;
    var_0 = vec4<i32>(var_1.x, _wgslsmith_mult_i32(firstTrailingBit(5086i << (1u % 32u)), 22199i), ~(-37393i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(var_0.x, 1288i)), u_input.e.ww >> (u_input.d.ww % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<i32>(reverseBits(18278i), ~var_1.x)), ~(-76943i)));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_3, 22>();
    var var_0 = 1f;
    let var_1 = Struct_2(Struct_1(!func_4(Struct_1(vec2<bool>(true, true), 3729f, vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -214f) - arg_0.wz), _wgslsmith_div_i32(u_input.e.x, -7778i), Struct_2(Struct_1(vec2<bool>(false, true), arg_0.x, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), -974f, vec2<bool>(true, true)), 392f, Struct_1(vec2<bool>(false, true), 1483f, vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * _wgslsmith_f_op_f32(max(-229f, 1009f)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), Struct_1(!vec2<bool>(u_input.e.x != 0i, func_4(Struct_1(vec2<bool>(true, true), 204f, vec2<bool>(false, false)), arg_0.xy, -47717i, Struct_2(Struct_1(vec2<bool>(true, false), 987f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), arg_0.x, vec2<bool>(true, true)), arg_0.x, Struct_1(vec2<bool>(false, false), -221f, vec2<bool>(false, true)))).x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(948f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1164f - -1371f) + -695f))), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_4(Struct_1(vec2<bool>(true, true), 805f, vec2<bool>(false, false)), vec2<f32>(arg_0.x, arg_0.x), u_input.a.x, Struct_2(Struct_1(vec2<bool>(false, false), -1000f, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), arg_0.x, vec2<bool>(true, true)), arg_0.x, Struct_1(vec2<bool>(false, false), -633f, vec2<bool>(true, true)))).x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(1275f + 769f)))))), Struct_1(select(vec2<bool>(any(vec4<bool>(false, false, true, true)), true), vec2<bool>(true, false), vec2<bool>(true, -1i > u_input.a.x)), -317f, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_4(Struct_1(vec2<bool>(false, true), -171f, vec2<bool>(false, false)), arg_0.zx, u_input.a.x, Struct_2(Struct_1(vec2<bool>(false, true), -696f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), 660f, vec2<bool>(false, true)), arg_0.x, Struct_1(vec2<bool>(true, false), arg_0.x, vec2<bool>(false, false)))))));
    let var_2 = _wgslsmith_sub_u32(~u_input.d.x, abs(firstLeadingBit(u_input.c)));
    let var_3 = firstTrailingBit(abs(vec2<i32>(abs(u_input.e.x), countOneBits(u_input.a.x)) ^ (vec2<i32>(u_input.a.x, -1i) ^ -vec2<i32>(u_input.a.x, u_input.e.x))));
    return Struct_1(vec2<bool>(all(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.a.a.x, var_1.d.c.x, var_1.b.c.x), var_1.b.c.x)), var_3.x <= (abs(2147483647i) ^ var_3.x)), 274f, var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = abs(u_input.e.x);
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1502f, -182f, 612f, -375f), vec4<f32>(-538f, 1111f, 1911f, 1021f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, 577f, -419f, -1240f) - vec4<f32>(1000f, -995f, 208f, -929f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 1000f, 1336f, 858f) - vec4<f32>(649f, -357f, -1088f, 1549f)), vec4<f32>(-470f, -1755f, 737f, 654f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 1913f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(sign(713f))), _wgslsmith_f_op_f32(-1645f - _wgslsmith_f_op_f32(abs(2621f)))), false)));
    var var_3 = func_4(func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, -684f, 938f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -681f) - vec2<f32>(var_2.b, var_2.b)) - vec2<f32>(-1065f, var_2.b))))), 0i, Struct_2(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-678f, -1102f, var_2.b, var_2.b), vec4<f32>(1003f, var_2.b, -1000f, -2131f))) * vec4<f32>(var_2.b, 641f, var_2.b, var_2.b))), Struct_1(!func_4(Struct_1(vec2<bool>(var_2.c.x, false), 1525f, var_2.a), vec2<f32>(523f, var_2.b), var_1, Struct_2(Struct_1(vec2<bool>(var_2.c.x, var_2.c.x), var_2.b, vec2<bool>(true, false)), Struct_1(var_2.a, -1000f, vec2<bool>(false, var_2.a.x)), -461f, Struct_1(var_2.a, var_2.b, var_2.a))), -1000f, vec2<bool>(true, true)), var_2.b, Struct_1(vec2<bool>(true, func_4(Struct_1(vec2<bool>(true, false), var_2.b, vec2<bool>(true, true)), vec2<f32>(var_2.b, -1000f), var_1, Struct_2(Struct_1(var_2.a, 170f, var_2.a), Struct_1(vec2<bool>(var_2.a.x, var_2.c.x), 1070f, var_2.a), var_2.b, Struct_1(var_2.a, 474f, var_2.c))).x), var_2.b, !(!vec2<bool>(var_2.c.x, var_2.c.x)))));
    var_3 = func_4(func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, var_2.b, 469f, -755f), vec4<f32>(var_2.b, var_2.b, 1000f, var_2.b))))), vec2<f32>(244f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))), -(~(-_wgslsmith_div_i32(u_input.a.x, var_1))), Struct_2(func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 927f, var_2.b, 1647f))))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, var_2.b, var_2.b, 446f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1152f, 2862f) + _wgslsmith_f_op_f32(floor(var_2.b))))), Struct_1(var_2.c, 674f, var_2.c)));
    let var_4 = Struct_2(func_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_2.b + var_2.b), _wgslsmith_f_op_f32(-1146f - 1000f), var_2.b, var_2.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.b, -1492f, -1930f, -1273f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b, 776f, var_2.b, 2427f)))))))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 1277f, 794f, var_2.b)))), -1180f, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-921f, var_2.b, var_2.b, _wgslsmith_f_op_f32(sign(var_2.b))))));
    var_2 = Struct_1(select(select(!var_4.a.c, select(vec2<bool>(false, false), var_4.d.a, vec2<bool>(true, var_3.x)), vec2<bool>(any(vec4<bool>(var_4.b.a.x, var_3.x, false, false)), true)), var_4.a.a, var_4.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.b - _wgslsmith_f_op_f32(select(-1000f, -230f, false))), var_4.a.b)), !var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -var_1, select(u_input.a.x, u_input.e.x, false) & firstTrailingBit(-2147483647i), 6330i), reverseBits(_wgslsmith_sub_vec4_i32(u_input.a & u_input.a, reverseBits(vec4<i32>(17958i, -2414i, u_input.a.x, u_input.a.x))))), vec4<i32>(u_input.a.x, var_1, ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(39375i, var_1), u_input.e.x & var_1), 1i), var_2.b);
}

