struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, -167f, 544f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(177f, -159f, -204f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2087f, 291f, 1000f)))))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(-var_0), true)) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1834f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = arg_2;
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(~89440u, func_2(arg_2, func_2(arg_2, arg_2, Struct_1(arg_2.a), Struct_1(arg_2.a)), func_2(arg_2, Struct_1(arg_0.xwy), arg_2, arg_2), func_2(arg_2, Struct_1(arg_0.xww), arg_2, Struct_1(vec3<u32>(4294967295u, 1u, u_input.b)))).a.x), arg_2.a.x, _wgslsmith_mult_u32(arg_0.x, reverseBits(arg_0.x))));
    let var_1 = Struct_1(arg_0.xyx);
    var var_2 = func_2(Struct_1(abs(~arg_0.xzx)), Struct_1(max(vec3<u32>(3657u, arg_0.x, 11921u) & vec3<u32>(0u, u_input.b, 1346u), ~vec3<u32>(0u, var_0.a.x, 32453u)) & var_1.a), arg_2, var_0);
    let var_3 = _wgslsmith_dot_vec2_i32(-select(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(20424i, 0i), false), vec2<i32>(0i, -2147483647i) << (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u)), 0u != var_1.a.x), ((vec2<i32>(30868i, u_input.a) >> (var_0.a.xx % vec2<u32>(32u))) ^ vec2<i32>(-1i, -2147483647i)) << (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), var_0.a.zz), var_0.a.yz << (vec2<u32>(53215u, var_0.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))) > (0i << (var_2.a.x % 32u));
    var_2 = Struct_1(~(~vec3<u32>(4294967295u, arg_0.x, 52121u)));
    return -170f;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-727f + 193f), 1292f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1096f * _wgslsmith_f_op_f32(f32(-1f) * -366f)), -1410f), _wgslsmith_f_op_f32(func_3(firstLeadingBit(vec4<u32>(var_0.a.x, arg_1.a.x, arg_1.a.x, 1u) ^ vec4<u32>(u_input.b, arg_3, 7584u, 98965u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-848f, 957f))), func_2(Struct_1(var_0.a), Struct_1(vec3<u32>(0u, arg_1.a.x, 1u)), var_0, var_0))), _wgslsmith_f_op_f32(f32(-1f) * -207f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-376f - 546f), _wgslsmith_f_op_f32(f32(-1f) * -233f), 608f, -1326f)))));
    let var_2 = arg_1.a.x;
    let var_3 = arg_1;
    let var_4 = Struct_1(arg_1.a);
    return _wgslsmith_add_vec4_i32(~(~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -49480i, 23787i, -2147483647i), vec4<i32>(34989i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, arg_2.x, 1i)))), arg_2);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-221f, 600f)) - _wgslsmith_f_op_f32(trunc(-512f))), -640f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(1233f - 1462f))), _wgslsmith_f_op_f32(2193f - _wgslsmith_f_op_f32(max(-564f, -793f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-844f, -427f)), _wgslsmith_f_op_f32(select(-270f, 2103f, false)), -1175f, -1115f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, -1000f, var_0.x, 1000f) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x, -1299f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1224f, var_0.x, -115f) - vec4<f32>(-755f, 1099f, -983f, var_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-1105f)), -223f, _wgslsmith_f_op_f32(min(1197f, var_0.x)), _wgslsmith_f_op_f32(-596f + 616f)))), vec4<bool>(false, false, true, true != all(vec2<bool>(false, false)))));
    var var_1 = countOneBits(4294967295u);
    var var_2 = false;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, 475f, -837f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 258f, -1941f) + vec4<f32>(2824f, var_0.x, var_0.x, var_0.x))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_f_op_f32(-var_0.x))))));
    return Struct_1(arg_2.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = 1u;
    let var_1 = u_input.a;
    var var_2 = Struct_1(arg_3.a);
    var_2 = Struct_1(arg_0.a);
    var var_3 = all(select(vec3<bool>(all(vec2<bool>(true, true)), !all(vec3<bool>(false, true, true)), !all(vec3<bool>(true, false, false))), select(vec3<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, false, true)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), any(vec2<bool>(true, true))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(815f)) + 545f) * -893f) + -305f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2850f)) * _wgslsmith_f_op_f32(func_5(func_4(func_1(vec4<bool>(true, false, false, true), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec4<i32>(-18473i, u_input.a, u_input.a, u_input.a), 1u), Struct_1(vec3<u32>(u_input.b, 1u, u_input.b)), func_2(Struct_1(vec3<u32>(0u, u_input.b, 0u)), Struct_1(vec3<u32>(13417u, u_input.b, u_input.b)), Struct_1(vec3<u32>(3383u, u_input.b, u_input.b)), Struct_1(vec3<u32>(21506u, u_input.b, 1u)))), func_2(func_2(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec3<u32>(15678u, 1u, u_input.b)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b))), func_4(vec4<i32>(-39317i, 9577i, u_input.a, -17558i), Struct_1(vec3<u32>(22259u, u_input.b, u_input.b)), Struct_1(vec3<u32>(u_input.b, 575u, u_input.b))), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b))), 1i, func_4(abs(vec4<i32>(u_input.a, -69061i, u_input.a, u_input.a)), func_2(Struct_1(vec3<u32>(0u, u_input.b, 45255u)), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u)), Struct_1(vec3<u32>(72740u, u_input.b, 54650u)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)))))));
    let var_1 = Struct_1(func_2(Struct_1(abs(vec3<u32>(u_input.b, 4294967295u, u_input.b))), func_4(vec4<i32>(~(-1i), 1i, abs(-18821i), ~(-1i)), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(18915u, 42823u, 19694u), vec3<u32>(u_input.b, u_input.b, 0u))), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 45505u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4294967295u)))), func_4(-vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), Struct_1(vec3<u32>(1u, 0u, 23135u)), Struct_1(func_2(Struct_1(vec3<u32>(u_input.b, 1u, 65381u)), Struct_1(vec3<u32>(78133u, 0u, u_input.b)), Struct_1(vec3<u32>(4294967295u, u_input.b, 2639u)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))).a)), func_4(-min(vec4<i32>(u_input.a, u_input.a, -7124i, -50158i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), func_4(vec4<i32>(84582i, u_input.a, -6920i, u_input.a), func_4(vec4<i32>(42190i, 32790i, 0i, -9440i), Struct_1(vec3<u32>(20794u, u_input.b, u_input.b)), Struct_1(vec3<u32>(0u, 17362u, 7111u))), Struct_1(vec3<u32>(u_input.b, u_input.b, 54369u))), func_4(~vec4<i32>(22156i, 1i, u_input.a, u_input.a), func_4(vec4<i32>(u_input.a, 0i, u_input.a, -30298i), Struct_1(vec3<u32>(53347u, 7340u, u_input.b)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))), func_4(vec4<i32>(u_input.a, u_input.a, u_input.a, 58028i), Struct_1(vec3<u32>(18115u, 0u, u_input.b)), Struct_1(vec3<u32>(19130u, u_input.b, 4294967295u)))))).a);
    let var_2 = select(~vec4<i32>(u_input.a, -37984i, u_input.a, (i32(-1i) * -82256i) >> (firstLeadingBit(u_input.b) % 32u)), ~countOneBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 20412i, -7288i), vec4<i32>(-28085i, u_input.a, u_input.a, -1i), vec4<i32>(1i, 1i, -59244i, u_input.a))), select(vec4<bool>(false, true, select(true, true, 464f >= var_0.x), true), select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true))), vec4<bool>(false, true, true, false)), vec4<bool>(!all(vec4<bool>(true, false, false, false)), !all(vec3<bool>(false, true, false)), true, max(u_input.a, u_input.a) != ~u_input.a)));
    let var_3 = select(vec4<bool>(!(!select(false, true, true)), true, false, all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), false, all(vec3<bool>(true, true, true))), true);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(max(var_4.a.x, var_1.a.x), var_1.a.x, 105193u, u_input.b)), 40486u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(13499u, var_4.a.x) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) ^ var_4.a.xx, vec2<u32>(45438u, ~59816u)), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x)));
}

