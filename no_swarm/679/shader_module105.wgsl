struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 30> = array<f32, 30>(1000f, -1221f, -593f, -733f, 292f, 680f, 1399f, 1502f, 371f, 2024f, -983f, 442f, 1072f, 1526f, 914f, 724f, -857f, -120f, 900f, 2349f, 191f, -818f, -1227f, 1356f, 146f, -734f, 1101f, 2487f, -1240f, -827f);

var<private> global2: array<vec3<f32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec2<f32> {
    global1 = array<f32, 30>();
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = 53139i;
    let var_1 = arg_0;
    let var_2 = Struct_2(arg_1.a, arg_1.b);
    global1 = array<f32, 30>();
    var var_3 = min(4294967295u, 37791u >> (((_wgslsmith_dot_vec3_u32(var_2.a.a, arg_1.a.a) | arg_1.a.a.x) << (~arg_2 % 32u)) % 32u));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i | _wgslsmith_mod_i32(abs(-2864i) ^ select(0i, i32(-1i) * -17872i, u_input.c == u_input.c), ~countOneBits(countOneBits(-4855i)));
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], 363f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-757f)), _wgslsmith_f_op_f32(-307f - 934f))), vec2<bool>(false, !select(var_1, var_1, var_1)))), 0u == u_input.b, !select(select(select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, var_1), var_1), vec3<bool>(var_1, var_1, false), var_1 != false), !vec3<bool>(var_1, true, true), !select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(~(~u_input.b)), 3u)])));
    let var_2 = Struct_5(69386u, _wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -8737i, -1i), vec3<i32>(0i, -10491i, 65i))), vec3<i32>(1i, i32(-1i) * -22379i, -1i)));
    global1 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a, max(min(15158u, u_input.b), func_2(var_1, Struct_2(Struct_1(vec3<u32>(4294967295u, 7227u, 4294967295u), vec2<f32>(global0.x, -396f), true, 22603u), var_2.b), 22753u))), 30u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * -447f)))));
}

