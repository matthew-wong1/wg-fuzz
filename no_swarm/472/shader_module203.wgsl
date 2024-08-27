struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1i, vec4<bool>(false, true, true, false), 1569f, Struct_2(Struct_1(vec2<bool>(false, true), vec4<f32>(629f, -866f, 1267f, -1000f))));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<bool>(false, false), vec4<f32>(-1177f, 335f, 1237f, 892f)), Struct_1(vec2<bool>(true, true), vec4<f32>(273f, 620f, -1000f, -707f)), Struct_1(vec2<bool>(false, true), vec4<f32>(952f, -906f, -753f, -670f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1192f, -231f, 1000f, -1969f)), Struct_1(vec2<bool>(true, false), vec4<f32>(1274f, -1206f, -1537f, -572f)), Struct_1(vec2<bool>(true, false), vec4<f32>(2043f, -1482f, -217f, -670f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-606f, 542f, 884f, 1298f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-361f, -1573f, 2647f, 1000f)), Struct_1(vec2<bool>(true, true), vec4<f32>(408f, 1000f, -778f, 1853f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-729f, -1366f, -203f, -112f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1249f, 812f, -279f, -1803f)), Struct_1(vec2<bool>(false, false), vec4<f32>(908f, 395f, 942f, -658f)), Struct_1(vec2<bool>(true, true), vec4<f32>(929f, -2113f, 304f, 942f)), Struct_1(vec2<bool>(false, false), vec4<f32>(561f, -171f, 1555f, 1022f)));

var<private> global2: array<vec4<u32>, 24>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 14>();
    let var_0 = ~firstTrailingBit(vec3<i32>(global0.a ^ (u_input.a.x << (12006u % 32u)), -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.b, global0.a), ~vec4<i32>(u_input.a.x, global0.a, u_input.b, u_input.b))));
    let var_1 = Struct_3(~(~vec2<u32>(4331u, 4294967295u)) | (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(36572u, 1u), vec2<u32>(34826u, 1u), vec2<u32>(0u, 0u)), ~vec2<u32>(0u, 17473u)) & vec2<u32>(_wgslsmith_add_u32(978u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30466u, 0u, 1u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)))));
    global2 = array<vec4<u32>, 24>();
    var var_2 = global0.d;
    return _wgslsmith_add_u32(~_wgslsmith_sub_u32(2882u, var_1.a.x & 3103u), reverseBits(12982u));
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_sub_i32(1i, 0i), !vec4<bool>(true || select(global0.b.x, global0.b.x, true), all(select(vec3<bool>(true, global0.d.a.a.x, global0.b.x), global0.b.wzy, global0.b.x)), true && !arg_0, arg_0), global0.d.a.b.x, global0.d);
    var_0 = Struct_4(var_0.a, vec4<bool>(var_0.d.a.a.x, true, global0.b.x, var_0.c < _wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(f32(-1f) * -890f))), _wgslsmith_f_op_f32(floor(443f)), var_0.d);
    var var_1 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(min(0u, 1u), 98704u, func_3()), min(~vec3<u32>(0u, 16247u, 1u), vec3<u32>(1u, 1u, 1u)));
    let var_2 = -abs(abs(~(22217i | global0.a)));
    var_0 = Struct_4(_wgslsmith_sub_i32(var_0.a, -2503i), !select(global0.b, vec4<bool>(!arg_0, all(var_0.d.a.a), true, true), select(vec4<bool>(var_0.b.x, true, true, true), vec4<bool>(false, var_0.d.a.a.x, true, false), true)), 1855f, Struct_2(Struct_1(select(vec2<bool>(global0.d.a.a.x, false), vec2<bool>(global0.d.a.a.x, false), vec2<bool>(false, arg_0)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global0.d.a.b, vec4<f32>(-1506f, arg_1, -1000f, global0.c), vec4<bool>(true, true, var_0.d.a.a.x, true))), _wgslsmith_f_op_vec4_f32(trunc(global0.d.a.b)))))));
    return ~(~var_1.x);
}

fn func_1() -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1340u, 40915u)), ~vec2<u32>(11721u, 81438u))), select(4294967295u, _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(24698u, 24u)])), global0.d.a.a.x) & (1u >> (func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) % 32u)));
    return 10063u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(func_1(), 0u)), vec2<u32>(countOneBits(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9587u, 29774u), vec2<u32>(0u, 1u)), 1u) & ~19287u), ~firstTrailingBit(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 8640u), vec2<u32>(62556u, 113888u)))));
    let var_1 = !global0.d.a.a.x;
    let var_2 = Struct_3(vec2<u32>(6928u, select(17475u, 17202u, ~var_0.x != var_0.x)));
    var var_3 = !select(vec3<bool>(any(global0.b.wx), var_1, all(global0.b.ywy)), vec3<bool>(false, (-2147483647i == global0.a) | var_1, _wgslsmith_f_op_f32(-global0.c) < 699f), true);
    global0 = Struct_4(-37696i, select(global0.b, vec4<bool>(any(!vec2<bool>(var_3.x, true)), false || global0.b.x, false, (-38007i >= u_input.a.x) || true), select(!(!vec4<bool>(var_3.x, true, false, var_3.x)), select(global0.b, select(global0.b, vec4<bool>(var_3.x, true, false, true), global0.b), !global0.b), any(vec3<bool>(var_1, var_3.x, false)) & false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(206f)))), global0.c)), global0.d);
    let var_4 = -firstLeadingBit(u_input.a.x);
    var var_5 = select(select(vec2<bool>(true, !all(global0.d.a.a)), select(global0.d.a.a, vec2<bool>(var_3.x, select(false, true, false)), var_1), true || !var_3.x), global0.b.zw, var_3.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(firstTrailingBit(1i)), global0.a, global0.a, global0.a), ~2147483647i, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(12270u, min(26772u, 58282u)), 24u)], _wgslsmith_clamp_vec4_u32(~global2[_wgslsmith_index_u32(var_2.a.x, 24u)], vec4<u32>(var_0.x, 0u, 307u, 26598u) | vec4<u32>(4294967295u, var_2.a.x, var_0.x, 4294967295u), global2[_wgslsmith_index_u32(~1464u, 24u)])), ~(global2[_wgslsmith_index_u32(18747u, 24u)] & ~global2[_wgslsmith_index_u32(35653u, 24u)])), _wgslsmith_sub_vec2_i32(u_input.a, ~u_input.a));
}

