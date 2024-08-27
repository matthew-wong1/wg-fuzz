struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(271f, -2424f, -1000f, 1215f, -142f, 1000f, 1000f, 752f, 173f, -100f, 980f, -607f, 662f, -1096f, -596f, 324f, -308f, 1000f, -1000f, 305f, 1394f, 573f);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(-221f, -220f), 0u, vec3<bool>(true, false, true), 0u), Struct_1(vec2<f32>(-948f, -390f), 1u, vec3<bool>(true, true, false), 0u), Struct_1(vec2<f32>(-1563f, -568f), 11016u, vec3<bool>(true, true, true), 1u), Struct_1(vec2<f32>(-745f, 124f), 8325u, vec3<bool>(false, true, true), 12054u), Struct_1(vec2<f32>(209f, -1000f), 0u, vec3<bool>(true, false, false), 68642u), Struct_1(vec2<f32>(-1352f, 903f), 26504u, vec3<bool>(false, false, true), 4294967295u), Struct_1(vec2<f32>(203f, 800f), 6363u, vec3<bool>(true, true, false), 1u), Struct_1(vec2<f32>(-844f, -276f), 4294967295u, vec3<bool>(false, false, true), 75744u), Struct_1(vec2<f32>(424f, 1000f), 4294967295u, vec3<bool>(true, false, false), 4294967295u), Struct_1(vec2<f32>(-586f, 185f), 71319u, vec3<bool>(false, false, true), 0u), Struct_1(vec2<f32>(440f, 1315f), 1u, vec3<bool>(false, false, true), 42002u), Struct_1(vec2<f32>(665f, 153f), 46498u, vec3<bool>(false, false, true), 42636u), Struct_1(vec2<f32>(489f, -1020f), 59354u, vec3<bool>(false, true, true), 25990u), Struct_1(vec2<f32>(-1082f, 794f), 0u, vec3<bool>(true, false, false), 28852u), Struct_1(vec2<f32>(-2437f, -506f), 61655u, vec3<bool>(true, false, true), 57678u), Struct_1(vec2<f32>(-1384f, -301f), 25579u, vec3<bool>(false, true, true), 25683u), Struct_1(vec2<f32>(237f, -836f), 76297u, vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<f32>(361f, -1000f), 4294967295u, vec3<bool>(true, false, true), 73791u), Struct_1(vec2<f32>(-1266f, -442f), 4294967295u, vec3<bool>(true, false, false), 4294967295u), Struct_1(vec2<f32>(-1000f, -634f), 21464u, vec3<bool>(true, true, false), 0u), Struct_1(vec2<f32>(-123f, -1144f), 1u, vec3<bool>(false, false, true), 7677u), Struct_1(vec2<f32>(-1307f, 203f), 0u, vec3<bool>(false, false, true), 4294967295u), Struct_1(vec2<f32>(277f, -885f), 0u, vec3<bool>(true, false, false), 4294967295u), Struct_1(vec2<f32>(603f, 1182f), 1u, vec3<bool>(false, true, false), 27829u), Struct_1(vec2<f32>(-960f, 2782f), 4294967295u, vec3<bool>(true, true, false), 32460u), Struct_1(vec2<f32>(292f, 1799f), 13663u, vec3<bool>(false, true, true), 33539u), Struct_1(vec2<f32>(883f, -1000f), 1u, vec3<bool>(true, false, false), 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = vec3<f32>(920f, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)]);
    let var_1 = ~(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.zz)) + vec2<f32>(463f, 1004f)), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(48280u, 22u)]), _wgslsmith_f_op_f32(var_0.x - 532f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(63323u, 22u)], -579f)))) - _wgslsmith_f_op_vec2_f32(-var_0.yx))));
    global0 = array<f32, 22>();
    var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-205f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f - 496f) * _wgslsmith_f_op_f32(1337f + global0[_wgslsmith_index_u32(1u, 22u)]))), 1349f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1870f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 32567u, u_input.a.x)), 22u)]))))));
    return -45136i;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<i32>(firstTrailingBit(-423i), func_3(), u_input.b);
    let var_1 = u_input.a;
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global1 = array<Struct_1, 27>();
    return _wgslsmith_mod_vec3_u32(var_1.wzx, u_input.a.yzw);
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(18132u, 22u)]);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7601u, 22u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -1000f))))), 1u, select(vec3<bool>(true, true, true), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < global0[_wgslsmith_index_u32(u_input.a.x & 37766u, 22u)], true), !vec3<bool>(true, true, any(vec4<bool>(false, true, false, true)))), ~_wgslsmith_clamp_u32(select(u_input.a.x, u_input.a.x, false), 4294967295u, ~u_input.a.x) ^ (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1174u, 4294967295u, 1u), 61025u) & (countOneBits(u_input.a.x) & 0u)));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    return ~_wgslsmith_dot_vec3_u32(u_input.a.zyy, _wgslsmith_clamp_vec3_u32(u_input.a.yyw, u_input.a.yyz, u_input.a.zxx) | func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(986i, u_input.b, 0i, -1i);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(func_1(), u_input.a.x), u_input.a.x) > u_input.a.x;
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var_1 = false;
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) - vec3<f32>(1000f, global0[_wgslsmith_index_u32(1u, 22u)], 1143f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(73474u, 22u)], 195f))))))), ~select(func_3(), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1812i, var_0.x), vec3<i32>(var_0.x, 1i, 2147483647i))), true), countOneBits(var_0.x), vec3<u32>(u_input.a.x, ~abs(121554u), firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 1u << (u_input.a.x % 32u)))));
}

