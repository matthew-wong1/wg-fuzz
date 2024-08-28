struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec2<f32>(-242f, 313f)), Struct_3(vec2<f32>(446f, -1218f)), Struct_3(vec2<f32>(-927f, 233f)), Struct_3(vec2<f32>(-353f, 1000f)), Struct_3(vec2<f32>(-804f, 558f)));

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<f32>(1803f, -896f)), Struct_3(vec2<f32>(-792f, 740f)), Struct_3(vec2<f32>(709f, 222f)), Struct_3(vec2<f32>(-724f, 1000f)), Struct_3(vec2<f32>(982f, -705f)), Struct_3(vec2<f32>(105f, 1725f)), Struct_3(vec2<f32>(873f, 1482f)));

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    return abs(4870u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_3, 5>();
    var var_0 = firstTrailingBit(firstLeadingBit(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, u_input.b, arg_2), ~vec4<u32>(4294967295u, arg_2, 1u, 20014u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(24596u, u_input.a, 4294967295u)), ~vec3<u32>(arg_2, u_input.b, 74005u)))));
    let var_1 = func_3(18994u, vec4<u32>(~func_2(vec2<u32>(4294967295u, var_0.x), true), 46682u, arg_2, 22629u));
    let var_2 = Struct_4(u_input.b, vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.c.x), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 61335i), firstLeadingBit(var_1), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(597i, -16901i))), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_1), vec3<i32>(var_1, u_input.c.x, -89695i)), u_input.c.x, var_1)), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1036f)))), _wgslsmith_f_op_f32(f32(-1f) * -788f)), ~(vec4<u32>(abs(arg_2), arg_2, var_0.x, abs(4294967295u)) & min(max(vec4<u32>(var_0.x, 4294967295u, u_input.b, u_input.d), vec4<u32>(37122u, 36500u, u_input.a, arg_2)), ~vec4<u32>(var_0.x, u_input.b, 4294967295u, 1u))), _wgslsmith_div_f32(arg_0, -918f));
    global0 = array<Struct_3, 5>();
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1066f - -719f) - -811f), _wgslsmith_f_op_f32(ceil(var_2.e)), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.e)), -369f)))), var_2.c);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> bool {
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_4(u_input.c.x, ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(42727u, 36149u)), Struct_2(func_1(_wgslsmith_f_op_f32(min(-1039f, -665f)), false, 1u), func_1(-985f, select(global2.x, global2.x, true), _wgslsmith_add_u32(0u, 1u)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-417f, 606f, 906f, -703f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2427f, -1000f) + vec2<f32>(-728f, 1484f))))), _wgslsmith_f_op_f32(181f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-454f, 632f, global2.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) * _wgslsmith_f_op_f32(1357f - -791f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(439f)))), true, all(!(!(!vec4<bool>(true, false, global2.x, global2.x)))));
    var var_1 = Struct_4(~57202u, vec4<i32>(-(i32(-1i) * -25649i), _wgslsmith_div_i32(~31933i, -u_input.c.x), u_input.c.x, -45544i) << (max(~vec4<u32>(72351u, 81504u, u_input.b, 1u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 17357u, 25270u, u_input.b), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b)) % vec4<u32>(32u)), ~vec4<u32>(1u, 1u, 64692u, 12787u) & vec4<u32>(1u, 14379u, u_input.d, u_input.a)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(sign(1054f))) * func_1(_wgslsmith_f_op_f32(ceil(2240f)), !var_0.x, u_input.d).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1965f - -517f)))), reverseBits(vec4<u32>(~0u, firstLeadingBit(~0u), u_input.a | ~u_input.a, ~u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1357f)), _wgslsmith_f_op_f32(-223f - 1000f), var_0.x)))))));
    var_0 = !(!vec4<bool>(!global2.x, true == all(vec3<bool>(true, true, global2.x)), true, any(var_0.yy)));
    var var_2 = reverseBits(var_1.b.zy);
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_sub_u32(~u_input.a, ~var_1.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(~39377u, var_1.a), ~_wgslsmith_mult_vec2_u32(~var_1.d.ww, vec2<u32>(var_1.d.x, 0u))), var_1.b.yzy, vec3<f32>(-569f, _wgslsmith_f_op_f32(trunc(-1508f)), _wgslsmith_f_op_f32(-func_1(1057f, true, reverseBits(var_1.d.x)).b.x)));
}

