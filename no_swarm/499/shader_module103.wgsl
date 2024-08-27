struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1i, vec4<bool>(true, false, false, true), 0u, vec3<f32>(1353f, 583f, -1671f)), Struct_1(2147483647i, vec4<bool>(true, false, false, true), 16410u, vec3<f32>(-375f, 182f, -1566f)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false), 29499u, vec3<f32>(-593f, 299f, 377f)), Struct_1(2147483647i, vec4<bool>(false, false, true, false), 0u, vec3<f32>(-489f, -949f, -1261f)), Struct_1(-4949i, vec4<bool>(true, true, true, false), 4294967295u, vec3<f32>(-323f, 144f, -393f)), Struct_1(34806i, vec4<bool>(false, true, false, false), 4294967295u, vec3<f32>(-1593f, -263f, 118f)), Struct_1(0i, vec4<bool>(true, false, true, true), 4294967295u, vec3<f32>(-1512f, 1116f, 1438f)), Struct_1(22501i, vec4<bool>(false, true, true, false), 1u, vec3<f32>(-822f, -828f, 1260f)), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, true), 0u, vec3<f32>(-445f, -842f, 184f)), Struct_1(19608i, vec4<bool>(false, true, false, false), 27316u, vec3<f32>(-780f, 672f, 1000f)), Struct_1(0i, vec4<bool>(false, false, false, false), 0u, vec3<f32>(-624f, 758f, 531f)), Struct_1(35161i, vec4<bool>(false, true, false, false), 1u, vec3<f32>(-376f, -723f, -1242f)), Struct_1(i32(-2147483648), vec4<bool>(false, false, true, true), 1u, vec3<f32>(-1165f, -1000f, 717f)), Struct_1(-1i, vec4<bool>(true, false, true, false), 35984u, vec3<f32>(-2282f, 495f, 800f)), Struct_1(-18848i, vec4<bool>(true, false, true, false), 70549u, vec3<f32>(-2145f, 1000f, 1007f)), Struct_1(0i, vec4<bool>(true, true, false, true), 4294967295u, vec3<f32>(-1000f, -925f, -1498f)));

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<bool, 12> = array<bool, 12>(false, true, false, true, true, true, false, true, false, false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<u32>(u_input.b | u_input.b, 0u, ~global0.c, 51018u);
    global0 = global1[_wgslsmith_index_u32(~4294967295u, 16u)];
    global2 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1059f, 579f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.d);
    global0 = global2[_wgslsmith_index_u32(35491u, 10u)];
    return select(global0.a, arg_1.a.x & arg_0.a, all(global0.b.yyy));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global2 = array<Struct_1, 10>();
    global3 = array<bool, 12>();
    global3 = array<bool, 12>();
    var var_0 = !(!select(select(global0.b.zx, vec2<bool>(false, false), select(arg_1.b.zz, vec2<bool>(false, true), arg_1.b.x)), !vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b.xz));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-478f, arg_1.d.x), _wgslsmith_f_op_f32(arg_0.x * -109f), true)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, global0.d.x)))), _wgslsmith_f_op_f32(max(arg_1.d.x, _wgslsmith_f_op_f32(arg_0.x * 1565f)))));
    return _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f - arg_1.d.x)) - arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -2272f)));
}

fn func_2() -> f32 {
    global0 = global1[_wgslsmith_index_u32(~52919u, 16u)];
    let var_0 = 54933u;
    var var_1 = true;
    global3 = array<bool, 12>();
    var var_2 = ~vec4<u32>(~(~global0.c) | u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 1u, var_0, 46371u), ~reverseBits(vec4<u32>(0u, 54343u, 0u, global0.c))), 0u, ~_wgslsmith_div_u32(u_input.b, global0.c & 16128u));
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, 108f)) - vec2<f32>(global0.d.x, _wgslsmith_div_f32(-1285f, 999f)))), Struct_1(~func_3(global1[_wgslsmith_index_u32(var_0, 16u)], Struct_2(vec2<i32>(u_input.a, global0.a), u_input.a), vec4<u32>(u_input.b, var_0, u_input.b, u_input.b) | vec4<u32>(11022u, var_2.x, u_input.b, var_2.x)), vec4<bool>(true, all(select(global0.b.zzz, vec3<bool>(true, global0.b.x, global3[_wgslsmith_index_u32(var_0, 12u)]), global0.b.zxx)), _wgslsmith_f_op_f32(-global0.d.x) < _wgslsmith_f_op_f32(885f - global0.d.x), false | all(global0.b)), 1u, global0.d)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    global2 = array<Struct_1, 10>();
    global1 = array<Struct_1, 16>();
    let var_0 = select(global0.b.wy, !vec2<bool>(global0.b.x, false), !(!vec2<bool>(select(global3[_wgslsmith_index_u32(arg_2.x, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global0.b.x), true)));
    var var_1 = all(global0.b) & any(!vec2<bool>(all(global0.b.wx), true));
    let var_2 = global0.b.yx;
    return Struct_2(-countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -26927i) | vec2<i32>(u_input.a, 2147483647i), abs(vec2<i32>(u_input.a, u_input.a)), reverseBits(vec2<i32>(-21822i, 1i)))), -global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5((_wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(-1i, -14333i), -11592i), true, Struct_2(vec2<i32>(u_input.a, u_input.a), 0i))) >= _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_div_f32(global0.d.x, global0.d.x))) | (_wgslsmith_f_op_f32(func_2()) > global0.d.x), 15092u, vec4<u32>(15125u, _wgslsmith_div_u32(~4294967295u, ~u_input.b) >> (min(4294967295u, 1u << (u_input.b % 32u)) % 32u), 111860u, 7086u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.d.x, -907f), global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_f_op_f32(f32(-1f) * -943f)) * vec4<f32>(124f, global0.d.x, -113f, _wgslsmith_f_op_f32(-global0.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1469f), -436f, _wgslsmith_f_op_f32(global0.d.x - global0.d.x), 369f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.x, -267f, 1373f, global0.d.x))), vec4<f32>(global0.d.x, -1159f, global0.d.x, global0.d.x)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(2123f, global0.d.x, -528f, 119f), vec4<f32>(1257f, 1410f, -1000f, -377f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 797f, global0.d.x, 478f) * vec4<f32>(948f, -962f, global0.d.x, 771f)), vec4<f32>(310f, 962f, global0.d.x, 231f))))));
    var var_2 = ~(~(~vec2<u32>(1u, 1u))) ^ ~(~(~(~vec2<u32>(22824u, global0.c))));
    var var_3 = _wgslsmith_f_op_f32(-global0.d.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0, true, Struct_2(vec2<i32>(9241i, 1i), global0.a))) * _wgslsmith_f_op_f32(-global0.d.x))));
    let var_4 = var_0;
    let var_5 = global1[_wgslsmith_index_u32(firstTrailingBit(~var_2.x), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(28210u, global0.c), global0.c, 1u, 0u));
}

