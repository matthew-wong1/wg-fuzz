struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global0 = vec4<bool>(~arg_0.x != -28737i, true, all(global0.wz), true);
    var var_0 = abs(vec4<u32>(~1u, 3789u, u_input.c, ~u_input.c));
    let var_1 = _wgslsmith_clamp_vec3_u32(abs(u_input.a), ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), vec3<u32>(u_input.c, 48976u, 23154u)))), _wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(65919u, u_input.a.x, u_input.a.x), u_input.b | 8921u), ~(vec3<u32>(u_input.b, var_0.x, var_0.x) ^ vec3<u32>(26678u, u_input.c, 1u)))));
    var var_2 = u_input.a.x;
    let var_3 = true & all(vec2<bool>(!global0.x & true, -2147483647i >= ~u_input.e));
    return var_3;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = abs(vec2<u32>(~(~arg_1), 55066u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_1 = _wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(floor(-140f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1485f * -1164f), _wgslsmith_f_op_f32(step(-1473f, -1329f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f * -1304f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(abs(541f))), 1f)));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(~1u, var_0.x, max(50968u, 1u)))), _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-950f * _wgslsmith_f_op_f32(max(-1685f, -1178f)))))), countOneBits(vec3<u32>(23771u, var_0.x, u_input.a.x)), u_input.d.xz);
    return global0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = vec4<f32>(-271f, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-510f, -719f)))), arg_3)), _wgslsmith_f_op_f32(select(-231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c))), any(vec4<bool>(true, false, func_2(vec3<i32>(1i, -7156i, 0i)), arg_0.x || false)))));
    global0 = vec4<bool>(false, false, true, any(vec2<bool>(true, (arg_0.x || arg_0.x) | !arg_0.x)));
    global0 = vec4<bool>(true, !arg_0.x, false, all(!vec3<bool>(false, func_3(u_input.d, 227u), true)));
    let var_1 = Struct_3(arg_1, !(4294967295u < arg_1.d));
    let var_2 = 72665i;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(any(!global0.zx) && (all(global0.zy) | !func_1(vec3<bool>(true, global0.x, false), Struct_2(vec2<f32>(166f, 305f), u_input.d.x, -355f, u_input.a.x), 46547i, 1145f)), global0.x & (u_input.d.x != ((u_input.e >> (u_input.c % 32u)) << (~u_input.c % 32u))), true, false);
    global0 = vec4<bool>(true, !(false | global0.x), any(global0.yx), true & any(vec2<bool>(global0.x, global0.x)));
    var var_0 = vec4<u32>(4294967295u, ~(~(~1u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(14501u, u_input.c, u_input.b, 1u)), ~vec4<u32>(u_input.c, 54991u, 52245u, ~66948u)), ~_wgslsmith_add_u32(~u_input.a.x, 29672u) & 85415u);
    var_0 = vec4<u32>(1u, min(select(firstLeadingBit(var_0.x) >> (60239u % 32u), 1u, abs(var_0.x) <= _wgslsmith_dot_vec3_u32(vec3<u32>(53978u, 53639u, 30495u), u_input.a)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, var_0.x), 76025u)), ~4294967295u, _wgslsmith_clamp_u32(select(~min(var_0.x, 1u), ~4294967295u, !global0.x), _wgslsmith_mult_u32(min(firstLeadingBit(393u), var_0.x), _wgslsmith_add_u32(34405u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.c, u_input.a.x)))), var_0.x));
    let var_1 = ~_wgslsmith_sub_vec2_u32(u_input.a.yy, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(1u, 31445u), vec2<u32>(0u, 4294967295u), global0.x)));
    global0 = vec4<bool>(false, global0.x, -(~(~5351i)) > -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -25306i, u_input.e, 0i), vec4<i32>(-2147483647i, 1i, 41096i, u_input.d.x))), all(select(select(global0.xxw, global0.wwy, global0.x), vec3<bool>(true, global0.x, func_1(vec3<bool>(false, false, global0.x), Struct_2(vec2<f32>(-119f, -1558f), u_input.d.x, -930f, var_0.x), 0i, 2348f)), global0.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1973f, -750f) + vec2<f32>(206f, -2044f)) * vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1985f, 286f) + vec2<f32>(870f, -2324f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(755f, -741f), vec2<f32>(-1607f, -645f), global0.x)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-496f, -1318f), vec2<f32>(-611f, -1089f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, -201f)))))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(~u_input.e, select(u_input.d.x, u_input.e, false), _wgslsmith_mult_i32(u_input.e, -1i), u_input.e)), ~(~vec4<i32>(u_input.d.x, 10248i, u_input.e, 57643i) | abs(vec4<i32>(u_input.e, u_input.d.x, u_input.d.x, -35252i)))), _wgslsmith_f_op_f32(-1019f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f - -1002f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(606f))))), 95519u);
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a.x, -480f))))), vec2<f32>(_wgslsmith_f_op_f32(round(-375f)), _wgslsmith_f_op_f32(f32(-1f) * -584f))))), u_input.e, 749f, ~_wgslsmith_sub_u32(56217u, reverseBits(var_1.x)));
    let var_3 = Struct_1(vec3<u32>(1u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, 1u, 0u), vec3<u32>(var_2.d, 31331u, var_0.x)) << (~var_0.x % 32u)), 59496u), var_2.a.x, abs(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-6169i, min(-u_input.d.x, max(u_input.e, u_input.e))), vec2<i32>(-abs(var_2.b), _wgslsmith_clamp_i32(abs(var_2.b), 1i >> (var_0.x % 32u), 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~var_1.x << (u_input.a.x % 32u), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(14398u, 5758u, 33484u)), _wgslsmith_mult_u32(4294967295u, 0u), ~_wgslsmith_sub_u32(var_1.x, var_3.c.x)), ~_wgslsmith_add_vec4_u32(min(vec4<u32>(59408u, 1u, 70871u, var_3.a.x), vec4<u32>(4294967295u, u_input.b, var_1.x, var_0.x)), ~vec4<u32>(var_2.d, u_input.a.x, var_0.x, 4294967295u)), vec4<bool>(true, global0.x, true, all(vec4<bool>(false, true, true, global0.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1198f, var_3.b, var_3.b, 1216f) - vec4<f32>(913f, 396f, -1864f, -502f)), vec4<f32>(var_3.b, var_3.b, 1000f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, 1257f, 1425f, -1000f), vec4<f32>(var_3.b, var_2.a.x, -516f, var_3.b))))))), max(abs(u_input.a), min(reverseBits(~vec3<u32>(4294967295u, var_2.d, var_3.a.x)), vec3<u32>(0u, var_2.d, 0u) >> (var_0.zwx % vec3<u32>(32u)))), min(~(~vec4<u32>(1u, u_input.c, var_1.x, 7245u) << (~vec4<u32>(u_input.b, var_1.x, 58659u, var_0.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(abs(var_1.x), 93355u), _wgslsmith_dot_vec2_u32(u_input.a.yy << (vec2<u32>(60152u, 22506u) % vec2<u32>(32u)), vec2<u32>(0u, 1u)), ~(~55151u), ~var_0.x)));
}

