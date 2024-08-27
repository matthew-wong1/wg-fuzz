struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -10918i, -48283i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-24765i, firstTrailingBit(_wgslsmith_sub_i32(-3317i, -13040i)), -1i), select(~_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, -1i, global1.x), vec3<i32>(global1.x, -85140i, 0i)), ~(-vec3<i32>(global1.x, global1.x, global1.x)), true & all(vec2<bool>(false, true)))), 15463i, -2790i);
    global1 = vec3<i32>(-global1.x, global1.x, -global1.x);
    return abs(u_input.a);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2310f * -1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1095f + -1354f), -106f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(142f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1475f)) - 191f) - 1630f));
    var var_1 = _wgslsmith_div_u32(global0.x, global0.x);
    let var_2 = Struct_3(Struct_2(_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(global1.x, global1.x, -102047i)), ~(vec3<i32>(arg_0, -55411i, global1.x) | vec3<i32>(2147483647i, arg_0, arg_0))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(793f - -288f) + -747f))), Struct_2(-(vec3<i32>(global1.x, global1.x, -7903i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, global1.x), vec3<i32>(0i, arg_0, global1.x))), var_0.x), abs(-select(vec2<i32>(-55908i, 0i), _wgslsmith_sub_vec2_i32(global1.zx, vec2<i32>(global1.x, global1.x)), vec2<bool>(true, false))), ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u) ^ u_input.a), vec4<u32>(reverseBits(57262u), ~u_input.a.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, _wgslsmith_div_f32(-1062f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_div_f32(var_0.x, var_0.x)), vec4<f32>(1000f, _wgslsmith_f_op_f32(var_0.x * -105f), _wgslsmith_f_op_f32(round(-291f)), -1198f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -177f, 1000f, var_0.x))))))));
    var var_3 = var_2.a;
    var_1 = _wgslsmith_div_u32(abs(~(~var_2.d.x)), u_input.c.x) ^ (_wgslsmith_mult_u32(min(~u_input.c.x, ~global0.x), max(~1u, ~16698u)) << (0u % 32u));
    return Struct_3(var_2.a, var_2.a, var_3.a.xy, countOneBits(vec4<u32>(33532u, ~firstLeadingBit(global0.x), 32756u, ~_wgslsmith_mod_u32(4294967295u, 14440u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.b - var_2.e.x), 1000f, var_3.b, var_2.e.x), _wgslsmith_f_op_vec4_f32(var_2.e - vec4<f32>(var_3.b, var_2.a.b, _wgslsmith_f_op_f32(258f * var_2.a.b), _wgslsmith_f_op_f32(-var_3.b))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: f32) -> vec3<bool> {
    global1 = vec3<i32>(select(20726i, _wgslsmith_clamp_i32(arg_1, arg_0.b.a.x, arg_0.c.x), true), min(~global1.x, 2147483647i >> (0u % 32u)), ~2147483647i);
    let var_0 = Struct_1(~(~10505u), firstTrailingBit(~arg_0.d));
    global1 = -firstTrailingBit(reverseBits(vec3<i32>(2147483647i, arg_0.a.a.x, global1.x)) >> (vec3<u32>(1u, _wgslsmith_mod_u32(var_0.b.x, 17822u), u_input.c.x) % vec3<u32>(32u)));
    let var_1 = vec4<bool>(2147483647i > (~47881i >> (global0.x % 32u)), false, false, false);
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_mod_u32(u_input.c.x, 26916u), global0.x << (41702u % 32u)), u_input.c.x), abs(1u), ~52306u), 14982u, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~_wgslsmith_mod_u32(76743u, 20720u)), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.b), abs(4294967295u)), _wgslsmith_dot_vec2_u32(~var_0.b.yw, vec2<u32>(0u, global0.x)))));
    return vec3<bool>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.b), 196f))) != arg_3, true);
}

