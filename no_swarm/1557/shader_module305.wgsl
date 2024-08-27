struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(767f, -1359f);

var<private> global2: array<i32, 31> = array<i32, 31>(1i, 0i, i32(-2147483648), 2147483647i, -1i, -1i, 2147483647i, 0i, 0i, -10364i, 54451i, 21669i, 42908i, -1i, -1i, -18930i, 2147483647i, -1i, 15123i, -1i, 2147483647i, -1i, 2147483647i, 11612i, 5287i, 1i, 0i, 2147483647i, 0i, -1i, -1i);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(449f, -1343f, -1106f, -547f), vec4<f32>(967f, 259f, 1815f, 1000f), vec3<f32>(-1000f, 443f, 763f), vec4<f32>(-522f, -1000f, 306f, -252f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global2 = array<i32, 31>();
    global0 = !(global3.c.x == _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(83657u, abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) | 1u)), 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b), vec4<f32>(global3.b.x, 1331f, 144f, global1.x)))) - global3.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, global3.c.x, _wgslsmith_f_op_f32(498f * global1.x), _wgslsmith_f_op_f32(min(global1.x, -1000f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global3.a)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c.x, global1.x, global1.x, -718f)))))))), global3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, _wgslsmith_div_f32(_wgslsmith_div_f32(global3.c.x, global1.x), _wgslsmith_f_op_f32(-1108f + -3371f)), _wgslsmith_f_op_f32(1476f - global3.c.x), global3.c.x)));
    global0 = any(!vec2<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) < _wgslsmith_add_u32(58799u, 0u)));
    return 643f;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(2357f, _wgslsmith_f_op_f32(f32(-1f) * -1428f), _wgslsmith_f_op_f32(1439f + global1.x), 1266f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1299f + -149f), _wgslsmith_div_f32(1710f, global1.x), global3.c.x, _wgslsmith_div_f32(global3.b.x, -253f))))), global3.d, _wgslsmith_f_op_vec3_f32(sign(arg_0.b.xxx)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(arg_0.d.x, -1000f, global3.a.x, 734f)))), global3.b)));
    return select(vec4<bool>(true, true == (_wgslsmith_f_op_f32(sign(arg_0.b.x)) == -537f), !(195f >= _wgslsmith_f_op_f32(floor(global1.x))), select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true)), true, !(global2[_wgslsmith_index_u32(u_input.a.x, 31u)] < global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec4<bool>(true, true, true, true), false);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -2086f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3.a.x)))), _wgslsmith_f_op_f32(func_2(firstTrailingBit(vec2<i32>(2147483647i, -1i))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(478f, arg_0, 323f)))))) - global3.b.xxx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.b))));
    let var_1 = ~(~reverseBits(~vec4<u32>(40503u, 2533u, 1659u, 108551u))) & vec4<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(16279u, u_input.a.x, u_input.a.x, 19537u), vec4<u32>(37846u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(1u, 33346u, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_u32(~(u_input.a.x & u_input.a.x), select(u_input.a.x, ~u_input.a.x, false), select(u_input.a.x, u_input.a.x, false) & 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, u_input.a.x)), 1u);
    var var_2 = Struct_1(var_0.d, global3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(var_0.b.x, global1.x)), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.b.ywx)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-315f, -1000f, global1.x) * var_0.d.zzw))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)) * global3.a));
    var var_3 = select(select(func_3(var_0), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), true), vec4<bool>(true, true, true, true), select(var_1.x > 59037u, all(vec2<bool>(false, false)), true)), select(!func_3(var_0), vec4<bool>(true, true, true, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)] == global2[_wgslsmith_index_u32(u_input.a.x, 31u)], true))), !select(vec4<bool>(-1314f != var_0.c.x, func_3(Struct_1(vec4<f32>(global1.x, 1000f, -1201f, -2234f), global3.a, vec3<f32>(var_2.c.x, 2718f, var_2.c.x), vec4<f32>(arg_0, -1769f, -1089f, -1485f))).x, select(false, false, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true));
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-17446i, 27647i, 0i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(31781u, 31u)]), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(var_1.x, 31u)], -2147483647i) << (vec3<u32>(var_1.x, 25187u, u_input.a.x) % vec3<u32>(32u))), select(abs(max(vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<i32>(-40252i, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]))), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 31u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], -49870i, 1i), vec3<i32>(1i, global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), var_3.ywy)), abs(abs(abs(reverseBits(-24932i)))));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(400f, _wgslsmith_f_op_f32(min(global1.x, 171f)))))), 973f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-687f, 322f))));
    var var_2 = all(vec4<bool>(all(vec2<bool>(false, !arg_0)), all(!vec4<bool>(true, var_1, arg_0, var_1)), any(!(!vec2<bool>(false, arg_0))), !arg_0));
    var var_3 = arg_3;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-327f)), global3.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, -2239f), _wgslsmith_f_op_f32(-global3.b.x)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.b.x == -1087f;
    global3 = func_4(-2138f == global3.b.x, firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], abs(global2[_wgslsmith_index_u32(4294967295u, 31u)]) & global2[_wgslsmith_index_u32(~11224u, 31u)], _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 1i, -70039i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 9440i, 2147483647i, 63615i)), vec4<i32>(-2147483647i, 26129i, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 2147483647i)))), func_1(global3.d.x), Struct_1(func_1(func_1(-1000f).b.x).a, vec4<f32>(302f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(trunc(620f))), global3.a.zww, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3.d.x, -1078f, global3.c.x))), global3.a, func_3(func_1(-1081f)).x))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1078f, global1.x, 137f), vec4<f32>(-1536f, global1.x, global3.c.x, global1.x), vec4<bool>(true, true, true, true)))) * func_1(global3.c.x).a), global3.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f + global1.x) + 954f), global1.x, -600f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1220f, global3.a.x, 336f)) - _wgslsmith_f_op_vec4_f32(select(global3.b, vec4<f32>(_wgslsmith_div_f32(-734f, global3.a.x), _wgslsmith_f_op_f32(-1568f + 312f), _wgslsmith_f_op_f32(ceil(global3.d.x)), global1.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -721f), var_0.d.x), vec2<f32>(-730f, global3.a.x), !all(vec2<bool>(false, true)))), 1i, global2[_wgslsmith_index_u32(1u, 31u)]);
}

