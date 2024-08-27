struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 355f), max(_wgslsmith_dot_vec2_u32(vec2<u32>(49895u, 66487u), vec2<u32>(64344u, 1u)), 66315u) < ~(~_wgslsmith_clamp_u32(1u, 1u, 24778u)), _wgslsmith_div_f32(131f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(arg_1 - -1086f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(491f + arg_0.b.c) - _wgslsmith_f_op_f32(f32(-1f) * -1388f)))), ~vec4<i32>(2711i, global0.d.x << (4294967295u % 32u), ~(-4624i), -global0.d.x) << (_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(58744u, 1u, 19139u, 4294967295u)), firstTrailingBit(vec4<u32>(61021u, 23855u, 8177u, 4294967295u))) % vec4<u32>(32u)));
    var var_0 = reverseBits(_wgslsmith_div_vec2_i32(-global0.d.xw, min(abs(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(arg_0.b.d.x, -1i)) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    global0 = Struct_1(arg_0.b.a, arg_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -781f), global0.d);
    var_0 = ~(vec2<i32>(-1i) * -arg_0.b.d.yw);
    var var_1 = min(_wgslsmith_dot_vec2_i32(arg_0.b.d.xy, global0.d.zz), global0.d.x ^ 2147483647i) & ~_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.x, -31720i) & _wgslsmith_mod_i32(-2147483647i, var_0.x), -2147483647i);
    return ~abs(abs(abs(vec3<u32>(1u, 1u, 1u))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 10062u, 49717u), reverseBits(vec3<u32>(1u, 24656u, 43454u)), select(vec3<u32>(75611u, 50375u, 38723u), vec3<u32>(79300u, 21495u, 16971u), vec3<bool>(global0.b, true, false)))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 97792u, 4294967295u), ~vec3<u32>(1u, 7316u, 3098u), vec3<u32>(29896u, 4294967295u, 0u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(9581u, 12801u, 0u), vec3<u32>(0u, 0u, 36664u), vec3<bool>(true, false, global0.b)), vec3<u32>(0u, 0u, 8985u)))) & (abs(abs(func_3(Struct_2(vec3<bool>(false, false, true), Struct_1(global0.a, true, global0.a, vec4<i32>(global0.d.x, 21484i, u_input.b.x, u_input.b.x))), arg_0))) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(35342u, 17287u, 4294967295u)), 0u, 0u));
    var var_1 = global0.c;
    var var_2 = Struct_2(vec3<bool>(!(!global0.b), any(vec4<bool>(any(vec2<bool>(global0.b, global0.b)), true | global0.b, global0.b, global0.b)), global0.b), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -648f))), any(!select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, true), vec2<bool>(true, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.a, global0.b))), global0.d));
    var var_3 = var_2.b;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(448f, -773f, var_2.b.b)), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(step(-1136f, 499f)), true)), arg_0 > var_2.b.c)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.b.c)), _wgslsmith_div_f32(593f, var_3.c))))), select(true, true, select(var_2.b.b, (0u >> (1u % 32u)) <= ~var_0.x, _wgslsmith_mult_u32(var_0.x, 4294967295u) <= var_0.x)), _wgslsmith_f_op_f32(-1f), vec4<i32>(-14667i, max(-18727i, -1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 17738i), var_2.b.d.zwx)), -(1i ^ (u_input.a.x | u_input.b.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, u_input.a.x), 24688i)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(global0.a, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~global0.d, global0.d), global0.d), ~1i));
    var var_1 = arg_0;
    var_1 = arg_0;
    global0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-330f - 1355f) - _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-909f - 312f))))), u_input.b);
    let var_2 = reverseBits(vec2<u32>(1u, ~func_3(Struct_2(var_1.zyz, Struct_1(global0.c, var_1.x, -974f, vec4<i32>(var_0.d.x, -2147483647i, u_input.b.x, 2147483647i))), 1000f).x)) ^ (vec2<u32>(abs(~1u), func_3(Struct_2(var_1.xww, Struct_1(438f, false, -617f, vec4<i32>(u_input.b.x, 1579i, u_input.b.x, global0.d.x))), -2537f).x) | ~select(countOneBits(vec2<u32>(4294967295u, 0u)), ~vec2<u32>(36298u, 4294967295u), vec2<bool>(global0.b, true)));
    return Struct_2(select(vec3<bool>(any(vec3<bool>(true, false, false)), var_0.b, !(var_2.x != var_2.x)), arg_0.wxz, !(true == (global0.b | global0.b))), func_2(_wgslsmith_f_op_f32(1260f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-282f)) * _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_mult_vec2_i32(vec2<i32>(33451i, global0.d.x), _wgslsmith_mult_vec2_i32(global0.d.yw, vec2<i32>(var_0.d.x, 0i))) >> (var_2 % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    global0 = func_1(!(!select(select(vec4<bool>(true, false, true, global0.b), vec4<bool>(global0.b, arg_0.b.b, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, global0.b, true)), vec4<bool>(global0.b, global0.b, global0.b, false), all(vec2<bool>(true, true))))).b;
    var var_0 = Struct_1(-121f, true, func_2(_wgslsmith_div_f32(1602f, _wgslsmith_f_op_f32(global0.a + 2322f)), abs(u_input.a)).c, vec4<i32>(7796i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(53251i, arg_0.b.d.x, u_input.b.x, -5419i), global0.d), u_input.b.x | 63093i), _wgslsmith_sub_i32(func_2(global0.c, vec2<i32>(3486i, 1i)).d.x, global0.d.x)), countOneBits(-_wgslsmith_mod_i32(-16783i, -2147483647i)), 65796i));
    var_0 = Struct_1(414f, !var_0.b, 1000f, vec4<i32>(1i, var_0.d.x, ~arg_0.b.d.x, ~2147483647i));
    var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(select(1041f, -119f, arg_0.b.b))) - _wgslsmith_f_op_f32(-1f)), countOneBits(vec2<i32>(-var_0.d.x, u_input.a.x))).c, (_wgslsmith_clamp_u32(countOneBits(0u), 30228u, func_3(arg_0, -472f).x) != 1u) || true, _wgslsmith_div_f32(618f, _wgslsmith_f_op_f32(232f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-849f - -1000f), -811f))), global0.d);
    let var_1 = 13028u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(511f, _wgslsmith_f_op_f32(952f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global0.a)))))), global0.b, global0.a, vec4<i32>(global0.d.x, min(global0.d.x, 46361i), -18632i, _wgslsmith_mod_i32(-global0.d.x, -abs(u_input.a.x))));
    global0 = var_0;
    var var_1 = func_4(func_1(vec4<bool>(!(global0.c > var_0.a), true && all(vec4<bool>(false, true, true, false)), true, var_0.b)), vec3<u32>(~(1u << (0u % 32u)), 4294967295u, ~(~max(1u, 4294967295u))));
    var var_2 = !var_1.a.xx;
    let var_3 = var_1.b;
    let var_4 = var_1.a.zy;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(987f - var_3.c)), var_4.x, 459f, abs(var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.d.x, func_2(734f, global0.d.yz ^ vec2<i32>(u_input.b.x, u_input.b.x)).d.x), ~global0.d.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -968f, 1000f, 1125f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1412f, var_1.b.c, var_0.c, var_0.a))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -421f, 515f, var_1.b.c), vec4<f32>(var_3.a, global0.a, var_3.a, -121f))))))), var_3.c);
}

