struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1355f, vec2<i32>(-1i, 19873i), true, vec4<bool>(true, false, false, true));

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0, min(arg_0, arg_0), 2655u), ~vec3<u32>(1u, 1u, 1u)) << (~_wgslsmith_mod_u32(1u, u_input.a >> (arg_0 % 32u)) % 32u), 0u);
    let var_1 = !global0.e.zwy;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * 183f), _wgslsmith_f_op_f32(-1029f - -832f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.c.zwy, vec3<i32>(firstLeadingBit(1i), (i32(-1i) * -24253i) << (~_wgslsmith_add_u32(22842u, u_input.d.x) % 32u), u_input.c.x));
    var var_4 = vec2<u32>(_wgslsmith_mult_u32(85640u, ~(~2698u)), var_0.x << (u_input.a % 32u));
    return 8673u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, u_input.d.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 0u, 1u), vec3<u32>(arg_0 | 57841u, func_3(0u, Struct_2(-1156f, false), Struct_2(1033f, true)), _wgslsmith_add_u32(16552u, arg_0))), _wgslsmith_sub_u32(~arg_0, ~(~u_input.a)), 0u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -1118f), false);
    global1 = array<vec4<bool>, 24>();
    let var_2 = vec4<bool>(global0.d, !(!(847f != var_1.a) || true), all(global0.e.zzz), true);
    var var_3 = _wgslsmith_mult_i32(0i, -(firstLeadingBit(firstTrailingBit(8076i)) >> (0u % 32u)));
    return Struct_1(var_2.x | false, _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.b, -1272f)))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.ywz, reverseBits(vec3<i32>(global0.c.x, u_input.b.x, u_input.c.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 4294967295u, 4568u), vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)), max(vec3<u32>(arg_0, 1u, 1u), vec3<u32>(u_input.d.x, arg_0, u_input.d.x))), ~0u ^ u_input.a) <= arg_0, select(!vec4<bool>(all(vec4<bool>(var_1.b, global0.e.x, var_2.x, true)), any(var_2.zwz), 1649f != global0.b, any(vec3<bool>(false, false, true))), select(select(global0.e, !vec4<bool>(false, global0.d, true, var_2.x), !global1[_wgslsmith_index_u32(54986u, 24u)]), select(!global0.e, global1[_wgslsmith_index_u32(firstTrailingBit(18710u), 24u)], all(vec3<bool>(false, true, false))), global0.d), true));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = -1711f;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f * 817f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(924f))))), true);
    global1 = array<vec4<bool>, 24>();
    global0 = func_2(88386u);
    var var_2 = var_1.a;
    return func_2(_wgslsmith_clamp_u32(68465u, u_input.d.x, ~(4294967295u & u_input.a) & arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.x;
    global0 = func_1(1u, ~2147483647i >> (1u % 32u), global0.d);
    global1 = array<vec4<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(-global0.b);
    var var_2 = Struct_2(func_1(_wgslsmith_add_u32(0u, u_input.d.x), ~13262i, !(!global0.a)).b, func_2((u_input.a | ~4294967295u) ^ firstTrailingBit(~u_input.d.x)).a);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(sign(-969f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)), 2972f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 432f, 462f) + vec3<f32>(global0.b, -963f, var_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-881f, var_1, global0.b) * vec3<f32>(global0.b, -895f, 1000f)))))), vec3<f32>(_wgslsmith_div_f32(844f, 213f), 816f, global0.b), global0.e.yww)));
    let var_4 = Struct_1(true, 862f, firstTrailingBit(-(~vec2<i32>(2147483647i, 71541i)) >> (u_input.d % vec2<u32>(32u))), global0.e.x, global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-1296f + _wgslsmith_f_op_f32(var_1 * 485f))), vec4<f32>(1634f, -397f, -252f, _wgslsmith_f_op_f32(func_2(u_input.d.x | 1u).b - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))))), (i32(-1i) * -global0.c.x) | (_wgslsmith_dot_vec4_i32(abs(u_input.c), countOneBits(vec4<i32>(-46001i, global0.c.x, u_input.b.x, 26307i))) | (i32(-1i) * -2147483647i)));
}

