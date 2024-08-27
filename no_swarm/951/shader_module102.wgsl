struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, arg_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, global1.a.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_f_op_vec2_f32(-arg_0.zz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(-622f * 212f)), vec2<bool>(true, true)))));
    let var_1 = -(global2[_wgslsmith_index_u32(~19956u, 27u)] >> (~select(~vec4<u32>(23855u, 1u, 15650u, 9941u), vec4<u32>(1u, 1u, 1u, 1u), arg_0.x == -979f) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-199f, _wgslsmith_f_op_f32(f32(-1f) * -542f))), -455f);
    var var_3 = vec2<i32>(~u_input.a.x, -1i);
    let var_4 = min(global1.b, global1.b);
    return abs(countOneBits(vec2<u32>(19765u, 1u)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_4(vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(func_3(vec3<f32>(-802f, global1.a.x, -1824f)) & min(vec2<u32>(4294967295u, 12142u), vec2<u32>(1u, 62529u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(42190u, 1u), vec2<u32>(1u, 1u))), ~0u), Struct_1(all(vec3<bool>(!global0[_wgslsmith_index_u32(0u, 1u)], !global0[_wgslsmith_index_u32(0u, 1u)], true)), any(!vec3<bool>(global0[_wgslsmith_index_u32(418u, 1u)], false, false)), _wgslsmith_f_op_f32(-global1.a.x)), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 1009f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -388f) + global1.a)))), _wgslsmith_div_vec3_i32(firstLeadingBit(global1.b), -global1.b) & u_input.a, -1i), _wgslsmith_f_op_f32(-global1.a.x));
    let var_1 = vec2<bool>(true, ~var_0.a.x == min(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 571f, -1458f) + vec3<f32>(var_0.d, 1546f, -1146f))).x, 0u));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1478f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a.x, global1.a.x)))))), countOneBits(~select(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_0.c.c, var_0.c.b.x, global1.c)), u_input.a, !vec3<bool>(false, var_0.b.a, var_1.x))), -abs(~0i));
    global0 = array<bool, 1>();
    global2 = array<vec4<i32>, 27>();
    return !(!vec4<bool>(var_1.x, false, !var_0.b.b, all(var_1)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = select(vec4<bool>(true, !(389f != _wgslsmith_f_op_f32(-arg_2)), false, !(true || (global0[_wgslsmith_index_u32(9391u, 1u)] || false))), vec4<bool>(global0[_wgslsmith_index_u32(~(~20873u), 1u)], true | any(vec4<bool>(global0[_wgslsmith_index_u32(51674u, 1u)], arg_0, false, global0[_wgslsmith_index_u32(4294967295u, 1u)])), true, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(3602u), 38529u), 1u)]), func_2());
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1725f, -1000f), vec2<f32>(arg_2, arg_2)))))), vec3<i32>(global1.c & ~0i, -34714i, countOneBits(16962i)) ^ global1.b, -select(select(select(global1.b.x, global1.b.x, true), u_input.a.x, var_0.x), -32872i, select(false, true, true)));
    var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(func_3(vec3<f32>(arg_1, global1.a.x, 744f)).x)), 1u)], all(!vec2<bool>(arg_0, true)), true, global0[_wgslsmith_index_u32(~4294967295u, 1u)] == false);
    var_0 = !(!select(vec4<bool>(all(var_0.yz), arg_3, true, true), vec4<bool>(global0[_wgslsmith_index_u32(105857u, 1u)] | true, all(vec4<bool>(true, false, true, true)), !arg_0, var_0.x), vec4<bool>(arg_0, false, true, false)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    var_0 = 490f;
    var var_1 = any(vec3<bool>(!(true != global0[_wgslsmith_index_u32(~56487u, 1u)]), global0[_wgslsmith_index_u32(~40777u, 1u)], any(vec2<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(2262u, 1u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_i32(~1i, u_input.a.x ^ 0i) <= ~_wgslsmith_dot_vec3_i32(global1.b, u_input.a), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(global1.a.x))), -189f, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 1u)])), 3112f);
}

