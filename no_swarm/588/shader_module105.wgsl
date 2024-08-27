struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(28302i, -1i), vec2<i32>(-11162i, 80373i), vec2<i32>(1i, -11035i), vec2<i32>(-1i, 0i), vec2<i32>(11326i, 0i), vec2<i32>(49298i, 6693i), vec2<i32>(1i, 54290i), vec2<i32>(-20213i, 2147483647i), vec2<i32>(27293i, 6489i), vec2<i32>(-35494i, 1i), vec2<i32>(i32(-2147483648), 5100i), vec2<i32>(-41710i, -1i), vec2<i32>(6643i, 6466i), vec2<i32>(i32(-2147483648), -56309i), vec2<i32>(2147483647i, -4809i), vec2<i32>(i32(-2147483648), 1i));

var<private> global3: array<f32, 14>;

var<private> global4: array<i32, 30>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = ~(_wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.a, 3877u, arg_0.a), u_input.a | 41432u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(121076u, u_input.a), vec2<u32>(4294967295u, u_input.a))) >> (max(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u))), vec2<u32>(~u_input.a, ~10965u)) % vec2<u32>(32u)));
    global2 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 16>();
    global1 = vec3<bool>(select(!arg_0.b.x, global1.x & all(!vec4<bool>(true, global1.x, true, false)), false), global1.x, any(vec4<bool>(-1000f >= _wgslsmith_f_op_f32(ceil(1607f)), global1.x, !(!arg_0.a), true)));
    let var_1 = Struct_1(any(vec2<bool>(global1.x, all(vec4<bool>(false, true, false, true)))), !select(select(vec2<bool>(true, true), !arg_0.b, select(global1.xy, global1.zy, arg_0.a)), select(vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.b.x), global1.zy), !global1.xy));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_f_op_f32(select(604f, global3[_wgslsmith_index_u32(var_0.x, 14u)], any(!vec2<bool>(global1.x, arg_0.a)))), -608f);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global3 = array<f32, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-125f, arg_0, 2218f)) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global1.x, global1.zz))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(3602u, 14u)], 1000f, global1.x)), _wgslsmith_f_op_f32(154f - global3[_wgslsmith_index_u32(69348u, 14u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)], arg_0)), vec3<f32>(-657f, _wgslsmith_f_op_f32(arg_0 * 1000f), 1000f)))));
    global3 = array<f32, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-961f * 1026f)), _wgslsmith_f_op_f32(f32(-1f) * -364f))) + _wgslsmith_f_op_vec2_f32(-var_0.zy));
    global4 = array<i32, 30>();
    return !(!vec3<bool>(any(vec2<bool>(global1.x, global1.x)) & true, global1.x, true));
}

fn func_1() -> Struct_1 {
    var var_0 = select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-354f * global3[_wgslsmith_index_u32(u_input.a, 14u)]))) - _wgslsmith_f_op_f32(1078f * _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.a, 14u)], -149f))))), select(vec3<bool>(false, all(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, true))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u), 14u)] > 1618f), vec3<bool>(!(-1000f > global3[_wgslsmith_index_u32(u_input.a, 14u)]), true || global1.x, all(!vec2<bool>(global1.x, global1.x))), global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 14u)]), -269f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 14u)]))));
    var var_1 = ~(i32(-1i) * -countOneBits(~(-3122i)));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(87898u ^ u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a), vec3<u32>(u_input.a, u_input.a, 11411u) ^ vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.a, 1u, var_0.x), 1u, u_input.a), vec3<u32>(~1u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), countOneBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(9369u, 93612u, u_input.a), vec3<u32>(u_input.a, u_input.a, 67968u)), firstLeadingBit(vec3<u32>(65061u, 1u, 30890u)))) & ~(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(39251u, 29106u, 0u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4220u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var var_3 = 688f;
    global2 = array<vec2<i32>, 16>();
    return Struct_1(global1.x || true, vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_sub_u32(u_input.a, u_input.a)), 14u)])));
    global0 = array<i32, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)], -2168f, global3[_wgslsmith_index_u32(0u, 14u)]))))) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 14u)]))), global3[_wgslsmith_index_u32(~firstTrailingBit(~4294967295u), 14u)], -1100f));
    global0 = array<i32, 28>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))))) + var_2.x);
    global3 = array<f32, 14>();
    let var_4 = u_input.a | ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_4, 14u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_f32(var_3 + -106f)))), countOneBits(u_input.a), var_4, _wgslsmith_dot_vec2_i32(max(global2[_wgslsmith_index_u32(~4294967295u, 16u)] << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), -select(vec2<i32>(-15391i, -16457i), global2[_wgslsmith_index_u32(51176u, 16u)], vec2<bool>(global1.x, true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(abs(global2[_wgslsmith_index_u32(var_4, 16u)]), select(vec2<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), global2[_wgslsmith_index_u32(1u, 16u)], global1.yz)), ~global2[_wgslsmith_index_u32(0u, 16u)], vec2<i32>(-global0[_wgslsmith_index_u32(u_input.a, 28u)], global4[_wgslsmith_index_u32(~75843u, 30u)]))));
}

