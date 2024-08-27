struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1121f, 663f, 1000f, -1000f, 1000f, -1625f, -511f, -1151f, 154f, -264f, -219f, -767f, 681f, 360f, 1000f, -180f, 1607f, -312f, 125f, 642f, -1096f, 542f, -1177f);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(0i, 0i, 35317i, -35901i), vec4<i32>(-1i, -28129i, 1i, -29646i), vec4<i32>(1i, 1i, 50977i, -12878i), vec4<i32>(56685i, 17772i, -4883i, 4379i), vec4<i32>(0i, -1i, -26177i, -3128i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 51244i), vec4<i32>(-10064i, 26917i, 7485i, 1048i), vec4<i32>(2147483647i, 239i, i32(-2147483648), 1i), vec4<i32>(0i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -1i, 2147483647i), vec4<i32>(1i, -59299i, -50051i, -38715i), vec4<i32>(2147483647i, 997i, -71036i, 2147483647i), vec4<i32>(i32(-2147483648), 58909i, 13625i, 10379i), vec4<i32>(25042i, -126i, 1i, 4366i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 23579i), vec4<i32>(41922i, -51742i, 48029i, 31173i), vec4<i32>(1i, -42239i, 30944i, 0i), vec4<i32>(20094i, 133i, 8175i, -1i), vec4<i32>(-70125i, -1i, -1i, -1i), vec4<i32>(1i, -39054i, 51515i, i32(-2147483648)), vec4<i32>(101449i, 0i, 44224i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, -49732i, -1i), vec4<i32>(15485i, 0i, 28298i, 8914i), vec4<i32>(-3149i, -1i, 1i, 0i), vec4<i32>(-32348i, i32(-2147483648), 1i, -1762i), vec4<i32>(0i, -19569i, 2147483647i, -4322i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 23>();
    var var_0 = arg_3.b.x;
    global1 = array<Struct_1, 29>();
    var var_1 = arg_3.c.x;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(1i, countOneBits(~u_input.b.x | 0i)), -(-2147483647i | arg_1));
    return 0u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~u_input.a.x, 23u)])))))));
    var_0 = arg_1.c.x;
    var var_1 = arg_1;
    let var_2 = ~u_input.a.wwy;
    let var_3 = select(true == (~(~1u) > u_input.a.x), arg_1.a, !arg_1.a);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> vec2<u32> {
    global1 = array<Struct_1, 29>();
    global2 = array<Struct_1, 23>();
    var var_0 = vec4<u32>(~4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_2.x) ^ vec2<u32>(arg_1.b.x, 0u), ~(~arg_1.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(u_input.a.xzx, vec3<u32>(0u, 0u, 13741u), false) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_1.b.x, 4294967295u), u_input.a.xyw) % vec3<u32>(32u)), u_input.a.xzw), select(u_input.a.yzy, u_input.a.xzw, !select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_1.a, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false)))), select(abs(~func_1(822f, 0i, global2[_wgslsmith_index_u32(arg_1.b.x, 23u)], global1[_wgslsmith_index_u32(20889u, 29u)])), 47101u, any(func_3(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20615u, u_input.a.x, 0u), 26u)], global1[_wgslsmith_index_u32(arg_1.b.x, 29u)]))), ~(~71843u));
    global1 = array<Struct_1, 29>();
    let var_1 = firstTrailingBit(var_0.x & min(_wgslsmith_dot_vec2_u32(arg_1.b, arg_2), ~(~4294967295u)));
    return firstTrailingBit(vec2<u32>(~39u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-2648f * 464f), 1569f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25316u, 23u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 23u)]))))));
    global0 = array<f32, 23>();
    var var_1 = reverseBits(func_2(!vec2<bool>(any(vec4<bool>(true, true, false, false)), true), global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.wx, func_1(1f, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), countOneBits(u_input.a.x)), 29u)], Struct_1(all(vec2<bool>(false, false)), u_input.a.wy, _wgslsmith_f_op_vec4_f32(vec4<f32>(817f, var_0.x, 1791f, -278f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -1000f, 381f))))));
    let var_2 = Struct_1(any(vec4<bool>(true, !(global0[_wgslsmith_index_u32(50153u, 23u)] > var_0.x), countOneBits(u_input.a.x) <= (u_input.a.x | u_input.a.x), true)), _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 16766u), u_input.a.yx), ~u_input.a.zw, u_input.a.wz), u_input.a.yz), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))) * global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f))), _wgslsmith_div_f32(1456f, _wgslsmith_f_op_f32(f32(-1f) * -826f)), global0[_wgslsmith_index_u32(0u, 23u)]));
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(938f);
}

