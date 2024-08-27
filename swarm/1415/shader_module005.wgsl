struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-732f, -1462f, 1035f, 2319f, 401f, -384f, 1273f, 154f, -1000f, -640f, 1604f, -1070f, 1499f, -742f, -463f, 1660f, 500f, -1219f, -312f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_4, 2>;

var<private> global3: array<u32, 5>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> u32 {
    let var_0 = arg_0.zx;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(4294967295u, ~global3[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(4294967295u, 5u)], 1u), 5u)], countOneBits(global3[_wgslsmith_index_u32(1u, 5u)]))), 5u)];
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(0u, 5u)], 0u) & vec2<u32>(26772u, global3[_wgslsmith_index_u32(20637u, 5u)])), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23848u, 5u)], 5u)], 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)])), ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 5u)], 1u)))), 2u)];
    var var_3 = _wgslsmith_clamp_u32(~(~min(23338u, var_2.c.x)), firstLeadingBit(0u), var_2.c.x) & ~(global3[_wgslsmith_index_u32(4294967295u | ~global3[_wgslsmith_index_u32(var_2.c.x, 5u)], 5u)] << (~var_2.c.x % 32u));
    let var_4 = firstLeadingBit(0u);
    return ~abs(min(global3[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 5u)], ~(4294967295u | var_4)));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_u32(17390u, ~(~(func_3(vec3<bool>(true, arg_0, false), Struct_5(-1007f, vec2<i32>(u_input.a, u_input.a), Struct_3(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31153u, 5u)], 5u)], 19u)], u_input.a, vec4<f32>(arg_1, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 19u)], 181f, arg_1)), arg_0)) ^ ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)])));
    var var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, reverseBits(102496i), _wgslsmith_mod_i32(17340i, u_input.a)) << (~abs(vec4<u32>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)])) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(-1i, u_input.a, -10216i, u_input.a), arg_0) ^ ~select(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(1i, 2147483647i, u_input.a, -2827i), vec4<bool>(true, true, arg_0, false)), ~(~vec4<i32>(44806i, u_input.a, 14360i, 19097i)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a)), i32(-1i) * -1i, -u_input.a, u_input.a | u_input.a)));
    var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(-countOneBits(~vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.a))), ~(-vec4<i32>(_wgslsmith_add_i32(var_1.x, var_1.x), countOneBits(var_1.x), 1i, -1i)));
    var var_2 = u_input.a;
    let var_3 = Struct_1(u_input.a);
    return var_1.yxz;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(8321u, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72399u, 5u)], 5u)]))), 5u)], 19u)]));
    let var_1 = Struct_2(-max(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(arg_0, -31571i, -2147483647i))), func_2(true, _wgslsmith_f_op_f32(max(-1780f, -982f)))), Struct_1(arg_0));
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(~abs(56445u), 5u)], reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(28576u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]), 5u)], 5u)]))), 2u)];
    var var_3 = Struct_3(_wgslsmith_f_op_f32(681f - global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.c.x, 5u)], 5u)], 19u)]), 0i, vec4<f32>(_wgslsmith_div_f32(-1000f, var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2203f * 1000f))), 703f, _wgslsmith_f_op_f32(trunc(1547f))));
    var var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(~var_2.c.x, firstLeadingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 5u)], 5u)] & (global3[_wgslsmith_index_u32(0u, 5u)] ^ 7899u)), ~_wgslsmith_clamp_u32(var_2.c.x, 1u, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], ~global3[_wgslsmith_index_u32(var_2.c.x, 5u)]), 1u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(var_2.c, ~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], 32156u, var_2.c.x, global3[_wgslsmith_index_u32(95086u, 5u)])), ~_wgslsmith_mod_vec4_u32(var_2.c, vec4<u32>(global3[_wgslsmith_index_u32(var_2.c.x, 5u)], global3[_wgslsmith_index_u32(4964u, 5u)], var_2.c.x, 0u))), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], 9005u, 35703u, 27755u), vec4<u32>(var_2.c.x, 44103u, global3[_wgslsmith_index_u32(var_2.c.x, 5u)], 4294967295u))), var_2.c), ~var_2.c));
    return ~(var_2.c.x | 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -888f;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(max(~1u, 34504u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1166u, 5u)], 5u)], 5u)]), 4294967295u, global3[_wgslsmith_index_u32(~(~4700u), 5u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(firstTrailingBit(u_input.a)), ~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 5u)], 5u)]), 5u)]), 18255u, global3[_wgslsmith_index_u32(48362u, 5u)], ~(~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(16375u, 5u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(87139u, 5u)], 5u)]) << ((~10745u | max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 7673u)) % 32u)));
    global2 = array<Struct_4, 2>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-var_0), (_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, -50452i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-35889i, -15807i))) << (~vec2<u32>(global3[_wgslsmith_index_u32(5594u, 5u)], var_1.x) % vec2<u32>(32u))) ^ ~abs(~vec2<i32>(u_input.a, -1i)), Struct_3(var_0, (i32(-1i) * -u_input.a) | u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(382f, -927f, var_0, 189f) * vec4<f32>(var_0, -548f, 106f, var_0)))))), true);
    var var_3 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(~1u, 5u)], firstTrailingBit(global3[_wgslsmith_index_u32(var_1.x, 5u)]), 59083u, global3[_wgslsmith_index_u32(15442u, 5u)]), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 45286u, 1u, 20996u), _wgslsmith_clamp_vec4_u32(vec4<u32>(51581u, 0u, 40984u, var_1.x), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13084u, 5u)], 5u)], 20972u, global3[_wgslsmith_index_u32(1u, 5u)], 90966u), vec4<u32>(4294967295u, var_1.x, 4294967295u, 31403u))), select(vec4<bool>(var_2.d, false, var_2.d, false), select(vec4<bool>(false, true, false, var_2.d), vec4<bool>(var_2.d, false, var_2.d, false), vec4<bool>(true, var_2.d, var_2.d, true)), vec4<bool>(false, var_2.d, true, var_2.d))), firstLeadingBit(~vec4<u32>(4294967295u, 0u, 4294967295u, 32240u) & _wgslsmith_sub_vec4_u32(vec4<u32>(67055u, var_1.x, var_1.x, 4294967295u), vec4<u32>(var_1.x, global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)], 29612u)))) >> (~min(var_1.x, _wgslsmith_add_u32(1u & var_1.x, 20866u)) % 32u);
    var var_4 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~firstTrailingBit(var_1.x), 33846u), ~1u), 19u)], max(firstTrailingBit(vec2<i32>(var_2.b.x, 0i) ^ var_2.b), max(var_2.b, var_2.b)), Struct_3(global0[_wgslsmith_index_u32(~0u, 19u)], 45051i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, var_0, var_2.a, var_0)))))), true);
    var_3 = 1u;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, 1u)), ~vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)])), ~countOneBits(1u), ~(~var_1.x), ~1u), ~abs(vec4<u32>(var_1.x, global3[_wgslsmith_index_u32(var_1.x, 5u)], 95625u, 14235u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_1.x, 5u)], global3[_wgslsmith_index_u32(var_1.x, 5u)], 3962u, 1u), vec4<u32>(94464u, global3[_wgslsmith_index_u32(56992u, 5u)], 4294967295u, 70179u))));
}

