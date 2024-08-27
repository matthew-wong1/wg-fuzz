struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec3<f32>(-1169f, -1124f, -118f), vec3<i32>(-29448i, -32876i, -37981i), vec2<u32>(40957u, 4294967295u), -2165f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-806f, global0.b.x)))))));
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d.yzx) & abs(vec3<i32>(0i, u_input.c.x, u_input.b)), vec3<i32>(-30848i, i32(-1i) * -26525i, 1i)), -(1i << (global0.d.x % 32u)));
    let var_2 = Struct_1(var_1, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(1018f)), _wgslsmith_f_op_f32(f32(-1f) * -146f))))), reverseBits(u_input.e), global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - global0.b.x));
    var var_3 = vec4<bool>(!any(vec3<bool>(any(vec4<bool>(true, false, false, false)), select(true, false, false), any(vec2<bool>(false, true)))), 1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, var_2.d.x, max(4294967295u, var_2.d.x)), ~select(vec3<u32>(var_2.d.x, 0u, var_2.d.x), vec3<u32>(4294967295u, var_2.d.x, var_2.d.x), vec3<bool>(false, true, true))), any(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true)), ~select(_wgslsmith_sub_u32(0u, 0u), ~4294967295u, any(vec2<bool>(false, false))) < 4294967295u);
    let var_4 = Struct_1(17880i >> (global0.d.x % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, -477f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, 226f, 1487f))))))), u_input.e, ~_wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(global0.d.x, 4294967295u)), global0.d, max(~vec2<u32>(global0.d.x, var_2.d.x), global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -640f));
    return vec3<f32>(global0.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))) * global0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_4.e, -189f, var_3.x)), global0.b.x));
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(-42710i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1754f, _wgslsmith_div_f32(global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e, -1000f) + _wgslsmith_f_op_f32(global0.b.x - global0.e)), global0.e)), ~u_input.d.zxz, global0.d, _wgslsmith_f_op_f32(global0.b.x - global0.b.x));
    global0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(~u_input.a), -43173i), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x))), (~(~global0.c) & vec3<i32>(_wgslsmith_add_i32(u_input.e.x, 30392i), 4139i, 1i)) << (vec3<u32>(33206u, global0.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(32203u, 1u, 34999u), vec3<u32>(global0.d.x, global0.d.x, 1u))) % vec3<u32>(32u)), global0.d, 195f);
    let var_0 = select(global0.c, ~vec3<i32>(-global0.a ^ -u_input.a, _wgslsmith_mult_i32(global0.c.x, global0.c.x), global0.a), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    global0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, 1020f, -493f), vec3<f32>(global0.e, -222f, -975f)))))), ~(vec3<i32>(-2147483647i, -48627i, var_0.x) << (vec3<u32>(69092u, global0.d.x, 0u) % vec3<u32>(32u))) ^ -vec3<i32>(global0.a, ~(-65859i), _wgslsmith_dot_vec3_i32(var_0, u_input.e)), firstTrailingBit(firstTrailingBit(global0.d)) ^ ~max(vec2<u32>(83013u, global0.d.x), global0.d), 165f);
    let var_1 = Struct_1(select(-12869i, -(~max(var_0.x, global0.a)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, _wgslsmith_f_op_f32(-global0.b.x), -982f) - vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-global0.b.x)))), -(~u_input.e), global0.d, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(106f, global0.b.x))));
    return countOneBits(countOneBits(select(vec3<u32>(4294967295u, global0.d.x & global0.d.x, _wgslsmith_mod_u32(global0.d.x, 4294967295u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d.x, 3369u, 58921u), vec3<u32>(1u, global0.d.x, 36726u)), true)));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_2();
    var var_1 = true;
    let var_2 = -arg_0.c.x;
    var_1 = true;
    global0 = Struct_1(firstTrailingBit(~var_2 ^ ~_wgslsmith_mult_i32(55579i, global0.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(func_3())), global0.b, !vec3<bool>(any(vec3<bool>(false, false, true)), true, true))), vec3<i32>(11439i, min(-(~(-1i)), firstTrailingBit(-2147483647i) | arg_0.a), 2147483647i), vec2<u32>(~_wgslsmith_clamp_u32(1u, 4294967295u, var_0.x >> (arg_0.d.x % 32u)), countOneBits(max(arg_0.d.x, ~arg_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f + global0.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(-global0.e))), arg_0.e)));
    return vec3<f32>(global0.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(2009f - arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)) - _wgslsmith_f_op_f32(round(1468f))), arg_0.e));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1328f * arg_0.b.x)))), var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + global0.e), 829f)));
    global0 = Struct_1(_wgslsmith_mod_i32(arg_1, -(~u_input.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), global0.c, arg_0.d, var_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-689f, var_1.x, -1674f, -810f), var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(var_0.b.x, -960f, global0.b.x, global0.e)) + vec4<f32>(global0.e, var_0.b.x, var_0.b.x, var_0.b.x)))));
    var var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, _wgslsmith_f_op_f32(-1096f + 1219f), var_2.x)), -vec3<i32>(0i, arg_0.a, -min(arg_1, -1i)), var_0.d << (((~vec2<u32>(arg_0.d.x, 1u) | ~arg_0.d) | global0.d) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(var_2.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.e);
    let var_1 = func_4(Struct_1(global0.c.x, _wgslsmith_f_op_vec3_f32(func_1(Struct_1(_wgslsmith_dot_vec3_i32(u_input.d.yzx, vec3<i32>(0i, u_input.b, -1i)), _wgslsmith_f_op_vec3_f32(-global0.b), global0.c, vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_f32(-global0.e)))), abs(abs(u_input.d.wyz >> (vec3<u32>(1u, global0.d.x, global0.d.x) % vec3<u32>(32u)))), vec2<u32>(global0.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, 36399u), vec3<u32>(46979u, global0.d.x, 0u)), _wgslsmith_mult_u32(40313u, global0.d.x))), 242f), -2147483647i);
    var_0 = _wgslsmith_f_op_f32(var_1.e * var_1.b.x);
    let var_2 = _wgslsmith_div_vec2_i32(countOneBits(~global0.c.yx), global0.c.xy);
    global0 = var_1;
    var_0 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    let var_3 = 1u;
    var var_4 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(-16411i, -(var_2.x << (4294967295u % 32u)), 0i ^ (var_1.c.x | global0.c.x)), _wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(73606i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.c.x, u_input.b, global0.c.x)), vec3<i32>(var_2.x, global0.c.x, var_1.c.x)), ~var_1.c.x)), u_input.d.xww);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.d.yzy), firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(44943u, 5470u, 13654u, global0.d.x) ^ vec4<u32>(global0.d.x, var_3, global0.d.x, var_3), ~vec4<u32>(0u, 662u, 2667u, var_3))));
}

