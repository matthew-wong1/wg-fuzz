struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -611f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    global0 = 194f;
    let var_0 = Struct_1(_wgslsmith_div_f32(arg_0, arg_1.a), firstTrailingBit(abs(~(vec3<i32>(2147483647i, -1i, arg_1.b.x) | arg_1.b))));
    global0 = 215f;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(sign(arg_0)), true));
    global0 = _wgslsmith_f_op_f32(trunc(arg_0));
    return abs(max(select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(55141u, u_input.b.x, u_input.b.x, 25060u)), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 6274u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 16137u, u_input.b.x), vec4<u32>(u_input.b.x, 53756u, u_input.b.x, 55405u)), ~vec4<u32>(u_input.b.x, 23337u, u_input.b.x, 0u)), false), vec4<u32>(u_input.b.x, ~max(1u, u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, 1u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9554u), u_input.b.zx)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = ~(~_wgslsmith_mod_vec4_u32(func_3(_wgslsmith_f_op_f32(trunc(-1000f)), Struct_1(1160f, vec3<i32>(u_input.a, 47731i, -1i))), ~vec4<u32>(var_0, var_0, var_0, u_input.b.x)));
    var var_2 = vec4<f32>(148f, _wgslsmith_f_op_f32(round(825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1188f - 883f) * 147f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) + _wgslsmith_f_op_f32(round(339f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(421f * 1753f))) - 1583f)));
    var var_3 = !all(vec4<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), false, reverseBits(0u) >= max(28314u, var_1.x)));
    return Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, false, true), all(vec3<bool>(any(vec2<bool>(true, true)), true, true))), u_input.b.xy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.b;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec3<i32>(i32(-1i) * -_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_add_i32(-27075i, arg_3.d.b.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.x, 0i, 2147483647i, var_0.b.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(25443i, -19528i, 36071i, -2147483647i), arg_2), vec4<i32>(-11296i, 56676i, -1405i, var_0.b.x), vec4<i32>(0i, 2147483647i, 2147483647i, -18479i)))));
    let var_1 = arg_3;
    let var_2 = var_0.b;
    let var_3 = var_1.a.wzz;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 434f, _wgslsmith_f_op_f32(-arg_0.a), -634f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3367f, -742f, arg_0.a, arg_0.a)) - vec4<f32>(arg_0.a, -1037f, arg_0.a, -821f))))), func_4(arg_0, func_2(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.b.x, 63529i, u_input.a, -1i)), vec4<i32>(u_input.a, arg_0.b.x, u_input.a, u_input.a)), abs(vec2<i32>(2147483647i, 2147483647i))), firstTrailingBit(~vec4<i32>(-1i, -31002i, 10860i, arg_0.b.x)) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4363u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1480f, 196f, arg_0.a, arg_0.a))), Struct_1(_wgslsmith_f_op_f32(-arg_0.a), vec3<i32>(u_input.a, u_input.a, arg_0.b.x)), Struct_2(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), u_input.b.yx), Struct_1(_wgslsmith_div_f32(arg_0.a, arg_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-39043i, u_input.a, u_input.a), arg_0.b)))), func_2(-34128i, vec2<i32>(1i, 65630i)), arg_0);
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.a, var_0.a)))), func_4(var_0.b, var_0.c, countOneBits(abs(vec4<i32>(var_0.d.b.x, -7396i, var_0.d.b.x, 1i))) | vec4<i32>(min(-48151i, 56882i), max(arg_0.b.x, u_input.a), -14009i, 2147483647i), Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a), func_4(arg_0, Struct_2(vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), vec2<u32>(var_0.c.b.x, var_0.c.b.x)), vec4<i32>(-2110i, var_0.b.b.x, 22765i, -35340i), Struct_3(var_0.a, Struct_1(arg_0.a, vec3<i32>(arg_0.b.x, 1i, -1i)), Struct_2(vec4<bool>(var_0.c.a.x, var_0.c.a.x, true, false), vec2<u32>(86826u, var_0.c.b.x)), arg_0)), Struct_2(select(var_0.c.a, var_0.c.a, true), _wgslsmith_clamp_vec2_u32(var_0.c.b, var_0.c.b, vec2<u32>(var_0.c.b.x, var_0.c.b.x))), arg_0)), func_2(1i, vec2<i32>(countOneBits(arg_0.b.x << (var_0.c.b.x % 32u)), 0i)), func_4(arg_0, Struct_2(vec4<bool>(var_0.c.a.x & var_0.c.a.x, !var_0.c.a.x, all(vec2<bool>(var_0.c.a.x, true)), all(var_0.c.a)), u_input.b.zz), ~vec4<i32>(-2147483647i, 0i, -arg_0.b.x, -9221i), Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1625f, var_0.a.x, 1047f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(abs(var_0.a)))), func_4(Struct_1(215f, vec3<i32>(arg_0.b.x, 3401i, 1i)), var_0.c, -vec4<i32>(arg_0.b.x, arg_0.b.x, 0i, 0i), Struct_3(var_0.a, arg_0, Struct_2(vec4<bool>(false, var_0.c.a.x, false, true), u_input.b.zy), var_0.d)), var_0.c, arg_0)));
    var var_1 = vec3<u32>(7102u, 4294967295u, _wgslsmith_dot_vec2_u32(~u_input.b.yy, var_0.c.b));
    var_1 = u_input.b;
    var var_2 = func_2(-15292i, -vec2<i32>(_wgslsmith_sub_i32(-1i, ~(-2147483647i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 1i, 0i)), -var_0.d.b)));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-832f))), 1464f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f + 2594f)) - _wgslsmith_f_op_f32(abs(1f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1266f * -1000f), _wgslsmith_f_op_f32(func_1(Struct_1(-1276f, vec3<i32>(-33705i, -24782i, u_input.a))))), _wgslsmith_f_op_f32(abs(-149f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-313f, -200f)) * _wgslsmith_f_op_f32(899f - -556f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(1172f + 718f)))));
    var var_0 = u_input.b.x;
    var var_1 = ~0u;
    let var_2 = vec2<bool>(func_2(-2147483647i, min(vec2<i32>(u_input.a, i32(-1i) * -71545i), vec2<i32>(49370i | u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)))).a.x, firstLeadingBit(u_input.b.x) != ~u_input.b.x);
    var_1 = 66925u;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, 1313f, 122f, -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -262f, -712f, -1287f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1721f, 330f, -899f, 544f) + vec4<f32>(951f, 947f, -203f, -1221f)))))), func_4(Struct_1(_wgslsmith_f_op_f32(-func_4(Struct_1(1611f, vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_2(vec4<bool>(var_2.x, false, var_2.x, false), vec2<u32>(53729u, 1u)), vec4<i32>(2147483647i, 19736i, u_input.a, 5660i), Struct_3(vec4<f32>(370f, 313f, -1158f, 560f), Struct_1(146f, vec3<i32>(u_input.a, -1550i, 2147483647i)), Struct_2(vec4<bool>(var_2.x, var_2.x, false, true), u_input.b.xx), Struct_1(-242f, vec3<i32>(-1i, -36158i, 17640i)))).a), vec3<i32>(_wgslsmith_mod_i32(u_input.a, -28385i), u_input.a, u_input.a)), Struct_2(vec4<bool>(var_2.x & false, false, var_2.x, true), vec2<u32>(84807u, u_input.b.x) & vec2<u32>(u_input.b.x, 0u)), reverseBits(vec4<i32>(abs(u_input.a), u_input.a, ~(-2147483647i), func_4(Struct_1(-123f, vec3<i32>(-16614i, u_input.a, 2147483647i)), Struct_2(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec2<u32>(4294967295u, 0u)), vec4<i32>(u_input.a, -55070i, u_input.a, u_input.a), Struct_3(vec4<f32>(-2128f, 715f, 485f, 1145f), Struct_1(843f, vec3<i32>(23790i, 0i, 46736i)), Struct_2(vec4<bool>(var_2.x, var_2.x, true, var_2.x), u_input.b.yx), Struct_1(437f, vec3<i32>(-21268i, u_input.a, u_input.a)))).b.x)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1331f, -310f, 917f, -318f) - vec4<f32>(688f, -1585f, -2362f, 1000f)), Struct_1(-816f, abs(vec3<i32>(1i, 1i, -38282i))), func_2(_wgslsmith_add_i32(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), Struct_1(-1026f, vec3<i32>(u_input.a, -2147483647i, u_input.a)))), func_2(~(-17532i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)), abs(vec2<i32>(u_input.a, -60246i)))), Struct_1(_wgslsmith_f_op_f32(551f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f))), -(~firstTrailingBit(vec3<i32>(1i, u_input.a, 2147483647i)))));
    let var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.c.b.x << (max(31585u, u_input.b.x) % 32u), ~(~11807u), min(18881u, var_3.c.b.x & 0u)), vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 27553u), vec3<u32>(u_input.b.x, var_3.c.b.x, var_3.c.b.x)), ~0u), vec3<u32>(~(~0u), u_input.b.x, var_3.c.b.x)), ~u_input.b, u_input.b);
    var_0 = ~16318u;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.a)) + var_3.d.a))), var_3.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1597f + var_3.b.a)))), var_4);
}

