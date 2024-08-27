struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, false, false, false, false, false, false, true, false, false, true, true, true, false, true);

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global2 = false;
    var var_0 = all(vec3<bool>(u_input.b.x == -abs(39465i), !global0[_wgslsmith_index_u32(~0u, 17u)], true));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + 1226f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -188f)) - 841f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * -126f)), vec4<i32>(~(~1i), ~1i, u_input.a, ~u_input.a));
    let var_3 = Struct_2(_wgslsmith_div_f32(-378f, var_2.a), reverseBits(-15767i), !select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(56471u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(2572u, 17u)])), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], false, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true, global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(13201u, 17u)])), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.d.x, 17u)], any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(0u, 17u)], true)), true, 1i != var_2.b.x)));
    return select(!(!vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 17u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 17u)])), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(6995u, 4294967295u), u_input.d.yy), 17u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, arg_0), -256f, true)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-331f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), -853f)));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = array<bool, 17>();
    var var_0 = Struct_2(547f, _wgslsmith_mult_i32(0i >> (1u % 32u), 16145i), select(vec4<bool>(!global0[_wgslsmith_index_u32(~u_input.c, 17u)], false & global0[_wgslsmith_index_u32(~u_input.d.x, 17u)], all(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_0, arg_0)), all(!vec2<bool>(arg_0, false))), vec4<bool>(true, arg_0, true, true), select(select(select(vec4<bool>(arg_0, false, global0[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(global0[_wgslsmith_index_u32(57774u, 17u)], true, arg_0, true), vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(25482u, 17u)], arg_0)), vec4<bool>(arg_0, arg_0, true, arg_0), true), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], true, global0[_wgslsmith_index_u32(51948u, 17u)])), select(!vec4<bool>(true, true, false, arg_0), select(vec4<bool>(false, arg_0, false, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)], false)), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, arg_0, true, true), vec4<bool>(true, true, false, false))))));
    var var_1 = !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], false, true || (0i != u_input.a)), !vec3<bool>(true, true, !var_0.c.x), !any(!vec4<bool>(var_0.c.x, false, global0[_wgslsmith_index_u32(63152u, 17u)], true)));
    var var_2 = global3[_wgslsmith_index_u32(u_input.d.x, 25u)];
    return select(var_2.c.c, var_0.c, !vec4<bool>(arg_0, all(var_2.c.c.xwy), any(func_3(-1000f)), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], true, var_1.x))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    global1 = array<vec3<f32>, 32>();
    global1 = array<vec3<f32>, 32>();
    global0 = array<bool, 17>();
    let var_0 = !any(select(!select(vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<bool>(arg_0, global0[_wgslsmith_index_u32(37943u, 17u)], arg_0)), !(!vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(false, false, arg_0)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1670f + arg_1)) * -338f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + arg_1)))), (firstTrailingBit(0i) >> (u_input.d.x % 32u)) | 1i, !select(!func_2(var_0), vec4<bool>(arg_2.x >= -1903f, true, arg_1 < arg_1, var_0), u_input.b.x <= (22325i >> (u_input.d.x % 32u))));
    return global3[_wgslsmith_index_u32(max(~u_input.c, _wgslsmith_sub_u32(countOneBits(~4294967295u), _wgslsmith_clamp_u32(firstTrailingBit(24324u), u_input.d.x, 28308u))) ^ ~(~(u_input.c ^ u_input.d.x)), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_i32(-13225i, ~u_input.b.x) <= _wgslsmith_dot_vec2_i32(u_input.b << ((vec2<u32>(1u, 66099u) << (u_input.d.zy % vec2<u32>(32u))) % vec2<u32>(32u)), ~countOneBits(-vec2<i32>(2147483647i, 23991i)));
    global1 = array<vec3<f32>, 32>();
    var var_0 = func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2507f - 785f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-899f * -728f), _wgslsmith_f_op_f32(953f - 395f)) - vec2<f32>(_wgslsmith_f_op_f32(888f + -309f), -201f)))));
    var var_1 = var_0.c.b & _wgslsmith_sub_i32(-min(_wgslsmith_div_i32(var_0.c.b, -11198i), u_input.a), i32(-1i) * -1i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -709f), ~u_input.b.x, var_0.c.c);
    var var_3 = var_2.b;
    var_3 = -1i;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -971f)))), func_2(true).x)), i32(-1i) * -2147483647i, !(!(!(!vec4<bool>(var_0.c.c.x, true, var_0.b.x, true)))));
    var var_5 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.c, ~u_input.d.x, var_2.c.x) | 5451u, ~1u, u_input.d.x ^ ~(9758u & u_input.c)), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)) - var_0.a.x)), vec3<i32>(min(var_5.c.b, -19139i), var_4.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -7352i), select(u_input.b, u_input.b, vec2<bool>(var_5.c.c.x, true)))), ~(~0u));
}

