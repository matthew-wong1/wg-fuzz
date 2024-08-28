struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: f32;

var<private> global1: array<i32, 27>;

var<private> global2: bool;

var<private> global3: array<f32, 1>;

var<private> global4: array<bool, 16> = array<bool, 16>(true, false, false, false, true, true, true, true, true, true, false, true, false, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), all(select(!(!vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(64423u, 16u)])), !select(vec4<bool>(false, true, global4[_wgslsmith_index_u32(4294967295u, 16u)], false), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(4325u, 16u)]), true), any(vec3<bool>(global4[_wgslsmith_index_u32(13051u, 16u)], true, global4[_wgslsmith_index_u32(4294967295u, 16u)])))), vec4<u32>(0u, 11214u, 1u, min(~0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20346u, 3779u), vec2<u32>(8016u, 7473u)))), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(13653u, 4633u, 81523u)), ~vec3<u32>(3300u, 0u, 0u)));
    global4 = array<bool, 16>();
    let var_1 = Struct_1(~(~var_0.d), ~var_0.b, global4[_wgslsmith_index_u32(4294967295u, 16u)], ~vec4<u32>(~var_0.e.x, max(max(23138u, var_0.d.x), ~25803u), 1u, var_0.d.x), vec3<u32>(_wgslsmith_clamp_u32(var_0.e.x, ~4294967295u, 4294967295u), ~_wgslsmith_add_u32(var_0.d.x, var_0.b.x), ~23783u) << (var_0.d.wwy % vec3<u32>(32u)));
    return countOneBits(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_1.e.x, var_0.a.x) >> (var_0.b.xz % vec2<u32>(32u))), var_0.b.zy));
}

fn func_2() -> u32 {
    global3 = array<f32, 1>();
    global1 = array<i32, 27>();
    let var_0 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(34476u, 27u)]), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.wy, vec2<i32>(global1[_wgslsmith_index_u32(1u, 27u)], -1i)), _wgslsmith_sub_vec2_i32(u_input.b.zx, vec2<i32>(0i, 23348i)))) != -1i;
    var var_1 = select(select(select(select(vec4<bool>(var_0, global4[_wgslsmith_index_u32(0u, 16u)], false, global4[_wgslsmith_index_u32(7011u, 16u)]), !vec4<bool>(false, var_0, global4[_wgslsmith_index_u32(0u, 16u)], var_0), vec4<bool>(true, false, true, true)), vec4<bool>(false, var_0, -433f != global3[_wgslsmith_index_u32(23721u, 1u)], global3[_wgslsmith_index_u32(2649u, 1u)] == -688f), true), vec4<bool>(!all(vec4<bool>(true, global4[_wgslsmith_index_u32(53199u, 16u)], true, true)), var_0, false, true), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4600u, 0u, 28567u), 4238u) & 30227u, 16u)]), vec4<bool>(var_0, all(vec2<bool>(true, 1000f == global3[_wgslsmith_index_u32(47886u, 1u)])), true, true), select(vec4<bool>(true, true, global4[_wgslsmith_index_u32(func_3(), 16u)], global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(15102u, 1u), 16u)]), !(!(!vec4<bool>(false, false, global4[_wgslsmith_index_u32(7842u, 16u)], true))), !vec4<bool>(u_input.a.x == u_input.b.x, !global4[_wgslsmith_index_u32(4294967295u, 16u)], true, any(vec4<bool>(false, var_0, false, global4[_wgslsmith_index_u32(55078u, 16u)])))));
    global1 = array<i32, 27>();
    return func_3();
}

fn func_1() -> u32 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((~func_1() & ~(~4294967295u)) ^ func_1()) & func_1();
    global2 = all(!select(vec3<bool>(true, true, true), vec3<bool>(select(global4[_wgslsmith_index_u32(5861u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(27700u, 16u)]), global4[_wgslsmith_index_u32(44694u, 16u)], true), any(vec3<bool>(true, global4[_wgslsmith_index_u32(var_0, 16u)], true))));
    var var_1 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(93429u, 26987u), select(0u, 12180u, global4[_wgslsmith_index_u32(var_0, 16u)])), ~(~var_0) ^ ~(~4294967295u), ~1u, 13486u), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), min(vec2<u32>(var_0, 7472u) & vec2<u32>(var_0, var_0), max(vec2<u32>(var_0, 4294967295u), vec2<u32>(1u, 0u)))), var_0, func_3()), true, vec4<u32>(~var_0, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0, var_0, 54459u, 4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(21077u, var_0, 28798u, 22558u), vec4<u32>(var_0, 0u, var_0, var_0)), vec4<u32>(1u, 10771u, var_0, 18502u))), ~48709u, max(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 47510u), vec3<u32>(1u, 11679u, 76211u)), ~var_0)), firstTrailingBit(~min(vec3<u32>(39452u, var_0, 0u), vec3<u32>(0u, 4294967295u, var_0))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 0u, var_0), vec3<u32>(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 12643u, var_0, 54882u), vec4<u32>(16188u, 0u, 44013u, 4294967295u)), var_0)));
    let var_2 = _wgslsmith_clamp_u32(var_0, ~_wgslsmith_div_u32(~(~2692u), _wgslsmith_mult_u32(var_0, var_1.b.x << (var_1.b.x % 32u))), 1u);
    var var_3 = Struct_1(vec4<u32>(var_0, firstLeadingBit(var_0), ~abs(~var_0), _wgslsmith_add_u32(var_0, var_1.a.x >> (max(40111u, var_0) % 32u))), vec3<u32>(~4294967295u, var_0, ~(~var_2)), true, ~vec4<u32>(~select(62197u, 1896u, global4[_wgslsmith_index_u32(1u, 16u)]), 11933u, firstTrailingBit(0u), abs(~0u)), ~firstTrailingBit(abs(vec3<u32>(var_1.e.x, var_2, var_1.d.x))));
    let var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(0u), 1u)];
    global3 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, ~max(vec2<u32>(~var_3.a.x, var_0), vec2<u32>(var_3.d.x, ~4294967295u)));
}

