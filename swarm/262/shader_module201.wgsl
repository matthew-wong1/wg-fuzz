struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1062f;

var<private> global1: vec2<u32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~(~40689u), 1u), global1.x), 70857u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_0 = 61525u;
    var var_1 = min(_wgslsmith_mod_i32(1i ^ _wgslsmith_dot_vec2_i32(arg_1.yy, arg_2.zz), ~1i), abs(27773i)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(~global2.x, firstTrailingBit(global2.x), 107643u, _wgslsmith_div_u32(u_input.b, var_0)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, global1.x, 40704u), vec4<u32>(3902u, 15252u, 1u, 0u)), ~vec4<u32>(global2.x, global1.x, 36108u, var_0), vec4<bool>(true, true, true, true))) % 32u);
    var var_2 = Struct_2(any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    return !vec3<bool>(false, true, !var_2.a);
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(true, any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), func_3(vec4<f32>(1643f, -334f, 317f, -484f), vec4<i32>(u_input.a, 1i, 1i, 0i), vec4<i32>(6736i, -1i, -20974i, u_input.a), vec3<i32>(u_input.a, 57625i, u_input.a)), vec3<bool>(false, false, true))), !func_3(vec4<f32>(-634f, 1000f, -1000f, -1538f), vec4<i32>(-8963i, 70186i, 35178i, u_input.a), select(vec4<i32>(-2147483647i, u_input.c, 24977i, -29739i), vec4<i32>(-30431i, u_input.c, u_input.a, u_input.a), vec4<bool>(true, true, false, false)), vec3<i32>(u_input.c, -9192i, u_input.c) >> (vec3<u32>(global2.x, 53606u, u_input.b) % vec3<u32>(32u))).x, true);
    global2 = ~vec2<u32>(~8207u, 0u);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) - 2530f), !all(vec3<bool>(var_0.x, var_0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, -671f, -664f, 662f) * vec4<f32>(1236f, -1000f, -1078f, 738f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1035f, 1004f, 109f, -267f) + vec4<f32>(213f, 313f, 281f, -1243f))), vec4<i32>(1i, -59142i, u_input.a, 14402i), vec4<i32>(-7965i, u_input.a, 9779i, u_input.c) | -vec4<i32>(0i, -43020i, -2147483647i, -22204i), -min(vec3<i32>(4685i, u_input.c, -68602i), vec3<i32>(u_input.a, -2147483647i, 2147483647i))).x)), -521f);
    global1 = vec2<u32>(~global1.x, global2.x);
    let var_1 = vec4<u32>(1u, 4294967295u, ~(global2.x >> (_wgslsmith_mult_u32(global1.x, global2.x) % 32u)), global1.x);
    return Struct_1(max(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-13016i, 46292i) << (vec2<u32>(19599u, global1.x) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(u_input.a, -2147483647i)))), vec2<i32>((4252i | u_input.c) ^ -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(19727i, 76325i, u_input.c), vec3<i32>(u_input.c, u_input.c, -20732i))))), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = abs(_wgslsmith_div_vec3_u32((min(vec3<u32>(27342u, 4294967295u, 0u), vec3<u32>(1u, 26231u, arg_3)) | countOneBits(vec3<u32>(1u, 0u, arg_3))) | ~(vec3<u32>(4294967295u, 1u, 1u) | vec3<u32>(1u, 0u, arg_0.b)), vec3<u32>(_wgslsmith_add_u32(global2.x, _wgslsmith_clamp_u32(global1.x, u_input.b, 82655u)), func_2().b, ~u_input.b)));
    global1 = _wgslsmith_div_vec2_u32(var_0.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.b), firstTrailingBit(~var_0.yy) ^ reverseBits(var_0.zy)));
    var var_1 = countOneBits(abs(~firstLeadingBit(vec3<u32>(var_0.x, 1u, arg_0.b) & vec3<u32>(1u, 0u, var_0.x))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -496f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(863f, 1f)), 1f)));
    var_1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(88569u, 0u | ~var_1.x, ~u_input.b << (select(var_0.x, arg_3, false) % 32u)), vec3<u32>(max(arg_3, reverseBits(var_0.x)), _wgslsmith_div_u32(1u, ~41617u), countOneBits(abs(u_input.b)))));
    return Struct_2(arg_1.a | arg_1.a);
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    global2 = vec2<u32>(~min(26395u & u_input.b, abs(0u) << (firstLeadingBit(15286u) % 32u)), global2.x);
    return ~(~(reverseBits(abs(vec2<u32>(15801u, global1.x))) << (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global2.x, 25690u)), vec2<u32>(global1.x, global1.x) & vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    global1 = func_5(func_4(func_2(), Struct_2(!all(vec2<bool>(false, arg_0.x))), 43685i, global2.x));
    let var_0 = select(select(vec4<bool>(!(!arg_0.x), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1346f, -646f, 531f, 301f), vec4<f32>(739f, 896f, -1415f, -684f), vec4<bool>(true, arg_0.x, false, arg_0.x))), -vec4<i32>(u_input.a, -54018i, u_input.a, -2147483647i), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c), vec3<i32>(2147483647i, 0i, 53742i)).x, 1u != global1.x, true), vec4<bool>(any(select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, true), arg_0.x)), (i32(-1i) * -43580i) == -u_input.c, firstLeadingBit(0i) >= u_input.c, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(959f, -225f, 541f, -834f) + vec4<f32>(-1000f, -2768f, 1500f, 113f)), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.a, -1i, u_input.c, -28591i)), vec3<i32>(u_input.c, u_input.c, 1i)).x), (arg_1.a || false) & true), !(!(!(!vec4<bool>(false, arg_0.x, arg_0.x, arg_1.a)))), !arg_0.x);
    global2 = vec2<u32>(global1.x, 18430u);
    var var_1 = u_input.c;
    global1 = ~select(_wgslsmith_add_vec2_u32(abs(vec2<u32>(24154u, global2.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 31348u), vec2<u32>(8631u, global2.x)))), _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x), ~select(vec2<u32>(1u, global1.x), vec2<u32>(4294967295u, global1.x), false)), var_0.zz);
    return arg_1;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~(global1.x | 27494u);
    let var_1 = arg_0.x;
    let var_2 = ~select(vec3<u32>(31202u, 39171u, _wgslsmith_sub_u32(~var_1, 4294967295u)), vec3<u32>(global1.x, arg_0.x & countOneBits(arg_2.b), var_0), arg_1.a);
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 69732u, u_input.b, var_0 & var_1), vec4<u32>(22900u, u_input.b, var_2.x, ~global1.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(35980u, arg_0.x << (76171u % 32u)), ~(~76874u), _wgslsmith_div_u32(var_2.x ^ arg_2.b, var_2.x))), (_wgslsmith_sub_vec2_u32(vec2<u32>(112752u, var_1) >> (vec2<u32>(global2.x, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.b, 4294967295u))) ^ ~_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(20827u, 17532u))) & (~min(var_2.zx, vec2<u32>(0u, u_input.b)) & ~var_2.zx), vec2<u32>(global1.x, select(global2.x, _wgslsmith_div_u32(countOneBits(arg_2.b), _wgslsmith_dot_vec2_u32(var_2.xx, vec2<u32>(1u, var_2.x))), arg_1.a)));
    global0 = -379f;
    return _wgslsmith_dot_vec2_u32(~(abs(vec2<u32>(global2.x, 31574u)) >> (~abs(var_2.zx) % vec2<u32>(32u))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec2<u32>(func_6(vec2<u32>(0u, 77905u), func_1(vec2<bool>(true, false), Struct_2(false)), Struct_1(vec2<i32>(u_input.a, 40166i), global2.x), vec4<bool>(true, true, true, true)) ^ u_input.b, ~global2.x);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) * _wgslsmith_f_op_f32(min(1643f, -1000f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(trunc(-979f)), true)))), _wgslsmith_f_op_f32(step(1906f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f + -334f) * -2997f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1116f)))))));
    global2 = select(~abs(~firstTrailingBit(vec2<u32>(17809u, 4294967295u))), ~(vec2<u32>(u_input.b & 25765u, ~24114u) | (~vec2<u32>(global1.x, global1.x) & reverseBits(vec2<u32>(u_input.b, 26291u)))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1047f, -263f, -527f, -1529f), vec4<f32>(306f, 1049f, -1271f, 662f)), reverseBits(vec4<i32>(u_input.c, u_input.c, -2147483647i, 13812i)), ~vec4<i32>(u_input.c, 40519i, -2147483647i, u_input.a), vec3<i32>(u_input.c, 58140i, u_input.a)).xy), false));
    var var_0 = (vec4<u32>(reverseBits(global1.x) >> (~u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(91050u, global1.x, u_input.b, 17632u), min(vec4<u32>(global2.x, global2.x, 0u, 0u), vec4<u32>(0u, global1.x, 1u, global2.x))), 76720u, countOneBits(global2.x)) | (firstTrailingBit(~vec4<u32>(44786u, global1.x, 86623u, global1.x)) ^ ~(~vec4<u32>(99216u, global1.x, global2.x, 32957u)))) << (~select(~vec4<u32>(global1.x, 1u, u_input.b, 31735u), vec4<u32>(_wgslsmith_div_u32(46747u, 1u), global2.x, _wgslsmith_mult_u32(46u, global2.x), 4294967295u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) % vec4<u32>(32u));
    let var_1 = func_2();
    global1 = _wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(27539u, u_input.b)) | ~(~vec2<u32>(global1.x, 25567u))), func_5(func_4(func_2(), Struct_2(true), -30166i, max(8538u, 42253u))), var_0.zx);
    var var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(34999i, 1i), 4294967295u, _wgslsmith_f_op_f32(sign(1267f)));
}

