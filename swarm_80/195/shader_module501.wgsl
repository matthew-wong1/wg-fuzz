struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1000f, -1499f, vec4<i32>(64623i, -1i, 0i, 41415i)), Struct_1(-618f, -608f, vec4<i32>(1i, 42876i, 1i, -10156i)), Struct_1(859f, 322f, vec4<i32>(-1i, -8780i, -59115i, -23310i)), Struct_1(-622f, 310f, vec4<i32>(-51292i, -2598i, -36007i, -69705i)), Struct_1(1140f, 1000f, vec4<i32>(2147483647i, -38802i, 24384i, 2147483647i)), Struct_1(-904f, 2113f, vec4<i32>(2692i, 61299i, -11270i, -26871i)), Struct_1(278f, -1032f, vec4<i32>(13494i, 2147483647i, -1i, 14048i)), Struct_1(-955f, 297f, vec4<i32>(2147483647i, 8415i, 0i, -15734i)), Struct_1(-1000f, 283f, vec4<i32>(52749i, -1i, 2147483647i, -52400i)));

var<private> global1: array<i32, 26>;

var<private> global2: i32;

var<private> global3: array<bool, 19> = array<bool, 19>(false, false, false, true, true, false, true, true, false, true, true, false, true, true, false, false, false, false, true);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    return true;
}

fn func_2() -> vec4<bool> {
    global0 = array<Struct_1, 9>();
    let var_0 = !(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)], true), select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(4294967295u, 26u)] != -28533i)));
    return !vec4<bool>(!global3[_wgslsmith_index_u32(18361u, 19u)], true, true, func_3());
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> vec3<i32> {
    var var_0 = !func_2();
    let var_1 = -1413f;
    let var_2 = vec4<i32>(arg_2, 1i, -2147483647i, arg_2);
    let var_3 = u_input.a.x;
    global1 = array<i32, 26>();
    return var_2.wwx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -41521i;
    global1 = array<i32, 26>();
    var var_1 = _wgslsmith_dot_vec3_i32(-min(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -40862i, 43927i), vec3<i32>(var_0, -71425i, 0i)), func_1(-875i, vec2<i32>(64991i, -2147483647i), var_0)), vec3<i32>(-1i) * -(vec3<i32>(0i, var_0, global1[_wgslsmith_index_u32(11837u, 26u)]) << (vec3<u32>(111977u, u_input.a.x, 0u) % vec3<u32>(32u)))) > -32987i;
    var var_2 = select(~select(vec4<u32>(25552u, u_input.a.x, 37579u & u_input.a.x, ~0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1564u)), select(vec4<bool>(true, true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(36901u, 19u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], false, true))), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(310u, 1u, 0u, 25855u), select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 99781u, 4294967295u), true)) >> (~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.a.x, 59992u, 4294967295u)) % vec4<u32>(32u))), !vec4<bool>(global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), 0u, 907u == u_input.a.x), 19u)], any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)], true, global3[_wgslsmith_index_u32(4294967295u, 19u)])) && true, ~(-5200i) > abs(global1[_wgslsmith_index_u32(1375u, 26u)]), !all(vec2<bool>(false, false))));
    var var_3 = ~(firstLeadingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 4294967295u, 5338u, var_2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, 91u), vec4<u32>(4717u, u_input.a.x, u_input.a.x, 4864u)), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(5861u, 19u)], global3[_wgslsmith_index_u32(16780u, 19u)]))) ^ ~vec4<u32>(select(0u, 0u, false), _wgslsmith_add_u32(0u, 0u), 12088u, _wgslsmith_mult_u32(u_input.a.x, 4690u)));
    var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(51290u, u_input.a.x, var_2.x, 52039u), ~(vec4<u32>(var_3.x, 1u, var_2.x, var_3.x) | ~vec4<u32>(4294967295u, 1u, var_3.x, 4294967295u))) << (vec4<u32>(firstTrailingBit(63390u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, var_2.x, var_3.x, var_2.x)), vec4<u32>(var_2.x, u_input.a.x, _wgslsmith_add_u32(var_3.x, var_3.x), 4636u)), u_input.a.x, countOneBits(_wgslsmith_clamp_u32(4294967295u, 33622u, ~var_3.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_0, global1[_wgslsmith_index_u32(var_3.x, 26u)] & ~(-2147483647i), -(global1[_wgslsmith_index_u32(75879u, 26u)] | var_0), ~var_0 >> (1u % 32u)) << (abs(max(vec4<u32>(14344u, u_input.a.x, 40331u, u_input.a.x), vec4<u32>(var_3.x, 62862u, 4294967295u, 4294967295u)) >> ((vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) << (vec4<u32>(var_3.x, var_3.x, 4294967295u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1369f, -991f, -122f, -1000f), vec4<f32>(-347f, -1039f, -515f, 1552f))))));
}

