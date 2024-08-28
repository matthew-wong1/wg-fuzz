struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(1069f, 971f, -1383f), vec3<f32>(-1568f, 1000f, -1717f), vec3<f32>(829f, -101f, 172f), vec3<f32>(-309f, -1000f, -141f), vec3<f32>(-261f, 430f, -1000f), vec3<f32>(-1125f, -297f, 701f), vec3<f32>(-963f, 1024f, 1604f), vec3<f32>(-211f, -246f, -771f), vec3<f32>(502f, 1755f, 674f), vec3<f32>(-1000f, -1000f, -861f), vec3<f32>(100f, -493f, 1000f), vec3<f32>(-791f, 470f, -236f), vec3<f32>(1206f, -1415f, -446f), vec3<f32>(-1712f, 335f, 506f), vec3<f32>(-190f, 1592f, -1000f), vec3<f32>(-1000f, 3436f, -753f), vec3<f32>(347f, 2032f, 967f), vec3<f32>(-1000f, -1390f, -768f), vec3<f32>(372f, 1844f, -1356f), vec3<f32>(408f, 1888f, -1096f), vec3<f32>(562f, -703f, 665f), vec3<f32>(-425f, 1379f, 1232f), vec3<f32>(1961f, 1171f, 283f), vec3<f32>(-1293f, -370f, 1000f), vec3<f32>(-1264f, 190f, -182f));

var<private> global3: array<bool, 31>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(all(!vec2<bool>(false, global3[_wgslsmith_index_u32(76811u, 31u)])), global1.b, vec3<u32>(arg_2.a.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.c, global1.c), ~global1.c), min(global1.c.x, 6934u) >> (12257u % 32u))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-394f, 539f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -973f), -288f))), _wgslsmith_div_f32(446f, 1000f)));
}

fn func_2() -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, global1.c.x, abs(18405u), 0u), ~(~vec4<u32>(0u, global1.c.x, 1u, global1.c.x)) ^ vec4<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50679u, 1u, 4294967295u), vec4<u32>(global1.c.x, 0u, 33659u, global1.c.x)), select(global1.c.x, 39421u, true), ~u_input.b >> (64797u % 32u))), 32u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(true, vec3<bool>(true, !global1.a, var_0.a), max(~vec3<u32>(global1.c.x, 27733u, global1.c.x), ~vec3<u32>(19088u, 20983u, 1u)))), vec2<bool>(true, true), Struct_2(global4[_wgslsmith_index_u32(5378u, 32u)]), Struct_1(any(!global1.b), select(!global1.b, vec3<bool>(!global3[_wgslsmith_index_u32(4294967295u, 31u)], all(var_0.b), true), var_0.a), vec3<u32>(1u, 14917u, 34043u))));
    let var_2 = -1i;
    global4 = array<Struct_1, 32>();
    let var_3 = ~_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), u_input.a, firstTrailingBit(global1.c.x));
    return 25945u;
}

fn func_1(arg_0: bool) -> u32 {
    global3 = array<bool, 31>();
    global1 = Struct_1(any(!(!vec4<bool>(false, global1.a, true, false))), vec3<bool>(true, false, 1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1128f)))), vec3<u32>(_wgslsmith_mult_u32(u_input.a, ~global1.c.x), func_2(), u_input.b));
    global4 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c & firstLeadingBit(7651u), 0u, _wgslsmith_mult_u32(global1.c.x, ~global1.c.x)), vec3<u32>(~0u, global1.c.x, ~_wgslsmith_mod_u32(u_input.a, global1.c.x)));
    var var_1 = Struct_1(arg_0, vec3<bool>(_wgslsmith_div_f32(-305f, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global4[_wgslsmith_index_u32(28832u, 32u)]), vec2<bool>(false, false), Struct_2(global4[_wgslsmith_index_u32(global1.c.x, 32u)]), global4[_wgslsmith_index_u32(73964u, 32u)])).x) <= 2037f, select(select(global1.b.x && global3[_wgslsmith_index_u32(87474u, 31u)], false, global3[_wgslsmith_index_u32(6229u, 31u)]), true, false), !(true != any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 31u)], global1.a)))), ~_wgslsmith_add_vec3_u32(~(global1.c >> (vec3<u32>(15149u, u_input.c, 16627u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(global1.c, vec3<u32>(var_0.x, 23126u, var_0.x), global1.c) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 13992u, 4294967295u), vec3<u32>(4785u, u_input.b, global1.c.x))));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_dot_vec3_u32(global1.c, ~global1.c) ^ func_1(any(global1.b)), 57801u, any(select(vec2<bool>(global3[_wgslsmith_index_u32(43411u, 31u)] != true, all(vec4<bool>(true, global1.a, true, false))), global1.b.xz, false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(780f))))));
    let var_2 = !select(select(vec2<bool>(all(vec3<bool>(false, global3[_wgslsmith_index_u32(50917u, 31u)], global1.a)), true), global1.b.zx, (u_input.a >> (global1.c.x % 32u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, u_input.b, global1.c.x, 60530u), vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x))), global1.b.yy, false);
    var var_3 = true;
    let var_4 = -(1i >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, global1.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), global1.c, global1.c)), global1.c.x) % 32u));
    global0 = global1.c.x;
    var var_5 = var_4;
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-581f)), vec2<u32>(58453u, ~global1.c.x));
}

