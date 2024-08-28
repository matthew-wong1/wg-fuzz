struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2840u, vec4<u32>(14293u, 8681u, 1u, 4294967295u), false);

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 1u, 1u, 0u, 1u, 4294967295u, 0u, 0u, 3920u, 5187u, 0u, 41669u, 4294967295u);

var<private> global2: array<f32, 30>;

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(35953i, 2147483647i), vec2<i32>(34608i, 2272i), vec2<i32>(-31198i, -1i), vec2<i32>(12434i, 13035i), vec2<i32>(20755i, -19066i), vec2<i32>(1i, 30570i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 31142i), vec2<i32>(1i, 2147483647i), vec2<i32>(-62019i, -18617i), vec2<i32>(-1i, 52004i), vec2<i32>(12229i, -31693i), vec2<i32>(2147483647i, -24652i), vec2<i32>(0i, 0i), vec2<i32>(0i, 49771i), vec2<i32>(45251i, 0i), vec2<i32>(-59409i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-23831i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-23002i, 1i), vec2<i32>(2147483647i, -9760i), vec2<i32>(3414i, 1i), vec2<i32>(2147483647i, -46123i), vec2<i32>(i32(-2147483648), -27078i), vec2<i32>(i32(-2147483648), -59637i), vec2<i32>(12481i, 9774i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -22537i), vec2<i32>(i32(-2147483648), -1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> bool {
    global3 = array<vec2<i32>, 32>();
    global3 = array<vec2<i32>, 32>();
    global3 = array<vec2<i32>, 32>();
    let var_0 = Struct_1(u_input.a, countOneBits(~vec4<u32>(0u, 13142u, 1u, ~11884u)), true);
    var var_1 = Struct_1(~(~arg_0.a), arg_0.b, !(!(var_0.c && true)));
    return (true || select(global0.c, any(select(vec2<bool>(false, false), vec2<bool>(true, var_0.c), vec2<bool>(var_1.c, arg_2))), any(vec3<bool>(true, true, false)))) & var_1.c;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = vec3<bool>(true, !global0.c, func_3(arg_0, ~global0.b.x, arg_0.c, ~min(arg_0.b.yy, global0.b.ww) | abs(~arg_0.b.yw)));
    let var_1 = arg_0;
    global0 = Struct_1(arg_0.a | countOneBits(~(~24282u)), ~var_1.b, true);
    var var_2 = func_3(Struct_1(0u, abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.b, global0.b), vec4<u32>(12205u, 0u, global1[_wgslsmith_index_u32(u_input.a, 13u)], global0.a))), !any(vec3<bool>(true, global0.c, arg_0.c))), ~(~(countOneBits(global0.a) >> (1u % 32u))), true, firstLeadingBit(reverseBits(_wgslsmith_sub_vec2_u32(global0.b.zz, arg_0.b.yz) | vec2<u32>(0u, global1[_wgslsmith_index_u32(12358u, 13u)]))));
    let var_3 = global3[_wgslsmith_index_u32(~17044u, 32u)];
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31160u, u_input.a) & ~arg_0.b.zz, ~_wgslsmith_sub_vec2_u32(vec2<u32>(21282u, global0.a), vec2<u32>(global0.b.x, 40312u))), 30u)], -1287f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global3 = array<vec2<i32>, 32>();
    var var_0 = 1548f;
    global0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) + _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(arg_1.a, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))) * 1062f), _wgslsmith_f_op_f32(f32(-1f) * -1688f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(arg_1)))) + vec2<f32>(_wgslsmith_f_op_f32(508f - global2[_wgslsmith_index_u32(global0.b.x, 30u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(arg_3.x, 30u)]))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 30u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(754f + global2[_wgslsmith_index_u32(0u, 30u)]) + -821f))));
    global3 = array<vec2<i32>, 32>();
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    global3 = array<vec2<i32>, 32>();
    global0 = Struct_1(~27803u, vec4<u32>(global1[_wgslsmith_index_u32(~0u, 13u)], _wgslsmith_div_u32(global0.b.x << (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u), u_input.a << (86428u % 32u)), ~66040u, ~(func_1(Struct_1(global0.b.x, vec4<u32>(u_input.a, 3071u, 65573u, 0u), global0.c), Struct_1(u_input.a, vec4<u32>(1u, 0u, 112956u, 0u), true), Struct_1(global0.a, global0.b, true), global0.b.ww) | u_input.a)), global0.c);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~(~(u_input.a & global1[_wgslsmith_index_u32(global0.a, 13u)])), 30u)]))));
    global3 = array<vec2<i32>, 32>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1291f * _wgslsmith_f_op_f32(trunc(-310f))) - -100f));
    global2 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global0.b.x, func_1(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 13u)], vec4<u32>(59001u, global0.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35024u, 13u)], 13u)], 80716u), global0.c), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 13u)], vec4<u32>(u_input.a, 47715u, global1[_wgslsmith_index_u32(17129u, 13u)], 1u), true), Struct_1(u_input.a, global0.b, false), global0.b.zw)), global0.b.wz), 30u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global1[_wgslsmith_index_u32(global0.a, 13u)], vec4<u32>(106460u, 4294967295u, u_input.a, u_input.a), global0.c))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(34057u, 30u)] + global2[_wgslsmith_index_u32(28353u, 30u)])), -736f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(reverseBits(4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-755f, var_1.x, global2[_wgslsmith_index_u32(global0.a, 30u)]) - vec3<f32>(global2[_wgslsmith_index_u32(global0.b.x, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14592u, 13u)], 13u)], 13u)], 30u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], -155f), vec3<f32>(var_1.x, -734f, -1917f), vec3<bool>(global0.c, true, true)))))), -(max(select(vec4<i32>(u_input.b.x, u_input.b.x, 712i, u_input.b.x), vec4<i32>(0i, u_input.b.x, -20078i, -43233i), vec4<bool>(false, false, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, 16270i, u_input.b.x), vec4<i32>(72929i, u_input.b.x, u_input.b.x, u_input.b.x))) << (global0.b % vec4<u32>(32u))));
}

