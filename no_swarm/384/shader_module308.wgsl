struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, true, false, true, true, false, true, false, true, true, true, false, true, false, true, true, false, false, false);

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-137f, -1131f), vec2<f32>(-2735f, 564f), vec2<f32>(1303f, 1514f), vec2<f32>(1277f, -672f), vec2<f32>(179f, 984f), vec2<f32>(1000f, 441f), vec2<f32>(-1092f, -367f), vec2<f32>(-532f, 191f), vec2<f32>(-920f, 770f), vec2<f32>(947f, -1321f), vec2<f32>(949f, 3619f), vec2<f32>(327f, 987f));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(571f, -209f), vec4<bool>(true, false, false, false), vec4<u32>(11479u, 4294967295u, 1u, 25609u)), Struct_2(vec2<f32>(-1287f, -1000f), vec4<bool>(true, true, false, true), vec4<u32>(0u, 3198u, 0u, 51766u)), Struct_2(vec2<f32>(641f, 1128f), vec4<bool>(true, true, false, false), vec4<u32>(0u, 0u, 1u, 29260u)), Struct_2(vec2<f32>(-644f, 102f), vec4<bool>(false, false, false, false), vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), Struct_2(vec2<f32>(-1000f, 420f), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 1u, 0u, 43752u)), Struct_2(vec2<f32>(-1462f, 451f), vec4<bool>(false, true, false, true), vec4<u32>(56978u, 51018u, 0u, 64310u)), Struct_2(vec2<f32>(-1937f, -1220f), vec4<bool>(true, true, true, true), vec4<u32>(0u, 43446u, 1u, 52270u)), Struct_2(vec2<f32>(1226f, 699f), vec4<bool>(true, true, false, true), vec4<u32>(6703u, 0u, 40779u, 31525u)), Struct_2(vec2<f32>(236f, 851f), vec4<bool>(true, false, true, true), vec4<u32>(0u, 8720u, 22548u, 0u)), Struct_2(vec2<f32>(683f, 114f), vec4<bool>(false, false, false, false), vec4<u32>(76205u, 11158u, 29485u, 74067u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(1756f * _wgslsmith_f_op_f32(f32(-1f) * -1016f));
}

fn func_1() -> f32 {
    let var_0 = ~0u;
    var var_1 = u_input.b.zww;
    global1 = array<vec2<f32>, 12>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 661f))))) - _wgslsmith_f_op_f32(-639f - 1520f)), -1000f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1415f, var_1.yx)) * _wgslsmith_f_op_f32(635f - -454f))))));
    var var_3 = vec2<u32>(61651u, 45488u);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-838f * -541f))))))));
}

fn func_3() -> f32 {
    var var_0 = !(!all(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true))));
    global0 = array<bool, 20>();
    var var_1 = vec3<u32>(12333u, 0u, 0u) & _wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(u_input.a.x, 25827u, 78823u) | vec3<u32>(0u, u_input.a.x, u_input.a.x))), vec3<u32>(35359u, _wgslsmith_mod_u32(1u, 1u), u_input.a.x), vec3<u32>(22558u, ~u_input.a.x, 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(var_2 - var_2), (116f <= var_2) | (u_input.a.x == u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 590f)), _wgslsmith_div_f32(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return _wgslsmith_f_op_f32(var_2 - var_2);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = array<bool, 20>();
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(13975u, _wgslsmith_sub_u32(~abs(4953u), 32619u), select(_wgslsmith_mod_u32(56635u, 1u), u_input.a.x, !global0[_wgslsmith_index_u32(arg_2.c.x, 20u)])), arg_2.c.x | ~0u, ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 30011u), arg_2.c.x >> (1u % 32u))));
    global0 = array<bool, 20>();
    global2 = array<Struct_2, 10>();
    var var_1 = ~(~(~(~69879u))) ^ arg_2.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a.x), 61219u), 20u)];
    let var_1 = select(!any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~24805u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(13371u, u_input.a.x, 5680u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % 32u), u_input.a.x), 20u)], true);
    global0 = array<bool, 20>();
    var_0 = !any(vec2<bool>(func_4(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_3()), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), var_1));
    global0 = array<bool, 20>();
    global2 = array<Struct_2, 10>();
    global1 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-1969f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-734f, -566f, 1000f, 380f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, 1166f, 1379f, -1502f)), false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-271f, 823f, -150f, 1121f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1858f, -622f, 187f, 730f)))), any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])) && true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2295f, -1458f)) - _wgslsmith_f_op_f32(f32(-1f) * -394f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1551f, _wgslsmith_f_op_f32(func_2(220f, u_input.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1002f - -990f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, -1158f)) + -2336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2112f - -403f), _wgslsmith_f_op_f32(sign(-121f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(386f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, 1331f, 612f, -272f) * vec4<f32>(2083f, 572f, 155f, -287f))) + vec4<f32>(833f, -399f, _wgslsmith_f_op_f32(262f + 505f), -154f)))));
}

