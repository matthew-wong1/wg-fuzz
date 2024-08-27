struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(~1i, u_input.a), -vec2<i32>(8709i, 81714i) << ((arg_0.d.zy >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), 2147483647i, firstTrailingBit(u_input.a), ~(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(-4753i, 0i, 26560i, u_input.a)))));
    let var_1 = Struct_1(arg_0.b.a, -876f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - -381f)));
    var_2 = 664f;
    var var_3 = vec3<i32>(-var_0.x, abs(u_input.a) << (~15512u % 32u), firstTrailingBit(~var_0.x));
    return u_input.b.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = -147f;
    var var_1 = vec2<i32>(arg_1.x, firstTrailingBit(arg_1.x));
    var_1 = vec2<i32>(-17487i, -27844i);
    var var_2 = Struct_2(var_0, Struct_1(!select(select(vec2<bool>(true, arg_0.x), arg_0, false), !arg_0, arg_0.x), _wgslsmith_f_op_f32(step(var_0, var_0))), true, u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0 - -691f), 1076f, _wgslsmith_f_op_f32(select(-542f, -769f, arg_0.x)), _wgslsmith_f_op_f32(-var_0))))));
    let var_3 = select(select(vec4<bool>(!(!var_2.c), abs(1u) != var_2.d.x, all(var_2.b.a) == !arg_0.x, arg_0.x), !vec4<bool>(true, 28408u >= u_input.c.x, true, var_2.b.a.x), false), vec4<bool>(true, all(arg_0), true, false), !(false && arg_0.x));
    return select(var_3.wy, var_3.xy, false);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(arg_1.a, arg_1.a, select(vec2<bool>(!arg_1.a.x, true), vec2<bool>(true, true), select(arg_1.a, vec2<bool>(arg_1.a.x, arg_1.a.x), any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))), arg_1.b);
    let var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-491f * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1.b, !(!var_0.a.x)))), Struct_1(select(func_3(!vec2<bool>(false, arg_1.a.x), vec2<i32>(42753i, u_input.a)), !var_1.a, !var_1.a), _wgslsmith_f_op_f32(floor(448f))), all(!vec4<bool>(any(vec2<bool>(false, var_1.a.x)), var_0.a.x, true, any(vec2<bool>(true, false)))), vec4<u32>(~8769u, 0u, firstTrailingBit(~u_input.c.x), ~arg_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1275f * -373f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(372f))), _wgslsmith_f_op_f32(floor(-1041f)))), arg_1.b, var_1.b));
    var var_3 = vec2<u32>(~((~16131u ^ ~arg_2.x) | 4294967295u), 4294967295u);
    var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.zwy, vec3<u32>(arg_0, arg_0, var_3.x) ^ vec3<u32>(abs(var_3.x), 0u, _wgslsmith_dot_vec4_u32(var_2.d, var_2.d))), 76697u);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = func_4(~(~func_2(Struct_2(131f, Struct_1(vec2<bool>(arg_1, true), 449f), arg_1, vec4<u32>(arg_0, u_input.b.x, u_input.b.x, 4294967295u), vec4<f32>(-1558f, 671f, 1000f, 2424f)))), Struct_1(func_3(vec2<bool>(any(vec4<bool>(true, arg_1, arg_1, false)), !arg_1), ~min(vec2<i32>(2147483647i, -1i), vec2<i32>(2896i, u_input.a))), -374f), ~(vec4<u32>(arg_0, u_input.b.x, 1u, 1u) << (vec4<u32>(u_input.c.x, arg_0, arg_0, u_input.c.x) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u)));
    var var_1 = select(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, 70479u, u_input.b.x), ~vec3<u32>(arg_0, 1u, 0u)) & _wgslsmith_mod_vec3_u32(u_input.b.xzz, ~vec3<u32>(0u, arg_0, 22695u)), firstLeadingBit(~vec3<u32>(4294967295u, arg_0, 20218u)), vec3<bool>(all(!vec4<bool>(true, var_0.a.x, var_0.a.x, false)), var_0.a.x, _wgslsmith_sub_i32(8844i, u_input.a) == (16594i >> (arg_0 % 32u)))) ^ abs(u_input.b.wxx);
    var var_2 = Struct_2(1100f, func_4(~(~(~3063u)), func_4(countOneBits(37552u << (arg_0 % 32u)), func_4(~arg_0, func_4(var_1.x, var_0, u_input.b), vec4<u32>(var_1.x, 4294967295u, 1u, 0u)), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(0u, u_input.c.x, u_input.c.x, arg_0))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(arg_0, 1u, 15327u, u_input.b.x), u_input.b), ~u_input.b), ~(~u_input.b))), true, reverseBits(~(~(~u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1181f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1052f))));
    var var_3 = Struct_2(-658f, func_4(~(~1u >> ((arg_0 ^ arg_0) % 32u)), func_4(~0u, func_4(17265u >> (arg_0 % 32u), func_4(var_1.x, Struct_1(var_0.a, -282f), u_input.b), var_2.d), vec4<u32>(abs(arg_0), arg_0 & arg_0, 1u, ~arg_0)), var_2.d), all(!select(vec4<bool>(false, true, arg_1, false), select(vec4<bool>(var_2.c, var_0.a.x, false, var_2.b.a.x), vec4<bool>(arg_1, false, false, true), var_2.b.a.x), true)), var_2.d, var_2.e);
    var_1 = abs(_wgslsmith_div_vec3_u32(max(~var_3.d.zwy, vec3<u32>(22110u, arg_0, ~66358u)), var_2.d.wyy << (_wgslsmith_clamp_vec3_u32(vec3<u32>(92599u, 65912u, 78707u), ~vec3<u32>(19249u, 0u, 1u), ~u_input.c) % vec3<u32>(32u))));
    return ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, var_3.d.x), u_input.b))) ^ firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-905f, Struct_1(vec2<bool>(true, select(false, true, true)), _wgslsmith_div_f32(-1243f, _wgslsmith_f_op_f32(1000f + 612f))), true, ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(93876u, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(u_input.b.x, 1u) ^ u_input.b.yx), 29847u, _wgslsmith_add_u32(u_input.b.x | 10023u, _wgslsmith_mod_u32(u_input.c.x, 1u)), _wgslsmith_add_u32(u_input.b.x, func_1(14041u, false))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1100f, 1052f) + -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-361f, 677f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2089f, -614f)) - _wgslsmith_f_op_f32(max(1373f, 642f)))))));
    let var_1 = 0u;
    let var_2 = func_4(u_input.b.x, var_0.b, ~var_0.d ^ (firstTrailingBit(vec4<u32>(4294967295u, var_1, u_input.c.x, 56825u)) ^ var_0.d));
    let var_3 = var_0.c;
    var var_4 = -(vec3<i32>(-1i) * -(vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, u_input.a)));
    let var_5 = 1215f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-127f, func_4(61478u, var_0.b, u_input.b << (u_input.b % vec4<u32>(32u))).b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1310f)))), _wgslsmith_div_f32(-547f, _wgslsmith_f_op_f32(var_5 + 1f)), var_2.b), vec4<i32>(firstLeadingBit(-u_input.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(select(18660i, 36096i, false), u_input.a | 1i), firstLeadingBit(select(var_4.x, u_input.a, var_0.b.a.x))), ~3154i, var_4.x));
}

