struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(-1000f, -550f), true), Struct_1(vec2<f32>(1404f, -911f), false), Struct_1(vec2<f32>(599f, 2230f), true), Struct_1(vec2<f32>(-2027f, 1418f), true), Struct_1(vec2<f32>(928f, 544f), false), Struct_1(vec2<f32>(-220f, 1378f), true), Struct_1(vec2<f32>(774f, -1895f), true), Struct_1(vec2<f32>(-854f, -133f), true), Struct_1(vec2<f32>(-701f, -753f), false), Struct_1(vec2<f32>(1214f, -663f), true), Struct_1(vec2<f32>(-1000f, -1317f), false), Struct_1(vec2<f32>(558f, -207f), false), Struct_1(vec2<f32>(912f, 1165f), true), Struct_1(vec2<f32>(-382f, -907f), true), Struct_1(vec2<f32>(1014f, 994f), true), Struct_1(vec2<f32>(-835f, -1483f), false), Struct_1(vec2<f32>(361f, 676f), false), Struct_1(vec2<f32>(618f, -946f), false), Struct_1(vec2<f32>(2260f, -298f), false));

var<private> global3: i32;

var<private> global4: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(57917u, 4294967295u, 22591u), vec3<u32>(11734u, 0u, 37034u), vec3<u32>(2840u, 71506u, 73827u), vec3<u32>(1u, 47138u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> i32 {
    global3 = u_input.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(566f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1190f)) + 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -378f))) * vec2<f32>(1000f, -589f)), (select(true, true, global0.c) || true) | global0.b.x)));
    global1 = vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<u32>(67769u, 4294967295u, global0.d.x, 31288u), vec4<u32>(u_input.d.x, 43323u, 4294967295u, 1u)), vec4<u32>(u_input.d.x, global0.d.x, global0.d.x, u_input.c.x) >> (vec4<u32>(u_input.c.x, global1.x, u_input.e, 3153u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 30915u, global0.d.x, 0u), vec4<u32>(4294967295u, 1u, 1u, 0u)) | vec4<u32>(global0.d.x, 4294967295u, global0.d.x, 43426u))), 60219u, global0.d.x, ~(~(~(~global1.x))));
    let var_1 = 1u;
    var var_2 = 3049u;
    return -1i;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)));
    let var_1 = _wgslsmith_div_i32(max(global0.e.x, _wgslsmith_mult_i32(40210i, func_2())), 38594i);
    return -2147483647i;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_u32(global1.x, 4774u);
    let var_1 = firstTrailingBit(max(~(-u_input.a) | _wgslsmith_sub_i32(min(u_input.b, u_input.b), global0.e.x), 1i & global0.e.x));
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(global0.e.x | -35726i);
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(~(global0.d.x & 66906u)), _wgslsmith_div_u32(u_input.c.x, ~0u), ~_wgslsmith_dot_vec3_u32(~global1.wyx, global4[_wgslsmith_index_u32(global0.d.x, 4u)] << (global1.zwy % vec3<u32>(32u))), u_input.e), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.e, 1u, global1.x, global1.x), vec4<u32>(u_input.d.x, 1u, 1u, 3600u)), vec4<u32>(global1.x, global0.d.x, u_input.c.x, 4294967295u) ^ vec4<u32>(0u, global0.d.x, u_input.d.x, 48770u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, 0u, u_input.c.x), vec4<u32>(global0.d.x, 0u, 12817u, 0u))));
    let var_1 = global0.b;
    let var_2 = vec4<bool>(any(select(select(vec4<bool>(var_1.x, var_1.x, global0.c, true), vec4<bool>(var_1.x, var_1.x, false, false), !global0.a.x), select(select(vec4<bool>(true, global0.c, false, var_1.x), vec4<bool>(false, true, var_1.x, false), global0.a.x), vec4<bool>(global0.c, false, var_1.x, var_1.x), all(vec4<bool>(global0.c, false, global0.a.x, true))), !vec4<bool>(false, false, global0.c, var_1.x))), select(var_1.x, var_1.x && (func_1(global0.b) <= global0.e.x), global0.b.x), var_1.x, all(global0.b));
    let var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.e, func_3()), firstTrailingBit(vec2<u32>(var_0.x, min(u_input.c.x, var_0.x)))));
}

