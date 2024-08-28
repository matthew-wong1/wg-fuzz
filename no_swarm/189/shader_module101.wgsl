struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: Struct_4;

var<private> global3: array<u32, 13> = array<u32, 13>(39247u, 2299u, 0u, 0u, 1u, 48773u, 4294967295u, 0u, 4294967295u, 4294967295u, 13633u, 30430u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> vec2<bool> {
    return global2.a.a;
}

fn func_3() -> vec2<bool> {
    var var_0 = vec2<i32>(1i, global2.c.x);
    let var_1 = 33984u;
    var var_2 = global2.a;
    var_0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.yy, -reverseBits(vec2<i32>(-5869i, -2147483647i))), u_input.b.x);
    var var_3 = u_input.a.x << (min(1u, var_1) % 32u);
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_4 {
    global2 = Struct_4(global2.a, 7223i, _wgslsmith_add_vec2_i32(u_input.a, ~(vec2<i32>(-24016i, -1i) | -u_input.a)), global2.d, func_3().x);
    var var_0 = reverseBits(vec4<u32>(~_wgslsmith_add_u32(15752u, global3[_wgslsmith_index_u32(1u, 13u)]), ~arg_1, _wgslsmith_clamp_u32(min(52243u, arg_1), reverseBits(arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(87472u, arg_3.a, arg_1), vec3<u32>(4294967295u, 4294967295u, 1u))), 1u)) | ~_wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4324u, arg_1, arg_3.a, 14968u), vec4<u32>(12813u, arg_1, arg_3.a, arg_1))), vec4<u32>(arg_3.a, 4294967295u, 33839u, arg_1) << (~vec4<u32>(arg_3.a, 4294967295u, arg_3.a, arg_1) % vec4<u32>(32u)));
    let var_1 = vec4<i32>(u_input.b.x, global2.c.x, firstTrailingBit(~4708i), 1i);
    global0 = global1.a;
    var var_2 = Struct_4(global2.d, 3901i, -_wgslsmith_div_vec2_i32(u_input.b.yz, -vec2<i32>(u_input.b.x, u_input.b.x)), Struct_3(!vec2<bool>(arg_0.x, select(true, false, global2.d.a.x)), 0i, Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c.b) - _wgslsmith_f_op_f32(global1.b * arg_3.c)), -1047f)), true);
    return Struct_4(var_2.d, 25016i, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-15591i, -1i), abs(u_input.a.x)), select(_wgslsmith_sub_i32(-1i, -38800i), var_1.x, global1.a)), 2147483647i), var_2.a, !any(vec3<bool>(all(arg_2), global2.e || var_2.d.c.a, any(vec4<bool>(arg_2.x, true, var_2.e, arg_0.x)))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = func_4(select(select(select(select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, false), global1.a), !vec2<bool>(true, global2.e), global2.a.a), select(select(global2.a.a, vec2<bool>(global1.a, global2.d.c.a), global2.d.a), select(global2.a.a, global2.a.a, vec2<bool>(global1.a, global1.a)), false), !func_2()), select(global2.d.a, global2.d.a, func_3()), 1243i >= ~(5123i & global2.d.b)), select(_wgslsmith_mod_u32(~1u, firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])), 0u, global2.a.c.a) | (((13931u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(99005u, 13u)], 13u)], 13u)]) << (_wgslsmith_clamp_u32(1103u, global3[_wgslsmith_index_u32(376u, 13u)], 0u) % 32u)) | ~abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])), vec3<bool>(-324f >= global2.d.c.b, global2.a.b <= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 22310i, u_input.b.x, u_input.b.x), vec4<i32>(global2.a.b, -60379i, 7017i, u_input.b.x)), -80033i), true), Struct_5(firstLeadingBit(4294967295u), global2.a.c, -1072f));
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12006u, 13u)], 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(30114u, 13u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)])), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61110u, 13u)], 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29305u, 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(32708u, 13u)], 0u) & ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23104u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 0u)), vec4<u32>(select(_wgslsmith_div_u32(34580u, 1u), ~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)], 4115u), func_2().x | any(var_0.d.a)), firstTrailingBit(abs(firstTrailingBit(0u))), 21376u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, reverseBits(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(46666u, 13u)], global3[_wgslsmith_index_u32(87667u, 13u)]))), 13u)]));
    var var_3 = !func_2();
    global3 = array<u32, 13>();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-var_0.c, -vec2<i32>(var_0.a.b, u_input.b.x)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global2.b, u_input.a.x, 1i), var_0.d.b, i32(-1i) * -30445i), _wgslsmith_mod_i32(-2147483647i, var_0.a.b))) >= -53485i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(global2.d, u_input.a.x, max(-vec2<i32>(global2.d.b, global2.b), vec2<i32>(~countOneBits(global2.d.b), u_input.a.x)), global2.d, !(any(vec3<bool>(true, global1.a, true)) != global1.a) && true);
    global1 = Struct_1(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(124f, global2.a.c.b, _wgslsmith_f_op_f32(abs(global2.a.c.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.b, 836f, global1.b))))), _wgslsmith_f_op_f32(ceil(-1098f)), 1566f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.b, _wgslsmith_dot_vec3_u32(~((vec3<u32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 42174u) ^ vec3<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(24629u, 13u)])) & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 50867u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 10719u, 5268u))), _wgslsmith_mult_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(120778u, 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 13u)], 9848u))), vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(28492u, global3[_wgslsmith_index_u32(0u, 13u)]), 13u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(64216u, 13u)], global3[_wgslsmith_index_u32(10910u, 13u)]), vec2<u32>(39501u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)])), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)]))), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(max(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54754u, 13u)], 13u)]), 13u)], 1u), 13u)] << ((~1u >> (global3[_wgslsmith_index_u32(4294967295u << (global3[_wgslsmith_index_u32(1953u, 13u)] % 32u), 13u)] % 32u)) % 32u), ~0u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], 33691u));
}

