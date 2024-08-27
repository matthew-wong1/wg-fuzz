struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = 12682i;
    let var_1 = select(vec2<bool>(arg_0.c, arg_1), !select(!select(vec2<bool>(false, false), vec2<bool>(arg_0.c, true), vec2<bool>(false, arg_0.c)), vec2<bool>(!arg_0.c, any(vec2<bool>(true, arg_0.c))), select(!vec2<bool>(arg_0.c, false), select(vec2<bool>(true, arg_1), vec2<bool>(true, true), vec2<bool>(arg_0.c, arg_0.c)), select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_0.c), arg_0.c))), vec2<bool>(false, !(false && (1u == u_input.a.x))));
    let var_2 = -_wgslsmith_add_vec4_i32(vec4<i32>(1i, -20274i, firstLeadingBit(u_input.d.x << (4294967295u % 32u)), select(0i, u_input.b, !var_1.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, -2147483647i, -12700i, u_input.c), _wgslsmith_div_vec4_i32(u_input.d, u_input.d)), vec4<i32>(~u_input.c, _wgslsmith_sub_i32(-1i, u_input.d.x), 109i, _wgslsmith_sub_i32(0i, u_input.c))));
    let var_3 = var_1;
    var_0 = -var_2.x;
    return abs(arg_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = min(select(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, arg_0.c), vec3<u32>(1u, 1u, 1u))), ~(~(~vec3<u32>(arg_2, arg_0.c, 51309u))), select(!vec3<bool>(arg_0.a, arg_0.b, arg_0.a), !select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, true, false), vec3<bool>(false, arg_0.b, arg_0.b)), vec3<bool>(true & arg_0.a, any(vec4<bool>(arg_0.a, false, arg_0.a, false)), true))), select(_wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.a.x, u_input.a.x, arg_0.c), vec3<u32>(arg_1, arg_2, 26124u), true), max(vec3<u32>(arg_1, 4294967295u, arg_0.c) ^ vec3<u32>(17033u, 13803u, 92596u), vec3<u32>(0u, 57153u, arg_0.c) | vec3<u32>(56395u, 4294967295u, 114919u))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 1u, ~0u), ~vec3<u32>(arg_2, 1u, u_input.a.x)), !vec3<bool>(arg_0.b, arg_0.b && true, true)));
    let var_1 = -2259f;
    return all(!vec3<bool>(false, any(vec3<bool>(false, arg_0.b, true)), arg_0.b)) && any(select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), any(vec2<bool>(arg_0.a, arg_0.b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_2(func_4(Struct_2(true, true, 46734u), firstTrailingBit(~u_input.a.x), arg_2 | func_3(Struct_1(vec3<f32>(-195f, -1297f, -207f), 4294967295u, false), true)), true, 27024u);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1173f)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2381f))), 36u, true);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))))), arg_3), ~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.c), vec3<u32>(47634u, u_input.a.x, 1u))), var_1.c);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, _wgslsmith_div_f32(885f, _wgslsmith_div_f32(var_1.a.x, var_2.a.x)))), -758f);
    let var_4 = arg_0.yx;
    return Struct_3(_wgslsmith_mult_u32(~(~(~u_input.a.x)), var_2.b), _wgslsmith_mult_u32(0u | func_3(Struct_1(var_1.a, 4294967295u, true), true), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 0u, u_input.a.x) << (vec3<u32>(1u, arg_2, var_1.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, arg_2), vec3<u32>(6036u, 0u, u_input.a.x)), vec3<u32>(var_1.b, u_input.a.x, var_0.c)), vec3<u32>(7968u, 4294967295u, 36709u) >> (~vec3<u32>(20549u, var_2.b, var_1.b) % vec3<u32>(32u)))), _wgslsmith_div_f32(1000f, var_2.a.x), any(!vec4<bool>(!var_1.c, true, true, var_2.c)));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = abs(u_input.d.xy);
    let var_1 = vec2<bool>(!(_wgslsmith_add_i32(var_0.x, u_input.c) < 2147483647i), any(!(!(!vec4<bool>(arg_2.d, arg_2.d, true, false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-arg_0))), ~(~(~(~arg_2.a))), !arg_2.d);
    let var_3 = 4294967295u;
    var_0 = countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(~48631i, _wgslsmith_clamp_i32(countOneBits(arg_1), var_0.x, -2147483647i)), countOneBits(~reverseBits(u_input.d.wz))));
    return vec2<i32>(abs(_wgslsmith_mult_i32(-1i, 2147483647i)) << (~(~var_3) % 32u), min(1615i, ~0i));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1265f, -1000f, arg_0.x), vec3<f32>(arg_0.x, 446f, -1344f), true)) - _wgslsmith_f_op_vec3_f32(arg_0 + arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(-963f + -160f), -1610f, _wgslsmith_f_op_f32(-785f + -410f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(831f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(arg_0.x, 695f))), _wgslsmith_f_op_vec3_f32(-arg_0)))));
    let var_1 = 1i;
    var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, u_input.c) ^ func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1160f, var_0.x) - vec3<f32>(var_0.x, 337f, 936f)), -var_1, func_2(vec3<bool>(true, false, true), arg_0.xx, u_input.a.x, var_0.x), _wgslsmith_f_op_vec3_f32(-arg_0)), vec2<i32>(firstTrailingBit(firstTrailingBit(var_1)), -_wgslsmith_mod_i32(u_input.c, -16270i))) ^ _wgslsmith_add_i32(-1i | var_1, u_input.d.x);
    var_2 = _wgslsmith_dot_vec3_i32(u_input.d.zwx, u_input.d.yzy);
    var_2 = -1i;
    return true != any(vec2<bool>(true, true));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = 18166u;
    var var_1 = select(true, !all(arg_2), all(select(select(vec4<bool>(false, arg_1.a, true, arg_2.x), vec4<bool>(true, arg_0, arg_2.x, arg_2.x), true), vec4<bool>(true, arg_1.a, true, false), all(vec2<bool>(arg_1.a, arg_2.x))))) != arg_0;
    var_1 = any(vec3<bool>(arg_2.x == arg_0, true, arg_0));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, -116f))))), vec2<f32>(-136f, _wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(-1027f * 1084f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1116f, -684f), vec2<f32>(-573f, -1000f))) * vec2<f32>(-865f, 1000f)))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-var_2.x))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 744f, var_2.x) * vec3<f32>(868f, -157f, var_2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))))), vec3<f32>(-693f, 1f, -1558f))), ~(~17090u | arg_1.c), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(1f, 560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1298f * -1678f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) * _wgslsmith_f_op_f32(max(-1399f, -1335f))))), 10205u, true);
    let var_1 = func_6(select(func_1(var_0.a), false, any(!(!vec3<bool>(var_0.c, false, true)))), Struct_2(var_0.a.x > _wgslsmith_f_op_f32(round(func_2(vec3<bool>(var_0.c, var_0.c, var_0.c), vec2<f32>(var_0.a.x, var_0.a.x), 24065u, -1962f).c)), 4294967295u > ~(~u_input.a.x), 47540u), !(!vec4<bool>(var_0.c, var_0.c, false, var_0.c)));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(var_1.b, 1u), func_2(select(vec3<bool>(true, var_1.c, var_0.c), !(!vec3<bool>(false, var_1.c, var_1.c)), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.yx - var_0.a.yz), _wgslsmith_f_op_vec2_f32(var_0.a.zx * var_1.a.zy), vec2<bool>(var_0.c, true))))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, _wgslsmith_mult_u32(1u, var_0.b), var_1.b), countOneBits(min(vec4<u32>(0u, 1u, var_1.b, 0u), vec4<u32>(4294967295u, var_1.b, u_input.a.x, u_input.a.x)))), -870f).a, var_1.b);
    let var_3 = _wgslsmith_mod_i32(-(~abs(u_input.b) >> ((u_input.a.x ^ 4294967295u) % 32u)), abs(u_input.c));
    let var_4 = 29259u;
    var var_5 = Struct_2(all(select(!(!vec3<bool>(var_0.c, false, false)), select(vec3<bool>(false, var_0.c, true), select(vec3<bool>(true, true, var_0.c), vec3<bool>(false, true, var_0.c), false), select(vec3<bool>(var_1.c, var_0.c, var_1.c), vec3<bool>(false, true, var_1.c), true)), select(vec3<bool>(true, true, true), !vec3<bool>(var_0.c, true, var_0.c), true))), func_4(Struct_2(true, -u_input.b >= var_3, 1759u), var_4, _wgslsmith_add_u32(~(~46660u), ~var_2.x)), 1u);
    let var_6 = firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(30776u, var_0.b, 0u), vec3<u32>(1u, u_input.a.x, var_1.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 25823u), vec3<u32>(var_4, 1u, 70935u), vec3<u32>(var_2.x, var_1.b, var_1.b))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.c, var_0.b, 4294967295u), vec3<u32>(4294967295u, var_5.c, var_4), vec3<u32>(51719u, var_0.b, var_0.b)) ^ (vec3<u32>(1u, var_2.x, var_4) & vec3<u32>(var_2.x, var_4, 1u)))) ^ (select(~(~vec3<u32>(u_input.a.x, 0u, 1u)), firstLeadingBit(~vec3<u32>(u_input.a.x, 46384u, 39325u)), true) | vec3<u32>(~0u, var_0.b, _wgslsmith_sub_u32(max(0u, 1u), _wgslsmith_div_u32(var_2.x, 0u))));
    var var_7 = !select(vec3<bool>(func_6(1u <= var_2.x, Struct_2(var_5.b, var_0.c, var_2.x), vec4<bool>(var_1.c, var_5.b, var_1.c, var_1.c)).c, false, true), select(!select(vec3<bool>(var_0.c, var_1.c, var_1.c), vec3<bool>(var_1.c, true, var_1.c), var_5.a), !vec3<bool>(false, var_1.c, true), !select(vec3<bool>(true, var_0.c, var_5.b), vec3<bool>(var_0.c, var_5.a, true), var_1.c)), !select(select(vec3<bool>(var_0.c, var_1.c, var_5.b), vec3<bool>(var_5.b, var_1.c, var_1.c), vec3<bool>(true, var_5.b, var_5.a)), vec3<bool>(var_0.c, true, var_1.c), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_5.b, false, var_1.c), var_5.b)));
    let var_8 = all(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f * var_0.a.x) + -192f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) - _wgslsmith_f_op_f32(var_1.a.x * var_0.a.x)), var_1.c, var_0.c, func_4(Struct_2(!var_1.c, var_0.c, _wgslsmith_mod_u32(u_input.a.x, 1u)), min(~4294967295u, ~var_4), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, false)))))));
}

