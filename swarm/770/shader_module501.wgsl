struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12> = array<f32, 12>(-1155f, -371f, -1000f, -765f, -268f, -1465f, -2583f, -891f, 271f, -1597f, -191f, 3654f);

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(14321u, 14460u), vec2<u32>(22517u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(70168u, 4294967295u), vec2<u32>(1u, 59551u), vec2<u32>(28486u, 64737u), vec2<u32>(4294967295u, 16411u), vec2<u32>(4294967295u, 3428u), vec2<u32>(36749u, 0u), vec2<u32>(62387u, 4573u), vec2<u32>(14774u, 615u), vec2<u32>(15991u, 10372u), vec2<u32>(11764u, 40720u), vec2<u32>(17486u, 4294967295u), vec2<u32>(1456u, 0u), vec2<u32>(46729u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(3924u, 0u), vec2<u32>(38469u, 22767u), vec2<u32>(0u, 3420u), vec2<u32>(0u, 61196u), vec2<u32>(72323u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1580u), vec2<u32>(1u, 7363u), vec2<u32>(41583u, 5091u), vec2<u32>(30063u, 0u), vec2<u32>(35534u, 52040u), vec2<u32>(0u, 9585u));

var<private> global3: array<bool, 29>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-475f + global1[_wgslsmith_index_u32(u_input.b.x, 12u)])))), -1255f));
    global2 = array<vec2<u32>, 29>();
    global3 = array<bool, 29>();
    global2 = array<vec2<u32>, 29>();
    let var_1 = ~(reverseBits(~(~arg_2.d)) & vec2<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(~u_input.b.x, u_input.a.x)));
    return -317f;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(vec2<f32>(720f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.c.zz, global0.b, vec3<f32>(-1000f, global0.a.x, -1214f), vec2<u32>(4679u, 1u), global0.d.x)), Struct_1(global0.c.yy, -2147483647i, global0.c, vec2<u32>(u_input.b.x, 4881u), u_input.a.x), Struct_1(vec2<f32>(global0.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), -2147483647i, vec3<f32>(-719f, 1842f, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<u32>(u_input.a.x, 0u), u_input.b.x)))), -48529i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.c.x, -314f)), 917f, -613f)), abs(u_input.a.yz), abs(4294967295u) ^ firstLeadingBit(_wgslsmith_div_u32(4294967295u, global0.e))));
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = ~(u_input.a | (~vec4<u32>(var_0.a.d.x, global0.e, 0u, var_0.a.e) >> (vec4<u32>(var_0.a.d.x, global0.d.x, 0u, 4294967295u) % vec4<u32>(32u)))) | ((~(~u_input.a) | u_input.a) & vec4<u32>(~29114u, u_input.a.x | ~63375u, ~(1u << (1u % 32u)), ~24709u));
    var_1 = vec3<bool>(var_1.x, any(!select(!vec4<bool>(global4.x, true, global4.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), false)), !global3[_wgslsmith_index_u32(4294967295u, 29u)]);
    return select(var_1.x, 2147483647i == global0.b, global1[_wgslsmith_index_u32(abs(select(var_2.x, 0u, global4.x)), 12u)] < global0.c.x) | global4.x;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> bool {
    global3 = array<bool, 29>();
    global4 = arg_1;
    var var_0 = _wgslsmith_dot_vec2_i32(-u_input.e, vec2<i32>(global0.b, countOneBits(arg_0)));
    let var_1 = global0.b < reverseBits(-2147483647i);
    var var_2 = true;
    return arg_1.x;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global4 = select(vec2<bool>(func_4(arg_0.b, !select(vec2<bool>(true, global4.x), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.d.x, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), false), func_2()), -1394f > global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.e, u_input.b.x), 12u)]), !vec2<bool>(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-19740i, arg_0.b, 27539i, arg_0.b), vec4<i32>(-2147483647i, -1i, u_input.c, 0i)), !vec2<bool>(global3[_wgslsmith_index_u32(0u, 29u)], true), global3[_wgslsmith_index_u32(arg_0.d.x, 29u)]), all(vec4<bool>(false, global3[_wgslsmith_index_u32(19173u, 29u)], false, true))), vec2<bool>(global4.x, global4.x));
    let var_0 = -_wgslsmith_div_i32(-1i, -(-2147483647i ^ select(u_input.c, 0i, global4.x)));
    global2 = array<vec2<u32>, 29>();
    global4 = vec2<bool>(select(global3[_wgslsmith_index_u32(62349u, 29u)], true, true), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, global0.a.x, arg_0.c.x, _wgslsmith_f_op_f32(step(-1562f, arg_0.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, -631f, global0.a.x, global1[_wgslsmith_index_u32(1u, 12u)]), vec4<f32>(global0.c.x, global0.a.x, global0.a.x, 373f)))))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.e, 12u)], -1307f) + global0.a) + global0.c.zz), u_input.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0.c)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1499f, global0.a.x, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<f32>(279f, global0.c.x, global1[_wgslsmith_index_u32(0u, 12u)]))), false)), vec2<u32>(u_input.b.x & 37113u, 4294967295u), 75176u & _wgslsmith_mod_u32(global0.e, global0.e))), -1i);
    var var_1 = vec2<i32>(max(-(~42341i), -2147483647i), u_input.c);
    let var_2 = var_0.x;
    var var_3 = global0.c.x;
    global1 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(49716u, 12u)], global0.c.x)) * _wgslsmith_f_op_f32(-581f * global1[_wgslsmith_index_u32(global0.e, 12u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - global0.a.x))), !(true || global3[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), !global3[_wgslsmith_index_u32(1u, 29u)])), 1u);
}

