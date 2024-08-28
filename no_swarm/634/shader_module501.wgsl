struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<u32, 3>;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(6940u, 79547u, 4294967295u, 0u), vec4<u32>(25270u, 14069u, 0u, 0u), vec4<u32>(1u, 36674u, 0u, 4294967295u), vec4<u32>(95757u, 8226u, 36436u, 0u), vec4<u32>(33114u, 2152u, 67368u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(4583u, 1u, 3645u, 61434u), vec4<u32>(4439u, 0u, 0u, 64876u), vec4<u32>(4294967295u, 27202u, 0u, 1u), vec4<u32>(74573u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 19818u, 0u, 53453u), vec4<u32>(0u, 1u, 17610u, 33443u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1u, 4294967295u, 36639u, 0u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(0u, 1u, 4294967295u, 60605u), vec4<u32>(16281u, 2107u, 5665u, 6849u), vec4<u32>(1u, 0u, 25865u, 4294967295u), vec4<u32>(22154u, 4294967295u, 3720u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 0u, 18555u), vec4<u32>(12674u, 1160u, 23763u, 1u), vec4<u32>(835u, 0u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(43595u, 44303u, 0u, 65579u), vec4<u32>(4294967295u, 0u, 8353u, 23565u), vec4<u32>(32339u, 16490u, 1u, 4294967295u), vec4<u32>(1u, 23219u, 0u, 26153u), vec4<u32>(67699u, 0u, 8197u, 21135u), vec4<u32>(4294967295u, 71157u, 4294967295u, 1u));

var<private> global3: array<vec3<bool>, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(573f)))) - 1306f)));
    let var_1 = all(select(!vec2<bool>(all(global3[_wgslsmith_index_u32(58530u, 27u)]), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false), vec2<bool>(true, true), all(vec4<bool>(false, true, true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    global2 = array<vec4<u32>, 30>();
    global2 = array<vec4<u32>, 30>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 3u)];
    return !any(!vec3<bool>(var_1, false, var_1));
}

fn func_1() -> Struct_2 {
    global3 = array<vec3<bool>, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f) + -1145f), _wgslsmith_div_f32(-943f, _wgslsmith_f_op_f32(-1222f + 1846f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(221f)) - 519f))));
    var var_1 = !func_2();
    global2 = array<vec4<u32>, 30>();
    let var_2 = Struct_2(Struct_1(max(u_input.d, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, 35058u), 6314u), max(abs(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)])), vec3<u32>(global1[_wgslsmith_index_u32(43770u, 3u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)]) >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], u_input.a) % vec3<u32>(32u))))));
    return Struct_2(var_2.a);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(766f))), _wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 249f)), 120f), vec4<f32>(_wgslsmith_f_op_f32(select(-605f, _wgslsmith_f_op_f32(-428f + 384f), any(global3[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f + -1263f) * -1003f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(983f - 106f), -621f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3395f - 1558f))), vec4<bool>(true, false, true, false))));
    let var_1 = !select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 28408u), 27u)], vec3<bool>(_wgslsmith_div_f32(var_0.x, var_0.x) <= _wgslsmith_div_f32(1000f, var_0.x), false, true), !func_2());
    var var_2 = vec4<bool>(true, all(select(vec3<bool>(false, true, true), var_1, var_1)), ~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(0u, 1u)) > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~55036u, 3u)], 3u)] >> (~arg_0.a.b.x % 32u), 3u)], abs(~u_input.a) <= ~arg_0.a.b.x);
    global1 = array<u32, 3>();
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1056f, -867f) * 1601f) * -191f)), var_2.x));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 9>();
    global2 = array<vec4<u32>, 30>();
    global0 = array<vec3<f32>, 9>();
    global0 = array<vec3<f32>, 9>();
    global2 = array<vec4<u32>, 30>();
    global1 = array<u32, 3>();
    var var_0 = func_1();
    global0 = array<vec3<f32>, 9>();
    let var_1 = _wgslsmith_add_vec3_u32(max(vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], u_input.a) << (abs(var_0.a.b.x) % 32u), min(19866u, func_3(Struct_2(Struct_1(-1i, vec3<u32>(32574u, var_0.a.b.x, var_0.a.b.x))))), 3028u), select(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, var_0.a.b.x, var_0.a.b.x)), _wgslsmith_clamp_vec3_u32(var_0.a.b, var_0.a.b, var_0.a.b)), var_0.a.b, vec3<bool>(true, false, true))), var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1042f)))), -662f, func_2())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(180f, 1224f)))), _wgslsmith_f_op_f32(max(-1494f, 572f)), _wgslsmith_f_op_f32(f32(-1f) * -759f)), vec3<f32>(_wgslsmith_f_op_f32(round(-897f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-972f)) - -303f) * _wgslsmith_f_op_f32(f32(-1f) * -1993f)), _wgslsmith_f_op_f32(-247f - -1675f)), vec3<f32>(_wgslsmith_div_f32(-2043f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, 3023f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * -1467f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-900f * -1263f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -505f))))));
}

