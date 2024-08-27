struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec2<u32>(4294967295u, 17436u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(7761u, 4294967295u)), Struct_4(vec2<u32>(1u, 2409u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(1u, 4780u)), Struct_4(vec2<u32>(3605u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(0u, 59715u)), Struct_4(vec2<u32>(0u, 18206u)), Struct_4(vec2<u32>(121290u, 71818u)), Struct_4(vec2<u32>(0u, 34203u)), Struct_4(vec2<u32>(22122u, 1u)), Struct_4(vec2<u32>(4294967295u, 52342u)), Struct_4(vec2<u32>(21859u, 73828u)), Struct_4(vec2<u32>(22250u, 43583u)), Struct_4(vec2<u32>(1u, 0u)), Struct_4(vec2<u32>(1u, 2874u)), Struct_4(vec2<u32>(73399u, 22764u)), Struct_4(vec2<u32>(25245u, 28139u)), Struct_4(vec2<u32>(69932u, 111488u)), Struct_4(vec2<u32>(63870u, 82237u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(69465u, 1u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_5) -> f32 {
    let var_0 = 0i;
    let var_1 = max(~(u_input.e.x & ~u_input.e.x) ^ u_input.b.x, 0u);
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_2 = Struct_5(firstTrailingBit(firstLeadingBit(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, var_1))));
    return -403f;
}

fn func_1() -> f32 {
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(~(-u_input.d.x), u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.d, u_input.d), countOneBits(vec2<i32>(u_input.c.x, u_input.d.x))), ~(-2147483647i)), Struct_5(_wgslsmith_mod_vec4_u32(~vec4<u32>(46980u, 5914u, u_input.b.x, 6392u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 78451u), vec4<u32>(1u, 33766u, u_input.e.x, u_input.a.x)))))));
    return _wgslsmith_f_op_f32(-1718f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-507f + _wgslsmith_f_op_f32(round(1708f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = countOneBits(arg_1.a.c) & _wgslsmith_add_vec4_u32(reverseBits(reverseBits(~arg_1.a.c)), vec4<u32>(_wgslsmith_mod_u32(~arg_1.b.c.x, countOneBits(4294967295u)), _wgslsmith_mod_u32(u_input.e.x, firstLeadingBit(51537u)), abs(_wgslsmith_add_u32(arg_1.b.c.x, u_input.e.x)), 5321u >> (firstLeadingBit(arg_1.a.c.x) % 32u)));
    var var_1 = Struct_3(4294967295u);
    var_1 = Struct_3(var_1.a >> (min(1u, ~1u) % 32u));
    var_1 = Struct_3(~29471u);
    var var_2 = Struct_1(!vec3<bool>(all(vec2<bool>(true, true)), arg_1.b.a.x, false), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.a.b.x)), -103f, _wgslsmith_f_op_f32(-arg_1.a.b.x)), _wgslsmith_f_op_vec3_f32(sign(arg_1.b.b))))), vec4<u32>(_wgslsmith_sub_u32(~var_0.x, 1u), _wgslsmith_sub_u32(u_input.e.x, 1u), abs(~39190u), var_1.a) | arg_1.a.c, arg_1.a.d);
    return !select(!select(var_2.a, arg_1.b.a, var_2.d), arg_1.a.a, select(select(select(var_2.a, vec3<bool>(var_2.d, true, true), var_2.a.x), vec3<bool>(false, true, false), arg_1.b.a.x), !(!arg_1.a.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(170f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 612f), false, true), func_3(u_input.d.x, Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-875f, 294f, -134f), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 19588u), all(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(true, true, true), vec3<f32>(262f, 804f, -480f), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 67104u)), all(vec2<bool>(false, false))))), !vec3<bool>((-23982i | u_input.d.x) <= 1i, true, true));
    global0 = array<Struct_4, 25>();
    let var_1 = ~1u;
    var var_2 = u_input.c;
    var var_3 = Struct_5(~max(select(abs(vec4<u32>(6760u, u_input.e.x, 6160u, 6431u)), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, var_1), !var_0.x), vec4<u32>(var_1 & 35165u, 1u, ~21261u, 0u)));
    var var_4 = Struct_1(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1181f, 469f, 1093f) * vec3<f32>(-1528f, -2510f, 975f)))))), abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(9983u, var_3.a.x, var_1, 4294967295u), vec4<u32>(var_3.a.x, 4294967295u, 37132u, 4294967295u), true), var_3.a)) & vec4<u32>(7130u, var_1, 1u, ~1u), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(14026u, 16525u, var_3.a.x, var_1), var_3.a), min(var_3.a, vec4<u32>(u_input.b.x, var_1, u_input.a.x, var_3.a.x)) & var_3.a) <= ((~19005u & (30807u | u_input.a.x)) ^ reverseBits(_wgslsmith_mod_u32(var_1, 61580u))));
    var_4 = Struct_1(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-661f, 1964f, -455f) - _wgslsmith_f_op_vec3_f32(-var_4.b)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_4.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.x, -976f, var_4.b.x))))))), ~select(max(vec4<u32>(var_1, var_1, 4294967295u, u_input.a.x), var_4.c) & abs(vec4<u32>(4294967295u, 5146u, u_input.a.x, 24567u)), countOneBits(~var_4.c), !func_3(u_input.c.x, Struct_2(Struct_1(var_4.a, var_4.b, vec4<u32>(15301u, var_1, 1u, var_3.a.x), var_0.x), Struct_1(var_0, var_4.b, vec4<u32>(var_1, var_4.c.x, 1u, var_3.a.x), var_4.d))).x), any(!select(func_3(u_input.d.x, Struct_2(Struct_1(vec3<bool>(false, var_4.a.x, var_4.a.x), var_4.b, var_4.c, true), Struct_1(vec3<bool>(var_0.x, var_4.a.x, var_0.x), vec3<f32>(var_4.b.x, var_4.b.x, var_4.b.x), var_3.a, var_0.x))), !vec3<bool>(var_4.a.x, false, true), var_4.b.x > var_4.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(u_input.e.yz, u_input.a), select(abs(vec3<i32>(_wgslsmith_mod_i32(0i, 1i), _wgslsmith_mod_i32(-1i, -18548i), -u_input.d.x)), vec3<i32>(-1i, var_2.x, -26581i), var_0.x), abs(u_input.d), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, var_4.c.x), ~var_4.c.yw) & vec2<u32>(var_3.a.x, 30253u));
}

