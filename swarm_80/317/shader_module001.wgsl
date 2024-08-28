struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(32710u, 34237u, 4294967295u), vec3<u32>(4388u, 1u, 4294967295u), vec3<u32>(4294967295u, 59819u, 12883u), vec3<u32>(1u, 5718u, 1u), vec3<u32>(4294967295u, 31897u, 1u), vec3<u32>(32766u, 0u, 21396u), vec3<u32>(24910u, 65946u, 33796u), vec3<u32>(11370u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(84253u, 0u, 16877u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(24687u, 4134u, 52938u), vec3<u32>(4294967295u, 4391u, 4294967295u), vec3<u32>(45009u, 59709u, 1u), vec3<u32>(42710u, 4697u, 30229u), vec3<u32>(26848u, 0u, 39520u), vec3<u32>(8009u, 4294967295u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1000f, 756f, 933f, -627f), vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, -1i, 17518i), vec3<i32>(48445i, -1i, -1i));

var<private> global2: vec2<i32>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1000f, -362f, -1000f, -1801f), vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), -40866i, 1i), vec3<i32>(0i, -35451i, 1639i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-565f * 105f), _wgslsmith_f_op_f32(f32(-1f) * -1940f))) * _wgslsmith_f_op_f32(sign(-343f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.x)))))) * vec4<f32>(global1.a.x, global3.a.x, -1063f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) + 434f)));
    global3 = Struct_1(global3.a, !vec4<bool>(true, any(global3.b.zw), !global3.b.x || global3.b.x, global1.b.x), select(firstTrailingBit(countOneBits(vec3<i32>(global1.c.x, global3.c.x, global2.x))), vec3<i32>(-(~(-31961i)), ~max(global3.c.x, global1.c.x), _wgslsmith_sub_i32(2147483647i, 23182i)), select(global3.b.x, true, !global1.b.x & any(vec3<bool>(true, global3.b.x, false)))), vec3<i32>(61357i, global2.x, -_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.x, 25283i, global2.x, -1i), ~vec4<i32>(-16577i, 1i, -2147483647i, global3.d.x))));
    global2 = vec2<i32>(1i, firstTrailingBit(-(global3.c.x ^ 33276i)));
    var var_1 = u_input.a <= ~select(12912u, u_input.a, !all(vec3<bool>(false, false, global1.b.x)));
    let var_2 = global3.a.wz;
    return vec2<i32>(1i, 1i);
}

fn func_2() -> vec2<bool> {
    let var_0 = -45741i;
    global2 = abs((-vec2<i32>(2147483647i, global3.c.x) & -func_3()) | reverseBits(global1.d.yz));
    let var_1 = -global2.x;
    var var_2 = _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global3.a.x))));
    global0 = array<vec3<u32>, 18>();
    return global1.b.yw;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(global1.d.x, firstLeadingBit(~(~2147483647i) | (2147483647i | _wgslsmith_sub_i32(-2147483647i, arg_1.c.x))), firstTrailingBit(global1.c.x));
    var var_1 = any(func_2());
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = select(vec2<bool>(!func_2().x, false), global1.b.ww, global3.b.x);
    var var_2 = arg_1.a;
    var var_3 = var_0;
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(945f, 201f, true)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-653f)))), global3.a.x)));
    return func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, arg_1.a, arg_1.b)))), !arg_1.b, ~func_1(func_1(arg_1, arg_1, var_0), Struct_1(global1.a, global1.b, global1.c, global3.c), u_input.a).d, global3.d), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), select(global3.b, func_1(func_1(arg_1, arg_1, 40916u), func_1(arg_1, arg_1, 4976u), var_0 << (u_input.a % 32u)).b, !any(vec3<bool>(false, arg_1.b.x, false))), arg_1.c, -(~(~global3.d))), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(12801u, u_input.a)), 18u)], max(global0[_wgslsmith_index_u32(1u, 18u)], vec3<u32>(_wgslsmith_div_u32(0u, var_0), abs(0u), 4971u | u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, -11342i, -(global2.x & global3.d.x)), (57098i | -(global1.d.x & 2147483647i)) & firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global3.c.x), vec2<i32>(global1.d.x, 19405i)), vec2<i32>(global3.d.x, global2.x))));
    var var_0 = func_4(!(!(any(vec4<bool>(true, global1.b.x, false, global1.b.x)) & true)), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global3.a.x, global1.a.x, global1.a.x)), vec4<bool>(true, all(vec3<bool>(global3.b.x, true, false)), global1.d.x >= -57154i, global1.b.x & true), -select(global1.c, vec3<i32>(-39380i, global3.d.x, global3.d.x), false), -vec3<i32>(1i, global3.c.x, 44476i)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, -275f, 243f), global3.a), select(global1.b, vec4<bool>(global1.b.x, false, global3.b.x, global1.b.x), true))), vec4<bool>(any(global1.b.wzy), true, global3.b.x, false), -global3.c, vec3<i32>(~(-1i), global3.d.x, ~global2.x)), ~u_input.a));
    global2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>((-41064i >> (u_input.a % 32u)) << (59420u % 32u), ~(~var_0.c.x)), global1.d.xx);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(-global3.a))), vec4<bool>(any(select(select(vec3<bool>(true, global3.b.x, global1.b.x), global1.b.ywy, true), global3.b.wxy, true)), global1.b.x, any(vec2<bool>(global3.b.x, true)), true), abs(-min(max(global3.c, global1.c), global3.c)), var_0.c);
    global0 = array<vec3<u32>, 18>();
    var var_1 = -10400i;
    var var_2 = _wgslsmith_sub_u32(u_input.a, 15827u);
    let var_3 = !any(select(vec3<bool>(true, all(vec4<bool>(true, true, false, var_0.b.x)), !global1.b.x), func_4(!global1.b.x, Struct_1(var_0.a, global1.b, var_0.c, vec3<i32>(global1.c.x, global3.c.x, global2.x))).b.zwz, var_0.b.wzy));
    let x = u_input.a;
    s_output = StorageBuffer((~(-global1.d.x) | -var_0.c.x) >> (u_input.a % 32u), -func_3());
}

