struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(22525u, 4294967295u, 25443u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    global0 = ~_wgslsmith_div_vec3_u32(u_input.c.yxx, u_input.c.yxw);
    let var_0 = Struct_2(Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true, ~(~(~u_input.c)), vec3<u32>(82922u, ~(6934u >> (global0.x % 32u)), reverseBits(global0.x)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-587f, -144f))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -413f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), true, u_input.c, u_input.c.zzw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(932f, _wgslsmith_f_op_f32(485f * -539f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f + 351f) * _wgslsmith_div_f32(1519f, -933f)), _wgslsmith_f_op_f32(f32(-1f) * -688f), true | any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -915f), any(vec2<bool>(true, true)))), Struct_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, ~firstLeadingBit(firstTrailingBit(vec4<u32>(69568u, 35114u, 0u, global0.x))), firstLeadingBit(~reverseBits(u_input.c.xzy)), vec2<f32>(1721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - 455f)))));
    global0 = vec3<u32>(min(_wgslsmith_dot_vec3_u32(var_0.b.d, _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 5738u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x), vec3<u32>(global0.x, global0.x, 39967u)))), 1u), 57176u, 76387u);
    var var_1 = var_0;
    var var_2 = vec3<i32>(1i, -23480i, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_clamp_i32(-11855i, -59306i, -1i)) >> (_wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(var_1.a.d.x, u_input.c.x)) % 32u), ~(-8190i) << (max(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), ~9785u) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(28047i, 6243i, 2147483647i), max(vec3<i32>(1i, 1i, -30874i), vec3<i32>(29087i, 2147483647i, 19246i))), ~(-78834i))));
    return !vec3<bool>(all(vec2<bool>(var_0.b.a, true)) & false, any(!vec2<bool>(var_1.d.b, var_1.d.b)), false);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(all(!select(func_3(), vec3<bool>(false, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, true, arg_0.a), vec3<bool>(true, false, arg_0.a)))), false | select(all(vec2<bool>(arg_0.b, arg_0.a)), -1715f > _wgslsmith_f_op_f32(select(arg_0.e.x, 410f, true)), any(vec2<bool>(arg_0.a, true))), any(vec4<bool>(arg_0.c.x > global0.x, (arg_0.e.x != -1000f) || true, !any(vec2<bool>(true, arg_0.a)), arg_0.a)), !any(!select(vec4<bool>(false, false, arg_0.a, false), vec4<bool>(false, true, true, arg_0.b), false)));
    global0 = reverseBits(vec3<u32>(countOneBits(global0.x), 4294967295u, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)));
    var var_1 = Struct_1(true, !var_0.x, _wgslsmith_sub_vec4_u32(arg_0.c, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(80487u, 1u, 16914u, global0.x)), vec4<u32>(49421u, _wgslsmith_mult_u32(1u, global0.x), 1u, 4294967295u))), ~(abs(u_input.c.wzw) << (_wgslsmith_mod_vec3_u32(select(arg_0.c.yzy, vec3<u32>(arg_0.d.x, global0.x, 0u), var_0.zxx), arg_0.c.xzz) % vec3<u32>(32u))), arg_0.e);
    var_1 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = arg_1.a.b;
    let var_1 = 2147483647i;
    var var_2 = arg_2.x;
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c.x, 1u, 14233u), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.c, arg_1.d.c), _wgslsmith_mod_u32(32249u, 62179u), 14238u | u_input.a.x), countOneBits(reverseBits(u_input.c.xww))), ~reverseBits(max(arg_1.d.c.xwx, vec3<u32>(0u, 691u, arg_1.b.c.x)))), arg_1.b.c.wwx);
    let var_3 = ~_wgslsmith_clamp_vec2_i32(arg_2.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, ~arg_2.x), vec2<i32>(-1i, reverseBits(-31530i))), select(arg_2.yz, ~arg_2.xx, !vec2<bool>(var_0, var_0)) ^ vec2<i32>(~(-1i), 0i));
    return arg_2.x;
}

