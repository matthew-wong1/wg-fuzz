struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<u32>(43673u, 4294967295u), 1i, 365f, vec3<bool>(false, true, false)), vec3<u32>(21220u, 2606u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(1u, 116627u), -1i, 702f, vec3<bool>(false, false, true)), vec3<u32>(16306u, 10082u, 8601u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec2<u32>(9737u, 19650u), 66940i, -364f, vec3<bool>(true, false, false)), vec3<u32>(0u, 16831u, 31647u), vec4<bool>(false, true, false, false)));

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~(_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(39955i, 50238i, -1i, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -38526i, u_input.a.x), vec4<i32>(u_input.c, -2147483647i, arg_0.b, -18502i)), countOneBits(vec4<i32>(-1i, u_input.c, u_input.a.x, -1i)))) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(9732u, 4294967295u, 36021u, arg_0.a.x)), min(vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x)))) % vec4<u32>(32u)));
    global2 = array<Struct_2, 32>();
    let var_1 = Struct_2(Struct_1(abs(vec2<u32>(11384u, 113139u) >> (~vec2<u32>(95942u, arg_0.a.x) % vec2<u32>(32u))), u_input.b, arg_0.c, select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(62963u, 30u)], global0[_wgslsmith_index_u32(arg_0.a.x, 30u)]), arg_0.d, global0[_wgslsmith_index_u32(arg_0.a.x, 30u)]), vec3<bool>(arg_0.d.x, !global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)] || arg_0.d.x), select(select(arg_0.d, arg_0.d, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], arg_0.d.x), !global0[_wgslsmith_index_u32(17015u, 30u)]))), ~(countOneBits(~vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) >> (~reverseBits(vec3<u32>(34716u, arg_0.a.x, arg_0.a.x)) % vec3<u32>(32u))), !select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 30u)]), select(vec4<bool>(false, true, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false, arg_0.d.x, global0[_wgslsmith_index_u32(12000u, 30u)]), true), select(arg_0.a.x, 1u, true) == ~44507u));
    global2 = array<Struct_2, 32>();
    var var_2 = all(vec2<bool>(_wgslsmith_f_op_f32(-arg_0.c) == _wgslsmith_div_f32(-1330f, _wgslsmith_f_op_f32(select(-1000f, -1005f, arg_0.d.x))), !all(var_1.a.d)));
    return -7506i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<bool> {
    global1 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(step(arg_1, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -1498f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_0.c))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, arg_1)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-628f, arg_2), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.c)), _wgslsmith_f_op_f32(select(-638f, arg_0.c, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * vec2<f32>(arg_0.c, arg_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + vec2<f32>(arg_2, arg_1))))));
    let var_1 = Struct_1(vec2<u32>(~arg_0.a.x, firstTrailingBit(arg_0.a.x)), func_3(arg_0), _wgslsmith_f_op_f32(-663f - 138f), select(select(!(!vec3<bool>(true, arg_0.d.x, true)), !select(vec3<bool>(false, true, false), arg_0.d, arg_0.d), true), !arg_0.d, arg_0.d));
    global0 = array<bool, 30>();
    global2 = array<Struct_2, 32>();
    return vec2<bool>(var_1.d.x, !arg_0.d.x);
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_2, 3>();
    global2 = array<Struct_2, 32>();
    var var_0 = select(select(select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(87851u, 30u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40644u, 50493u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 0u, 0u)), 30u)]), !func_2(Struct_1(vec2<u32>(0u, 17405u), u_input.b, -965f, vec3<bool>(true, global0[_wgslsmith_index_u32(2083u, 30u)], global0[_wgslsmith_index_u32(20166u, 30u)])), 464f, -2891f), !global0[_wgslsmith_index_u32(~4294967295u, 30u)]), func_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 52648u), vec2<u32>(1u, 48636u)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, 36380i, u_input.c)), _wgslsmith_div_f32(1739f, 326f), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(14975u, 30u)]))), _wgslsmith_f_op_f32(round(1f)), -265f), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)]), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(12135u, 30u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)]))), select(func_2(Struct_1(vec2<u32>(1u, 1u), 1i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(54379u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(48820u, 30u)], global0[_wgslsmith_index_u32(55698u, 30u)]))), 1152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(936f)) - -707f)), !vec2<bool>(true, !global0[_wgslsmith_index_u32(0u, 30u)]), func_2(Struct_1(reverseBits(vec2<u32>(40043u, 0u)), u_input.c, _wgslsmith_f_op_f32(484f + 1085f), vec3<bool>(false, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(596f + -983f), 1995f), _wgslsmith_f_op_f32(f32(-1f) * -1039f))), !(!(!global0[_wgslsmith_index_u32(120148u, 30u)])));
    global0 = array<bool, 30>();
    let var_1 = 122f;
    return StorageBuffer(vec2<i32>(u_input.c, ~(~(-u_input.c))), firstLeadingBit(~vec4<i32>(u_input.b, u_input.b, u_input.b, -22736i)) | abs(vec4<i32>(u_input.a.x & u_input.a.x, -u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yx), ~u_input.c)), select(abs(vec2<i32>(28352i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), ~abs(u_input.a.zz) & vec2<i32>(1i, 1i), select(vec2<bool>(true, var_0.x), vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(21819u), 30u)], !global0[_wgslsmith_index_u32(71995u, 30u)]), true)), min(~_wgslsmith_div_u32(~20793u, reverseBits(1u)), _wgslsmith_mult_u32(0u & select(87416u, 1u, var_0.x), ~reverseBits(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let x = u_input.a;
    s_output = func_1();
}

