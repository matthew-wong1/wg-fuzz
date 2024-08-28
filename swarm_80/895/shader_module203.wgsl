struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(0i, 25175i, 1i, 1i), vec4<i32>(-13917i, -54819i, 2147483647i, 2147483647i), vec4<i32>(49726i, -19593i, -25130i, -1i), vec4<i32>(i32(-2147483648), -11480i, 1i, i32(-2147483648)), vec4<i32>(-45927i, i32(-2147483648), 12825i, 2147483647i), vec4<i32>(3469i, -49720i, -64113i, 19788i), vec4<i32>(1i, -7776i, 2224i, i32(-2147483648)), vec4<i32>(1i, 10944i, -26364i, -1i), vec4<i32>(-13745i, 31905i, -12902i, 0i), vec4<i32>(-22041i, 9461i, 0i, 0i), vec4<i32>(12080i, 36193i, 2147483647i, -7250i), vec4<i32>(2147483647i, 10837i, 0i, -52841i), vec4<i32>(i32(-2147483648), -16010i, -60564i, -49808i), vec4<i32>(-23281i, 9361i, 6589i, -25010i));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-2110f, vec3<u32>(5544u, 4294967295u, 4294967295u)), Struct_2(348f, vec3<u32>(0u, 0u, 0u)), Struct_2(-241f, vec3<u32>(21783u, 9872u, 45115u)), Struct_2(-508f, vec3<u32>(59608u, 32187u, 121097u)), Struct_2(1058f, vec3<u32>(0u, 44476u, 4294967295u)), Struct_2(-946f, vec3<u32>(0u, 81143u, 41791u)), Struct_2(179f, vec3<u32>(0u, 0u, 24856u)), Struct_2(-679f, vec3<u32>(14306u, 18103u, 0u)), Struct_2(1415f, vec3<u32>(4017u, 4294967295u, 9259u)), Struct_2(753f, vec3<u32>(21649u, 19403u, 29135u)), Struct_2(-976f, vec3<u32>(4294967295u, 97481u, 35767u)), Struct_2(-1392f, vec3<u32>(1u, 0u, 14329u)), Struct_2(-242f, vec3<u32>(1u, 4294967295u, 3473u)), Struct_2(-853f, vec3<u32>(14354u, 4294967295u, 64748u)), Struct_2(-1305f, vec3<u32>(76257u, 0u, 4294967295u)), Struct_2(-1000f, vec3<u32>(1u, 15462u, 61083u)), Struct_2(-2043f, vec3<u32>(4294967295u, 140754u, 4294967295u)), Struct_2(124f, vec3<u32>(73784u, 0u, 60808u)), Struct_2(-857f, vec3<u32>(19243u, 68518u, 1u)));

var<private> global4: array<bool, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = false;
    var var_1 = global3[_wgslsmith_index_u32(arg_0.x, 19u)];
    let var_2 = u_input.c.x;
    var var_3 = vec3<f32>(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), 1041f, all(!vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(39694u, 24u)])))), -2080f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a)) - _wgslsmith_f_op_f32(var_3.x + var_3.x)))), 1024f)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -395f) * 548f), _wgslsmith_f_op_f32(ceil(var_1.a))))));
    return 1000f;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> f32 {
    global3 = array<Struct_2, 19>();
    global4 = array<bool, 24>();
    global3 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 200f) + _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -380f)))), 1740f));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 13u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1860f)), var_0.x))) - -136f);
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 13u)];
    global2 = array<vec4<i32>, 15>();
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * var_0.d)))))), abs(~var_0.c), var_0.b);
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), 715f) + -1549f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(select(vec3<bool>(global4[_wgslsmith_index_u32(40967u, 24u)], global4[_wgslsmith_index_u32(var_0.c, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.c, 24u)], global4[_wgslsmith_index_u32(32317u, 24u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(65903u, 24u)], false)), select(vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], true, global4[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(36689u, 24u)], false, global4[_wgslsmith_index_u32(u_input.a, 24u)])), select(vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.c, 24u)], global4[_wgslsmith_index_u32(var_0.c, 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(var_0.c, 24u)], false), global4[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, 1u, 0u)))), _wgslsmith_div_i32(var_0.a.x, -17688i) >> (var_0.c % 32u)))));
    return global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(50130u)), 13u)];
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = vec3<i32>(u_input.c.x, -33352i, 0i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(490f + _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2056f)))) * _wgslsmith_f_op_f32(-1638f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(-arg_0)))), vec3<f32>(-420f, 1166f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), arg_0.x)))));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * var_2.b))))));
    return u_input.a > var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global4[_wgslsmith_index_u32(~abs(~(u_input.a >> (17507u % 32u))), 24u)];
    var var_1 = ~(~_wgslsmith_div_u32(select(u_input.a, 1u, func_1(vec3<f32>(719f, 131f, -914f))), 1u));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ((abs(0u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 55176u)) % 32u)) << (u_input.a % 32u)) << (0u % 32u)), 19u)];
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~var_2.b.yy), var_2.b.yy, var_2.b.zx), var_2.b.zz), 19u)];
    let var_4 = u_input.b;
    var_0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1247f, 505f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1907f * var_3.a), 157f, _wgslsmith_f_op_f32(var_2.a + -1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-712f, -1000f, var_3.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1486f, 1847f, -816f))))));
    var var_5 = var_4.x;
    global0 = array<vec4<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(786f - var_2.a)))))));
}

