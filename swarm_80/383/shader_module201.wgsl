struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 52649u);

var<private> global1: array<f32, 24> = array<f32, 24>(195f, 495f, -891f, -137f, 2232f, 495f, 276f, 822f, 161f, -796f, 1427f, -1455f, -192f, 273f, -1000f, -1454f, -1045f, -197f, -179f, -1000f, 403f, -1377f, 288f, 686f);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: Struct_4 = Struct_4(vec4<u32>(1u, 88987u, 4294967295u, 23338u), Struct_2(Struct_1(vec2<u32>(48032u, 0u), 1u, vec2<u32>(99337u, 4294967295u), vec4<i32>(-22748i, 391i, i32(-2147483648), -1i), 34465u), false));

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = reverseBits(global3.a.yxz);
    let var_1 = -(~(~u_input.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(46982u, 24u)], 1006f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 24u)], -584f, 278f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global3.a.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 24u)] * -458f)))))));
    global4 = false;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, 1887f, _wgslsmith_f_op_f32(max(var_2.x, 1356f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2437f, -1000f, global1[_wgslsmith_index_u32(global3.a.x, 24u)]))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 622f, 611f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(652f, global1[_wgslsmith_index_u32(global3.a.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, 1377f, 311f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1827f, 1339f, var_2.x), vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 24u)], 287f, var_2.x), vec3<bool>(global2.x, false, false)))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -830f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(arg_0, 24u)])), 178f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 24u)], var_2.x, global1[_wgslsmith_index_u32(global3.a.x, 24u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1631f, global1[_wgslsmith_index_u32(global0.x, 24u)]))))));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_5 {
    var var_0 = firstLeadingBit(u_input.d.x);
    global1 = array<f32, 24>();
    global3 = Struct_4(abs(~(vec4<u32>(global3.b.a.e, u_input.c, 67493u, 9080u) & abs(vec4<u32>(global3.b.a.c.x, 17305u, global3.a.x, 17029u)))), Struct_2(Struct_1(vec2<u32>(_wgslsmith_mult_u32(4294967295u, global3.a.x), arg_1), ~(~global0.x), vec2<u32>(global0.x, 1u), global3.b.a.d, reverseBits(72716u) << (_wgslsmith_mult_u32(arg_1, u_input.c) % 32u)), !func_3(min(1u, global0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(u_input.d, global3.a), 9032u) | arg_1, 24u)], 817f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_1, 24u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~95332u, 24u)]))));
    var var_2 = max(-vec3<i32>(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_clamp_i32(u_input.a, 0i, global3.b.a.d.x)), abs(_wgslsmith_add_i32(2147483647i, u_input.a)), i32(-1i) * -1i), _wgslsmith_add_vec3_i32(abs(~(global3.b.a.d.wxx ^ vec3<i32>(2147483647i, -26105i, global3.b.a.d.x))), -(~global3.b.a.d.wxw) & global3.b.a.d.yyx));
    return Struct_5(abs((global3.a.x << (global0.x % 32u)) ^ global0.x) >> (global0.x % 32u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = global3.b.a;
    var var_1 = all(vec4<bool>(global2.x, ~0u != u_input.c, true, !(!global2.x)));
    var var_2 = func_2(select(vec2<bool>(true, global3.b.b), !vec2<bool>(any(vec3<bool>(false, true, global2.x)), global3.b.b), (min(28321u, 4294967295u) << (_wgslsmith_div_u32(var_0.a.x, 0u) % 32u)) == 12695u), countOneBits(0u));
    var_0 = Struct_1(vec2<u32>(abs(~max(global0.x, global3.b.a.a.x)), _wgslsmith_add_u32(4724u, 5875u)), 59756u, ~var_0.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.a.d.x << (21105u % 32u), var_0.d.x & 14290i, ~var_0.d.x, i32(-1i) * -2147483647i), global3.b.a.d), ~reverseBits(var_0.d.x), firstTrailingBit(1i), abs(u_input.a)), 0u);
    global1 = array<f32, 24>();
    return ~(~(~var_2.a)) ^ countOneBits(7506u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec4<bool>(any(vec3<bool>(false, global3.b.b, global2.x)), true, false, global2.x), !vec4<bool>(true, false, global3.b.b, true), vec4<bool>(global1[_wgslsmith_index_u32(59404u, 24u)] < -486f, true, !global3.b.b, any(vec3<bool>(true, true, false))))) || global2.x;
    var_0 = !all(vec4<bool>(!(!global2.x), !any(vec2<bool>(true, false)), global2.x, true));
    global2 = !(!vec2<bool>(global2.x, !(!global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 24u)])), global1[_wgslsmith_index_u32(func_1(u_input.a | -1i, Struct_1(u_input.d.wx, 1u, global3.b.a.a, vec4<i32>(u_input.a, 0i, global3.b.a.d.x, 0i), 80101u)), 24u)]), 817f, global1[_wgslsmith_index_u32(global3.a.x, 24u)]), 42292i, _wgslsmith_add_vec2_u32(select(countOneBits(vec2<u32>(global3.a.x, 1u)), vec2<u32>(46016u, ~1u), true), vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~u_input.d.x), 37783u)));
}

