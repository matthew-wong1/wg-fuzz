struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = u_input.a >> ((_wgslsmith_mult_vec2_u32(~(~arg_1.a), arg_1.a) ^ select(arg_1.a, select(arg_1.e.ww, abs(vec2<u32>(arg_1.a.x, arg_1.e.x)), !arg_0.x), all(arg_0.xy))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1955f, _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(arg_1.d.x - 1182f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1.d.x, arg_1.d.x)))), 1312f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-429f, arg_1.d.x, arg_1.d.x, -1515f), vec4<f32>(1034f, arg_1.d.x, arg_1.d.x, arg_1.d.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, 1000f, -1715f, arg_1.d.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 1337f, arg_1.d.x, 702f))) * vec4<f32>(arg_1.d.x, 870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)), arg_1.d.x)));
    return arg_0;
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(-281f, -253f);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1636f * var_0) * -176f)), _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1912f, var_0, -645f, var_0) * vec4<f32>(1091f, -712f, var_0, -902f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1505f, var_0, var_0) * vec4<f32>(var_0, var_0, var_0, 1153f)))))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, true))))));
    var var_2 = !(!func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), Struct_1(~vec2<u32>(44954u, 1u), vec2<bool>(false, false), true, _wgslsmith_f_op_vec3_f32(var_1.yzy + var_1.wxy), ~vec4<u32>(0u, 1u, 0u, 27334u))));
    var var_3 = vec2<bool>(var_2.x, false);
    var var_4 = Struct_1(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 56979u), vec2<u32>(4294967295u, 23020u)), firstTrailingBit(countOneBits(abs(vec2<u32>(0u, 1u)))), select(select(!var_2.xx, vec2<bool>(false, false), var_2.x), !select(vec2<bool>(false, false), var_2.xz, var_2.x), func_3(func_3(vec3<bool>(true, var_2.x, var_2.x), Struct_1(vec2<u32>(126515u, 1u), vec2<bool>(var_2.x, false), false, var_1.yww, vec4<u32>(48818u, 41297u, 4294967295u, 29749u))), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(var_3.x, var_3.x), true, var_1.xzx, vec4<u32>(816u, 89490u, 1u, 0u))).yz)), func_3(select(!vec3<bool>(true, var_2.x, var_3.x), vec3<bool>(func_3(vec3<bool>(var_3.x, false, var_3.x), Struct_1(vec2<u32>(1u, 2968u), var_2.yy, var_3.x, var_1.yzy, vec4<u32>(0u, 4294967295u, 0u, 0u))).x, all(vec4<bool>(false, true, var_3.x, var_3.x)), true), var_3.x), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(!var_3.x, !var_3.x), !func_3(vec3<bool>(true, true, var_2.x), Struct_1(vec2<u32>(4294967295u, 11429u), var_2.zy, true, vec3<f32>(2010f, var_1.x, var_1.x), vec4<u32>(23053u, 0u, 66003u, 45480u))).x, var_1.wyz, _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(42831u, 15378u, 30391u, 40154u)), ~vec4<u32>(0u, 87603u, 1u, 58526u)))).zz, var_3.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-329f))), var_1.x)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(3294u, 9763u, 0u), vec3<u32>(24404u, 16724u, 49941u)) << (~0u % 32u), ~abs(4294967295u), 1u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_1.wxx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zxz))), var_4.c)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = abs(u_input.a.x);
    var var_1 = arg_0.d.x;
    var var_2 = arg_0.e;
    let var_3 = Struct_1(~(~var_2.zy), select(!(!arg_0.b), select(vec2<bool>(true, arg_2), select(select(arg_0.b, arg_0.b, true), vec2<bool>(true, arg_2), select(vec2<bool>(false, true), arg_0.b, arg_0.b)), true), arg_0.b), true, _wgslsmith_f_op_vec3_f32(func_2()), arg_0.e);
    var_2 = ~vec4<u32>(var_3.a.x, 48626u, ~_wgslsmith_add_u32(40547u, var_2.x), arg_1.x) << (arg_0.e % vec4<u32>(32u));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = any(arg_0.b);
    let var_1 = vec3<i32>(~firstLeadingBit(u_input.a.x), max(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), abs(vec3<i32>(1i, 2147483647i, 1i)) ^ -vec3<i32>(1i, 1i, u_input.a.x)), -_wgslsmith_add_i32(-2147483647i & u_input.a.x, u_input.a.x)), ~u_input.a.x);
    return func_1(func_1(func_1(func_1(func_1(Struct_1(arg_0.e.zz, arg_0.b, arg_0.c, vec3<f32>(-1190f, arg_0.d.x, arg_0.d.x), vec4<u32>(22396u, arg_0.e.x, arg_0.e.x, arg_0.e.x)), vec2<u32>(arg_0.e.x, 1u), arg_0.b.x), arg_0.a, func_1(arg_0, vec2<u32>(2537u, arg_0.a.x), arg_0.c).b.x), ~(vec2<u32>(arg_0.e.x, 4294967295u) ^ arg_0.e.yz), arg_0.b.x), arg_0.a, all(!(!vec4<bool>(arg_0.c, arg_0.b.x, arg_0.c, arg_0.c)))), arg_0.a, true == (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, 32159i), var_1 & vec3<i32>(u_input.a.x, var_1.x, -2147483647i)) < (12766i & -u_input.a.x))).d.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = true;
    var_0 = true;
    var var_1 = u_input.a.x;
    var_1 = i32(-1i) * -abs(~arg_1.x);
    var var_2 = Struct_1(arg_3.e.zz, arg_0.b, !any(vec4<bool>(!arg_0.c, any(vec3<bool>(arg_0.c, arg_0.b.x, false)), arg_0.b.x, true)), arg_3.d, arg_0.e);
    return StorageBuffer(vec4<i32>(-(i32(-1i) * -2147483647i), firstTrailingBit(-47981i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-4250i, arg_1.x), -u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 28030i)), arg_1), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.a.x, 49249i)))), ~(-_wgslsmith_div_i32(abs(-1i), _wgslsmith_sub_i32(arg_1.x, u_input.a.x))), -1i, _wgslsmith_sub_vec3_i32(~(-arg_1), arg_1), _wgslsmith_f_op_vec3_f32(func_2()).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_u32(1u, ~1u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-365f, -1496f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1252f)) - 1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f) * _wgslsmith_f_op_f32(max(847f, -769f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(2086f, var_1.x)), 1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f + 295f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-559f * _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)))))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = func_5(Struct_1(firstLeadingBit(vec2<u32>(countOneBits(45298u), _wgslsmith_add_u32(1u, 8197u))), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec2<bool>(true, false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec2<u32>(4294967295u, 33976u), vec2<bool>(false, true), false, vec3<f32>(283f, -640f, var_1.x), vec4<u32>(4294967295u, 1u, 5739u, 0u)), vec2<u32>(3405u, 32019u), false)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(30572u, 78507u, 1u, 79962u)), func_1(func_1(Struct_1(vec2<u32>(32019u, 1u), vec2<bool>(false, false), true, vec3<f32>(var_1.x, var_1.x, 1088f), vec4<u32>(15934u, 80756u, 32701u, 4294967295u)), vec2<u32>(1u, 32021u), true), vec2<u32>(1u, 51052u), true).e)), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(-38718i, 2147483647i, u_input.a.x)), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(2147483647i, u_input.a.x, var_2)), ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), firstTrailingBit(vec3<i32>(var_2, u_input.a.x, u_input.a.x)))), !(!all(vec3<bool>(true, true, true))), Struct_1(vec2<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(13226u, 1u), vec2<u32>(38433u, 29109u)))), func_3(vec3<bool>(1204i >= u_input.a.x, true, all(vec3<bool>(true, true, false))), Struct_1(~vec2<u32>(70486u, 17280u), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true, vec3<f32>(-177f, var_1.x, var_1.x), ~vec4<u32>(71605u, 0u, 11190u, 22835u))).xz, func_3(vec3<bool>(true, true, true), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, false), 0i <= u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), vec4<u32>(1u, 1u, 1u, 1u))).x, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1491f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(437f, -731f, 898f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1155f, -324f, var_1.x)))))), ~vec4<u32>(1u, 1u, 1u, 1u)));
}

