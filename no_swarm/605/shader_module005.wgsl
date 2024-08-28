struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(443f, vec2<bool>(false, true), false, vec4<u32>(17918u, 4642u, 1u, 4294967295u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), global0.a, global1.a);
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(257f, _wgslsmith_f_op_f32(314f - -405f), -2050f), arg_1.c));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-global0.a), vec2<bool>(global1.b.x, global0.b.x), false && global0.c, _wgslsmith_sub_vec4_u32(vec4<u32>(~(~global0.d.x), _wgslsmith_mod_u32(max(98481u, 60069u), arg_1.e), ~_wgslsmith_add_u32(global0.d.x, global1.d.x), 63667u), vec4<u32>(1u << (abs(1u) % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(16486u, 113217u), ~arg_2), ~_wgslsmith_mult_u32(global1.d.x, 61572u), 0u)));
    let var_2 = Struct_1(-_wgslsmith_mult_vec4_i32(arg_1.a, arg_1.a) | -_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, u_input.e, 2147483647i, -24470i), u_input.c, false), -arg_1.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, _wgslsmith_f_op_f32(ceil(1151f)), global1.a))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1403f)), _wgslsmith_f_op_f32(round(688f)), var_1.a)))), _wgslsmith_add_u32(~1u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_1.d.x, 18380u), global1.d.x)), firstTrailingBit(_wgslsmith_div_u32(~(~var_1.d.x), 68634u)));
    var var_3 = _wgslsmith_f_op_f32(global1.a - arg_1.b.x);
    return reverseBits(u_input.e);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.d.x, 17644u, global1.d.x), arg_3)), 4294967295u, _wgslsmith_div_u32(arg_3.x, 39728u), ~arg_3.x), min(vec4<u32>(global0.d.x, 4294967295u, 0u, 1u), vec4<u32>(min(30899u, global0.d.x), global1.d.x, 0u, global1.d.x))) & (countOneBits(~abs(global0.d.x)) | arg_3.x);
    let var_1 = vec4<i32>(-_wgslsmith_mult_i32((-3025i | u_input.a.x) << ((global0.d.x ^ global1.d.x) % 32u), _wgslsmith_mult_i32(0i, -1i)), _wgslsmith_mod_i32(u_input.b, u_input.e), select(-(u_input.a.x & -2147483647i), 51968i, arg_0.x) >> (64937u % 32u), func_3(Struct_3(true), Struct_1(-u_input.c, arg_2, _wgslsmith_f_op_vec3_f32(-arg_2), ~(~global1.d.x), firstTrailingBit(countOneBits(1u))), ~4294967295u));
    global1 = Struct_4(arg_2.x, vec2<bool>(any(arg_0.zzx), false), true, firstLeadingBit(vec4<u32>(~(~global0.d.x), 43565u, ~abs(65445u), abs(~global0.d.x))));
    let var_2 = arg_0.wzx;
    var var_3 = arg_1.x;
    return any(vec4<bool>(!(!arg_0.x), var_2.x, global1.b.x, global0.c));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3301f * 1152f) - _wgslsmith_f_op_f32(max(global0.a, -273f)))) + 1441f), select(vec2<bool>(select(true, 1359f >= global0.a, arg_0.c.x), global0.c), !arg_0.c, !global1.c), any(global1.b), global0.d);
    global1 = Struct_4(-804f, !vec2<bool>(!global0.b.x, false), false, vec4<u32>(min(~0u, _wgslsmith_dot_vec3_u32(global1.d.wyy, vec3<u32>(var_0.d.x, 11232u, global1.d.x))), _wgslsmith_sub_u32(56533u, 12933u) >> (~min(global1.d.x, var_0.d.x) % 32u), _wgslsmith_mult_u32(~var_0.d.x, 21761u), ~global1.d.x & 54589u));
    global0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(822f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, global0.a) * -512f)))), vec2<bool>(all(select(!vec3<bool>(global1.c, false, true), select(vec3<bool>(var_0.c, var_0.c, global0.c), vec3<bool>(global1.b.x, true, var_0.b.x), vec3<bool>(global0.c, arg_0.c.x, global0.c)), false)), arg_0.c.x), all(global1.b), _wgslsmith_add_vec4_u32(firstLeadingBit(global1.d & ~vec4<u32>(var_0.d.x, arg_0.b, arg_0.d.e, var_0.d.x)), ~vec4<u32>(_wgslsmith_mult_u32(15665u, 90793u), ~51330u, global0.d.x, countOneBits(1u))));
    let var_1 = Struct_3(arg_0.d.d <= (~arg_0.d.e >> ((min(global1.d.x, global0.d.x) ^ global1.d.x) % 32u)));
    global1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a)), 295f), vec2<bool>(false, global0.b.x), true, max(~global1.d, ~_wgslsmith_clamp_vec4_u32(var_0.d, vec4<u32>(global0.d.x, var_0.d.x, 4294967295u, arg_0.b), vec4<u32>(47630u, var_0.d.x, global0.d.x, global1.d.x))));
    return Struct_1(select(u_input.c, arg_0.d.a, select(select(!vec4<bool>(true, true, var_1.a, var_1.a), !vec4<bool>(false, false, global0.b.x, true), all(vec4<bool>(var_1.a, true, false, false))), select(!vec4<bool>(var_1.a, var_1.a, arg_0.c.x, var_1.a), select(vec4<bool>(true, var_0.c, true, arg_0.c.x), vec4<bool>(false, true, false, global0.c), var_1.a), vec4<bool>(var_0.b.x, true, var_1.a, arg_0.c.x)), select(!vec4<bool>(arg_0.c.x, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.x, var_0.b.x, true, true)))), arg_0.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(arg_0.d.b))))), firstLeadingBit(abs(abs(_wgslsmith_div_u32(global1.d.x, 0u)))), arg_0.d.d);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-527f, _wgslsmith_f_op_f32(451f + -1063f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1)), !global1.b, _wgslsmith_dot_vec3_u32(global1.d.wyy, min(_wgslsmith_mult_vec3_u32(vec3<u32>(66913u, 14996u, arg_3.e), vec3<u32>(global0.d.x, global1.d.x, 4294967295u)), vec3<u32>(39366u, 37382u, arg_3.e))) < 1u, abs(~vec4<u32>(global0.d.x ^ 1u, arg_3.e, ~23525u, ~0u)));
    global0 = Struct_4(250f, !global0.b, arg_2, countOneBits(global0.d));
    let var_0 = vec4<bool>(all(global1.b), global1.c, true, !any(vec3<bool>(false, any(vec3<bool>(arg_2, global0.b.x, global1.c)), false | global0.c)));
    global1 = Struct_4(-405f, global1.b, _wgslsmith_mod_u32(global0.d.x, _wgslsmith_add_u32(74663u, 1u)) != 21438u, global1.d);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 665f)))))), select(firstTrailingBit(global0.d.x ^ arg_3.d), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(28039u, global0.d.x), arg_3.d, ~(~45210u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) + -884f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1786f * 704f)))), select(select(!select(var_0.wx, var_0.zw, false), select(!var_0.ww, global0.b, var_0.x | var_0.x), vec2<bool>(all(var_0.zw), !global0.c)), vec2<bool>((30770u >= global0.d.x) && var_0.x, true || global0.c), global1.c), Struct_1(vec4<i32>(arg_3.a.x << (~89363u % 32u), max(i32(-1i) * -2147483647i, ~0i), -(i32(-1i) * -1i), arg_3.a.x), vec3<f32>(-599f, global1.a, _wgslsmith_f_op_f32(-370f * -189f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(func_4(Struct_2(vec2<f32>(global0.a, arg_1), 26191u, global1.b, arg_3)).b)))), 1539u, ~arg_3.e));
    return Struct_3(!var_0.x);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_5(select(firstTrailingBit(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.c.x, 1i, u_input.d.x)), ~u_input.c)), firstTrailingBit(-u_input.c), vec4<bool>(true, true, _wgslsmith_mod_i32(u_input.c.x, 0i) > u_input.d.x, _wgslsmith_f_op_f32(-global1.a) < 212f)), -235f, any(select(global0.b, global0.b, all(vec3<bool>(false, global1.b.x, false)))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2203f, global1.a)))), _wgslsmith_mult_u32(global1.d.x << (22728u % 32u), global1.d.x | 4907u), vec2<bool>(func_2(vec4<bool>(true, global0.b.x, false, true), u_input.c.zz, vec3<f32>(-105f, global1.a, 1514f), global0.d), !global1.b.x), Struct_1(-vec4<i32>(-35364i, 0i, u_input.a.x, -57842i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 477f, 343f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -748f, -1051f) + vec3<f32>(global0.a, global1.a, global0.a)), ~29793u, ~global0.d.x))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.a, global0.a, true))))) + -668f), global0.a);
    let var_2 = global1.d;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(595f - global1.a)), global0.b, true, countOneBits(min(vec4<u32>(44102u, firstLeadingBit(18753u), firstLeadingBit(arg_0), 1u), vec4<u32>(var_2.x, 1u, 47537u, ~28800u))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -1000f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1160f, var_1.x), vec2<f32>(1000f, var_3.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1535f, -119f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1121f))), true))), ~firstLeadingBit(global0.d.x), vec2<bool>(true, select(true, !(true & global0.b.x), var_0.a)), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-604f, var_3.a))))), var_2.x, select(global1.b, vec2<bool>(true, global0.b.x), select(var_0.a, false, false)), func_4(Struct_2(vec2<f32>(global0.a, -838f), var_2.x, vec2<bool>(true, global0.b.x), Struct_1(u_input.c, vec3<f32>(-543f, -648f, var_1.x), vec3<f32>(var_3.a, -289f, -638f), 1u, var_2.x))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(-2147483647i >> (global0.d.x % 32u), u_input.e, -59128i, func_1(57097u) ^ min(u_input.e << (0u % 32u), 8556i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, _wgslsmith_f_op_f32(405f + global0.a), _wgslsmith_f_op_f32(global1.a * global0.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, 638f, global1.c)) + 397f)), _wgslsmith_f_op_f32(-515f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a, 1000f)), _wgslsmith_div_f32(global1.a, 379f))), _wgslsmith_f_op_f32(-global1.a)), countOneBits(abs(countOneBits(global1.d.x))), abs(~_wgslsmith_dot_vec3_u32(global0.d.xwx, ~vec3<u32>(global1.d.x, 1u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), 33025u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.d.wzw, global1.d.xxx) | global1.d.wzw, vec3<u32>(~global0.d.x, global1.d.x, _wgslsmith_dot_vec4_u32(global1.d & global1.d, global0.d))));
}

