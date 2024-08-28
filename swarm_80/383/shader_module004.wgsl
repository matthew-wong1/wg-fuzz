struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = select(vec3<bool>(arg_2, any(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_2, arg_2), arg_2)), all(select(select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_2, arg_1, arg_1), vec3<bool>(true, false, true)), select(vec3<bool>(arg_2, false, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(arg_2, arg_2, arg_1)))), select(select(!(!vec3<bool>(true, false, arg_1)), select(select(vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, arg_2), vec3<bool>(true, arg_1, arg_2)), select(vec3<bool>(arg_2, arg_1, arg_2), vec3<bool>(arg_2, false, true), arg_1), true), select(!vec3<bool>(arg_1, true, true), vec3<bool>(false, false, arg_2), true)), !select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_2, arg_2), arg_1), vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_2, arg_1), vec3<bool>(arg_1, true, arg_1))), false), arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(arg_0));
    var_0 = select(select(select(!(!vec3<bool>(false, var_0.x, arg_2)), !(!vec3<bool>(var_0.x, arg_2, true)), select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_1, false, var_0.x), vec3<bool>(true, false, false))), !(!(!vec3<bool>(false, var_0.x, arg_2))), ((true & var_0.x) & true) || true), !select(vec3<bool>(false, !arg_2, true && arg_1), select(vec3<bool>(arg_1, arg_1, var_0.x), vec3<bool>(true, var_0.x, true), !vec3<bool>(false, arg_1, var_0.x)), !vec3<bool>(false, arg_1, true)), select(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, true), select(vec3<bool>(arg_1, arg_2, false), vec3<bool>(true, var_0.x, true), arg_1)), !vec3<bool>(true, false, arg_2), vec3<bool>(var_0.x, arg_2 && false, arg_2)), vec3<bool>(!arg_2, arg_1, true), select(vec3<bool>(false, true, true), select(select(vec3<bool>(arg_1, arg_2, arg_1), vec3<bool>(false, true, arg_1), vec3<bool>(true, false, arg_1)), vec3<bool>(true, true, arg_2), any(vec3<bool>(true, var_0.x, true))), arg_2)));
    let var_2 = Struct_2(Struct_1(vec4<bool>(!var_0.x, arg_2, true, arg_1), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1000f + 1f)), ~abs(vec4<u32>(38199u, 26724u, 45658u, 4294967295u))));
    var var_3 = Struct_4((u_input.c != 2147483647i) & !any(!var_2.a.a.zzw), Struct_3(var_2.a, any(var_2.a.a.ywz) || !var_2.a.a.x, var_2.a.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, -1000f, arg_0.x, 822f) + vec4<f32>(316f, -660f, var_2.a.b, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1568f, var_1.x, 1024f, arg_0.x)), !var_2.a.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_0.x), _wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(-var_1.x))))), var_2);
    return true;
}

fn func_2() -> i32 {
    let var_0 = Struct_4(any(vec3<bool>(select(-78957i < u_input.b, func_3(vec3<f32>(393f, 289f, 761f), false, true), true), true, false | any(vec3<bool>(false, false, false)))), Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1690f))), vec4<u32>(1u, 4294967295u, 1u, ~4294967295u)), true, true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, -1519f, 1073f, 393f) - vec4<f32>(713f, -1078f, -483f, 1183f)), vec4<f32>(1549f, 308f, 2467f, 429f), false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1508f, 1551f, 663f, -764f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-212f, 237f, -424f, 1569f) * vec4<f32>(252f, -2110f, 1663f, -1385f))))), 2376f), Struct_2(Struct_1(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - -1219f)), ~vec4<u32>(0u, 1u, 0u, 1973u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-354f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-312f - -794f), -644f) - -365f)), var_0.c.a.b);
    var var_2 = min(max(u_input.a, 1i), ~(-1i));
    return u_input.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = !arg_1.a.x;
    let var_1 = abs(~func_2());
    let var_2 = ~arg_1.c.zz;
    return -_wgslsmith_dot_vec3_i32(vec3<i32>(-6998i, countOneBits(u_input.b), var_1 & u_input.b) >> (~(arg_1.c.wxz << (arg_1.c.zzw % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(u_input.b, var_1, -26595i)), countOneBits(vec3<i32>(-19076i, -39287i, -15633i) ^ vec3<i32>(var_1, -2147483647i, var_1))));
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_4 {
    let var_0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_1 = vec3<f32>(-1910f, _wgslsmith_f_op_f32(arg_1 + 314f), _wgslsmith_f_op_f32(arg_1 + arg_1));
    let var_2 = abs(vec2<u32>(reverseBits(~(~4294967295u)), ~0u));
    var var_3 = ~vec3<i32>(~(-arg_0), -14700i, u_input.a);
    var_3 = vec3<i32>(min(firstLeadingBit(3372i), u_input.b), -1i, var_3.x);
    return Struct_4(!all(vec2<bool>(func_3(var_1, false, false), true)), Struct_3(Struct_1(!vec4<bool>(var_0, false, var_0, var_0), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -441f)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, 0u, 0u), vec4<u32>(var_2.x, var_2.x, var_2.x, 31357u))), var_0, var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, 771f, -204f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0)))), var_1.x), Struct_2(Struct_1(select(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, var_0, var_0), var_0), vec4<bool>(true, true, var_0, false), var_0), _wgslsmith_f_op_f32(var_1.x - arg_1), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1289u, 60964u, 0u, 0u), vec4<u32>(var_2.x, 0u, 4294967295u, var_2.x)), var_2.x, var_2.x, ~var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(2147483647i);
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(59897i, var_0)), -38360i) | (1i >> (abs(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(21801u, 33909u, 4294967295u, 35568u), vec4<u32>(51130u, 4294967295u, 4294967295u, 4294967295u)))) % 32u));
    var_1 = abs(u_input.a);
    let var_2 = vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_add_i32(-31796i, u_input.c | -1i), 0i), -reverseBits(abs(select(0i, u_input.b, true))));
    var var_3 = func_4(~_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(-var_0, func_1(vec4<f32>(559f, 1034f, 504f, 649f), Struct_1(vec4<bool>(true, true, false, false), 866f, vec4<u32>(21054u, 8520u, 16197u, 0u))))), _wgslsmith_f_op_f32(step(417f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1558f - 411f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f + -1690f))))));
    var var_4 = var_3.c.a;
    let var_5 = func_4(abs(-1i), -1000f).b;
    let var_6 = _wgslsmith_sub_vec4_u32(var_5.a.c, ~_wgslsmith_div_vec4_u32(var_3.b.a.c, var_3.c.a.c));
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_3.b.a.c.wyz, var_3.c.a.c.zxy, _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(var_6.x), ~var_6.x, _wgslsmith_div_u32(var_3.b.a.c.x, var_6.x)), ~var_3.c.a.c.wxy, ~(~vec3<u32>(18720u, var_6.x, var_5.a.c.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-362f + var_5.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.b * var_3.b.d.x))), _wgslsmith_f_op_f32(-662f + _wgslsmith_f_op_f32(f32(-1f) * -104f)), _wgslsmith_f_op_f32(max(-2006f, -922f))), var_3.b.d)), var_5.e, var_0);
}

