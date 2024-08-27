struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(260f, arg_1.a.x), -1071f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec3<f32>(arg_1.a.x, -578f, arg_1.a.x))), _wgslsmith_mult_vec4_i32(firstLeadingBit(~select(arg_1.b, vec4<i32>(-21236i, -41118i, arg_0.b.x, 28679i), true)), firstTrailingBit(arg_1.b) ^ max(~vec4<i32>(-2147483647i, arg_0.b.x, 12870i, 20441i), vec4<i32>(arg_1.b.x, 0i, arg_0.b.x, arg_1.b.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), ~vec4<i32>(~_wgslsmith_dot_vec4_i32(var_0.b, arg_1.b), 0i, 15945i, ~select(arg_2.x, 10206i, true)));
    let var_1 = var_0.a.x;
    let var_2 = ~_wgslsmith_dot_vec2_u32(select(min(~u_input.a.zy, reverseBits(u_input.a.zz)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<u32>(u_input.a.x, select(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(26600u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 25258u)), true)));
    let var_3 = arg_0;
    return true || any(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(65203u, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 10877u, 20414u, 17314u)) == max(var_2, u_input.a.x)));
}

fn func_2() -> bool {
    let var_0 = select(vec4<bool>(select(true, true, true), true, false && all(vec3<bool>(true, true, false)), func_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-667f, -144f, -256f), vec3<f32>(-1000f, 520f, 1144f)), max(vec4<i32>(51059i, 1i, -1322i, -36504i), vec4<i32>(2147483647i, -8390i, 1i, 5278i))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2429f, 1689f, -398f)), vec4<i32>(5086i, 27482i, 0i, -13605i)), vec3<i32>(-2147483647i >> (u_input.a.x % 32u), -4991i, countOneBits(1i)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), select(vec4<bool>(true, true, all(vec3<bool>(false, true, true)), select(true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), u_input.a.x <= u_input.a.x), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), true, all(vec2<bool>(true, true)), !(0i < _wgslsmith_clamp_i32(-15516i, -5889i, -23484i))));
    var var_1 = countOneBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(-42752i, 0i, 9655i, 6163i), ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(5627i, 1i, 2147483647i, 2147483647i)), select(vec4<bool>(false, false, var_0.x, true), select(var_0, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), var_0)), firstTrailingBit(vec4<i32>(-24870i >> (1u % 32u), ~21419i, _wgslsmith_add_i32(-2527i, -6023i), -1i))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1762f), _wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(-912f - 1430f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), -162f, _wgslsmith_f_op_f32(f32(-1f) * -1172f)), select(!var_0.yyx, var_0.ywz, select(var_0.x, false, var_0.x)))))), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, -1i), vec4<i32>(var_1.x, var_1.x, var_1.x, -5290i) | vec4<i32>(var_1.x, 2147483647i, var_1.x, 1i))));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, 1427f, var_2.a.x)) * vec3<f32>(var_2.a.x, 948f, var_2.a.x))))), -min(vec4<i32>(2147483647i, var_1.x, -29013i, 44699i) | var_2.b, var_2.b));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, var_2.a.x, var_0.x)) * -680f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_f32(exp2(var_2.a.x)))))), var_2.b);
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.a)))), ~arg_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-2214f * _wgslsmith_f_op_f32(f32(-1f) * -297f)), -513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1446f)), -1425f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, _wgslsmith_f_op_f32(min(arg_0.a.x, 946f)), _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, arg_0.a.x, var_1.a.x, 105f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -166f, arg_0.a.x, -873f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1461f, 285f, 569f, var_1.a.x) * vec4<f32>(485f, var_1.a.x, 1573f, 812f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-256f, 774f, -1553f, var_2.x), vec4<f32>(arg_0.a.x, -1000f, -105f, arg_0.a.x), true)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.x, arg_0.a.x), _wgslsmith_f_op_f32(-524f + 149f), -852f, _wgslsmith_f_op_f32(exp2(arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, var_2.x, -2053f, -934f), vec4<f32>(arg_0.a.x, -1095f, var_2.x, -412f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-759f, var_2.x, arg_0.a.x, var_1.a.x) + vec4<f32>(arg_0.a.x, 938f, var_2.x, 545f)))))));
    let var_3 = !arg_1;
    return (_wgslsmith_add_vec2_u32(~vec2<u32>(var_0, var_0), vec2<u32>(var_0, ~27123u)) ^ vec2<u32>(4294967295u, ~var_0)) >> (vec2<u32>(~select(~1926u, u_input.a.x, true), ~(~var_0) | u_input.a.x) % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_3;
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a.x, arg_2.a.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(1000f * 875f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f))), 986f)));
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, -712f), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(trunc(716f))))), select(~(-arg_1.b), vec4<i32>(58593i, -24038i >> (abs(arg_0.x) % 32u), -(-5666i >> (u_input.a.x % 32u)), 14917i), any(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true))));
    return arg_1.a.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = -1152f;
    var_0 = _wgslsmith_f_op_f32(func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), ~abs(arg_2.b)), vec4<bool>(false, all(vec4<bool>(false, true, false, arg_0)), func_2(), select(select(arg_0, true, false), arg_0 != true, false))), Struct_1(vec3<f32>(385f, 244f, arg_2.a.x), firstLeadingBit(~abs(arg_2.b))), arg_2, arg_2));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2711f) * -718f), _wgslsmith_f_op_f32(func_5(select(vec2<u32>(8538u, u_input.a.x), u_input.a.yx, false), arg_2, arg_2, arg_2)));
    var var_1 = any(vec3<bool>(arg_0, func_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.x, arg_3, arg_2.a.x), arg_2.a), min(vec4<i32>(-20602i, arg_1.x, 0i, 674i), arg_2.b)), arg_2, -select(arg_2.b.zzw, arg_1, vec3<bool>(true, arg_0, arg_0))), true));
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(step(arg_3, arg_3));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.a.zy;
    var_0 = vec2<u32>(func_4(Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(max(220f, 1360f))), ~arg_3.b), !vec4<bool>(arg_2, func_3(arg_1, Struct_1(vec3<f32>(arg_1.a.x, arg_0, arg_0), arg_1.b), vec3<i32>(-8758i, arg_1.b.x, -10856i)), true, true)).x, 1u);
    var var_1 = arg_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.x))) + _wgslsmith_f_op_f32(-1373f * arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(func_1(var_0, vec3<i32>(1i, 2147483647i, -17390i), Struct_1(vec3<f32>(616f, -650f, -1305f), vec4<i32>(1i, 2147483647i, 0i, -33221i)), 1311f)), Struct_1(vec3<f32>(820f, 1078f, -136f), vec4<i32>(1i, -12737i, -51944i, 2147483647i)), var_0, Struct_1(vec3<f32>(-1390f, 821f, 1173f), vec4<i32>(0i, -766i, 2147483647i, 1i))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-747f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -357f)))), -1196f, _wgslsmith_f_op_f32(1372f * _wgslsmith_f_op_f32(round(-2249f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, 786f, 2582f, -610f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 459f, -1413f, -1667f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1149f, 380f, 309f, 240f) * vec4<f32>(696f, -2060f, 1607f, 101f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-429f, -820f, -1069f, 254f))))));
    var var_2 = 1447f;
    var_2 = var_1.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.wxz * _wgslsmith_f_op_vec3_f32(select(var_1.yzy, vec3<f32>(var_1.x, var_1.x, 395f), vec3<bool>(var_0, true, var_0)))))))), ~vec4<i32>(-4255i, ~(-49140i), -1i, countOneBits(max(-1i, -2055i))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + 1762f)), var_1.x) - var_1.xzy), vec4<i32>(max(reverseBits(-var_3.b.x), var_3.b.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_3.b.yxz, var_3.b.xyy), var_3.b.xyw), select(0i, 22276i ^ var_3.b.x, false)), -12875i, -326i));
    var_2 = var_1.x;
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_3.a * vec3<f32>(1044f, var_1.x, var_4.a.x)))) + var_3.a)), select(abs(_wgslsmith_add_vec4_i32(var_3.b << (vec4<u32>(u_input.a.x, u_input.a.x, 8409u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_4.b, vec4<i32>(31009i, var_3.b.x, var_3.b.x, var_4.b.x)))), firstLeadingBit(var_3.b), select(vec4<bool>(var_0 && false, var_0, true, true), select(vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, true, true, false), var_0), vec4<bool>(false, var_0, true, true)), vec4<bool>(!var_0, var_0, !var_0, false))));
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(u_input.a.x), 1u), 363f, select(select(var_3.b.x, (2147483647i & var_3.b.x) << (~0u % 32u), !all(vec4<bool>(var_0, false, true, var_0))), ~_wgslsmith_add_i32(var_4.b.x, max(-2147483647i, 28095i)), all(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, var_0)))));
}

