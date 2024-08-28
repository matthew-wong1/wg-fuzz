struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<vec2<f32>, 22>;

var<private> global2: Struct_3;

var<private> global3: bool = false;

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = select(select(!(!(!vec4<bool>(false, global4.b, true, true))), !(!select(vec4<bool>(global4.b, global4.b, false, false), vec4<bool>(global4.b, false, global4.b, global4.b), vec4<bool>(false, global2.a, false, true))), select(!(!vec4<bool>(true, global2.b.x, false, global4.b)), !vec4<bool>(global2.b.x, true, global2.a, true), !all(vec3<bool>(false, global2.b.x, global2.a)))), vec4<bool>(!(!(global4.b || true)), !((arg_0 < arg_0) && !global2.b.x), true, any(vec3<bool>(global4.b, !global2.a, global2.b.x))), vec4<bool>(true, true, true, true));
    global4 = Struct_2(vec4<i32>(_wgslsmith_div_i32(-1i, reverseBits(-3767i)), 2388i, 1i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(min(28837u, u_input.b), 9u)], ~9140i) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 0i), abs(51297i))), true, global4.d, global4.c, global4.c);
    return _wgslsmith_div_vec2_f32(global2.c.zy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b, 22u)]))));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.d.x, -286f, false)))) - _wgslsmith_f_op_f32(f32(-1f) * -932f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2219f)), -372f)));
    global0 = array<i32, 9>();
    let var_1 = _wgslsmith_sub_vec2_u32(max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.e, 4294967295u), global4.e.a, vec2<u32>(u_input.e, 4294967295u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(global4.c.a, vec2<u32>(u_input.e, 92018u)), _wgslsmith_add_vec2_u32(countOneBits(global4.d.a), firstTrailingBit(global4.d.a)))), vec2<u32>(~global4.e.a.x, 4294967295u));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.x))), 511f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), global4.d.a.x <= abs(countOneBits(global4.d.a.x)))))).x;
    global2 = Struct_3(false, global2.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(-1320f, var_0.x, global4.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.d.x))), 357f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.c.yy, _wgslsmith_f_op_vec2_f32(-global2.d)), _wgslsmith_f_op_vec2_f32(func_3(127f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(1025f)), -842f))))));
    return !vec4<bool>(true, global4.a.x < (global4.a.x & 3336i), true, false);
}

fn func_1() -> vec4<i32> {
    let var_0 = select(vec3<bool>(global2.b.x, true, !(false && global4.b)), select(!vec3<bool>(global2.b.x & true, all(global2.b), true), vec3<bool>(~2147483647i == min(169i, u_input.d.x), any(func_2()), global4.b), true), !vec3<bool>(!(32121u < u_input.a), !(!global2.a), false));
    var var_1 = select(vec4<bool>(global4.b, false, !all(vec3<bool>(true, false, true)), true), select(select(!(!vec4<bool>(false, global2.b.x, true, true)), vec4<bool>(global4.e.a.x >= 28676u, true, true, func_2().x), func_2().x), vec4<bool>(true, true, true, true), !var_0.x), global2.a);
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(min(~global4.a.x ^ -global0[_wgslsmith_index_u32(global4.d.a.x, 9u)], -u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(select(0i, global4.a.x, global2.a), ~u_input.d.x), ~vec2<i32>(global4.a.x, -1i) | abs(vec2<i32>(2147483647i, -2147483647i))), _wgslsmith_mod_i32(-7909i, countOneBits(global0[_wgslsmith_index_u32(~20472u, 9u)])), max(global0[_wgslsmith_index_u32(120536u, 9u)], max(2677i, u_input.d.x))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-33348i, max(global0[_wgslsmith_index_u32(9558u, 9u)], 55952i), 54271i, 1i), global4.a)));
    let var_3 = 31582u;
    let var_4 = var_0;
    return vec4<i32>(firstTrailingBit(global4.a.x), ~(-16930i), 39093i << ((~(~0u) & _wgslsmith_mod_u32(12305u ^ global4.d.a.x, abs(global4.c.a.x))) % 32u), 42328i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), true && !select(any(vec4<bool>(true, global4.b, global4.b, global2.b.x)), !global2.a, any(vec3<bool>(global4.b, false, global2.a))), Struct_1(vec2<u32>(u_input.c, firstLeadingBit(global4.e.a.x ^ 40772u))), global4.d, global4.c);
    var var_1 = global4.c.a.x;
    global3 = any(vec4<bool>(global4.b == true, !global4.b | func_2().x, false, false && (4280u != global4.e.a.x)));
    global2 = Struct_3(!(!global2.a), !global2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1588f, global2.d.x, _wgslsmith_f_op_f32(-global2.d.x))), _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(~abs(max(1u, u_input.b)), 22u)], _wgslsmith_f_op_vec2_f32(-global2.d), global2.b)));
    let var_2 = ~select(countOneBits(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.a.x, u_input.c, u_input.b, 0u), vec4<u32>(u_input.e, u_input.e, 0u, 34146u)), select(vec4<u32>(var_0.e.a.x, 0u, 0u, 15803u), vec4<u32>(1u, 0u, global4.d.a.x, global4.e.a.x), global2.b.x))), reverseBits(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(var_0.e.a, vec2<u32>(0u, 0u)), 1u, var_0.e.a.x)), (any(vec3<bool>(var_0.b, false, false)) && global2.b.x) || true);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1046f, global2.c.x)) + global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10825u, ~4294967295u, var_0.c.a.x), 22u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.d.x, -351f)))))), global1[_wgslsmith_index_u32(37586u, 22u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1289f)), vec2<f32>(-1098f, var_3.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1562f)), global2.c.x))));
}

