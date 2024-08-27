struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    global0 = vec3<bool>(true, false, false);
    return _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(3906u, 1u, 39663u), ~vec3<u32>(1u, 10957u, 19749u)), vec3<u32>(countOneBits(36546u), ~4294967295u, ~131098u))) >= abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) << (0u % 32u));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3.b;
    global0 = vec3<bool>(func_3(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(32410i, -1i, arg_3.c.x, -1i)), -vec4<i32>(-8635i, arg_2.d.a.x, 62369i, arg_3.b.a.x))), arg_3.d.x, false);
    global1 = array<Struct_2, 4>();
    let var_1 = 3724i;
    global1 = array<Struct_2, 4>();
    return var_0;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f + 698f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)))), -1000f));
    var var_1 = max(~275u, 64479u);
    let var_2 = !(!(!select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, true, arg_1, false), !global0.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -948f, 142f, 864f) - vec4<f32>(-182f, 997f, 600f, 1000f)))) * vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-126f, 623f, 359f, 881f)))))));
    let var_4 = Struct_2(arg_3.a);
    return ~vec3<u32>(min(~_wgslsmith_mult_u32(5505u, 95229u), 55367u), select(4294967295u, min(1u, countOneBits(10166u)), true), 1u);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(countOneBits(~vec3<u32>(16466u, 0u, 19980u))), func_4(!(global0.x & false), all(!vec3<bool>(global0.x, global0.x, global0.x)), func_2(-u_input.a, _wgslsmith_f_op_f32(step(458f, -790f)), Struct_4(vec4<u32>(9618u, 4294967295u, 7797u, 22503u), global0.x, u_input.a, global1[_wgslsmith_index_u32(49991u, 4u)], vec2<u32>(75454u, 19182u)), Struct_3(3581i, Struct_2(vec3<i32>(arg_0.a.x, u_input.a, 24245i)), arg_0.a.xy, vec2<bool>(global0.x, global0.x), global0.x)), arg_0));
    var var_1 = var_0.x;
    let var_2 = 1f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 520f, var_2) * vec4<f32>(var_2, -1000f, var_2, 446f)))))), 28292u, ~vec4<u32>(var_0.x, 1u, _wgslsmith_mod_u32(4294967295u, 4294967295u), ~4294967295u) << (~_wgslsmith_add_vec4_u32(~vec4<u32>(29258u, 5373u, 1u, var_0.x), vec4<u32>(0u, 1u, 7327u, var_0.x) ^ vec4<u32>(var_0.x, 1u, 10525u, var_0.x)) % vec4<u32>(32u)));
    let var_4 = ~max(vec4<u32>(105277u, _wgslsmith_sub_u32(_wgslsmith_add_u32(133063u, 55522u), _wgslsmith_mod_u32(4294967295u, var_3.c.x)), var_3.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, var_0.x), var_0.x)), _wgslsmith_add_vec4_u32(~min(vec4<u32>(var_3.b, var_3.c.x, var_0.x, 1u), vec4<u32>(var_3.c.x, var_3.b, 8036u, var_0.x)), ~var_3.c));
    return Struct_2(firstTrailingBit(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -27857i, arg_0.a.x, -2147483647i) ^ vec4<i32>(arg_0.a.x, 0i, -56141i, u_input.a), vec4<i32>(0i, u_input.a, -1i, 9885i) & vec4<i32>(1i, arg_0.a.x, u_input.a, u_input.a)), _wgslsmith_div_i32(u_input.a, ~(-34721i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.x;
    var var_1 = reverseBits(max(i32(-1i) * -1i, u_input.a));
    var var_2 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(24273u, 4294967295u), 1u, 99941u))), 4u)]);
    var_0 = select(-u_input.a >= (2147483647i >> (1u % 32u)), all(select(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(false, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, true)), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, false), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, true, true, global0.x), false)), all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), false)))), any(global0.yx));
    var var_3 = Struct_5(vec4<bool>(false, all(select(vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(false, global0.x, global0.x, global0.x))), global0.x, global0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f + -463f))), -745f, _wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - -1014f)))), ~firstTrailingBit(~vec2<u32>(1u, 13470u)), 1i, global0.x);
    let var_4 = global0.x;
    let var_5 = ~(var_3.c.x | _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, var_3.c.x) & firstTrailingBit(var_3.c.x), _wgslsmith_dot_vec2_u32(select(var_3.c, var_3.c, var_3.a.xx), var_3.c)));
    var_3 = Struct_5(select(vec4<bool>(true, true, !any(vec3<bool>(var_3.e, false, false)), true), vec4<bool>(~17482u < ~var_3.c.x, global0.x, global0.x, false), var_3.a.x), vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(-1225f * var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3.b.x)))) * _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(var_3.b.x * 1482f)))), vec2<u32>(4294967295u, 1u), _wgslsmith_div_i32(1i, var_2.a.x ^ -u_input.a), true);
    let var_6 = func_2(~abs(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), Struct_4(vec4<u32>(0u, var_5, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_5, 4294967295u, 18314u, var_3.c.x), vec4<u32>(var_5, var_5, var_3.c.x, 1392u), vec4<u32>(var_3.c.x, 5138u, var_3.c.x, 38553u)), vec4<u32>(0u, var_5, 65218u, 4294967295u) >> (vec4<u32>(var_5, var_3.c.x, var_5, 0u) % vec4<u32>(32u))), ~var_3.c.x), (true != !global0.x) | true, -(~var_3.d), Struct_2(vec3<i32>(~var_2.a.x, -u_input.a, ~var_2.a.x)), ~var_3.c), Struct_3(u_input.a, global1[_wgslsmith_index_u32(var_3.c.x, 4u)], vec2<i32>(-u_input.a, 1i), select(vec2<bool>(true, any(global0.zx)), var_3.a.wx, (-13730i > var_3.d) | true), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.c.x | min(abs(4294967295u), firstTrailingBit(24984u))), vec4<f32>(var_3.b.x, -1822f, _wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(f32(-1f) * -437f)));
}