fn func_1() -> vec3<i32> {
    let var_0 = select(func_4(func_3(max(global1.x, 15200i) & ~global1.x, Struct_1(abs(4294967295u), func_2(-231f))), 13477i, false & any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1444f - 798f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-401f - 1513f))))), !select(select(vec3<bool>(true, true, true), func_4(Struct_3(Struct_2(vec3<i32>(global1.x, 0i, global1.x), -739f), Struct_2(vec3<i32>(-2147483647i, global1.x, global1.x), 1000f), global1.xy, u_input.a, vec4<f32>(1340f, 287f, 819f, 1350f)), global1.x, true, 297f), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, 504i == global1.x)), true);
    global0 = ~vec2<u32>(u_input.c.x, ~_wgslsmith_sub_u32(global0.x, u_input.a.x));
    global0 = firstLeadingBit(~(~(u_input.a.xy & _wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, global0.x)))));
    global0 = ~(~u_input.c);
    var var_1 = Struct_2(abs(vec3<i32>(~global1.x, 0i, -309i) << (select(u_input.a.zyw << (vec3<u32>(4294967295u, 13762u, global0.x) % vec3<u32>(32u)), abs(u_input.a.wyz), u_input.a.x <= global0.x) % vec3<u32>(32u))), -641f);
    return -vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.x, var_1.a.x, global1.x), var_1.a, var_0), vec3<i32>(var_1.a.x, global1.x, global1.x)) | (i32(-1i) * -var_1.a.x), 1i & firstTrailingBit(_wgslsmith_dot_vec3_i32(var_1.a, var_1.a)), -reverseBits(var_1.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_3 {
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, 4294967295u), arg_0.a), _wgslsmith_mod_u32(1u, ~min(arg_0.b.x, u_input.a.x))), _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, global0.x), 1u), 27599u));
    var var_0 = Struct_1(_wgslsmith_add_u32(1u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(101f, -795f, true)))).x), ~(~(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 56588u) | vec4<u32>(1u, global0.x, arg_0.b.x, global0.x)) >> (~(~vec4<u32>(0u, 65310u, 54605u, 0u)) % vec4<u32>(32u))));
    let var_1 = var_0.b.zyy ^ vec3<u32>(_wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, global0.x), u_input.a.xx), ~vec2<u32>(65206u, 0u)), ~vec2<u32>(42911u, 4294967295u) ^ select(var_0.b.yz, vec2<u32>(8502u, 0u), false)), _wgslsmith_div_u32(~(~arg_0.a), u_input.b), ~(countOneBits(u_input.b) << (~0u % 32u)));
    global0 = var_1.xy;
    var_0 = Struct_1(30515u, ~(~_wgslsmith_mult_vec4_u32(~arg_0.b, ~arg_0.b)));
    return Struct_3(Struct_2(-vec3<i32>(~global1.x, func_3(arg_1.x, Struct_1(arg_0.b.x, vec4<u32>(13599u, 11232u, 1u, u_input.c.x))).a.a.x, arg_1.x), -2038f), Struct_2(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f + 254f))))), vec2<i32>(~(~global1.x), countOneBits(~0i)), reverseBits(arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(377f, 203f), 299f, -2654f, _wgslsmith_f_op_f32(-757f + 158f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1498f, -1000f, -795f, 1668f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, max(select(~2147483647i, _wgslsmith_sub_i32(global1.x, -6600i), true), -_wgslsmith_add_i32(global1.x, global1.x)) <= 0i);
    var var_1 = func_5(Struct_1(_wgslsmith_dot_vec4_u32(abs(~u_input.a), ~vec4<u32>(1u, u_input.b, u_input.b, global0.x)), u_input.a), _wgslsmith_mult_vec2_i32(global1.xz, vec2<i32>(~global1.x, abs(_wgslsmith_sub_i32(global1.x, global1.x)))), abs(func_1()) >> (vec3<u32>(1u, global0.x, 36379u) % vec3<u32>(32u)));
    global0 = vec2<u32>(~global0.x, firstTrailingBit(~0u)) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(func_2(var_1.b.b).x, ~global0.x), ~(~_wgslsmith_div_vec2_u32(var_1.d.yz, var_1.d.wz)));
    let x = u_input.a;
    s_output = StorageBuffer((73291u | (~u_input.c.x ^ ~var_1.d.x)) >> ((var_1.d.x << (u_input.c.x % 32u)) % 32u), var_1.b.b, func_3(_wgslsmith_sub_i32((var_1.b.a.x | global1.x) >> (countOneBits(u_input.b) % 32u), var_1.a.a.x), Struct_1(_wgslsmith_sub_u32(4294967295u, global0.x), func_2(var_1.a.b))).c, var_1.d.x, -183f);
}

