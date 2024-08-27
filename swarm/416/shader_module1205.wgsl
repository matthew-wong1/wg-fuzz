struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26026u, 0u);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    var var_1 = arg_0;
    var var_2 = ~(global0.x >> (~arg_0.a.x % 32u));
    global1 = arg_0;
    return 0u;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(1u, func_3(Struct_1(~global1.a, global1.b, _wgslsmith_dot_vec4_i32(arg_2, arg_2), vec3<bool>(true, global1.d.x, global1.b))), global0.x), false, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(~19180i, global1.c)), vec3<bool>(true, true, true));
    var var_1 = vec4<i32>(-2147483647i, select(_wgslsmith_dot_vec4_i32(select(arg_2, vec4<i32>(0i, 2147483647i, var_0.c, -14671i), true), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, -1i, var_0.c, 41024i), vec4<i32>(56301i, global1.c, -1i, 22101i))), min(~abs(-60167i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(arg_2.x, var_0.c))), !any(!var_0.d.yy)), firstTrailingBit(0i), min(global1.c, max(u_input.a.x, ~arg_2.x)) | _wgslsmith_clamp_i32(2115i, var_0.c, 1i));
    var var_2 = vec3<bool>(var_0.b, _wgslsmith_clamp_u32(var_0.a.x, 1u, global0.x) <= 0u, any(vec2<bool>(all(select(vec4<bool>(false, var_0.d.x, false, true), vec4<bool>(var_0.d.x, true, true, false), vec4<bool>(false, true, false, var_0.d.x))), false)));
    var var_3 = Struct_1(reverseBits(~(~var_0.a & global1.a)), true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2, ~arg_2 >> (min(vec4<u32>(21884u, arg_1, 1u, 0u), vec4<u32>(arg_1, global0.x, 8581u, 4294967295u)) % vec4<u32>(32u))), arg_2), !global1.d);
    global0 = var_0.a.xz;
    return Struct_1(vec3<u32>(arg_1, 1u, 0u), all(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, global1.b, select(true, 10616i <= global1.c, var_0.b))), ~u_input.a.x, !vec3<bool>(true, !(-2147483647i != var_0.c), var_3.b));
}

fn func_1() -> Struct_1 {
    let var_0 = -1198f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 119f) * _wgslsmith_f_op_f32(abs(-926f))))));
    let var_2 = -vec2<i32>(-global1.c, reverseBits(~(-29305i)));
    global1 = func_2(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, global1.a.x, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(6217u, global1.a.x, 4294967295u), global1.a)), ~(~global1.a)), 0u, ((~vec4<i32>(u_input.a.x, 1i, 19483i, var_2.x) << (select(vec4<u32>(global1.a.x, 12667u, 94610u, 7739u), vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.d.x, true, false, global1.d.x)) % vec4<u32>(32u))) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global1.a.x, 122606u, 1u), vec4<u32>(0u, 3625u, global1.a.x, global1.a.x))) % vec4<u32>(32u))) << (~min(~vec4<u32>(0u, global1.a.x, global1.a.x, 0u), min(vec4<u32>(global0.x, 57038u, 31042u, global1.a.x), vec4<u32>(global1.a.x, global0.x, global0.x, global0.x))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * var_1.x)))))));
    return Struct_1(global1.a, !(!(global1.d.x && all(global1.d))), ~func_2(reverseBits(_wgslsmith_sub_u32(33716u, global0.x)), 4294967295u, -(vec4<i32>(-3021i, -10512i, u_input.a.x, u_input.a.x) ^ vec4<i32>(var_2.x, global1.c, var_2.x, 32942i))).c, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 941f;
    var var_2 = var_0.a.yy;
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(global1.a, abs(vec3<u32>(global0.x, var_2.x, var_0.a.x))) ^ _wgslsmith_mod_vec3_u32(func_2(_wgslsmith_mult_u32(var_0.a.x, var_2.x), min(4294967295u, global0.x), select(vec4<i32>(-19570i, global1.c, 16057i, var_0.c), vec4<i32>(global1.c, 19634i, 17146i, 2147483647i), var_0.d.x)).a, var_0.a), any(vec4<bool>(true, func_2(abs(global1.a.x), global1.a.x, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 59933i, 0i, 2147483647i), vec4<i32>(global1.c, var_0.c, global1.c, var_0.c))).b, !func_2(1u, global1.a.x, vec4<i32>(global1.c, var_0.c, 0i, var_0.c)).d.x, true)), -(max(-17761i, 1i) | _wgslsmith_dot_vec2_i32(u_input.a, u_input.a | vec2<i32>(var_0.c, global1.c))), !func_2(_wgslsmith_dot_vec2_u32(var_0.a.yz, var_0.a.xy), ~(~836u), ~(vec4<i32>(1i, u_input.a.x, global1.c, -27993i) | vec4<i32>(u_input.a.x, 30156i, -2147483647i, u_input.a.x))).d);
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)));
    var_4 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_f_op_f32(ceil(var_1))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1000f), _wgslsmith_f_op_f32(567f * var_4.x)))), var_4.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, var_4.x, _wgslsmith_div_f32(var_1, var_4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, 220f, -926f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 787f)))) - vec3<f32>(-283f, _wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(ceil(var_4.x)))))));
    var var_5 = func_1();
    let var_6 = Struct_1(global1.a, all(!select(!vec4<bool>(true, global1.b, var_0.b, var_3.d.x), vec4<bool>(true, var_3.b, false, true), any(vec4<bool>(true, var_5.d.x, var_3.d.x, var_0.b)))), var_0.c, func_1().d);
    let var_7 = func_2(_wgslsmith_div_u32(select(var_3.a.x, 102053u, true), var_0.a.x), 1u, vec4<i32>(~var_5.c, _wgslsmith_mod_i32(u_input.a.x, countOneBits(global1.c)), -_wgslsmith_clamp_i32(1i, global1.c, global1.c), _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(var_5.c, u_input.a.x, -91217i, var_6.c))), vec4<i32>(_wgslsmith_mult_i32(0i, var_6.c), ~var_3.c, -var_6.c, var_5.c >> (var_6.a.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, 66264i, -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(22395i, 0i), func_1().c), ~0i, -26481i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(40714i, 0i), u_input.a), vec2<i32>(22500i, var_6.c) ^ u_input.a)));
}

