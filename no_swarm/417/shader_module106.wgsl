struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(0u);
    let var_1 = Struct_1(~firstTrailingBit(abs(25589u)));
    var_0 = ~49580u << (~(~arg_0.a) % 32u);
    var_0 = 65286u;
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, global0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 855f), true)))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(arg_2.x);
    global0 = vec2<f32>(502f, 320f);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1103f)), -561f, true)) - 1f), -1570f));
    var var_1 = func_2(Struct_2(u_input.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    return Struct_2(~59495u);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = ~19316i;
    var var_1 = _wgslsmith_mult_u32(abs(reverseBits(_wgslsmith_mod_u32(25389u, u_input.a))) | 0u, ~(arg_0.a | ~u_input.a));
    var var_2 = Struct_1(782u | (_wgslsmith_mod_u32(arg_0.a, 1u) & ~u_input.a));
    global0 = vec2<f32>(-2772f, 1f);
    let var_3 = func_2(arg_0);
    return u_input.c.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(ceil(global0.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1209f, global0.x)), -1699f, false)));
    var var_0 = vec3<i32>(arg_1, arg_2, _wgslsmith_mult_i32(arg_1, u_input.b.x << (~u_input.a % 32u)));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, 1420f), _wgslsmith_f_op_f32(ceil(418f)), false))))), -632f);
    var_0 = arg_0;
    global0 = vec2<f32>(631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * -433f)))));
    return func_2(Struct_2(~u_input.a));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-global0.x)))));
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~select(select(vec3<u32>(0u, 93779u, arg_1.a), vec3<u32>(42563u, arg_2, arg_1.a), vec3<bool>(arg_3.x, false, true)), vec3<u32>(48528u, 40712u, 89297u), true), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u) | vec3<u32>(arg_1.a, 0u, 45192u), abs(vec3<u32>(57344u, 0u, 6510u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_1.a, 55856u), vec3<u32>(u_input.a, 24956u, u_input.a)))));
    let var_1 = arg_0.x;
    let var_2 = vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a, 1u), _wgslsmith_mod_u32(func_2(Struct_2(50346u)).a, _wgslsmith_mult_u32(26430u, arg_1.a))), arg_1.a, 65165u);
    let var_3 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, -2152f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 217f, -440f, -2256f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1881f, -1000f, 1381f, global0.x) - vec4<f32>(-943f, global0.x, -1538f, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1327f, global0.x, -867f, 727f) + vec4<f32>(global0.x, global0.x, -631f, global0.x)))))));
    var var_1 = Struct_2(~16298u);
    let var_2 = func_5(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), true), func_4(select(vec3<i32>(firstTrailingBit(u_input.c.x), u_input.c.x, i32(-1i) * -47560i), select(vec3<i32>(u_input.c.x, -18687i, -2147483647i), ~u_input.b.xwx, select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), true), countOneBits(func_3(func_1(82381u, vec4<u32>(42901u, var_1.a, var_1.a, var_1.a), vec3<u32>(18144u, 0u, 4294967295u), vec2<i32>(2328i, 58485i)))), ~(-5004i)), u_input.a, !vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(global0.x - 485f) > _wgslsmith_div_f32(-816f, -1128f), false, !any(vec2<bool>(true, true))));
    var var_3 = vec4<u32>(var_1.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, _wgslsmith_mod_u32(var_1.a, 1u))), 15441u), min(abs(~(var_2.a << (var_2.a % 32u))), var_2.a), var_2.a);
    let var_4 = func_1(_wgslsmith_add_u32(~func_1(u_input.a, abs(vec4<u32>(var_1.a, 56640u, 4294967295u, u_input.a)), var_3.xwz, vec2<i32>(-9672i, 1i)).a, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, u_input.a, u_input.a), ~vec3<u32>(var_1.a, var_3.x, 1440u)), _wgslsmith_sub_u32(4370u, var_3.x))), vec4<u32>(_wgslsmith_sub_u32(~13910u, abs(34821u >> (0u % 32u))), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, u_input.a, var_2.a), vec3<u32>(var_3.x, u_input.a, u_input.a))), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(var_2.a, abs(4294967295u)), ~_wgslsmith_sub_u32(var_1.a, var_1.a)), _wgslsmith_mult_u32(u_input.a, var_1.a)), var_3.xxz, ~u_input.b.wx);
    var_1 = Struct_2(var_3.x);
    let var_5 = Struct_2(~func_5(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), var_2, func_1(26646u, max(vec4<u32>(var_2.a, var_4.a, u_input.a, 4294967295u), vec4<u32>(13489u, 4294967295u, u_input.a, 1u)), abs(var_3.yzx), select(u_input.c, vec2<i32>(4659i, 1i), false)).a, vec4<bool>(true, true, true, false)).a);
    var var_6 = var_2;
    let var_7 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(4294967295u) >> (0u % 32u)), u_input.c.x);
}

