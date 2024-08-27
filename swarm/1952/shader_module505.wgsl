struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(-507f, vec3<bool>(true, false, true), vec2<f32>(-1256f, 848f), 0u), Struct_2(-221f, vec3<bool>(true, true, false), vec2<f32>(-1748f, 1000f), 1u), Struct_2(-334f, vec3<bool>(true, true, false), vec2<f32>(-951f, 1140f), 4294967295u), Struct_2(1103f, vec3<bool>(true, true, true), vec2<f32>(-264f, 411f), 1u), Struct_2(-369f, vec3<bool>(false, true, true), vec2<f32>(-1327f, -757f), 0u), Struct_2(-1759f, vec3<bool>(true, false, false), vec2<f32>(-1182f, 1000f), 4294967295u), Struct_2(491f, vec3<bool>(false, true, false), vec2<f32>(760f, 838f), 54870u), Struct_2(2167f, vec3<bool>(false, false, false), vec2<f32>(1812f, 2126f), 19919u), Struct_2(-1106f, vec3<bool>(true, false, false), vec2<f32>(476f, -352f), 1503u), Struct_2(-1066f, vec3<bool>(true, true, false), vec2<f32>(-1287f, -212f), 118885u), Struct_2(588f, vec3<bool>(true, true, true), vec2<f32>(-1744f, 573f), 108573u), Struct_2(-1000f, vec3<bool>(true, false, false), vec2<f32>(-224f, -1531f), 83841u), Struct_2(127f, vec3<bool>(true, true, true), vec2<f32>(-311f, 1000f), 78811u), Struct_2(465f, vec3<bool>(false, false, true), vec2<f32>(-1145f, 910f), 12993u), Struct_2(-375f, vec3<bool>(true, false, true), vec2<f32>(758f, 276f), 19239u), Struct_2(213f, vec3<bool>(false, true, true), vec2<f32>(-225f, 1381f), 0u), Struct_2(-1210f, vec3<bool>(true, true, true), vec2<f32>(1110f, -522f), 4294967295u), Struct_2(544f, vec3<bool>(false, false, true), vec2<f32>(-442f, -2197f), 0u), Struct_2(-522f, vec3<bool>(false, true, true), vec2<f32>(1008f, 1442f), 86911u), Struct_2(804f, vec3<bool>(false, true, true), vec2<f32>(284f, -1000f), 46114u), Struct_2(876f, vec3<bool>(false, false, true), vec2<f32>(-991f, -1075f), 8796u), Struct_2(-103f, vec3<bool>(false, true, true), vec2<f32>(-1000f, -990f), 64051u), Struct_2(-626f, vec3<bool>(true, true, false), vec2<f32>(-774f, -210f), 0u), Struct_2(269f, vec3<bool>(true, false, false), vec2<f32>(1552f, 860f), 0u), Struct_2(-1000f, vec3<bool>(true, true, true), vec2<f32>(-1589f, -243f), 4294967295u), Struct_2(280f, vec3<bool>(false, false, true), vec2<f32>(1961f, -1065f), 32432u), Struct_2(-1000f, vec3<bool>(false, true, true), vec2<f32>(390f, 193f), 11901u), Struct_2(-1297f, vec3<bool>(true, false, true), vec2<f32>(-1996f, -439f), 801u), Struct_2(-296f, vec3<bool>(true, true, false), vec2<f32>(410f, 520f), 85342u), Struct_2(-496f, vec3<bool>(true, true, true), vec2<f32>(-785f, -333f), 66218u), Struct_2(-902f, vec3<bool>(false, true, true), vec2<f32>(-192f, 1582f), 31970u), Struct_2(371f, vec3<bool>(true, true, false), vec2<f32>(1000f, 143f), 20433u));

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    global1 = all(select(!vec2<bool>(true, global3.x), global0.b.xz, !vec2<bool>(arg_0 < -1i, false)));
    global2 = array<Struct_2, 32>();
    global1 = !(!any(select(vec4<bool>(global0.b.x, false, true, true), vec4<bool>(global3.x, true, true, false), vec4<bool>(true, true, true, false))) && all(!vec4<bool>(global0.b.x, global0.b.x, false, false)));
    global1 = !(806f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.c.x, global0.a))))) || !global3.x;
    global2 = array<Struct_2, 32>();
    return 538f;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_3(1i));
    global1 = global3.x;
    let var_1 = max(~abs(u_input.c), ~u_input.c);
    let var_2 = min(select(_wgslsmith_div_i32(firstLeadingBit(-8445i), ~var_1.x), -_wgslsmith_div_i32(var_1.x, -72823i), !global3.x) >> (_wgslsmith_div_u32(~1u, ~u_input.e.x & ~global0.d) % 32u), -firstTrailingBit(var_1.x));
    var var_3 = 655f;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(285f, arg_0.b, var_0.a, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, global0.a))) - _wgslsmith_f_op_vec2_f32(-arg_0.e))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, -184f)) + _wgslsmith_f_op_f32(global0.c.x * arg_0.e.x)), global0.c.x, arg_1.c.x, -909f));
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e.x)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wwx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yww))) - vec3<f32>(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-682f)))), 634f)));
    global0 = global2[_wgslsmith_index_u32(1u, 32u)];
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-353f * global0.c.x), _wgslsmith_div_f32(-138f, arg_1.x)))) + _wgslsmith_f_op_f32(trunc(1501f))), select(global0.b, vec3<bool>(global0.b.x, !all(vec3<bool>(arg_0.x, false, true)), true), arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-279f, arg_1.x), var_0.yy), vec2<f32>(var_0.x, -1000f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.zx, vec2<f32>(arg_1.x, var_0.x), vec2<bool>(false, global3.x))))))), ~0u);
    let var_1 = global3.x;
    var var_2 = Struct_2(var_0.x, !(!vec3<bool>(true, select(arg_0.x, global3.x, arg_0.x), all(arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.c.x), global0.c) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(-1000f, global3.x && global0.b.x, _wgslsmith_f_op_f32(arg_1.x + -442f), global3.x, _wgslsmith_f_op_vec2_f32(func_2(var_0.zx, -126f))), Struct_2(_wgslsmith_f_op_f32(730f + arg_1.x), global0.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-926f, var_0.x), vec2<f32>(var_0.x, -305f))), u_input.e.x)))), countOneBits(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, u_input.e), vec2<u32>(1u, global0.d) << (vec2<u32>(0u, global0.d) % vec2<u32>(32u))))));
    return ~(~firstTrailingBit(-4130i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(u_input.c.x, func_1(vec2<bool>(global0.a >= _wgslsmith_f_op_f32(floor(1910f)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * -1232f), 1f, 1171f, _wgslsmith_f_op_f32(-global0.a))), vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 1i), u_input.c.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(global0.c.x)), any(!select(!global3.zx, vec2<bool>(global0.b.x, global0.b.x), global0.b.x)), 486f, global0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(289f - global0.a), _wgslsmith_f_op_f32(func_3(var_0))) + global0.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1319f * -297f), global0.c.x))));
    let var_2 = vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(0u ^ (_wgslsmith_mod_u32(global0.d, u_input.d) | u_input.e.x), ~1u << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.d, global0.d, u_input.d), _wgslsmith_mod_u32(u_input.e.x, u_input.d)) % 32u)), min(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(44628u, global0.d)), 26351u) | global0.d, u_input.e.x);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -484f), select(select(select(!vec3<bool>(global3.x, true, true), vec3<bool>(false, false, var_1.b), global0.b.x), !select(vec3<bool>(global0.b.x, var_1.b, global3.x), global0.b, vec3<bool>(true, false, false)), false), vec3<bool>(false, all(vec3<bool>(false, global3.x, var_1.d)), false), global0.b), _wgslsmith_f_op_vec2_f32(func_4(var_1, global2[_wgslsmith_index_u32((global0.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4717u, 4294967295u, 19092u), var_2.yyz) % 32u)) << (min(~0u, _wgslsmith_add_u32(global0.d, u_input.d)) % 32u), 32u)])), var_2.x);
    global3 = select(select(!(!select(vec3<bool>(false, false, true), var_3.b, var_3.b.x)), vec3<bool>(var_1.b, -808f > _wgslsmith_f_op_f32(-global0.a), false), any(global0.b)), vec3<bool>(!global0.b.x, false, global3.x), true);
    var_3 = Struct_2(var_1.a, vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(global0.b.x, global0.b.x, true), global0.b)), max(var_0, u_input.a) < u_input.a, false), vec2<f32>(_wgslsmith_f_op_f32(var_1.a * global0.a), 457f), countOneBits(u_input.e.x));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.c, var_3.a))), var_4.e, var_4.a);
}

