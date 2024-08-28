struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_2(Struct_1(~vec2<i32>(25952i, arg_0.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(868f, _wgslsmith_f_op_f32(ceil(arg_0.b.x))))), vec3<bool>((true || arg_0.c.x) && true, _wgslsmith_f_op_f32(select(1296f, -811f, arg_0.c.x)) > _wgslsmith_f_op_f32(ceil(-548f)), all(vec4<bool>(arg_1, arg_0.c.x, arg_1, arg_1)))), u_input.d);
    let var_1 = any(select(!var_0.a.c, !select(!arg_0.c, arg_0.c, vec3<bool>(true, true, true)), !select(!var_0.a.c, var_0.a.c, !vec3<bool>(var_0.a.c.x, true, false))));
    var var_2 = vec2<u32>(~abs(1u >> (u_input.d % 32u)) >> (var_0.b % 32u), ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.d, 1u)), ~abs(vec2<u32>(var_0.b, 18326u))));
    var var_3 = vec3<u32>(var_0.b, u_input.d, ~(~1u));
    var var_4 = Struct_1(u_input.c.wz, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f * -858f))), var_0.a.b)), vec3<bool>(!((1u <= var_3.x) && arg_1), any(vec3<bool>(true, var_1, all(vec4<bool>(false, true, false, true)))), false));
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(var_0.a.b.x)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = ~_wgslsmith_clamp_i32(-2147483647i, 0i, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), u_input.c.yx), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-997f, 149f))), vec3<bool>(false, false, false)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, -1000f)) + vec2<f32>(-514f, 906f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1302f)) * 836f));
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19385i, u_input.c.x, -2147483647i) ^ vec3<i32>(u_input.a, u_input.a, -54635i), _wgslsmith_mod_vec3_i32(u_input.c.xyz, u_input.c.yww)) & _wgslsmith_clamp_i32(~u_input.a, i32(-1i) * -2147483647i, firstTrailingBit(-1i)), ~(~_wgslsmith_sub_i32(-22607i, u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), arg_0) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -498f)), vec2<f32>(1795f, arg_0)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1010f, -167f) - vec2<f32>(arg_0, -196f)))))), vec3<bool>(true, true, true));
    var var_3 = Struct_3(var_2, _wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, 1i) >> (min(vec2<u32>(u_input.d, 0u), select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.d), false)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(u_input.b ^ u_input.b, -30779i, _wgslsmith_div_i32(-1i, var_2.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(8550i, var_2.a.x, 2147483647i), vec3<i32>(var_2.a.x, u_input.c.x, 2147483647i)))));
    var_0 = -(~1i);
    return Struct_3(var_3.a, vec2<i32>(var_3.b.x, -26690i));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(-u_input.c.x, reverseBits(_wgslsmith_div_i32(~u_input.b & 1i, u_input.b)), _wgslsmith_div_i32(firstTrailingBit(u_input.b), -1i));
    let var_1 = -784f;
    var var_2 = Struct_4(func_2(var_1), func_2(880f).a.c.x, u_input.c);
    let var_3 = !(!(!(-274f > var_2.a.a.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.b.x, -272f, var_1, var_2.a.a.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-980f, var_2.a.a.b.x, 562f, -1143f) + vec4<f32>(var_1, 383f, var_2.a.a.b.x, var_2.a.a.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1437f, var_2.a.a.b.x, 243f, -647f)) * vec4<f32>(var_1, 1465f, 1246f, -1318f)), select(select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_2.a.a.c.x, var_3, var_3, var_3), vec4<bool>(false, true, false, true)), select(vec4<bool>(var_3, false, true, false), vec4<bool>(var_2.a.a.c.x, false, var_3, var_2.a.a.c.x), vec4<bool>(true, true, var_2.b, true)), false))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1000f, var_1, 1134f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_1, -300f, var_2.a.a.b.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -816f, var_2.a.a.b.x, 305f))))))), select(!(!vec4<bool>(false, false, true, var_2.a.a.c.x)), vec4<bool>(var_3, var_2.a.a.c.x, (u_input.d & u_input.d) <= 0u, true), var_2.b)));
    return Struct_2(func_2(_wgslsmith_f_op_f32(591f + var_1)).a, ~(max(~u_input.d, _wgslsmith_mod_u32(u_input.d, u_input.d)) & 1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(u_input.d, ~31466u);
    var var_1 = -24659i;
    var_1 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(countOneBits(u_input.c.wx), u_input.c.ww)) << (u_input.d % 32u));
    let var_2 = Struct_1(arg_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.a.b.x, arg_0.a.b.x)), arg_0.a.b.x)), 727f), arg_0.a.c);
    let var_3 = arg_0.a.b;
    return func_2(_wgslsmith_f_op_f32(min(-1826f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1811f, var_2.b.x)), _wgslsmith_f_op_f32(arg_0.a.b.x * -2082f)) + _wgslsmith_f_op_f32(func_3(var_2, arg_1.x, _wgslsmith_f_op_vec2_f32(min(var_2.b, arg_0.a.b))))))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_3.a, arg_3.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(876f, arg_3.a.b.x, 974f, 1061f), vec4<f32>(-578f, arg_1.b.x, arg_1.b.x, -374f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2086f, 748f, -357f, -1013f), vec4<f32>(arg_1.b.x, var_0.a.b.x, arg_1.b.x, -1315f), !vec4<bool>(true, true, arg_1.c.x, var_0.a.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, 357f, 117f, 1587f)))))));
    let var_2 = ~2581u;
    var var_3 = func_4(Struct_2(Struct_1(arg_3.a.a | firstTrailingBit(vec2<i32>(arg_2, -1i)), func_1().a.b, arg_3.a.c), _wgslsmith_add_u32(~var_2, 4294967295u)), func_4(Struct_2(Struct_1(arg_3.b, _wgslsmith_f_op_vec2_f32(trunc(var_0.a.b)), !arg_3.a.c), countOneBits(select(var_2, 1u, var_0.a.c.x))), arg_3.a.c.zy, 0u).a.c.zz, 1u);
    var_3 = var_0;
    return func_4(func_1(), vec2<bool>(any(!func_4(Struct_2(arg_1, 4294967295u), vec2<bool>(arg_3.a.c.x, false), u_input.d).a.c.yz), false), u_input.d);
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = arg_2.a;
    let var_1 = var_0;
    let var_2 = 52836u;
    let var_3 = var_1.a.b.x;
    let var_4 = select(!(!vec4<bool>(any(vec4<bool>(false, arg_0, arg_2.a.a.c.x, true)), !arg_2.b, false, true)), vec4<bool>(36878u > (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 70718u, 66551u, 33734u), vec4<u32>(60245u, var_2, 0u, var_2)) & var_2), !(var_0.a.c.x || (164f >= var_0.a.b.x)), func_1().a.c.x, (func_2(var_3).a.c.x | var_0.a.c.x) & all(vec4<bool>(var_0.a.c.x, var_1.a.c.x, true, true))), false);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1000f, var_3, 1000f), vec4<f32>(-1000f, 387f, -102f, var_1.a.b.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1121f, arg_1, var_0.a.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, -423f, arg_1, 1670f), vec4<f32>(var_0.a.b.x, 769f, 1227f, var_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1188f, var_1.a.b.x, 748f, -882f)), func_4(Struct_2(var_0.a, var_2), var_1.a.c.zz, var_2).a.c.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(16967i, -29365i), arg_2.a.a.b, vec3<bool>(var_0.a.c.x, arg_2.b, arg_0)), var_4.x, vec2<f32>(-121f, 366f))), _wgslsmith_f_op_f32(step(arg_1, 1000f)), arg_2.a.a.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, 125f)), _wgslsmith_f_op_f32(ceil(552f)))), arg_2.a.a.b.x, _wgslsmith_f_op_f32(floor(1035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_6(true, _wgslsmith_f_op_f32(-892f * 1321f), Struct_4(func_5(9004i, Struct_1(~vec2<i32>(u_input.b, -2147483647i), vec2<f32>(1557f, -1084f), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, -21397i), u_input.c.xyw), u_input.c.zwx), func_4(func_1(), func_1().a.c.yx, u_input.d)), !func_2(1000f).a.c.x || !(2200u < u_input.d), vec4<i32>(-1i) * -select(u_input.c, u_input.c, vec4<bool>(false, false, true, false)))));
    let var_2 = Struct_4(Struct_3(func_1().a, u_input.c.xz << (vec2<u32>(u_input.d & 5520u, ~u_input.d) % vec2<u32>(32u))), true, u_input.c);
    var var_3 = func_2(var_1.x).a;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_6(false, var_1.x, Struct_4(Struct_3(var_2.a.a, vec2<i32>(var_3.a.x, -7834i)), true, u_input.c))).x)) - var_2.a.a.b.x)), -1157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x * var_2.a.a.b.x) - var_2.a.a.b.x), _wgslsmith_f_op_f32(-var_3.b.x));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(var_2.a.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(abs(var_2.a.a.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), var_2.a.a.b.x))), 1349f);
    var var_5 = var_2.a;
    let var_6 = _wgslsmith_mod_vec3_u32(~(~(~(~vec3<u32>(0u, u_input.d, 30650u)))), max(~(~abs(vec3<u32>(u_input.d, u_input.d, 0u))), vec3<u32>(~0u, 51681u, 0u >> (0u % 32u)) & ~(~vec3<u32>(u_input.d, u_input.d, u_input.d))));
    let var_7 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(func_1().a.b.x, var_5.a.b.x, all(select(vec4<bool>(var_3.c.x, true, var_2.b, true), vec4<bool>(var_2.b, var_5.a.c.x, true, false), vec4<bool>(true, false, var_3.c.x, false))))), -412f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

