struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 26166u, 43822u);

var<private> global1: array<i32, 23> = array<i32, 23>(1i, 1i, i32(-2147483648), 1i, -6i, -43851i, 23560i, 0i, 1i, 42722i, 58658i, 15521i, 275i, 2147483647i, 57462i, 2147483647i, 16037i, 36868i, 72379i, 89474i, -46370i, -1i, 0i);

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-459f, 1294f, -1885f, -429f), vec4<f32>(927f, -865f, 854f, -935f), vec4<f32>(-283f, -1730f, -1000f, 1000f), vec4<f32>(-1324f, 1367f, 802f, -1183f), vec4<f32>(505f, 282f, -1000f, 388f), vec4<f32>(1004f, -1866f, 744f, -1217f));

var<private> global3: array<Struct_1, 19>;

var<private> global4: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, 1503f, -522f) + vec3<f32>(1000f, 1560f, arg_0)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(403f)), arg_0, -1171f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a.yzy))))));
    let var_1 = reverseBits(min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_sub_u32(15936u, 0u), global0.x, 60566u), vec4<u32>(21366u, ~global0.x, 4294967295u, global0.x)), ~(~(vec4<u32>(global0.x, u_input.d, global0.x, 1u) << (vec4<u32>(u_input.a, global0.x, 31124u, 20074u) % vec4<u32>(32u))))));
    global1 = array<i32, 23>();
    global4 = ~var_1.x;
    return !vec2<bool>(arg_1.e.x, arg_1.b.x | arg_1.d);
}

fn func_2() -> f32 {
    global2 = array<vec4<f32>, 6>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.a), 6u)], !vec4<bool>(true, true, !all(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1292f))), any(vec3<bool>(false, true, (u_input.e & u_input.e) == 31118i)), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(-1242f, global3[_wgslsmith_index_u32(4294967295u, 19u)])));
    global2 = array<vec4<f32>, 6>();
    let var_1 = true;
    let var_2 = ~vec3<u32>(~_wgslsmith_mult_u32(11190u, ~global0.x), firstTrailingBit(countOneBits(u_input.a)), _wgslsmith_clamp_u32(~global0.x, 6298u, global0.x));
    return -1935f;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    global1 = array<i32, 23>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(global0.yy, vec2<u32>(global0.x, 78745u)), global0.yy) ^ ~u_input.a, 6u)])), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(946f))) - _wgslsmith_f_op_f32(step(1523f, -1155f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), all(vec2<bool>(all(func_3(-978f, Struct_1(global2[_wgslsmith_index_u32(u_input.d, 6u)], arg_0, 783f, arg_2.x, arg_2))), ~0u >= ~global0.x)), !select(!arg_0.wz, !select(vec2<bool>(arg_0.x, false), arg_0.xx, arg_2.x), true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.c, var_0.a.x)))), var_0.a, vec4<bool>(true, var_0.e.x, var_0.b.x, 98186u > global0.x))), select(vec4<bool>(_wgslsmith_add_i32(u_input.b.x, arg_1) != _wgslsmith_sub_i32(0i, arg_1), any(vec3<bool>(arg_2.x, arg_3, true)), arg_3, !(!arg_3)), select(var_0.b, !select(vec4<bool>(arg_3, false, false, false), vec4<bool>(false, true, arg_3, false), true), true), !vec4<bool>(true, true, all(arg_0.zwx), arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-2668f)))), _wgslsmith_f_op_f32(-var_0.a.x)), global0.x >= 10283u, vec2<bool>(var_0.e.x, arg_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.c, -205f, var_1.c), var_0.a, true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.d, 6u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 140f, 1000f) * vec4<f32>(2392f, var_1.a.x, -1000f, 227f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c, 263f, var_1.c, -1000f))))))), var_0.b, var_0.a.x, true, arg_2);
    global1 = array<i32, 23>();
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 6u)] * vec4<f32>(-1545f, -1438f, 599f, -1323f)))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1698f + 904f), -273f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-612f))), _wgslsmith_f_op_f32(f32(-1f) * -1405f), _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b.zz), vec2<bool>(true, true), true)))), vec4<bool>(any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), u_input.d == 66897u)), true, ~_wgslsmith_clamp_i32(15052i, u_input.e, -2147483647i) == global1[_wgslsmith_index_u32(~4294967295u, 23u)], any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(774f, 129f) + -366f))), false, !(!func_3(_wgslsmith_f_op_f32(-264f * 379f), Struct_1(vec4<f32>(-1584f, -1828f, -190f, -1968f), vec4<bool>(false, true, true, false), -448f, false, vec2<bool>(false, true)))));
    global3 = array<Struct_1, 19>();
    global2 = array<vec4<f32>, 6>();
    let var_1 = select(_wgslsmith_sub_vec3_u32(countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, global0.x, 4294967295u), vec3<u32>(1u, 3726u, 4294967295u))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(11130u, 39032u, u_input.d), vec3<u32>(1u, 13363u, u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 49406u, 1u), vec3<u32>(23755u, 0u, 27710u)), 53875u)), (vec3<u32>(1u, u_input.d << (global0.x % 32u), u_input.d ^ 10006u) >> (firstLeadingBit(~vec3<u32>(4132u, 0u, global0.x)) % vec3<u32>(32u))) | ~_wgslsmith_div_vec3_u32(~vec3<u32>(20104u, 20049u, 1u), ~vec3<u32>(global0.x, global0.x, 7600u)), var_0.b.zzz);
    global0 = min(vec3<u32>((~0u >> (abs(global0.x) % 32u)) << (~12080u % 32u), 0u, ~0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(min(9640u, var_1.x), var_1.x, var_1.x), vec3<u32>(var_1.x, 4294967295u, global0.x), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 65380u, u_input.a), vec3<u32>(var_1.x, u_input.d, 1u)))) << (reverseBits(firstTrailingBit(var_1) & ~var_1) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(119u, u_input.d, global0.x, var_1.x), vec4<u32>(var_1.x, global0.x, 19490u, u_input.a), ~vec4<u32>(0u, 4294967295u, 4294967295u, var_1.x))));
}

