struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(42113u, vec4<u32>(18984u, 66261u, 0u, 4294967295u), vec2<f32>(-227f, 1020f), -1114f), Struct_1(0u, vec4<u32>(1u, 40637u, 0u, 5790u), vec2<f32>(-168f, -637f), 3012f));

var<private> global2: vec2<u32>;

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    return abs(~(~66694u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = -654f;
    global0 = array<vec2<i32>, 19>();
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    let var_1 = vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(4294967295u, arg_1.a, 20831u)), vec3<u32>(global2.x, global2.x, ~(~global2.x))));
    return _wgslsmith_f_op_f32(-arg_1.d);
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(global2.x, vec4<u32>(global2.x, global2.x, 42512u, 33892u), vec2<f32>(-1974f, 408f), 1101f), vec3<bool>(false, true, true), Struct_2(global2.x, vec2<i32>(-1i, 2147483647i), global1[_wgslsmith_index_u32(4294967295u, 2u)]))))), _wgslsmith_div_f32(-3086f, -360f)), -711f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1444f, -436f)), -2797f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, 411f, 1491f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-269f, 719f, -382f), vec3<f32>(277f, -558f, -1545f)))), _wgslsmith_div_vec3_f32(vec3<f32>(613f, 320f, 844f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, 166f, -337f) - vec3<f32>(-368f, -1304f, -456f)))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(367f + 1643f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) - _wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + _wgslsmith_div_f32(-1000f, 523f))))));
    global0 = array<vec2<i32>, 19>();
    var var_1 = true;
    global1 = array<Struct_1, 2>();
    global3 = !(!select(true, true, firstLeadingBit(u_input.a) != 1i));
    return ~_wgslsmith_mod_vec4_u32(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(28132u, global2.x, global2.x, global2.x), vec4<u32>(4294967295u, 1u, 0u, 0u))), vec4<u32>(16815u, global2.x, ~global2.x, _wgslsmith_mod_u32(23732u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 0u), vec4<u32>(131579u, global2.x, 23700u, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~62306u) | func_1(), global2.x, ~_wgslsmith_div_u32(global2.x, 5730u));
    let var_1 = 4294967295u;
    let var_2 = Struct_2(countOneBits(~var_0.x), _wgslsmith_mod_vec2_i32(min(global0[_wgslsmith_index_u32(var_0.x, 19u)], -firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<i32>(-35416i, -(~u_input.a))), Struct_1(~(0u | var_0.x), ~func_2(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(366f, 1866f) - vec2<f32>(-1055f, 406f)), vec2<f32>(-349f, 167f)))), 477f));
    var var_3 = countOneBits(max(u_input.a, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, u_input.a, 65734i), vec3<i32>(u_input.a, -6436i, var_2.b.x)))));
    let var_4 = ~vec4<u32>(0u, var_2.c.b.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(12147u, abs(44870u)), _wgslsmith_sub_u32(19222u, var_2.c.b.x)), var_2.a);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.c.x, 353f) - vec2<f32>(var_2.c.c.x, var_2.c.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1788f, -863f), vec2<f32>(var_2.c.c.x, -972f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(841f, var_2.c.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.c * _wgslsmith_f_op_vec2_f32(round(var_2.c.c)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.d, 1083f), vec2<f32>(var_2.c.d, 1190f))) - vec2<f32>(1563f, -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.d, _wgslsmith_f_op_f32(-var_2.c.c.x));
}

