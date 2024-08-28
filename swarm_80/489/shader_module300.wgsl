struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec4<f32>(-720f, 412f, -1922f, 235f), vec3<u32>(1u, 48220u, 5611u)), Struct_1(vec4<f32>(-258f, 1699f, -1000f, 122f), vec3<u32>(6880u, 4975u, 71541u)), Struct_1(vec4<f32>(-197f, -290f, 222f, -508f), vec3<u32>(16108u, 1u, 0u)), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(vec4<f32>(-2063f, -968f, -207f, 224f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<f32>(1710f, 927f, 1057f, 101f), vec3<u32>(0u, 0u, 1u)), Struct_1(vec4<f32>(1747f, 470f, 484f, -326f), vec3<u32>(56903u, 32084u, 13269u)), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<f32>(-1208f, 1000f, 834f, -1000f), vec3<u32>(37087u, 10578u, 1u)), Struct_1(vec4<f32>(-917f, -100f, 276f, 1811f), vec3<u32>(49424u, 42342u, 0u)), Struct_1(vec4<f32>(923f, -494f, 692f, 282f), vec3<u32>(1u, 4294967295u, 0u)), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<f32>(-831f, -1051f, 948f, 286f), vec3<u32>(2907u, 38290u, 4294967295u)), Struct_1(vec4<f32>(-991f, 110f, -910f, 743f), vec3<u32>(4294967295u, 1u, 28041u)), Struct_1(vec4<f32>(-571f, 971f, -163f, 1000f), vec3<u32>(6095u, 4294967295u, 1u)), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec4<f32>(-741f, -758f, -266f, -255f), vec3<u32>(2989u, 4294967295u, 4088u)), Struct_1(vec4<f32>(296f, 327f, -1531f, 134f), vec3<u32>(772u, 4294967295u, 32423u)), Struct_1(vec4<f32>(785f, -403f, -266f, 1000f), vec3<u32>(0u, 26873u, 1u)), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec4<f32>(-243f, 1109f, 927f, 1701f), vec3<u32>(4294967295u, 47643u, 4294967295u)), Struct_1(vec4<f32>(-2261f, 1761f, 279f, 658f), vec3<u32>(87251u, 1u, 4897u)), Struct_1(vec4<f32>(-2637f, -864f, -699f, 415f), vec3<u32>(19186u, 13877u, 41905u)), vec4<bool>(false, true, false, false)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    return _wgslsmith_mod_u32(countOneBits(~_wgslsmith_mult_u32(~75558u, abs(u_input.c))), 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_add_vec3_u32(arg_1.b, vec3<u32>(func_3(Struct_3(arg_1.b, vec2<f32>(arg_2.a.x, -263f), -605f)), _wgslsmith_dot_vec2_u32(arg_1.b.yy, arg_1.b.yx), 0u) ^ select(reverseBits(vec3<u32>(0u, arg_1.b.x, 0u)), vec3<u32>(arg_1.b.x, 0u, u_input.c), arg_3)), arg_2.a.wz, _wgslsmith_div_f32(992f, 640f));
    var var_1 = 2147483647i;
    return StorageBuffer(vec4<i32>(4387i, _wgslsmith_dot_vec2_i32(arg_0, min(vec2<i32>(u_input.a, arg_0.x) | vec2<i32>(-17056i, arg_0.x), ~vec2<i32>(arg_0.x, -15152i))), arg_0.x & 0i, _wgslsmith_div_i32(-1i, -1i)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    var var_0 = -416f;
    return func_2(~firstLeadingBit(~u_input.b) ^ vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), vec3<i32>(1i, u_input.a, u_input.b.x)), -1i, ~u_input.b.x)), Struct_1(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~1u, 32u)], global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(40858u, u_input.c, 4294967295u), 32u)]), vec3<u32>(~52851u, firstTrailingBit(~u_input.c), ~(~u_input.c))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 1000f, arg_0, -1000f))) - vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(arg_0 - 1000f), _wgslsmith_f_op_f32(sign(-613f)), -491f)), vec3<u32>(~0u, u_input.c, 34096u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(661f)), _wgslsmith_f_op_f32(arg_0 * arg_0))))) < _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -558f), 24830i > (u_input.a | 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    let var_0 = ~(~1u);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(min(-362f, _wgslsmith_f_op_f32(ceil(-214f)))));
}

