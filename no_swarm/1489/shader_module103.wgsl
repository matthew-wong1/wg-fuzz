struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: f32 = -2019f;

var<private> global3: array<i32, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global1 = array<Struct_1, 8>();
    global0 = vec2<i32>(-min(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 72048u, 1u), vec4<u32>(52611u, 41306u, 4294967295u, 32608u)), 32u)], u_input.b), _wgslsmith_dot_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(35380i, 0i, -2147483647i), abs(vec3<i32>(u_input.a, 38355i, -17087i))), -select(vec3<i32>(23591i, global3[_wgslsmith_index_u32(21136u, 32u)], global0.x), vec3<i32>(-27155i, global0.x, -2147483647i), false)), ~vec3<i32>(firstTrailingBit(global0.x), _wgslsmith_clamp_i32(2147483647i, -2147483647i, -1i), global0.x & -2147483647i)));
    let var_0 = Struct_1(min(vec4<u32>(~1u, countOneBits(1u), ~46374u, _wgslsmith_clamp_u32(4294967295u, ~24269u, abs(4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_div_u32(3186u, 98394u), _wgslsmith_clamp_u32(1u, 1u, 0u), 1u, 22405u))), 40583u, false, min(24808u, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(39253u, 4294967295u)), reverseBits(firstTrailingBit(10176u)))));
    var var_1 = Struct_3(vec3<bool>(!(4294967295u != var_0.b), (var_0.c | var_0.c) && (!var_0.c | true), all(vec3<bool>(true, any(vec2<bool>(false, var_0.c)), !var_0.c))), firstLeadingBit(-_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0.x, u_input.a)), vec2<i32>(global3[_wgslsmith_index_u32(var_0.b, 32u)], -2147483647i) & vec2<i32>(20621i, global0.x), -vec2<i32>(0i, global0.x))), (_wgslsmith_dot_vec4_u32(var_0.a, ~var_0.a) >> (~(~1u) % 32u)) | reverseBits(~4294967295u));
    let var_2 = vec4<i32>(-1i) * -select(_wgslsmith_mod_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(9808u, 32u)], -61326i, u_input.b, 3591i), -vec4<i32>(var_1.b.x, 12409i, var_1.b.x, -2147483647i)), ~(-vec4<i32>(-28229i, -2147483647i, var_1.b.x, var_1.b.x)), vec4<bool>(!var_0.c, !var_0.c, false | var_0.c, var_1.a.x));
    return (-var_2.x ^ -countOneBits(_wgslsmith_mult_i32(-1i, u_input.b))) < global3[_wgslsmith_index_u32(var_1.c, 32u)];
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(func_3(), true, true), func_3()), reverseBits(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, 1i)), reverseBits(global3[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_div_u32(1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(49802u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u)), 6342u) << (~21207u % 32u)));
    let var_1 = global1[_wgslsmith_index_u32(11116u, 8u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(-456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(888f * _wgslsmith_f_op_f32(step(238f, 505f)))), 1225f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1490f)), -894f))))));
    var var_3 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(-796f * var_2.x)), var_2.x)));
    let var_4 = var_1.d;
    return global1[_wgslsmith_index_u32(var_1.b, 8u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec4<i32> {
    var var_0 = func_2();
    return -firstLeadingBit(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(47325i, u_input.a, global0.x, global0.x) | vec4<i32>(29788i, -18587i, 1i, 0i)), max(~vec4<i32>(-33843i, u_input.a, 6207i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, global3[_wgslsmith_index_u32(26825u, 32u)]), vec4<i32>(global0.x, 19155i, -53576i, global3[_wgslsmith_index_u32(arg_0.x, 32u)]), vec4<i32>(1i, -1i, u_input.b, 15983i))), ~vec4<i32>(global3[_wgslsmith_index_u32(45809u, 32u)], global0.x, 29481i, global3[_wgslsmith_index_u32(arg_0.x, 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 32>();
    global1 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(ceil(-409f));
    let var_1 = vec4<i32>(1i, -34400i, _wgslsmith_div_i32(global0.x, -(-1i | global0.x)) & u_input.b, _wgslsmith_add_i32(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -55538i), vec2<i32>(global3[_wgslsmith_index_u32(27676u, 32u)], global3[_wgslsmith_index_u32(109550u, 32u)])), select(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(46323u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_div_i32(-2147483647i, -108565i), true)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(func_1(vec4<u32>(8072u, 0u, 4294967295u, 86925u), true), ~vec4<i32>(-11167i, -61205i, 1i, global0.x)), (global3[_wgslsmith_index_u32(1u, 32u)] << (0u % 32u)) & -48797i)));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)))))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(641f)), _wgslsmith_f_op_f32(f32(-1f) * -1608f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1777f, 212f))) * vec2<f32>(_wgslsmith_f_op_f32(round(-1167f)), -407f))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x - var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(-69327i, -1i, global3[_wgslsmith_index_u32(8682u, 32u)]), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, global0.x, -25419i), vec3<i32>(global0.x, 2147483647i, -3519i), var_1.zyw), vec3<bool>(func_3(), true, true)), var_1.xwy), -49731i, abs(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 32u)], var_1.x, 19837i), vec3<i32>(1i, 2147483647i, global3[_wgslsmith_index_u32(26509u, 32u)])) >> (~vec3<u32>(221u, 4294967295u, 96237u) % vec3<u32>(32u)), -vec3<i32>(var_1.x, 0i, 56327i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(748f)))))));
}

