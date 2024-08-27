struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), arg_1.a.x, arg_1.d)))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(arg_2, arg_2), _wgslsmith_mod_vec2_i32(select(arg_2, arg_2, arg_0.c.x), countOneBits(arg_2)), any(arg_1.c.ywx)), arg_2), select(arg_0.c, !select(vec4<bool>(false, arg_0.c.x, arg_0.c.x, true), select(arg_1.c, arg_0.c, arg_0.c), arg_0.c.x), vec4<bool>(true, _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(13720i, -4789i)) <= -27690i, _wgslsmith_f_op_f32(abs(arg_1.d)) != arg_0.a.x, any(arg_0.c))), -1000f);
    var_0 = (4294967295u ^ u_input.a.x) & ~1u;
    var_0 = ~abs(~firstTrailingBit(1u));
    var var_2 = reverseBits(_wgslsmith_mod_vec4_u32(u_input.a & vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 9766u), _wgslsmith_dot_vec4_u32(vec4<u32>(9776u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, 56495u, u_input.a.x, u_input.a.x)), ~46298u), u_input.a));
    return arg_0.c.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    let var_1 = !all(vec4<bool>(select(arg_0.x, true, arg_2.c.x) | true, !(true || arg_0.x), var_0.c.x | true, arg_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(sign(arg_2.a.x)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, arg_2.d, true))), 149f, -329f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, 707f, -1062f, 158f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(529f, 275f, var_0.a.x, -856f) + vec4<f32>(var_0.a.x, var_0.d, var_0.d, var_0.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1363f, 745f, 647f, arg_2.d), vec4<f32>(1312f, var_0.a.x, -196f, 1756f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, 1995f, 1430f, arg_2.d)))))));
    var var_3 = -(-(countOneBits(vec3<i32>(arg_2.b, 1i, -46955i)) & vec3<i32>(u_input.c, u_input.b, 16368i)) >> (_wgslsmith_mod_vec3_u32(u_input.a.xyz, vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 49949u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))) % vec3<u32>(32u)));
    let var_4 = all(!vec3<bool>(true, !(false != var_1), true));
    return 26616u;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(-1186f, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -841f));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), firstTrailingBit(func_4(vec3<bool>(all(vec2<bool>(false, false)), func_3(Struct_1(vec3<f32>(arg_1, var_0.x, arg_1), arg_0, vec4<bool>(false, true, false, false), 1000f), Struct_1(vec3<f32>(arg_1, -519f, arg_1), arg_0, vec4<bool>(false, false, true, true), arg_1), vec2<i32>(37059i, 1i)), true), min(u_input.c, arg_0) >> (~4294967295u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(568f, -1686f, var_0.x))), -u_input.b, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(3442u), u_input.a.x, 4294967295u), (vec3<u32>(u_input.a.x, 84581u, 1u) >> (select(vec3<u32>(0u, 0u, u_input.a.x), u_input.a.wzz, vec3<bool>(false, true, false)) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x, u_input.a.x, 60637u) % vec3<u32>(32u))));
    var var_2 = any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(any(vec3<bool>(true, true, true)), true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(true, false, true, false))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1333f, var_0.x))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(303f, arg_1), vec2<f32>(1089f, arg_1), true)), _wgslsmith_div_vec2_f32(vec2<f32>(-732f, -907f), vec2<f32>(arg_1, -1408f))))), vec2<f32>(arg_1, var_0.x)));
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, 150f, 376f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 952f, arg_1)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_1, arg_1))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -208f)))))), _wgslsmith_dot_vec3_i32(max(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -21924i, arg_0), -vec3<i32>(34368i, u_input.b, arg_0)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_0, -2147483647i, arg_0)), vec3<i32>(arg_0, -5440i, arg_0) << (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u)))), select(-vec3<i32>(5364i, arg_0, -40735i) | -vec3<i32>(arg_0, arg_0, arg_0), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.b, -9044i), vec3<i32>(u_input.c, -1i, arg_0), vec3<i32>(u_input.b, arg_0, arg_0)), !vec3<bool>(false, true, var_3))), vec4<bool>(5424u > reverseBits(u_input.a.x ^ 32770u), var_3, any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_0.x)), any(!vec3<bool>(var_3, false, var_3)))), _wgslsmith_f_op_f32(f32(-1f) * -992f))));
}

fn func_1() -> Struct_1 {
    let var_0 = max(11218i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(u_input.c, 2147483647i)) ^ u_input.c, ~(-select(2147483647i, u_input.c, false))));
    let var_1 = func_2(firstTrailingBit(0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(803f - 506f), true))) + -261f));
    let var_2 = -vec3<i32>(select(-(~49840i), ~_wgslsmith_add_i32(38730i, var_1.b), !var_1.c.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-5800i, var_1.b) | vec2<i32>(-21319i, 0i), reverseBits(vec2<i32>(u_input.c, var_0))), reverseBits(~_wgslsmith_add_i32(337i, var_1.b)));
    let var_3 = select(var_1.c.yz, select(!var_1.c.xz, func_2(-2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-201f + var_1.a.x), -1252f))).c.wz, var_1.c.x), !select(var_1.c.xy, vec2<bool>(any(var_1.c), true), var_1.c.wx));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + 725f))))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(vec3<f32>(-1156f, _wgslsmith_f_op_f32(var_0.a.x + -538f), _wgslsmith_div_f32(func_2(u_input.c & var_0.b, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)).a.x, var_0.d)), _wgslsmith_div_i32((_wgslsmith_clamp_i32(u_input.b, -1i, -1i) | -53143i) | max(var_0.b, u_input.b), u_input.c), !(!var_0.c), _wgslsmith_f_op_f32(544f * _wgslsmith_f_op_f32(max(-707f, func_1().a.x))));
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(round(var_0.d)), var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(step(var_1.a, vec3<f32>(var_1.a.x, -897f, var_1.d)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -246f, -484f)))), var_1.b, vec4<bool>(!(true || var_1.c.x), true, false | var_1.c.x, true), var_0.d);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), var_0.d, 520f), _wgslsmith_clamp_i32(var_2.b, -func_1().b, abs(_wgslsmith_mod_i32(reverseBits(var_0.b), func_2(-18083i, var_0.d).b))), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1430f))) + 777f) - _wgslsmith_f_op_f32(f32(-1f) * -856f)));
    var_2 = var_1;
    var_2 = func_1();
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.d, var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f - -585f)), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a.x, -1000f)) + var_3.a.x))));
}

