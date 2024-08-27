struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 17> = array<i32, 17>(i32(-2147483648), 4659i, -11211i, 2147483647i, 55798i, -13399i, 26771i, 15084i, 1i, i32(-2147483648), i32(-2147483648), 9225i, 16460i, 2147483647i, -15042i, 51265i, 4948i);

var<private> global2: array<f32, 30>;

var<private> global3: array<u32, 25> = array<u32, 25>(1u, 95859u, 1u, 0u, 114400u, 4294967295u, 32388u, 4294967295u, 15838u, 66335u, 0u, 1u, 1u, 0u, 85468u, 25831u, 109211u, 0u, 1935u, 1u, 29395u, 61677u, 2785u, 26103u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = -31612i;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -466f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-670f)), -809f)));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1168f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))), any(select(vec2<bool>(-499f < arg_0.x, true), vec2<bool>(true, true), select(true, any(vec2<bool>(false, true)), true))), true, !all(vec4<bool>(false, false, false, true)));
    global1 = array<i32, 17>();
    var var_2 = ~select(min(4294967295u, abs(countOneBits(global3[_wgslsmith_index_u32(u_input.a.x, 25u)]))), u_input.c, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], ~0u), 17u)] == -_wgslsmith_mult_i32(u_input.d.x, -1i));
    return var_1.zyy;
}

fn func_2() -> bool {
    global1 = array<i32, 17>();
    let var_0 = !vec3<bool>(all(!func_3(vec4<f32>(-277f, -2941f, -601f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 25u)], 30u)]))), !(!any(vec2<bool>(false, false))), true != !select(true, true, true));
    global3 = array<u32, 25>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53544u, 25u)], 30u)]))), _wgslsmith_f_op_f32(trunc(global0.x))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-552f - 638f) + _wgslsmith_div_f32(-859f, 777f)))) * _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.x)))))));
    return var_0.x;
}

fn func_1() -> vec4<u32> {
    global2 = array<f32, 30>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 30u)], 2581f, 682f, 2984f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(1u, 30u)], global0.x, -700f, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1878f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2451u, 25u)], 30u)], global0.x, 573f)), !(global1[_wgslsmith_index_u32(715u, 17u)] < u_input.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 30u)], -970f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 25u)], 30u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34608u, 25u)], 30u)], 347f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-887f, 355f, -337f, global0.x), vec4<f32>(154f, global2[_wgslsmith_index_u32(0u, 30u)], global0.x, -1393f)))), vec4<bool>(false, true, true, true))), func_2())));
    var var_0 = firstTrailingBit(~select(~vec2<u32>(1u, u_input.c) >> (~u_input.a.zz % vec2<u32>(32u)), vec2<u32>(global3[_wgslsmith_index_u32(u_input.c ^ 45113u, 25u)], 4294967295u), all(vec3<bool>(true, true, true))));
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 30u)], 460f), _wgslsmith_f_op_f32(global0.x + global0.x), -951f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30347u, 30u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(687f))), global0.x))));
    return vec4<u32>(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.c, 25u)], u_input.c), 31573u, ~_wgslsmith_dot_vec2_u32(select(u_input.a.yy, u_input.a.zy, all(vec2<bool>(true, false))), ~(u_input.a.ww | u_input.a.yw)), 0u);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(global0.xzw));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(222f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10133u, 25u)], 30u)]) - vec2<f32>(global0.x, -675f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) + global0.x)), -min(-min(vec3<i32>(0i, u_input.d.x, -1i), vec3<i32>(arg_1, 0i, -36464i)), vec3<i32>(arg_0.x, 0i, 54024i)), Struct_3(var_0.zx), !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, true));
    global2 = array<f32, 30>();
    global1 = array<i32, 17>();
    let var_2 = !(!select(var_1.e.wxy, var_1.e.xzw, var_1.e.x));
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1507f * 236f))) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), global2[_wgslsmith_index_u32(~abs(1u), 30u)])));
    let var_1 = select(select(vec3<bool>(true, false, func_4(u_input.d.xx & u_input.d.yx, u_input.b, func_1())), !func_3(vec4<f32>(288f, global0.x, -170f, global0.x)), vec3<bool>((7505u | u_input.a.x) <= ~28511u, all(vec2<bool>(false, false)), select(false, true, true))), !vec3<bool>(true, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2271f, -214f, 1596f))).x, all(vec4<bool>(true, true, true, true))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 30u)], -331f, -150f))))).x & func_2());
    let var_2 = func_1().wz;
    var var_3 = Struct_1(-401f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(var_2, var_2), vec2<u32>(var_2.x, var_2.x)), ~select(var_2, u_input.a.xz, var_1.x)), 6628u), _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1577f * var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))), vec4<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(46817u, 25u)], _wgslsmith_div_u32(66649u, u_input.c)), 25u)], _wgslsmith_clamp_u32(55580u, ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 47917u), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(var_2.x), global3[_wgslsmith_index_u32(4294967295u, 25u)] ^ u_input.a.x, ~3195u), 25u)]), 16035u, _wgslsmith_dot_vec2_u32((var_2 >> (vec2<u32>(global3[_wgslsmith_index_u32(0u, 25u)], var_2.x) % vec2<u32>(32u))) & var_2, ~vec2<u32>(1u, var_2.x) | ~var_2)));
}

