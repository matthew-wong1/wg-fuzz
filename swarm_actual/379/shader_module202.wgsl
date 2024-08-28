struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec4<u32>, 7>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(abs(~select(vec3<u32>(1u, 1u, u_input.a), u_input.d, 0u > u_input.d.x)), vec4<u32>(select(51727u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 42003u, 11123u, 42388u), vec4<u32>(u_input.a, 95328u, arg_2, u_input.d.x)), u_input.b >= -16324i), countOneBits(arg_2) ^ arg_2, _wgslsmith_dot_vec3_u32(~vec3<u32>(32044u, u_input.d.x, 1u), u_input.d & vec3<u32>(arg_2, 1u, 0u)), arg_2) ^ firstTrailingBit(global1[_wgslsmith_index_u32(15105u << (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u), 7u)]), false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(849f, -962f) * vec2<f32>(-2327f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-291f, -1000f), vec2<f32>(259f, -236f))))))));
    global1 = array<vec4<u32>, 7>();
    global0 = array<i32, 27>();
    var var_1 = var_0;
    global1 = array<vec4<u32>, 7>();
    return vec2<f32>(var_0.d.x, _wgslsmith_div_f32(-843f, 139f));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = -997f;
    var var_1 = Struct_1(u_input.d, ~(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 62287u, u_input.d.x), vec4<u32>(21053u, u_input.d.x, u_input.a, 38000u)), ~vec4<u32>(4294967295u, 28946u, u_input.a, u_input.d.x))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, true, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), u_input.d.x)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1741f - var_0) - _wgslsmith_f_op_f32(724f * -210f)), 311f)));
    var var_2 = var_1.c | var_1.c;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(round(836f))));
    var var_4 = arg_0.x;
    return !any(vec3<bool>(!(true | var_1.c), (var_1.c & var_1.c) & select(var_1.c, var_1.c, true), true));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<u32>, 7>();
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = _wgslsmith_mult_vec4_i32(-select(~vec4<i32>(u_input.b, 1i, global0[_wgslsmith_index_u32(3105u, 27u)], -1i), -vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(38754u, 27u)]), select(select(vec4<bool>(arg_1.c, false, true, arg_1.c), vec4<bool>(arg_2.c, arg_2.c, arg_1.c, false), vec4<bool>(arg_1.c, true, false, true)), !vec4<bool>(arg_2.c, false, true, arg_2.c), all(vec3<bool>(true, arg_1.c, true)))), vec4<i32>(-10319i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(4294967295u), min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, arg_2.a.x), vec2<u32>(arg_0, 4294967295u)), arg_1.b.x ^ arg_2.a.x)), 27u)], 1i, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(-26243i, global0[_wgslsmith_index_u32(1752u, 27u)]), 1i ^ u_input.c)));
    global1 = array<vec4<u32>, 7>();
    return Struct_1(vec3<u32>(firstTrailingBit(4294967295u) << (1u % 32u), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(27931u, u_input.a), ~abs(0u)), 39540u), _wgslsmith_mod_vec4_u32(vec4<u32>(~15709u, ~u_input.d.x ^ (arg_1.b.x & u_input.a), 1u, _wgslsmith_div_u32(arg_0, u_input.d.x | 31737u)), (~vec4<u32>(u_input.a, arg_2.b.x, u_input.a, arg_1.b.x) | (arg_2.b ^ global1[_wgslsmith_index_u32(arg_2.b.x, 7u)])) | _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(1u, 7u)], select(arg_2.b, arg_1.b, vec4<bool>(arg_2.c, arg_2.c, true, arg_2.c)))), arg_2.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.d)))))));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    let var_0 = func_4(u_input.d.x, Struct_1(reverseBits(~vec3<u32>(u_input.d.x, u_input.d.x, 7121u) << ((vec3<u32>(33501u, 13539u, 4294967295u) | vec3<u32>(u_input.d.x, 16089u, 1u)) % vec3<u32>(32u))), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), func_2(vec2<i32>(global0[_wgslsmith_index_u32(1u, 27u)], 2147483647i)) || true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.zx)))), Struct_1(~(~u_input.d) ^ max(vec3<u32>(25277u, 61838u, 1u), u_input.d), vec4<u32>(59000u, ~74474u, max(u_input.a, 1535u) & min(1u, u_input.d.x), ~(~1408u)), !select(true, false, global0[_wgslsmith_index_u32(4294967295u, 27u)] >= u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xy * arg_0.yx)))));
    global1 = array<vec4<u32>, 7>();
    let var_1 = reverseBits((var_0.a ^ vec3<u32>(~u_input.a, ~var_0.a.x, var_0.b.x << (8926u % 32u))) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.b.x, 0u, 4294967295u), abs(var_0.b.wyw)) % vec3<u32>(32u)));
    var var_2 = !any(vec2<bool>(true, true));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_0.c, false, true), vec2<bool>(var_0.c, false), 4294967295u)).x))) * arg_0.x), -1024f);
    return StorageBuffer(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(reverseBits(1u), _wgslsmith_mult_u32(4294967295u, u_input.a), global0[_wgslsmith_index_u32(0u, 27u)] < 17671i), ~15057u, _wgslsmith_dot_vec2_u32(~var_0.b.wy, var_1.yx)), 27u)], -_wgslsmith_mod_i32(u_input.b, ~global0[_wgslsmith_index_u32(1u, 27u)]), 1i), vec3<u32>(65893u, _wgslsmith_mult_u32(~min(var_1.x, u_input.d.x), 18495u), ~_wgslsmith_div_u32(var_0.a.x, var_0.a.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c, global0[_wgslsmith_index_u32(var_1.x, 27u)]), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 27u)], 50116i, global0[_wgslsmith_index_u32(u_input.d.x, 27u)]), vec3<i32>(-31403i, 1i, 44600i) ^ vec3<i32>(u_input.b, -38328i, -2147483647i), ~vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(3281u, 27u)], 0i))) << ((_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b.x, u_input.d.x, 49782u), var_1) | vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(27535u, 4294967295u, 4294967295u), vec3<u32>(1u, var_1.x, 4294967295u)), ~var_0.b.x)) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_0.c, true, false), vec2<bool>(true, false), u_input.d.x)).x - _wgslsmith_f_op_f32(min(270f, arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), var_3.x, any(vec3<bool>(true, var_0.c, true)))), _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(var_0.d.x - 687f), var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 1614f, 493f, -620f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, 768f, var_0.d.x, var_0.d.x)))))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.c, -1i))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 27u)], u_input.c), vec2<i32>(-17120i, global0[_wgslsmith_index_u32(33387u, 27u)])), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 27u)], global0[_wgslsmith_index_u32(var_0.b.x, 27u)]), vec2<i32>(12171i, -26041i)), vec2<bool>(true, true)), true), min(~(-vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(4729u, 27u)])), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, -27381i)), vec2<i32>(-2390i, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~1u, 7u)];
    global1 = array<vec4<u32>, 7>();
    global0 = array<i32, 27>();
    var var_1 = Struct_1(select(u_input.d, vec3<u32>(4294967295u, ~(~var_0.x), 4294967295u), false), global1[_wgslsmith_index_u32(var_0.x | 253u, 7u)], select(!(!(29382u >= var_0.x)), false, true || any(vec3<bool>(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2149f + _wgslsmith_div_f32(1209f, 241f)) + _wgslsmith_f_op_f32(sign(323f))), 1000f));
    let x = u_input.a;
    s_output = func_1(vec3<f32>(-1503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.x))) + _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - _wgslsmith_f_op_f32(abs(var_1.d.x))) - -1239f)));
}

