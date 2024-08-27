struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2749i;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-16699i, -10934i), 2147483647i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(697u, 0u, 4294967295u), arg_0), 1u, _wgslsmith_mod_u32(abs(7772u), ~arg_0.x)) % 32u), countOneBits(0i));
    var var_1 = -(~(~global1.c));
    global1 = Struct_2(vec2<bool>(any(global1.a), true), false | !(!(global1.a.x & true)), _wgslsmith_clamp_vec4_i32(~(-(vec4<i32>(0i, 31011i, 2147483647i, var_1.x) >> (vec4<u32>(arg_0.x, arg_0.x, 1u, 4294967295u) % vec4<u32>(32u)))), abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, -1i, -2147483647i, var_0.x), global1.c)), select(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, global1.c.x, var_0.x, u_input.a), max(vec4<i32>(-9007i, global1.d, 2147483647i, var_0.x), global1.c)), global1.c, true)), 2147483647i);
    var_0 = global1.c.ww;
    var var_2 = select(!select(!vec3<bool>(true, true, global1.a.x), !(!vec3<bool>(global1.b, false, global1.b)), select(!vec3<bool>(false, global1.b, global1.b), vec3<bool>(global1.a.x, global1.b, global1.a.x), vec3<bool>(global1.a.x, global1.b, false))), select(!(!vec3<bool>(global1.b, global1.a.x, global1.a.x)), !select(select(vec3<bool>(global1.a.x, global1.a.x, global1.b), vec3<bool>(global1.a.x, true, global1.a.x), true), vec3<bool>(global1.a.x, false, true), vec3<bool>(false, global1.b, false)), any(!(!vec4<bool>(false, true, global1.b, global1.b)))), select(vec3<bool>(var_1.x <= 0i, global1.b, true), select(!vec3<bool>(global1.a.x, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, global1.b, global1.a.x), select(vec3<bool>(global1.a.x, global1.b, true), vec3<bool>(true, true, true), global1.b), false)), all(global1.a)));
    return ~(~select(arg_1.yzz, _wgslsmith_sub_vec3_u32(~vec3<u32>(24337u, 1u, 0u), min(vec3<u32>(0u, arg_0.x, 64058u), vec3<u32>(arg_0.x, 1923u, arg_1.x))), all(!global1.a)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global0 = ~firstTrailingBit(-1i) >> (_wgslsmith_dot_vec3_u32(func_3(vec3<u32>(1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), ~(~vec3<u32>(1u, 1u, 1u))) % 32u);
    return -(~_wgslsmith_div_i32(countOneBits(arg_1.c.x), arg_1.d)) << (reverseBits(~29707u) % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = ~vec2<u32>(_wgslsmith_div_u32(~(~92932u), firstTrailingBit(74603u)), ~(~4294967295u));
    global1 = Struct_2(global1.a, true, -min(-vec4<i32>(1i, 7060i, -2147483647i, global1.c.x), ~(~global1.c)), arg_0);
    global1 = Struct_2(select(select(global1.a, select(!vec2<bool>(arg_2, false), global1.a, select(global1.a, global1.a, global1.a)), vec2<bool>(true, global1.b)), vec2<bool>(true, true), true), true, arg_1.b >> (select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, 31416u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 2639u, var_0.x)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 1u, 0u, 0u), vec4<u32>(4294967295u, var_0.x, 4294967295u, 1u))), select(!vec4<bool>(global1.b, true, global1.a.x, arg_2), !vec4<bool>(arg_2, true, false, false), global1.a.x)) % vec4<u32>(32u)), -(~firstLeadingBit(0i) >> (firstLeadingBit(func_3(vec3<u32>(var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, 0u, 0u)).x) % 32u)));
    var var_1 = abs(global1.c.wxw);
    let var_2 = Struct_3(_wgslsmith_mult_u32(~func_3(vec3<u32>(63389u, var_0.x, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)).x, ~4294967295u), Struct_2(global1.a, true, _wgslsmith_sub_vec4_i32(global1.c, abs(arg_1.c)) | arg_1.b, 0i));
    return var_2.b;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = ~1u;
    global1 = func_4(~(-(func_2(Struct_1(769f, global1.c, vec4<i32>(u_input.a, global1.c.x, u_input.a, u_input.a), global1.c.www), Struct_2(global1.a, false, vec4<i32>(global1.c.x, u_input.a, u_input.a, u_input.a), -54264i)) ^ 19422i)), Struct_1(-1000f, -(vec4<i32>(global1.d, u_input.a, -1i, 0i) ^ vec4<i32>(global1.c.x, global1.d, u_input.a, u_input.a)), global1.c, -vec3<i32>(-global1.c.x, global1.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, -2147483647i, 0i, 0i), global1.c))), global1.b, ~global1.c.zz >> (arg_0.yy % vec2<u32>(32u)));
    let var_1 = true;
    global0 = firstTrailingBit(1i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -430f) + _wgslsmith_div_f32(-351f, 1281f))), 743f)), vec4<i32>(-9249i, _wgslsmith_dot_vec4_i32(global1.c, ~global1.c), _wgslsmith_dot_vec2_i32(global1.c.zy, -(~global1.c.zw)), -global1.c.x), vec4<i32>(-2147483647i, max(global1.c.x, 1i) << (62917u % 32u), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -41658i) | 41184i, 2147483647i)), global1.c.ywy);
    return Struct_2(vec2<bool>(false, any(select(vec3<bool>(true, var_1, true), !vec3<bool>(var_1, false, global1.b), select(vec3<bool>(var_1, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, false, var_1), vec3<bool>(false, var_1, global1.b))))), var_2.a <= var_2.a, vec4<i32>(-32862i, -u_input.a, -2147483647i, -2147483647i), max(-1i, 1i));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f + -1567f)) + _wgslsmith_f_op_f32(-1286f * _wgslsmith_f_op_f32(-506f - -1632f))))));
    var var_1 = func_1(vec4<u32>(_wgslsmith_mod_u32(0u, reverseBits(arg_2.a)), 32343u, arg_2.a, arg_2.a));
    var_1 = Struct_2(var_1.a, (true || all(global1.a)) && (2147483647i <= u_input.a), arg_2.b.c, _wgslsmith_div_i32(func_4(-1i, Struct_1(_wgslsmith_f_op_f32(trunc(1660f)), vec4<i32>(-2147483647i, var_1.d, -34969i, 25528i), var_1.c >> (vec4<u32>(arg_2.a, 0u, 5247u, arg_2.a) % vec4<u32>(32u)), vec3<i32>(arg_1.c.x, 2683i, 0i)), arg_2.b.b, arg_2.b.c.yz).d, -24013i));
    let var_2 = 1173f;
    global1 = Struct_2(global1.a, var_1.a.x | true, arg_2.b.c, arg_2.b.d);
    return arg_2.a;
}

