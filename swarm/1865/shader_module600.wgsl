struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 29>;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c, _wgslsmith_f_op_f32(exp2(arg_2.b.c)), _wgslsmith_f_op_f32(f32(-1f) * -1722f))));
    return abs(firstLeadingBit(-_wgslsmith_div_i32(global3.b.e, arg_2.b.e)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_add_i32(select(35150i, reverseBits(func_3(Struct_2(vec2<bool>(global3.a.x, true), global3.b), _wgslsmith_div_f32(-852f, -900f), Struct_2(vec2<bool>(global3.a.x, global3.a.x), global3.b))), !any(vec4<bool>(true, global3.a.x, global3.a.x, true)) | (true == !global3.a.x)), u_input.e);
    global1 = global3.b.e;
    let var_1 = Struct_4(Struct_3(-1752f, Struct_2(global3.a, Struct_1(1u, global3.b.b >> (4294967295u % 32u), 219f, 0u & global3.b.b, u_input.d)), any(vec4<bool>(global3.a.x & false, true, true == global3.a.x, global3.a.x)), -28745i), global0[_wgslsmith_index_u32(reverseBits(~reverseBits(global3.b.a)), 3u)], 612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(min(1225f, _wgslsmith_f_op_f32(ceil(arg_0))))) * _wgslsmith_f_op_f32(max(global3.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]) - _wgslsmith_f_op_f32(f32(-1f) * -186f))))), !select(vec4<bool>(global3.a.x, -619f >= global3.b.c, all(vec2<bool>(global3.a.x, false)), false), !(!vec4<bool>(true, global3.a.x, global3.a.x, true)), select(!vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), select(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, false, false), vec4<bool>(global3.a.x, true, true, false)), all(vec2<bool>(true, global3.a.x)))));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global3.b.c))))), Struct_2(var_1.e.zz, global3.b), all(vec4<bool>(!global3.a.x, 6959i < var_1.a.d, false, global3.a.x)), ~global3.b.e), 1000f, -1940f, global3.b.c, var_1.e);
    global2 = array<vec2<u32>, 29>();
    return abs(~78230u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.c, 1438f, 148f, global0[_wgslsmith_index_u32(27097u, 3u)])), vec4<f32>(_wgslsmith_f_op_f32(trunc(936f)), _wgslsmith_f_op_f32(global3.b.c * global0[_wgslsmith_index_u32(global3.b.b, 3u)]), -1000f, _wgslsmith_f_op_f32(-global3.b.c)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1294f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f + -1000f) + global0[_wgslsmith_index_u32(37335u, 3u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f), -394f), global0[_wgslsmith_index_u32(select(func_2(global0[_wgslsmith_index_u32(arg_0.x, 3u)]), 4798u, 0u > global3.b.a), 3u)]))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(25496u, 3u)])), 1554f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 3u)], 118f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1969f, 1723f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(5465u, 3u)] + global0[_wgslsmith_index_u32(2976u, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1771f * global3.b.c) + -867f), _wgslsmith_f_op_f32(sign(587f))))));
    global3 = Struct_2(!global3.a, global3.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global3.b.c, -622f, -285f)), vec4<f32>(-1296f, global3.b.c, 2155f, global0[_wgslsmith_index_u32(arg_0.x, 3u)]))))) - vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_1.x << (global3.b.d % 32u), ~global3.b.a), 1u, ~0u >> ((0u << (arg_1.x % 32u)) % 32u)), 3u)], _wgslsmith_f_op_f32(-global3.b.c), _wgslsmith_f_op_f32(f32(-1f) * -2378f), global0[_wgslsmith_index_u32(arg_0.x, 3u)]));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.a, func_1(reverseBits(vec2<u32>(~global3.b.b, ~4294967295u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global3.b.d, global3.b.d)), global2[_wgslsmith_index_u32(4294967295u, 29u)])));
    let var_0 = !vec4<bool>(all(!(!vec3<bool>(global3.a.x, false, global3.a.x))), true, ~global3.b.e != u_input.b, true);
    let var_1 = Struct_4(Struct_3(232f, Struct_2(!select(var_0.wx, vec2<bool>(var_0.x, var_0.x), global3.a.x), Struct_1(_wgslsmith_add_u32(global3.b.d, 38034u), abs(4294967295u), _wgslsmith_f_op_f32(step(225f, global3.b.c)), 27754u, 1i)), var_0.x, ~(-12636i)), global3.b.c, -895f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.b.b, 3u)])), 491f) + global0[_wgslsmith_index_u32(reverseBits(global3.b.d), 3u)]), var_0);
    let var_2 = Struct_5(-(u_input.c | _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-1i, var_1.a.d, global3.b.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.a.d, global3.b.e), vec3<i32>(-3617i, 0i, var_1.a.b.b.e)), u_input.c)), -2147483647i, firstLeadingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3.b.b, var_1.a.b.b.a), vec3<u32>(0u, global3.b.a, 42788u)))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i | _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d, -1i), _wgslsmith_div_i32(var_2.a.x, u_input.b)), -_wgslsmith_mult_i32(var_2.a.x, ~u_input.a.x), func_3(Struct_2(select(global3.a, global3.a, false), Struct_1(var_2.c.x, global3.b.b, 1764f, var_1.a.b.b.d, -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))), Struct_2(!var_0.zy, var_1.a.b.b))), min(-_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, -30274i, global3.b.e, global3.b.e), vec4<i32>(var_2.a.x, 2147483647i, u_input.b, global3.b.e)), vec4<i32>(0i, 2147483647i, 0i, var_1.a.d)), ~vec4<i32>(global3.b.e, 9344i, global3.b.e, max(u_input.e, var_1.a.d))), 867f, 69269u);
}

