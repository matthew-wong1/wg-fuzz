struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 10>;

var<private> global2: Struct_1 = Struct_1(82878u);

var<private> global3: array<u32, 16> = array<u32, 16>(1u, 0u, 53925u, 4294967295u, 7954u, 15829u, 47576u, 56948u, 61766u, 4294967295u, 4294967295u, 4294967295u, 0u, 4294967295u, 37231u, 1u);

var<private> global4: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> f32 {
    global0 = !(all(vec4<bool>(all(vec4<bool>(arg_3.b, false, arg_3.b, arg_3.b)), arg_3.b, arg_3.b, true)) | true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1062f)));
    let var_1 = _wgslsmith_f_op_f32(-975f + _wgslsmith_f_op_f32(round(163f)));
    global4 = u_input.a;
    var var_2 = arg_0.c.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(-max(_wgslsmith_add_vec3_i32(vec3<i32>(-52494i, 59959i, -2147483647i), vec3<i32>(1i, 48650i, 26235i)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -62214i, 610i), vec3<i32>(35267i, -15739i, -17800i))), select(~(~vec3<i32>(-2147483647i, 0i, 13247i)), vec3<i32>(_wgslsmith_div_i32(0i, -807i), -1i, 0i >> (global2.a % 32u)), vec3<bool>(true, true, true))) <= reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 43353i, -1i, 6991i), vec4<i32>(0i, -1i, -35665i, 1i) >> (u_input.a % vec4<u32>(32u))) >> (abs(93253u) % 32u));
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(~1u, 16u)]);
    global4 = vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.a << (u_input.a % vec4<u32>(32u)), vec4<u32>(countOneBits(~4294967295u), _wgslsmith_mod_u32(11179u, global4.x), 2939u, 0u)), 0u, _wgslsmith_mod_u32(var_1.a << (~(u_input.a.x ^ 23676u) % 32u), global1[_wgslsmith_index_u32(32918u << (0u % 32u), 10u)]), 1u);
    var var_2 = -1504f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(-2630f + -281f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2222f) - _wgslsmith_f_op_f32(-972f + -608f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(150f * 353f) + _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(4294967295u), global3[_wgslsmith_index_u32(u_input.b, 16u)], vec3<f32>(461f, -366f, -506f), Struct_1(u_input.a.x), vec2<i32>(26320i, -65110i)), Struct_1(4294967295u), u_input.a.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(global4.x, 10u)]), var_0)))) + _wgslsmith_f_op_f32(trunc(2412f)))));
    return Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.a, 4294967295u, 26569u), 66472u), global2.a)), false);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0.zxx - arg_0.zwz);
    var var_1 = func_2();
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-912f, arg_0.x), vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(-arg_0.zy), true)), _wgslsmith_f_op_vec2_f32(trunc(var_0.xz)), !var_1.b)), arg_0.zy) * _wgslsmith_f_op_vec2_f32(round(arg_0.zw)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) - _wgslsmith_f_op_f32(ceil(-1000f))));
    return func_2().a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yz;
    var var_1 = true & (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2049f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1218f, 1299f) - _wgslsmith_f_op_f32(floor(349f))))) >= _wgslsmith_f_op_f32(min(-440f, _wgslsmith_f_op_f32(abs(-195f)))));
    let var_2 = Struct_2(Struct_1(55115u), !(firstTrailingBit(u_input.b) > reverseBits(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~countOneBits(~1u), ~var_2.a.a, ~global4.x), 0i, _wgslsmith_div_vec3_i32(vec3<i32>(~(-15292i), 2147483647i, ~_wgslsmith_mult_i32(-16600i, 1i)), -vec3<i32>(_wgslsmith_add_i32(-4326i, 0i), -1i, _wgslsmith_clamp_i32(1i, 55704i, 1i))), 4294967295u, _wgslsmith_add_vec2_u32(~(~reverseBits(vec2<u32>(0u, u_input.b))), vec2<u32>(func_1(vec4<f32>(242f, -1530f, -185f, -1310f)) | _wgslsmith_clamp_u32(7923u, global4.x, 4294967295u), global1[_wgslsmith_index_u32(global4.x, 10u)])));
}

