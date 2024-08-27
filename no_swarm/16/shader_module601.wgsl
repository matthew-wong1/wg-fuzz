struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_2(arg_0.a, Struct_1(select(4294967295u, 0u, true)), global0.x);
    let var_1 = Struct_1(var_0.a.x);
    var var_2 = abs(~(~_wgslsmith_mod_i32(-global0.x, 13257i)));
    var var_3 = !select(true, false, true) | all(vec3<bool>(any(vec4<bool>(true, false, false, false)) & true, _wgslsmith_f_op_f32(-188f * 1006f) >= _wgslsmith_f_op_f32(floor(781f)), select(false, true, false) || true));
    let var_4 = Struct_1(var_1.a);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) * 371f), _wgslsmith_f_op_f32(ceil(-1354f)), 1646f, 1019f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1432f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-227f, 315f)), 217f, -415f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1258f - -450f), _wgslsmith_f_op_f32(floor(1258f)), -574f, -1277f) + vec4<f32>(_wgslsmith_f_op_f32(-227f * 407f), _wgslsmith_f_op_f32(622f - 1472f), -397f, _wgslsmith_div_f32(1000f, -2778f)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_1.a.x);
    let var_1 = Struct_1(_wgslsmith_mod_u32(85962u, 1u));
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(577f, -2386f, false)), _wgslsmith_f_op_f32(round(-1051f)), _wgslsmith_f_op_f32(-198f + -1099f), _wgslsmith_f_op_f32(-463f + -812f)), _wgslsmith_f_op_vec4_f32(func_3(arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(max(-203f, -1310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) * _wgslsmith_div_f32(-869f, 623f)), _wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(1641f * -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))));
    global0 = abs(countOneBits(countOneBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_1.c, global0.x), max(vec2<i32>(2147483647i, -1i), vec2<i32>(59886i, -2147483647i))))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    global0 = abs(-_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -14930i, -arg_1.c), abs(vec2<i32>(0i, u_input.c)) ^ firstLeadingBit(vec2<i32>(arg_0.c, arg_1.c))));
    global0 = select(vec2<i32>(90263i, ~(~global0.x)), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.c, arg_0.c), -_wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0.c, 1i), min(vec2<i32>(-17216i, -18346i), vec2<i32>(u_input.c, 8566i)), firstLeadingBit(vec2<i32>(arg_0.c, arg_0.c)))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))));
    global0 = countOneBits(vec2<i32>(firstLeadingBit(u_input.d), max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.c), vec2<i32>(global0.x, 53875i) ^ vec2<i32>(-77831i, 9397i)), _wgslsmith_div_i32(18405i, 1i) >> (1u % 32u))));
    var var_1 = arg_1;
    return arg_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<u32> {
    var var_0 = func_5(Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(87828u, 25543u, u_input.b, u_input.e), select(vec4<u32>(u_input.e, u_input.b, 1u, 79899u), vec4<u32>(u_input.a.x, u_input.a.x, 24066u, 4294967295u), vec4<bool>(false, false, true, true))) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(24795u, 1u, u_input.e, u_input.e), abs(vec4<u32>(15031u, u_input.a.x, u_input.e, 46215u))) % vec4<u32>(32u)), func_4(Struct_2(countOneBits(vec4<u32>(u_input.a.x, u_input.e, u_input.b, 4294967295u)), Struct_1(1u), i32(-1i) * -15168i), Struct_2(vec4<u32>(1u, u_input.e, 4294967295u, 4294967295u), Struct_1(u_input.b), func_2(Struct_2(vec4<u32>(u_input.b, 8770u, 58936u, u_input.b), Struct_1(42510u), 2147483647i), Struct_2(vec4<u32>(4294967295u, 0u, u_input.a.x, 8332u), Struct_1(u_input.e), arg_0)))), 75251i), Struct_2(~vec4<u32>(6614u, u_input.e, 4294967295u, u_input.a.x) << (select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), firstLeadingBit(vec4<u32>(35552u, u_input.e, u_input.b, u_input.e)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true)) % vec4<u32>(32u)), Struct_1(24618u), -20639i), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), -921f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, 982f) + vec2<f32>(arg_1, 690f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 469f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1001f))))));
    let var_2 = Struct_2(~(~vec4<u32>(4294967295u, abs(u_input.e), var_0.a, select(73773u, 1u, true))), Struct_1(4294967295u), arg_0 ^ _wgslsmith_add_i32((i32(-1i) * -1i) ^ u_input.d, -arg_0));
    var_0 = func_4(var_2, var_2);
    global0 = vec2<i32>(select(abs(-2147483647i), var_2.c, _wgslsmith_mult_i32(~2147483647i, select(42197i, -5434i, true)) < arg_0), select(arg_0 ^ abs(global0.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global0.x, -31987i, -1i), vec4<i32>(arg_0, var_2.c, -1i, var_2.c)), true) >> (u_input.b % 32u));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(_wgslsmith_clamp_u32(u_input.e, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.e)), 1050u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.e, 65774u), u_input.a.x << (15176u % 32u)), u_input.b, max(~abs(u_input.a.x), firstLeadingBit(87178u)));
    global0 = min(vec2<i32>(_wgslsmith_div_i32(u_input.c, select(_wgslsmith_div_i32(u_input.c, -1i), global0.x, true)), countOneBits(~firstTrailingBit(5898i))), -vec2<i32>(-2147483647i, abs(31989i)));
    var_0 = abs(~max(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, 55016u, var_0.x)), func_1(u_input.d, 1000f)), ~vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x) << (~vec4<u32>(0u, var_0.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))));
    var_0 = ~reverseBits(vec4<u32>(10662u, 9843u, 41115u, 4294967295u)) ^ firstTrailingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.a), 51892u, ~(~19544u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, func_1(13450i, -801f).x, reverseBits(4294967295u), var_0.x), ~(~vec4<u32>(u_input.b, var_0.x, var_0.x, 2010u))), func_4(Struct_2(firstLeadingBit(vec4<u32>(u_input.b, u_input.a.x, u_input.b, var_0.x)), Struct_1(u_input.e), -11327i), Struct_2(vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x) >> (vec4<u32>(1u, var_0.x, u_input.b, 72080u) % vec4<u32>(32u)), func_5(Struct_2(vec4<u32>(49044u, u_input.e, u_input.e, 1u), Struct_1(1u), global0.x), Struct_2(vec4<u32>(4294967295u, 0u, var_0.x, var_0.x), Struct_1(var_0.x), global0.x), var_0.yz), ~(-58818i))), 2147483647i | global0.x)));
    var_0 = firstTrailingBit(vec4<u32>(firstTrailingBit(32008u), _wgslsmith_div_u32(1u, 4294967295u), ~0u, 0u));
    var_0 = ~(~func_1(global0.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -923f)) - 1405f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-414f, 806f)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1147f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), 2016f)), var_1, max(_wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(global0.x, u_input.d)), vec2<i32>(-2147483647i, _wgslsmith_add_i32(global0.x, -2147483647i)), ~(vec2<i32>(global0.x, 2823i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, u_input.c), vec2<i32>(u_input.d, -1i))));
}

