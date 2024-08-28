struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<i32, 27>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(451f))))));
    global2 = array<i32, 27>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)), -608f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), -575f));
    global2 = array<i32, 27>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + var_0))), var_1.x))), var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    return -1777f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1776f), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1152f, 270f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -292f), -1351f)), _wgslsmith_div_f32(-1647f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -135f))))));
    global0 = ~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(25871u, 1u, global0.x, global0.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 14559u, 79303u), vec4<u32>(global0.x, global0.x, 0u, 0u))));
    var var_1 = vec2<bool>(true, !(~2147483647i != (u_input.a.x & _wgslsmith_mult_i32(u_input.a.x, 2147483647i))));
    global1 = array<Struct_1, 22>();
    var var_2 = ~firstTrailingBit(27453u);
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(global0.x, 4294967295u, 1u, global0.x), ~vec4<u32>(global0.x, global0.x, global0.x, 36570u)), ~(~vec4<u32>(global0.x, 22509u, 59539u, 3936u)), ~vec4<u32>(global0.x, 1u, global0.x, global0.x)), ~abs(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 1623u, 0u, 15567u), vec4<u32>(global0.x, global0.x, global0.x, 0u))));
}

fn func_1() -> vec4<i32> {
    global2 = array<i32, 27>();
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, global0.x, 25853u, global0.x), vec4<u32>(0u, global0.x, global0.x, global0.x))), vec4<u32>(global0.x, _wgslsmith_clamp_u32(global0.x, global0.x ^ 341u, func_2()), ~firstLeadingBit(global0.x), global0.x) << ((vec4<u32>(1u, _wgslsmith_mod_u32(71254u, 4294967295u), countOneBits(0u), ~57150u) & abs(~vec4<u32>(global0.x, 27154u, global0.x, global0.x))) % vec4<u32>(32u)));
    let var_1 = -167f;
    return _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global2[_wgslsmith_index_u32(global0.x, 27u)], -7187i)), i32(-1i) * -1i, u_input.a.x, -39333i), vec4<i32>(u_input.a.x, 7575i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global0.x, 27u)], -16609i), -u_input.a.x))), ~(vec4<i32>(global2[_wgslsmith_index_u32(global0.x, 27u)], 0i, _wgslsmith_add_i32(u_input.a.x, global2[_wgslsmith_index_u32(15711u, 27u)]), 1i) ^ vec4<i32>(_wgslsmith_div_i32(-6150i, global2[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.a.x >> (global0.x % 32u), abs(-11842i), -41964i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-925f, _wgslsmith_f_op_f32(max(-443f, 219f)), _wgslsmith_f_op_f32(min(-616f, -1199f)), -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, -407f, 215f, -1068f)), !(var_0 & var_0)))), countOneBits(func_1()));
    var var_2 = 110f;
    var_2 = 219f;
    let var_3 = (all(!select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, true, true), var_0)) & true) | !any(!select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), var_0));
    let var_4 = !(all(select(!vec2<bool>(true, var_3), vec2<bool>(true, true), true)) & var_3);
    global2 = array<i32, 27>();
    var var_5 = global1[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.xz, vec2<u32>(global0.x, 29490u) << (global0.xx % vec2<u32>(32u))), global0.zz), ~_wgslsmith_clamp_u32(1u, ~30956u, 4294967295u)), 22u)];
    global2 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(19354i), firstLeadingBit(abs(~vec4<u32>(1u, global0.x, global0.x, global0.x))) & _wgslsmith_mult_vec4_u32(abs(vec4<u32>(33618u, global0.x, 39754u, 4294967295u) >> (vec4<u32>(17809u, global0.x, global0.x, global0.x) % vec4<u32>(32u))), vec4<u32>(~4294967295u, _wgslsmith_sub_u32(1u, global0.x), ~global0.x, global0.x)), _wgslsmith_sub_i32(var_1.b.x, ~countOneBits(global2[_wgslsmith_index_u32(~4117u, 27u)])), ~_wgslsmith_add_u32(global0.x, max(global0.x, firstTrailingBit(global0.x))));
}

