struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 26> = array<f32, 26>(470f, 534f, 473f, -264f, 231f, 969f, 586f, 624f, 323f, -762f, -1590f, 1250f, -1546f, -319f, -1157f, -795f, -994f, -242f, -731f, -1645f, -647f, 547f, 350f, -1131f, 181f, -1090f);

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 63152u, 34158u, 39797u, 53939u, 4294967295u, 4294967295u, 1u, 1u, 18744u, 33206u, 5475u, 0u, 0u, 1u, 0u, 41976u, 1u, 17339u, 27200u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(1334f - -1936f), all(vec4<bool>(true, any(vec2<bool>(true, true)), false, true)));
    global2 = array<u32, 24>();
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(min(var_0.b, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))) - 273f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(807f)), var_0.a), true);
    global0 = ~min(65541u, _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, max(1u, u_input.a.x))) & u_input.a.x;
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 1010f)) + _wgslsmith_f_op_f32(f32(-1f) * -874f))), 2293f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17903u, 24u)], 24u)], 26u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56796u, 24u)], 26u)])))) < 1000f);
    return StorageBuffer(max(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -31435i), arg_0.xy, arg_0.zz), -arg_0.zy), -arg_0.yz), vec2<i32>(26653i, u_input.e.x)), min(_wgslsmith_div_u32(firstLeadingBit(33573u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], global2[_wgslsmith_index_u32(0u, 24u)]), ~u_input.a.zy)), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.b.wyz, u_input.a), _wgslsmith_clamp_vec3_u32(u_input.a | vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(18402u, 24u)], 27317u), u_input.b.xxz, select(vec3<u32>(4294967295u, 0u, 53845u), u_input.b.yzz, true)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = firstTrailingBit(select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -6160i, 55148i, 0i), vec4<i32>(u_input.c, 1i, u_input.c, 0i)) >> (vec4<u32>(4294967295u, 1u, ~global2[_wgslsmith_index_u32(20182u, 24u)], global2[_wgslsmith_index_u32(~u_input.b.x, 24u)]) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -u_input.e.x, -5946i, _wgslsmith_div_i32(15078i, u_input.c)), !all(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(20252u, 26u)], -1000f, 115f, 550f) * vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 26u)], global1[_wgslsmith_index_u32(0u, 26u)], -2444f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 875f, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) + vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47308u, 24u)], 26u)], global1[_wgslsmith_index_u32(1447u, 26u)], 693f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 26u)]))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 1000f, global1[_wgslsmith_index_u32(28995u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 26u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 26u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 26u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 154f, global1[_wgslsmith_index_u32(24432u, 26u)]) * vec4<f32>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(13016u, 26u)], 232f, -1708f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, -399f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 26u)], 389f) + vec4<f32>(global1[_wgslsmith_index_u32(47900u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], 1253f, -147f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 26u)], -185f, 340f, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -354f, -1000f, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))))))));
    let var_2 = var_0.x;
    global0 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(max(firstTrailingBit(u_input.a.x), ~global2[_wgslsmith_index_u32(33352u, 24u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)] | 13920u, 24u)]), global2[_wgslsmith_index_u32((min(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)] >> (62869u % 32u)) | _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(24222u, 24u)], 40158u)) >> (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u) % 32u), 24u)]);
    global1 = array<f32, 26>();
    return func_2(var_0.wyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(-572f))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 389f, _wgslsmith_f_op_f32(f32(-1f) * -208f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x != -1i;
    var var_1 = var_0;
    let x = u_input.a;
    s_output = func_1();
}