fn func_5(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(1025f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1002f)), -1542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-350f, 1000f, false)))))), -824f);
    var var_1 = !any(!vec3<bool>(true, all(vec3<bool>(false, true, true)), true));
    let var_2 = select(countOneBits(-firstLeadingBit(vec3<i32>(arg_1, arg_1, -74771i))), -min(reverseBits(countOneBits(vec3<i32>(arg_0, 1i, -5934i))), countOneBits(-vec3<i32>(55950i, arg_0, arg_1))), vec3<bool>(!(!all(vec4<bool>(false, false, true, true))), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), all(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, var_0.x < 1000f))));
    let var_3 = max(countOneBits(u_input.b.x), _wgslsmith_mod_u32(4294967295u, global0.x));
    let var_4 = Struct_2(Struct_1(true, all(vec2<bool>(false, false)) & false, u_input.c, vec3<u32>(_wgslsmith_mult_u32(7854u, 40561u), 1u, select(~var_3, var_3, func_2(Struct_1(true, true, u_input.c, vec3<u32>(18245u, var_3, u_input.a.x), var_0), 1868i, var_2.zy).b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(819f, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - var_0)), func_2(func_2(func_2(func_2(Struct_1(false, false, u_input.c, vec3<u32>(var_3, 5212u, global0.x), vec2<f32>(var_0.x, 479f)), var_2.x, vec2<i32>(1i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_2.x, arg_0), vec3<i32>(17085i, 2147483647i, var_2.x)), var_2.xz), -1i, min(var_2.zx, var_2.zx) >> (global0.xz % vec2<u32>(32u))), 0i, ~(-vec2<i32>(arg_0, 0i) & -var_2.yz)), var_0.x, func_2(func_2(Struct_1(true, all(vec3<bool>(false, false, false)), u_input.c >> (vec4<u32>(u_input.c.x, var_3, 45460u, u_input.b.x) % vec4<u32>(32u)), u_input.c.xwz, _wgslsmith_f_op_vec2_f32(var_0 + var_0)), abs(abs(25980i)), vec2<i32>(-1i, 2147483647i)), -(arg_0 & -var_2.x), select(~vec2<i32>(arg_0, var_2.x), var_2.yy, true)));
    return var_4;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = vec3<u32>(~_wgslsmith_sub_u32(~global0.x | 72611u, ~u_input.a.x), 55072u, _wgslsmith_div_u32(global0.x, ((global0.x >> (global0.x % 32u)) << (firstLeadingBit(global0.x) % 32u)) ^ ~global0.x));
    let var_0 = func_5(~1i, func_4(Struct_1(true, any(vec3<bool>(false, true, false)) | false, ~(vec4<u32>(u_input.a.x, 63715u, 32099u, 83824u) & u_input.c), u_input.c.wyx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2019f, 1000f))))), Struct_2(func_2(Struct_1(false, true, u_input.c, vec3<u32>(u_input.c.x, 62187u, u_input.a.x), vec2<f32>(145f, -254f)), abs(arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(arg_0, 0i))), func_2(Struct_1(false, true, vec4<u32>(4294967295u, 42444u, u_input.c.x, global0.x), vec3<u32>(2324u, u_input.c.x, u_input.c.x), vec2<f32>(1217f, -225f)), arg_0 << (6182u % 32u), -vec2<i32>(arg_0, -12972i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), Struct_1(func_2(Struct_1(false, true, u_input.c, u_input.c.xzz, vec2<f32>(137f, -1222f)), arg_0, vec2<i32>(-33098i, 21810i)).b, all(vec3<bool>(false, true, true)), min(u_input.c, vec4<u32>(9332u, global0.x, global0.x, u_input.c.x)), u_input.c.wwz, _wgslsmith_f_op_vec2_f32(vec2<f32>(405f, -483f) - vec2<f32>(2211f, 546f)))), firstLeadingBit(vec3<i32>(firstLeadingBit(arg_0), _wgslsmith_mod_i32(0i, arg_0), -arg_0))));
    let var_1 = var_0;
    global0 = var_1.d.c.zxw;
    global0 = abs(~(~firstTrailingBit(func_2(Struct_1(true, true, var_0.a.c, u_input.c.yxw, vec2<f32>(1046f, 712f)), -11947i, vec2<i32>(arg_0, -6431i)).d)));
    return StorageBuffer(~(~abs(-41053i)) & func_4(var_1.a, var_1, vec3<i32>(arg_0, -arg_0, _wgslsmith_sub_i32(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 607f;
    let var_1 = _wgslsmith_f_op_f32(abs(var_0));
    let x = u_input.a;
    s_output = func_1(-(~_wgslsmith_mod_i32(-18210i, _wgslsmith_clamp_i32(1i, 2147483647i, -40803i))));
}

