struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-2380f, 1114f, 221f, 250f), vec4<f32>(-1117f, -1708f, 774f, -273f), vec4<f32>(1578f, 1603f, -1066f, 321f), vec4<f32>(-604f, -140f, -1130f, 1359f));

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(28850i, -62137i), vec2<i32>(1i, -1i), vec2<i32>(-14101i, -1i), vec2<i32>(19601i, 1i), vec2<i32>(i32(-2147483648), -12438i), vec2<i32>(11747i, 15489i), vec2<i32>(-32791i, 0i), vec2<i32>(-62153i, 2147483647i), vec2<i32>(83892i, 40056i), vec2<i32>(19108i, 3476i), vec2<i32>(2147483647i, 7140i), vec2<i32>(37466i, 23421i), vec2<i32>(66437i, 2147483647i), vec2<i32>(i32(-2147483648), 98204i));

var<private> global3: array<u32, 17>;

var<private> global4: array<u32, 6> = array<u32, 6>(41341u, 81665u, 4294967295u, 32847u, 1u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    return _wgslsmith_sub_vec2_i32(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_mult_u32(0u, 4294967295u), 98197u), 14u)], vec2<i32>(-58672i, _wgslsmith_clamp_i32(u_input.d, ~1i, ~abs(u_input.a))));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(~global4[_wgslsmith_index_u32(firstLeadingBit(51685u), 6u)], arg_1, ~vec3<i32>(-2147483647i, ~(-1i), u_input.d), select(select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), arg_1), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), vec2<bool>(false, false))), !vec2<bool>(arg_1, false), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, -1085f, -495f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1269f, -1000f, 1501f) + vec3<f32>(-1000f, -1992f, 1574f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-609f, 535f, 1331f)))))), _wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(~(~(~arg_0)), 14u)], vec2<i32>(2147483647i & u_input.d, _wgslsmith_add_i32(-11187i, -1i)) << (vec2<u32>(arg_0, min(u_input.c.x, global3[_wgslsmith_index_u32(arg_0, 17u)])) % vec2<u32>(32u))));
    var var_1 = all(vec3<bool>(any(vec2<bool>(false, false)) != (704f <= var_0.a.e.x), arg_1, arg_1));
    global4 = array<u32, 6>();
    var var_2 = countOneBits(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(var_0.a.a, 1u, var_0.a.a)) ^ 45097u, 14u)]);
    var var_3 = 1u;
    return var_0.a.e.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(~arg_2, false));
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = abs(~(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 9437i, 0i), arg_0.a.c), ~vec3<i32>(arg_0.a.c.x, arg_3.c.x, -2147483647i)) | _wgslsmith_add_vec3_i32(min(arg_0.a.c, arg_3.c), -vec3<i32>(u_input.d, u_input.d, u_input.a))));
    global1 = arg_3.b;
    var var_2 = max(u_input.c.yy, ~firstTrailingBit(vec2<u32>(u_input.b, _wgslsmith_clamp_u32(42358u, 72373u, 3917u))));
    return _wgslsmith_mod_u32(31982u, ~1u >> (_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(29364u, 17u)], _wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(arg_0.a.a, 17u)]), ~global3[_wgslsmith_index_u32(var_2.x, 17u)]) % 32u)) << (~var_2.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 6u)], 17u)] >> (17388u % 32u), true, max(vec3<i32>(2147483647i, 6964i, 55783i), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1458f, 1090f, -1612f)))), func_1(true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(-1470f, 1387f)), false)), ~1u, Struct_1(~global4[_wgslsmith_index_u32(40252u, 6u)] ^ ~u_input.c.x, all(vec4<bool>(true, false, true, true)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec2<bool>(false, any(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-699f, 500f, -135f))))) << (~_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 17u)], 17u)], abs(u_input.c.x)) % 32u), 17u)];
    let var_1 = ~max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xz, abs(vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(7981u, 6u)]))), 17u)], 25137u);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_1, 0u, 1u)), firstTrailingBit(vec3<u32>(52220u, global4[_wgslsmith_index_u32(u_input.b, 6u)], var_1)), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], var_1)), vec3<u32>(var_1, min(1u, global3[_wgslsmith_index_u32(46683u, 17u)]), abs(global3[_wgslsmith_index_u32(90004u, 17u)]))), u_input.c), ~41715u, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, ~(u_input.c & vec3<u32>(var_1, 4294967295u, u_input.c.x))), 1u, _wgslsmith_div_u32(~65881u, 19270u)), 6u)]);
    global0 = array<vec4<f32>, 4>();
    let var_3 = Struct_2(Struct_1(((var_2.x & 56368u) >> (var_2.x % 32u)) << ((_wgslsmith_add_u32(var_2.x, 36602u) & 4294967295u) % 32u), true, -(-vec3<i32>(u_input.a, u_input.d, 1i) >> (~var_2 % vec3<u32>(32u))), vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(709f * 1246f))), -448f)), func_1(true));
    global0 = array<vec4<f32>, 4>();
    var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_i32(vec2<i32>(max(var_3.b.x, 12473i), 22794i), vec2<i32>(-31719i, 0i)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(60239u, 14u)], vec2<i32>(-68164i, u_input.d) << (vec2<u32>(var_1, var_3.a.a) % vec2<u32>(32u))), vec2<i32>(1i, -1i)), var_3.a.d), abs(i32(-1i) * -62205i) | u_input.d, var_3.a.a);
}

