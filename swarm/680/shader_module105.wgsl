struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec2<u32>(0u, ~21968u));
    let var_0 = Struct_1(~(min(vec2<u32>(u_input.d.x, global0.a.x), _wgslsmith_sub_vec2_u32(global0.a, arg_1.a)) | vec2<u32>(abs(arg_1.a.x), 95108u)));
    let var_1 = vec2<i32>(u_input.a, firstLeadingBit(min(abs(u_input.a), ~u_input.c.x)));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(~(-16680i), ~2147483647i), var_1.x, countOneBits(~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, u_input.a, 0i, -14971i), vec4<i32>(var_1.x, 1i, 55574i, 30747i))), u_input.c.x);
    global0 = arg_1;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(u_input.d.xy);
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(50512i, -2147483647i), 14480i, 32689i, 2147483647i);
    var var_1 = 1000f;
    return Struct_1((~(~arg_3.a) ^ vec2<u32>(func_2(Struct_1(arg_3.a), arg_0).a.x, func_2(Struct_1(vec2<u32>(u_input.d.x, arg_0.a.x)), arg_0).a.x)) >> (~(~(arg_0.a & arg_3.a)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2279f), _wgslsmith_f_op_f32(round(-704f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(104f, -325f), _wgslsmith_div_vec2_f32(vec2<f32>(666f, 534f), vec2<f32>(772f, 214f))) * vec2<f32>(_wgslsmith_f_op_f32(1216f + -1000f), -438f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -665f)) + vec2<f32>(1265f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(862f - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -755f)))));
    var var_2 = 0i;
    let var_3 = !select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)));
    let var_4 = arg_0;
    return _wgslsmith_sub_u32(~u_input.b, 4294967295u);
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.d.xx, ~(~global0.a), u_input.d.xz));
    let var_0 = arg_2;
    let var_1 = func_3(arg_2, vec4<bool>(true, (true && any(vec4<bool>(false, true, false, true))) || true, false, false), -1572f, func_2(Struct_1(~vec2<u32>(var_0.a.x, var_0.a.x)), func_3(func_3(func_3(var_0, vec4<bool>(true, false, true, true), 161f, arg_2), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(419f + -1000f), func_3(var_0, vec4<bool>(true, true, true, false), -1000f, Struct_1(vec2<u32>(arg_2.a.x, u_input.b)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_2)));
    global0 = func_3(var_0, select(select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true)), vec4<bool>(75172u >= u_input.d.x, any(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, false)), false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-114f, -1000f)) + _wgslsmith_f_op_f32(select(-145f, 1467f, false)))) + -346f), arg_2);
    var var_2 = Struct_1(firstTrailingBit(func_3(func_3(arg_2, vec4<bool>(true, true, true, true), -315f, arg_2), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1022f, -1000f)))), Struct_1(vec2<u32>(arg_0, 44878u))).a));
    return Struct_1(global0.a);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = -(u_input.a ^ (i32(-1i) * -abs(u_input.c.x)));
    let var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(-651f + arg_0) != -343f, true), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, -2147483647i == u_input.a), vec2<bool>(true, true))), vec2<bool>(false, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))));
    global0 = func_5(50169u & func_4(func_3(func_2(Struct_1(global0.a), Struct_1(vec2<u32>(global0.a.x, 11716u))), vec4<bool>(false, var_1.x, var_1.x, true), -589f, Struct_1(vec2<u32>(arg_1, arg_1))), func_3(Struct_1(vec2<u32>(arg_1, 38609u)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, false, true, var_1.x), true), arg_0, func_3(Struct_1(u_input.d.xy), vec4<bool>(var_1.x, var_1.x, false, true), arg_0, Struct_1(vec2<u32>(1u, arg_1))))), -_wgslsmith_mult_vec4_i32(~(vec4<i32>(2147483647i, u_input.a, -39171i, 1i) >> (vec4<u32>(10284u, arg_1, u_input.d.x, arg_2) % vec4<u32>(32u))), vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(var_0, 1464i), 33307i, abs(0i))), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 39225u), vec2<u32>(abs(0u), min(global0.a.x, arg_2)))));
    let var_2 = !(!any(select(!vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, var_1.x, false))));
    return ~(abs(~arg_1 & 44671u) << ((1u >> (firstTrailingBit(~global0.a.x) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(func_1(-1000f, 0u, abs(_wgslsmith_mult_u32(global0.a.x, 80096u))), ~0u));
    var var_1 = func_3(func_5(_wgslsmith_mult_u32(var_0.a.x & global0.a.x, countOneBits(4294967295u)) | u_input.b, -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(u_input.c.x, u_input.a, 1i, 0i)) << (~(~vec4<u32>(1u, u_input.d.x, 1u, 1u)) % vec4<u32>(32u)), func_5(_wgslsmith_mod_u32(min(107048u, 2835u), _wgslsmith_div_u32(111294u, 22592u)), vec4<i32>(-1i) * -vec4<i32>(-1i, -81453i, 2147483647i, -1i), Struct_1(var_0.a))), vec4<bool>(all(vec3<bool>(true, true, true)), true, u_input.c.x < u_input.c.x, select(true, true, true)), 1f, Struct_1(vec2<u32>(0u, min(4294967295u, ~u_input.d.x))));
    var_0 = func_2(Struct_1(~vec2<u32>(21101u, global0.a.x)), func_2(func_2(func_2(Struct_1(vec2<u32>(0u, 0u)), func_2(Struct_1(vec2<u32>(1u, global0.a.x)), Struct_1(vec2<u32>(1u, 0u)))), func_5(~global0.a.x, _wgslsmith_mult_vec4_i32(vec4<i32>(-54484i, -13247i, u_input.a, 0i), vec4<i32>(-1i, -1i, -28464i, -1i)), func_2(Struct_1(vec2<u32>(1u, var_0.a.x)), Struct_1(var_1.a)))), Struct_1(vec2<u32>(global0.a.x, var_1.a.x) >> ((var_0.a ^ vec2<u32>(var_1.a.x, 4294967295u)) % vec2<u32>(32u)))));
    let var_2 = Struct_1(reverseBits(vec2<u32>(func_2(func_2(Struct_1(global0.a), Struct_1(global0.a)), func_2(Struct_1(var_1.a), Struct_1(var_0.a))).a.x, _wgslsmith_add_u32(68722u, ~var_1.a.x))));
    var_0 = Struct_1(vec2<u32>(global0.a.x, var_0.a.x));
    let var_3 = u_input.d.zx;
    var var_4 = Struct_1(~_wgslsmith_mod_vec2_u32(func_5(u_input.b, vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), var_2).a, vec2<u32>(58020u, 92788u)));
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(func_3(Struct_1(u_input.d.xx), vec4<bool>(true, false, true, false), 1000f, Struct_1(vec2<u32>(1u, global0.a.x))).a, var_0.a), firstTrailingBit(vec2<u32>(35925u, var_3.x)) & ~select(var_4.a, vec2<u32>(var_2.a.x, var_2.a.x), vec2<bool>(true, false))));
    var var_5 = ~global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, var_3.x, !any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(544f, -759f, -1093f, -495f), vec4<f32>(641f, 871f, -1431f, -975f), vec4<bool>(true, true, false, false))))), ~_wgslsmith_mod_u32(var_0.a.x, 20487u), max(u_input.d, ~vec3<u32>(countOneBits(11310u), _wgslsmith_clamp_u32(77440u, var_0.a.x, 0u), global0.a.x | var_5.x)));
}

