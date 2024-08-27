struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-2261f, -1000f, 453f, 1560f), vec4<f32>(370f, -1390f, 475f, -1620f), vec4<f32>(248f, 1924f, 330f, 1104f), vec4<f32>(500f, -787f, -1000f, 409f), vec4<f32>(139f, 1477f, 517f, 1193f), vec4<f32>(-937f, 732f, -1556f, 458f), vec4<f32>(1012f, -985f, -955f, 237f), vec4<f32>(-531f, 587f, -488f, -1823f), vec4<f32>(-1631f, 1355f, -2483f, -180f), vec4<f32>(315f, 1778f, -345f, 954f), vec4<f32>(1164f, -113f, 744f, -2401f), vec4<f32>(-634f, 307f, 1304f, -1073f), vec4<f32>(1000f, -478f, 477f, -610f), vec4<f32>(-1727f, -105f, 418f, -893f), vec4<f32>(-767f, 1280f, -293f, 1464f), vec4<f32>(-1913f, -897f, 1047f, -1195f), vec4<f32>(-133f, 2593f, -108f, 1067f));

var<private> global1: array<f32, 29>;

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-693f, 459f, 1208f, -975f), vec4<f32>(431f, 392f, 441f, 190f), vec4<f32>(-114f, 1502f, -792f, 260f), vec4<f32>(-1224f, 1200f, 873f, 222f), vec4<f32>(476f, -799f, 731f, -2033f), vec4<f32>(-900f, -1089f, -1058f, 1862f), vec4<f32>(-139f, 1098f, 175f, -117f), vec4<f32>(2851f, -210f, -651f, -890f), vec4<f32>(-173f, 869f, -1548f, -1101f), vec4<f32>(127f, 1000f, 630f, 569f), vec4<f32>(-1385f, -849f, 1010f, -683f), vec4<f32>(291f, -668f, -1111f, -830f), vec4<f32>(2102f, -580f, 257f, -303f), vec4<f32>(1724f, 239f, 751f, 828f), vec4<f32>(1507f, -397f, -174f, 741f), vec4<f32>(854f, 519f, -1123f, 455f), vec4<f32>(825f, -523f, -241f, 1587f), vec4<f32>(825f, -1000f, -1361f, 1542f), vec4<f32>(-195f, -272f, 1463f, 130f), vec4<f32>(-1036f, 156f, -1843f, 245f), vec4<f32>(1574f, 108f, 518f, 605f), vec4<f32>(250f, -102f, -1842f, -1851f), vec4<f32>(-113f, 704f, 246f, 1148f), vec4<f32>(-780f, -1640f, -1000f, -260f), vec4<f32>(104f, -475f, -979f, -968f), vec4<f32>(-150f, 2659f, -363f, -804f), vec4<f32>(-1010f, -936f, -369f, 451f));

var<private> global3: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = true & any(vec4<bool>(true, !(arg_0 != arg_0), false, true));
    var var_1 = u_input.b.x ^ u_input.b.x;
    global0 = array<vec4<f32>, 17>();
    var_1 = _wgslsmith_mult_u32(arg_0, firstLeadingBit(~abs(0u)));
    let var_2 = 1u;
    return !select(!vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), u_input.c.x <= u_input.a.x)), false);
}

fn func_3() -> i32 {
    var var_0 = select(!vec4<bool>(!(1215f < global1[_wgslsmith_index_u32(u_input.b.x, 29u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 29u)] > global1[_wgslsmith_index_u32(u_input.b.x, 29u)], all(vec3<bool>(true, true, false)), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, true))), vec4<bool>(true, any(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, false)), 80361u < u_input.b.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(false, u_input.c.x != 1i, true))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_2 = u_input.b.xx;
    return select(min(max(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-30263i, 1i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c.x))), u_input.a.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 46247u), vec4<u32>(46333u, 714u, 0u, 8003u)), vec4<u32>(28610u, 4294967295u, 36352u, u_input.b.x)) % 32u)), -1i, true);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> f32 {
    global2 = array<vec4<f32>, 27>();
    let var_0 = select(!(!select(select(vec2<bool>(false, true), arg_2, arg_2), arg_2, !arg_2)), vec2<bool>(!arg_2.x, arg_2.x), select(select(arg_2, arg_2, func_2(~arg_0)), arg_2, select(arg_2, vec2<bool>(all(vec4<bool>(true, false, arg_2.x, true)), true), arg_2.x)));
    let var_1 = arg_1;
    var var_2 = false;
    let var_3 = -vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 18785i, 1i, u_input.c.x) << (vec4<u32>(0u, 4294967295u, u_input.b.x, 1u) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x)), -2147483647i, ~func_3(), select(u_input.a.x, ~0i, arg_2.x));
    return 954f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_4(vec3<f32>(-1285f, _wgslsmith_f_op_f32(637f + global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x, 1u, 0u), 29u)]), arg_0), global1[_wgslsmith_index_u32(~0u, 29u)]);
    var var_1 = ~(-u_input.a.x);
    var_1 = u_input.a.x;
    global3 = 0u;
    global2 = array<vec4<f32>, 27>();
    return Struct_1(~max(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), min(_wgslsmith_mult_vec4_u32(vec4<u32>(21310u, u_input.b.x, u_input.b.x, 46625u), vec4<u32>(63335u, u_input.b.x, 4294967295u, u_input.b.x)), vec4<u32>(u_input.b.x, 1u, 4294967295u, 1u))), firstLeadingBit(u_input.b.x) >= (u_input.b.x << (19314u % 32u)), any(!vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, true, true)))), !any(vec4<bool>(func_2(u_input.b.x).x, true, true, select(true, false, true))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 77473u), 29u)], -1022f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(~u_input.b.x, vec3<u32>(u_input.b.x, 0u, 0u), vec2<bool>(true, true))), -883f, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f))))) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(1u, firstTrailingBit(138973u ^ var_0.a.x)), 29u)]);
    var var_2 = false;
    var var_3 = Struct_3(max(~max(select(u_input.a, u_input.c, vec2<bool>(var_0.c, var_0.d)), select(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(u_input.c.x, -4705i), vec2<bool>(var_0.d, true))), ~reverseBits(vec2<i32>(-2147483647i, -1i))));
    let var_4 = 1408f;
    var_2 = true;
    var var_5 = _wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(70123u, var_0.a.x, var_0.a.x, 0u))) << (_wgslsmith_sub_u32(var_0.a.x | u_input.b.x, reverseBits(u_input.b.x)) % 32u), _wgslsmith_dot_vec2_u32(var_0.a.wz, vec2<u32>(_wgslsmith_mult_u32(8266u, var_0.a.x), 4294967295u))), vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~(~var_0.a.x)), abs(var_0.a.x), 45401u), !vec2<bool>(!(var_0.d | false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec4<u32>(0u, 12769u, 0u, 4294967295u)) | func_4(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(50239u, 29u)], 800f)).a), u_input.b.x);
}

