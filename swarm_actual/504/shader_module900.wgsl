struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

var<private> global2: bool = true;

var<private> global3: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-1i, 49445i, -1i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(68372i, 0i, 12020i), vec3<i32>(i32(-2147483648), 1582i, 2147483647i), vec3<i32>(21427i, i32(-2147483648), 92731i), vec3<i32>(i32(-2147483648), 0i, 1i));

var<private> global4: array<bool, 10> = array<bool, 10>(false, true, true, true, false, true, true, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = all(vec4<bool>(true, all(vec3<bool>(true, true, true)), false, false));
    global1 = global0.x;
    let var_1 = 1i << (~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.a.x)) % 32u);
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2147483647i, 26775i, 0i), -vec4<i32>(0i, global0.x, arg_0.b, 0i)), arg_0.b) & ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2147483647i, arg_0.b, var_1), vec4<i32>(var_1, 1i, var_1, 2123i)), 0i ^ u_input.b), _wgslsmith_mod_i32(countOneBits(u_input.b), i32(-1i) * -2147483647i));
    let var_3 = Struct_1(_wgslsmith_div_f32(510f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d, -404f)) + _wgslsmith_f_op_f32(max(arg_0.c, 256f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), reverseBits(firstLeadingBit(31573i)), _wgslsmith_f_op_f32(min(arg_0.d, _wgslsmith_f_op_f32(1048f + -184f))), _wgslsmith_f_op_f32(-arg_0.c));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c * -1036f), _wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-185f, -1104f) - -887f))), any(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], !var_0, all(vec3<bool>(var_0, global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)]))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1.c))))) * -544f), ~global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_1)), arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.c, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 464f) + vec2<f32>(var_0.a, 527f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.c, -553f), vec2<f32>(arg_0, arg_0)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(-635f, _wgslsmith_f_op_f32(1783f * arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 297f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1388f, var_0.a) - vec2<f32>(-1000f, arg_0))))));
    global1 = abs(_wgslsmith_div_i32(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 15741i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), global0.zx)));
    var_1 = vec2<f32>(-183f, -2210f);
    let var_2 = firstLeadingBit(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), ~vec2<u32>(arg_3, 1u)), arg_3, _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 0u))));
    return select(vec4<bool>(all(select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(58579u, 10u)], global4[_wgslsmith_index_u32(arg_3, 10u)], false), vec4<bool>(false, global4[_wgslsmith_index_u32(95766u, 10u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)], global4[_wgslsmith_index_u32(var_2.x, 10u)]), vec4<bool>(global4[_wgslsmith_index_u32(0u, 10u)], false, global4[_wgslsmith_index_u32(1u, 10u)], false)), !vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], false, global4[_wgslsmith_index_u32(0u, 10u)]), global4[_wgslsmith_index_u32(~var_2.x, 10u)])), all(vec4<bool>(global4[_wgslsmith_index_u32(var_2.x, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)], true)) && all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 10u)], false, false)), false, global4[_wgslsmith_index_u32(var_2.x, 10u)]), select(select(!select(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(arg_3, 10u)], global4[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)], true), false), vec4<bool>(global4[_wgslsmith_index_u32(~43432u, 10u)], all(vec2<bool>(global4[_wgslsmith_index_u32(1u, 10u)], false)), false, -163f > arg_0), vec4<bool>(true, true, !global4[_wgslsmith_index_u32(26073u, 10u)], !global4[_wgslsmith_index_u32(arg_3, 10u)])), !(!select(vec4<bool>(true, global4[_wgslsmith_index_u32(11340u, 10u)], true, true), vec4<bool>(global4[_wgslsmith_index_u32(var_2.x, 10u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], true), global4[_wgslsmith_index_u32(u_input.a.x, 10u)])), (i32(-1i) * -arg_1.b) == _wgslsmith_sub_i32(~(-2147483647i), 26212i)), !all(select(select(vec4<bool>(global4[_wgslsmith_index_u32(24033u, 10u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)], global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(10244u, 10u)]), vec4<bool>(false, false, global4[_wgslsmith_index_u32(var_2.x, 10u)], global4[_wgslsmith_index_u32(48403u, 10u)]), vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(arg_3, 10u)])), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], true, global4[_wgslsmith_index_u32(1u, 10u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(vec4<bool>(false, global4[_wgslsmith_index_u32(var_2.x, 10u)], global4[_wgslsmith_index_u32(var_2.x, 10u)], global4[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(global4[_wgslsmith_index_u32(arg_3, 10u)], true, global4[_wgslsmith_index_u32(12042u, 10u)], true), true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = ~(~select(~countOneBits(vec4<i32>(-1882i, -38200i, -7338i, u_input.b)), -select(vec4<i32>(-49021i, u_input.b, u_input.b, global0.x), vec4<i32>(8390i, arg_0.b, 1i, 1i), vec4<bool>(global4[_wgslsmith_index_u32(arg_1.x, 10u)], false, global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(0u, 10u)])), func_2(_wgslsmith_f_op_f32(arg_0.a - -1000f), arg_0, -35443i, ~26156u)));
    global1 = ~2147483647i;
    global3 = array<vec3<i32>, 6>();
    var var_1 = -abs(vec4<i32>(abs(abs(global0.x)), 21075i, 2147483647i, 53583i));
    var var_2 = arg_0;
    return -407f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -625f, -2950f, 549f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, -429f, 1000f, 816f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, 2182f, -1023f, -720f) * vec4<f32>(-927f, -1616f, 1466f, -619f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(1323f, u_input.b, 1597f, 683f), vec2<u32>(u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(select(203f, _wgslsmith_f_op_f32(sign(-328f)), u_input.a.x == u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 122f)) - -759f), 1528f, -258f));
    global4 = array<bool, 10>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -863f)), var_0.x))), global0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    global2 = false;
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(-1187f, select(-global0.x, var_1.b, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), -1593f, _wgslsmith_f_op_f32(f32(-1f) * -448f));
    let var_4 = global4[_wgslsmith_index_u32(abs(~min(_wgslsmith_add_u32(89781u, ~4294967295u), u_input.a.x >> (firstLeadingBit(1u) % 32u))), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~var_2) >> (0u % 32u), _wgslsmith_add_u32(10435u, ~u_input.a.x)), global0.wxy, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(-850f, _wgslsmith_div_f32(var_0.x, -982f), global4[_wgslsmith_index_u32(0u, 10u)]))))));
}

