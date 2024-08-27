struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(15563u, 0u, 53604u, 4294967295u), vec4<u32>(69191u, 10133u, 1u, 51876u), vec4<u32>(4294967295u, 4294967295u, 3152u, 76963u), vec4<u32>(4294967295u, 90895u, 3970u, 61805u), vec4<u32>(11787u, 1u, 1u, 83204u), vec4<u32>(0u, 4861u, 4294967295u, 47460u), vec4<u32>(476u, 4294967295u, 10590u, 13110u), vec4<u32>(1u, 1u, 27930u, 45878u), vec4<u32>(41904u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 34687u, 4294967295u, 4003u), vec4<u32>(28476u, 4294967295u, 1u, 69535u), vec4<u32>(1u, 4294967295u, 34814u, 4294967295u), vec4<u32>(53302u, 4294967295u, 30649u, 1u), vec4<u32>(15272u, 0u, 19903u, 2196u), vec4<u32>(1u, 13009u, 80610u, 83772u), vec4<u32>(13169u, 84900u, 0u, 5667u), vec4<u32>(4294967295u, 1u, 76448u, 4294967295u), vec4<u32>(5341u, 4294967295u, 8342u, 9162u), vec4<u32>(1u, 6418u, 38748u, 0u), vec4<u32>(4294967295u, 1u, 10321u, 18981u), vec4<u32>(0u, 77218u, 67293u, 29637u), vec4<u32>(86662u, 4294967295u, 7137u, 4294967295u), vec4<u32>(4294967295u, 51977u, 4294967295u, 53907u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(19079u, 62767u, 26838u, 4294967295u), vec4<u32>(4294967295u, 0u, 9908u, 4294967295u), vec4<u32>(1u, 15147u, 1u, 15882u), vec4<u32>(1u, 0u, 4294967295u, 46421u), vec4<u32>(4294967295u, 0u, 66969u, 136640u), vec4<u32>(18387u, 0u, 38076u, 1u), vec4<u32>(4294967295u, 0u, 3750u, 1064u), vec4<u32>(4294967295u, 0u, 10734u, 4294967295u));

var<private> global2: array<f32, 26> = array<f32, 26>(-1814f, 688f, 1561f, -873f, 898f, -435f, -579f, 1549f, 859f, 129f, 1000f, -1000f, -1908f, -315f, -687f, -1312f, 1114f, 587f, 1000f, 399f, -219f, 563f, 213f, 613f, 1000f, -418f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> f32 {
    global1 = array<vec4<u32>, 32>();
    global2 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-973f + global2[_wgslsmith_index_u32(arg_0.d.x, 26u)]), arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e * arg_0.c), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(step(-807f, arg_0.c)))))))));
    var var_1 = vec3<u32>(max(arg_1.x, arg_2.x), 73436u, ~0u) | vec3<u32>(min(_wgslsmith_mult_u32(~arg_0.d.x, arg_1.x), countOneBits(u_input.b)), ~96857u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, arg_1.x, arg_1.x), vec3<u32>(42446u, arg_2.x, 35357u)), abs(0u)), firstTrailingBit(arg_1)));
    let var_2 = 1i;
    return global2[_wgslsmith_index_u32(59609u, 26u)];
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_3 {
    global2 = array<f32, 26>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true && (0i <= arg_0), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 26u)])), ~vec3<u32>(u_input.b, 104181u, u_input.b), global2[_wgslsmith_index_u32(1u, 26u)]), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, 24646u), _wgslsmith_add_u32(4294967295u, u_input.b)), abs(~11505u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(69386u, 1u, 19015u), vec3<u32>(1u, 1u, u_input.c)), ~vec3<u32>(0u, u_input.c, u_input.c))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(56773u, 74641u), ~u_input.b, ~u_input.c, u_input.b >> (1u % 32u)), ~global1[_wgslsmith_index_u32(u_input.c | u_input.b, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.c, 26u)])))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -666f)));
    return Struct_3(select(vec4<u32>(u_input.c, 39916u, ~abs(u_input.b), reverseBits(~1u)), vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.b), true), !(!(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(32473u, 26u)] - var_0) <= _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(45369u, u_input.b, 36179u, u_input.c))))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = select(arg_3, select(arg_3, vec4<bool>(_wgslsmith_mod_i32(u_input.a.x, 1i) > u_input.d, false, arg_3.x, 20187i >= ~u_input.a.x), all(vec2<bool>(arg_3.x, true)) & (_wgslsmith_div_f32(arg_1.x, 1599f) > _wgslsmith_f_op_f32(arg_2.x + arg_2.x))), !(!vec4<bool>(true, arg_3.x, false, false)));
    let var_1 = func_2(-11136i, _wgslsmith_div_f32(-1436f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 1417f)))))), false);
    global1 = array<vec4<u32>, 32>();
    var var_2 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1184f))) - arg_2.x), arg_1.x, -1000f);
    global2 = array<f32, 26>();
    return Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(7418u, 32u)]), countOneBits(~var_1.a)), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14102u, 0u), var_1.a.yyw)), ~(~1u), func_2(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-912f, 996f))), var_1.b).a.x), var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = 1f;
    global2 = array<f32, 26>();
    let var_1 = ~_wgslsmith_clamp_vec2_u32(~arg_0.a.yw, arg_0.a.xz, ~arg_0.a.zy);
    let var_2 = vec4<bool>(-2147483647i != _wgslsmith_mult_i32(-u_input.e << (reverseBits(32754u) % 32u), ~_wgslsmith_dot_vec2_i32(u_input.a.ww, u_input.a.zz)), false, abs(-u_input.d) <= 14654i, all(!select(select(vec4<bool>(arg_1.a.x, false, false, true), vec4<bool>(arg_1.a.x, true, false, true), true), vec4<bool>(arg_0.b, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = array<Struct_1, 23>();
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(u_input.a.ww << ((~vec2<u32>(4294967295u, u_input.c) << (~vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global2 = array<f32, 26>();
    global2 = array<f32, 26>();
    let var_1 = Struct_2(vec3<bool>(func_4(func_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27009u, 26u)] * global2[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-175f, global2[_wgslsmith_index_u32(0u, 26u)], -138f, global2[_wgslsmith_index_u32(u_input.c, 26u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1502f, 989f, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)]), vec4<f32>(-157f, -1796f, 503f, -3613f), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), Struct_2(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-882f * global2[_wgslsmith_index_u32(u_input.c, 26u)]))), Struct_2(vec3<bool>(false, true, false))), ~(1u >> (u_input.c % 32u)) == ~u_input.b, false));
    var var_2 = 2147483647i;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c, u_input.b, 0u), vec3<u32>(u_input.b, u_input.c, 18784u)), vec3<u32>(1u, 0u, 0u)), ~vec3<u32>(u_input.c, u_input.b, 0u) | select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.b, 29944u), vec3<bool>(var_1.a.x, false, true))), 26u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(51747u), 26u)])), -vec4<i32>(-11025i, -(u_input.e >> (4294967295u % 32u)), -var_0.x, var_0.x >> (~45006u % 32u)), global2[_wgslsmith_index_u32(u_input.b, 26u)]);
}

