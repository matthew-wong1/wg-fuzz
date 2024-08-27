struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = countOneBits(u_input.b.xx);
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    return -2147483647i;
}

fn func_3() -> u32 {
    global0 = array<Struct_4, 18>();
    return ~(~(29750u & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19888u, 65056u, 1u, 15824u), vec4<u32>(0u, 1u, 58924u, 36546u)), ~34382u)));
}

fn func_1() -> bool {
    var var_0 = u_input.a.x;
    let var_1 = select(select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), !vec4<bool>(true, true, all(vec2<bool>(false, false)), true), true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec3<bool>(false, true, false))))));
    var_0 = max(select(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 2147483647i), u_input.b), min(-1i, firstLeadingBit(u_input.b.x))), -(~(~32538i)), false), func_2(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(1415u, 29652u, 2079u, 5607u)), vec4<u32>(34728u, 0u, max(11016u, 0u), 69759u), ~firstTrailingBit(vec4<u32>(15516u, 55128u, 61710u, 50647u)))));
    let var_2 = firstLeadingBit(vec3<i32>(min(~(-1i), 6796i), firstLeadingBit(-48667i), -30815i));
    var var_3 = ~select(_wgslsmith_div_vec3_u32(vec3<u32>(234u, 43701u, 4294967295u), ~vec3<u32>(44075u, 42200u, 50097u)), vec3<u32>(~0u, 5045u, _wgslsmith_mult_u32(37285u, 13433u)), var_1.wzw) >> (vec3<u32>(~func_3(), firstLeadingBit(max(1u, 50626u)), func_3()) % vec3<u32>(32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(63235u, 1u, 1158u, 1u)), ~4294967295u) & firstLeadingBit(50307u);
    var var_1 = func_1() & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-355f, _wgslsmith_f_op_f32(1328f + 1354f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))));
    var var_2 = Struct_4(_wgslsmith_mod_u32(var_0, func_3()), Struct_1(-36952i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1585f, -2350f, 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -1133f, -522f)))), ~(~vec3<i32>(-23224i, 2147483647i, u_input.a.x)), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 1u, var_0), vec3<u32>(var_0, 17865u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1496f + -145f), 1237f))), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)));
    var_1 = all(vec3<bool>(true, false, var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 6691u), var_2.b.d), var_0) ^ var_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.b.b * vec3<f32>(_wgslsmith_f_op_f32(var_2.b.b.x * 283f), _wgslsmith_f_op_f32(f32(-1f) * -1787f), _wgslsmith_f_op_f32(var_2.b.e * var_2.b.b.x))), vec3<f32>(698f, -121f, _wgslsmith_f_op_f32(-854f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !select(func_1(), var_2.c.x, all(vec3<bool>(false, false, true))))), ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 1u, 1u, var_0), vec4<u32>(var_0, var_2.b.d.x, var_2.a, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 0u, 0u, var_2.b.d.x), vec4<u32>(var_2.b.d.x, var_0, 31133u, 59948u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.b.d.x, 3024u, var_0), vec4<u32>(var_2.b.d.x, var_0, 39950u, var_0))), 23204u, i32(-1i) * -22602i);
}

