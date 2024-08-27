struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(arg_2.x, u_input.a.x, u_input.a.x, arg_1.x, _wgslsmith_div_vec4_i32(vec4<i32>(6150i, ~_wgslsmith_div_i32(u_input.a.x, 56177i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.yx), u_input.a.x), i32(-1i) * -3677i), reverseBits(abs(vec4<i32>(10915i, -1i, u_input.a.x, 39982i))) | abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i) << (vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_mod_vec3_u32(~(vec3<u32>(~4294967295u, u_input.b, 26625u) & ~vec3<u32>(u_input.b, 5531u, u_input.b)), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(56880u, 25119u, u_input.b)), vec3<u32>(u_input.b, 4294967295u, u_input.b) >> (vec3<u32>(15886u, u_input.b, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(u_input.b, 15405u), abs(u_input.b)), ~vec3<u32>(u_input.b, 4294967295u, u_input.b))));
    var_0 = Struct_1(true, ~(~abs(_wgslsmith_mod_i32(var_0.b, -1i))), var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-324f))), var_0.e);
    let var_2 = Struct_1(select(var_0.a, true, true) && all(!select(vec4<bool>(var_0.a, arg_2.x, false, var_0.a), vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(var_0.a, true, true, var_0.a))), u_input.a.x, ~(-61589i), _wgslsmith_f_op_f32(-var_0.d), vec4<i32>(~(_wgslsmith_mod_i32(u_input.a.x, var_0.e.x) << (var_1.x % 32u)), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 1i, var_0.c) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), var_0.e.wwx), min(~(-1i), ~1i)), 0i, -reverseBits(~14369i)));
    var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(13642u, var_1.x, 4294967295u), vec3<u32>(var_1.x, 6428u, var_1.x)) << (~vec3<u32>(var_1.x, var_1.x, 4183u) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(4655u, 0u, var_1.x)))) ^ 32838u, var_1.x, ~abs(38463u) | (26417u | var_1.x));
    return reverseBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, -var_0.e.x, _wgslsmith_div_i32(-6877i, -40239i), _wgslsmith_mult_i32(-58585i, 1i)), select(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_2.c), select(vec4<i32>(var_0.e.x, var_0.b, 2147483647i, u_input.a.x), vec4<i32>(var_2.c, var_0.c, 23273i, 40101i), false), var_2.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec2<bool>(!((arg_0.a | false) != all(!vec3<bool>(arg_0.a, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(max(arg_1.d, arg_1.d))))) < _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(ceil(arg_0.d))));
    var var_1 = 9078i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)) - _wgslsmith_f_op_f32(abs(1283f)));
    let var_3 = _wgslsmith_mult_vec3_i32(max(-(~u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-30312i | arg_2.b, 1i, arg_0.e.x >> (u_input.b % 32u)), -_wgslsmith_div_vec3_i32(arg_0.e.yzw, vec3<i32>(-2147483647i, arg_0.c, arg_1.c)))), arg_2.e.yyy);
    let var_4 = -vec2<i32>(-10562i, -2147483647i);
    return ~var_4.x;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + _wgslsmith_f_op_f32(737f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1900f) + 1f)), _wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-680f, -1793f))) * 1000f)), 1295f);
    let var_2 = Struct_1(any(vec2<bool>(true, true)) && false, -max(31628i, ~u_input.a.x), _wgslsmith_add_i32(func_4(Struct_1(false, ~(-57302i), -2282i, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), -vec4<i32>(-1i, -1i, u_input.a.x, -35964i)), Struct_1(true, 61968i, max(-2147483647i, -61587i), -1199f, func_3(var_1.x, var_1.zy, vec3<bool>(true, false, false), var_1.zz)), Struct_1(select(true, false, false), u_input.a.x, abs(u_input.a.x), 591f, -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i))), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f + 1719f))), select(func_3(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x + -502f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(445f)), _wgslsmith_f_op_f32(-var_1.x)), vec3<bool>(true, true, true), var_1.ww), ~(-(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -22586i))), true));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d, var_2.d)));
    var_0 = _wgslsmith_div_f32(888f, -2101f);
    return var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-173f)) - -723f));
    let var_1 = var_0;
    let var_2 = vec4<bool>(true, any(vec3<bool>(true, func_2(u_input.b), !func_2(u_input.b))), (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1)))) <= _wgslsmith_f_op_f32(-683f - _wgslsmith_f_op_f32(1087f + var_1))) || !(~(-2422i) <= u_input.a.x), all(!vec3<bool>(any(vec2<bool>(true, true)), false, select(false, true, true))));
    let var_3 = abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i << (u_input.b % 32u), ~1i, -2147483647i, _wgslsmith_add_i32(u_input.a.x, -1i)), func_3(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(290f, var_1) + vec2<f32>(-420f, var_1)), vec3<bool>(var_2.x, var_2.x, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1396f, -489f) * vec2<f32>(var_1, var_0)))));
    let var_4 = Struct_1(!var_2.x, firstTrailingBit(-2147483647i), 49233i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_1) - -219f) * _wgslsmith_div_f32(1196f, var_1))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(~var_3.x, u_input.a.x), ~(~var_3.x)), u_input.a.x | (u_input.a.x | 1i), _wgslsmith_div_i32(-8197i, firstTrailingBit(26980i)), -27563i));
    return Struct_1(false, ~countOneBits(~u_input.a.x & ~u_input.a.x), i32(-1i) * -94088i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_3, ~_wgslsmith_clamp_vec4_i32(-var_4.e, _wgslsmith_mult_vec4_i32(vec4<i32>(var_4.e.x, var_3.x, -63864i, var_4.b), var_3), vec4<i32>(2147483647i, var_4.b, 2147483647i, 1i) << (vec4<u32>(59943u, 1u, 0u, 49881u) % vec4<u32>(32u))), select(vec4<bool>(select(var_2.x, false, true), false, true, var_4.a), vec4<bool>(!var_4.a, var_1 == var_0, var_0 > 845f, true), !var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, 196f, -906f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 229f, var_0.d, 220f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, var_0.d, -2778f) * vec4<f32>(var_0.d, -1000f, 1159f, -114f)) + vec4<f32>(783f, 168f, var_0.d, var_0.d)))));
}

