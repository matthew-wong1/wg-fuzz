struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, 8367i, 5113i, -30886i, 1i, -38864i, -23216i, 1i, 1i, 2147483647i, 54812i, 2147483647i, 16896i, -3053i, 0i, -36345i, -2881i, -20999i, 11262i, 20707i, 18406i, 2147483647i, 26770i, -1i);

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 5>;

var<private> global4: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> i32 {
    global0 = array<i32, 24>();
    var var_0 = arg_2.yxw;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 46507u), 24u)];
    var var_2 = vec2<bool>(false, all(!(!arg_2.wyw)));
    global1 = array<vec4<f32>, 6>();
    return _wgslsmith_dot_vec2_i32(arg_1.wz, vec2<i32>(-1i) * -vec2<i32>(select(u_input.b, 9693i, arg_2.x), 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    global0 = array<i32, 24>();
    global2 = vec4<u32>(u_input.a, _wgslsmith_clamp_u32(arg_0.d, 2605u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, abs(u_input.a)))), 75465u, 4294967295u);
    global4 = all(!vec2<bool>(arg_0.b.x, 29154u == countOneBits(u_input.a)));
    var var_0 = arg_0.b.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(-1873f, 1650f, arg_0.e.x))) - vec3<f32>(_wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(165f + arg_0.a.x)), 282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), vec3<bool>(((arg_0.b.x && true) | true) | true, arg_0.b.x, false), _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(-arg_0.a)), global3[_wgslsmith_index_u32(~(arg_0.d << (20079u % 32u)), 5u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.x, 163f))))))));
    return !(!any(!select(vec3<bool>(var_1.b.x, false, var_1.b.x), var_1.b, arg_0.b.x)));
}

fn func_2() -> vec4<bool> {
    global0 = array<i32, 24>();
    global1 = array<vec4<f32>, 6>();
    global2 = abs(~(~vec4<u32>(abs(global2.x), global2.x, ~global3[_wgslsmith_index_u32(24747u, 5u)], u_input.a | 1u)));
    var var_0 = 1f;
    global3 = array<u32, 5>();
    return vec4<bool>(all(select(vec4<bool>(true, false, func_3(Struct_3(vec3<f32>(-1009f, 948f, -1023f), vec3<bool>(false, false, false), vec3<f32>(1409f, -2061f, 1104f), global3[_wgslsmith_index_u32(global2.x, 5u)], vec2<f32>(292f, 402f)), vec4<i32>(u_input.b, 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 24u)])), true), vec4<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, true, false)), 0u > global2.x, false), false)), all(select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), true)), true, any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(21627u, 24u)], u_input.b, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], -18878i, u_input.b, -1i), vec4<bool>(false, false, false, false)) << (vec4<u32>(global2.x, 1u, ~27043u, ~0u) % vec4<u32>(32u)), vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b, global0[_wgslsmith_index_u32(abs(13965u), 24u)], -105924i), _wgslsmith_div_i32(-17228i, 1i), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2148f, -133f, -764f) * vec3<f32>(-539f, -289f, -466f)), min(vec4<i32>(u_input.b, -25284i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 5u)], 24u)], 2147483647i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 24u)], 69282i, -7859i)), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, 0i, 1i, global0[_wgslsmith_index_u32(1u, 24u)]) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 0i, 21642i, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(global2.x, 24u)], u_input.b, -2147483647i)))), vec4<i32>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, 722f, -651f))), ~vec4<i32>(-2147483647i, u_input.b, 13932i, -3028i), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)), -1i, firstTrailingBit(-37242i ^ global0[_wgslsmith_index_u32(38170u, 24u)]), _wgslsmith_mult_i32(-u_input.b, -18039i)), select(!select(func_2(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!select(false, false, true), false, false, true), 1i > global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, 67348u), 24u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(478f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1902f))), 1467f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, _wgslsmith_f_op_f32(f32(-1f) * -1426f), 1f, -1000f))), vec3<bool>(!(4294967295u < global3[_wgslsmith_index_u32(35257u, 5u)]) || true, false, (~global3[_wgslsmith_index_u32(u_input.a, 5u)] <= 1u) & !select(false, false, true)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.x << (global2.x % 32u), _wgslsmith_mod_u32(u_input.a, 49835u), ~u_input.a), 24u)] <= 29736i);
    var_0 = -reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x, 40717i, 2147483647i, 0i)), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(14166u, 24u)], 15670i, global0[_wgslsmith_index_u32(1u, 24u)], u_input.b))), vec4<i32>(select(0i, -2147483647i, var_1.c), var_0.x, -global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x)));
    global0 = array<i32, 24>();
    let var_2 = max(vec4<i32>(1i, _wgslsmith_sub_i32(-var_0.x, _wgslsmith_sub_i32(~(-1i), u_input.b)), ~countOneBits(_wgslsmith_add_i32(var_0.x, var_0.x)), global0[_wgslsmith_index_u32(1u, 24u)] ^ 1i), vec4<i32>(-1i) * -(~(vec4<i32>(-1i, var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 24u)]) | vec4<i32>(var_0.x, var_0.x, 1i, 0i))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wy, max(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 1u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 5u)], 69319u, global2.x, global2.x))) & max(reverseBits(vec4<u32>(u_input.a, 24963u, 1u, u_input.a)), abs(vec4<u32>(0u, u_input.a, global2.x, u_input.a))), vec4<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, global2.x), 5u)], u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, u_input.a, 595u), vec4<u32>(u_input.a, 13524u, 62167u, global3[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, false, var_1.b.x, true)), vec4<u32>(global3[_wgslsmith_index_u32(global2.x, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28688u, 5u)], 5u)], global2.x, 1u)), 5u)], 1u)), select(_wgslsmith_dot_vec2_i32(~countOneBits(var_0.ww), (vec2<i32>(7203i, 22729i) << (global2.xx % vec2<u32>(32u))) >> (global2.yy % vec2<u32>(32u))), u_input.b, !(!func_2().x)), vec3<u32>(~select(1u, 1u, true), (max(4294967295u, global3[_wgslsmith_index_u32(132675u, 5u)]) >> (~4294967295u % 32u)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(17685u, 4294967295u, 56766u), select(global2.ywx, vec3<u32>(u_input.a, global2.x, 28251u), var_1.c)), _wgslsmith_mult_u32(~global2.x, 0u)), ~var_2.x << (global2.x % 32u));
}