fn func_6(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    global1 = func_4(global1.d, Struct_1(_wgslsmith_f_op_f32(-1666f + -586f), -max(~global1.c, global1.c), vec4<i32>(2147483647i, 2147483647i, 2147483647i | global1.c.x, global1.d) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, arg_0, 1u, 1224u)), _wgslsmith_div_vec4_u32(vec4<u32>(10517u, arg_0, arg_1.x, 4294967295u), vec4<u32>(7134u, arg_0, 54353u, arg_1.x))) % vec4<u32>(32u)), -(max(global1.c.xzw, global1.c.wxy) & global1.c.yzz)), false, select(select(~global1.c.wx, select(-global1.c.yx, max(vec2<i32>(20367i, 553i), global1.c.zy), true), global1.a), firstTrailingBit(global1.c.xx), func_1(select(vec4<u32>(4294967295u, 12358u, arg_0, arg_0), vec4<u32>(1u, 1u, arg_1.x, 109433u), vec4<bool>(global1.a.x, true, false, global1.b)) ^ vec4<u32>(4294967295u, arg_1.x, 65660u, 4294967295u)).b));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -2728f)))))), vec4<i32>(-16129i >> (~(1u << (arg_0 % 32u)) % 32u), global1.d, 1i, _wgslsmith_dot_vec4_i32(global1.c, global1.c)), countOneBits(-global1.c), reverseBits(global1.c.wyz));
    let var_1 = global1.a.x;
    global0 = var_0.c.x;
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i >> (func_3(vec3<u32>(0u, 18853u, arg_0), vec4<u32>(arg_1.x, 1u, 59790u, 4294967295u)).x % 32u), -global1.c.x ^ u_input.a, 44018i, 2147483647i) << (_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, arg_1.x, 26559u, arg_0), ~vec4<u32>(arg_1.x, 18080u, 1u, arg_1.x)), ~(vec4<u32>(arg_0, arg_0, 0u, 1u) & vec4<u32>(58447u, arg_1.x, arg_1.x, arg_0))) % vec4<u32>(32u)), var_0.c);
    return abs(-(max(var_0.d.x, 0i) & 11335i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(195f)) * _wgslsmith_f_op_f32(f32(-1f) * -1017f))), _wgslsmith_f_op_f32(floor(-691f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1274f))), 1f);
    global1 = Struct_2(global1.a, global1.a.x && global1.b, vec4<i32>(~23501i, 2241i, ~firstTrailingBit(countOneBits(global1.c.x)), -2147483647i), func_6(func_5(~_wgslsmith_sub_i32(global1.c.x, 61056i), func_1(vec4<u32>(4160u, 1u, 0u, 18097u)), Struct_3(reverseBits(4199u), func_1(vec4<u32>(28859u, 65169u, 1u, 67242u)))), select(min(vec2<u32>(29692u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 47945u), vec2<u32>(0u, 14867u))), vec2<u32>(1u, 1u), !(!vec2<bool>(global1.b, global1.b)))));
    global0 = func_1(~((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15850u, 0u, 1u), vec4<u32>(26608u, 4294967295u, 1u, 4294967295u), vec4<u32>(44803u, 0u, 58587u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) ^ vec4<u32>(1u, 1u, 1u, 1u))).d;
    global1 = func_1(~(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(33907u, 0u, 24137u), vec3<u32>(79158u, 1u, 124057u)), _wgslsmith_mult_u32(1u, 35560u), 1u << (0u % 32u)) | countOneBits(~vec4<u32>(44085u, 4294967295u, 36524u, 83363u))));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    var var_2 = ~(~1u);
    global0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(5833i, ~_wgslsmith_clamp_i32(~u_input.a, 1i, ~global1.d)), -5517i | -global1.c.x);
    var var_3 = Struct_3(reverseBits(12205u), Struct_2(vec2<bool>(true | !global1.b, true || global1.a.x), !func_1(vec4<u32>(1u, 1u, 1u, 1u)).b, -global1.c, reverseBits(global1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~max(min(vec4<u32>(45172u, 6574u, 17740u, var_3.a), vec4<u32>(22500u, var_3.a, 69740u, var_3.a)), vec4<u32>(11930u, 1u, var_3.a, var_3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(405f, -710f, 306f) * vec3<f32>(843f, -256f, var_1))))), _wgslsmith_f_op_f32(var_0.x - var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-221f + 494f), var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -788f) - _wgslsmith_div_f32(-2621f, -598f)), var_0.x), var_0);
}

