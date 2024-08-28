struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

var<private> global1: Struct_1 = Struct_1(0u, false, 0i);

var<private> global2: Struct_1 = Struct_1(1u, true, 29440i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = Struct_1(1u, global2.b, firstLeadingBit(-firstLeadingBit(~global1.c)));
    global1 = Struct_1(countOneBits(8346u), false, _wgslsmith_mod_i32(var_0.c, 2147483647i));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(516f, 664f, -518f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1171f, 1695f, 298f), vec3<f32>(-1285f, 1004f, -859f))), vec3<f32>(466f, -1554f, 1000f)))));
    var var_3 = var_2.x;
    return var_2.x;
}

fn func_3() -> u32 {
    var var_0 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), !vec2<bool>(global1.b, global1.b), vec2<bool>(global2.b, false)), !(!vec2<bool>(global1.b, global2.b)), all(vec4<bool>(false, global2.b, global2.b, true))), !select(vec2<bool>(true, global2.b), vec2<bool>(global2.b, global1.b), !global1.b), vec2<bool>(~u_input.a.x < u_input.a.x, true)), !vec2<bool>(true, any(!vec2<bool>(true, global2.b))), !global1.b);
    var_0 = !vec2<bool>(false, !any(select(vec2<bool>(global2.b, false), vec2<bool>(global1.b, var_0.x), global2.b)));
    global1 = Struct_1(u_input.a.x, all(!vec2<bool>(!var_0.x, !var_0.x)), 29797i);
    global2 = Struct_1(_wgslsmith_mod_u32(~(4294967295u >> (~4294967295u % 32u)), ~reverseBits(u_input.a.x & global1.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), vec2<u32>(u_input.a.x, global2.a)), ~(~global2.a)) == _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global2.a, 2u)], select(~vec4<u32>(23877u, global2.a, u_input.a.x, global1.a), firstLeadingBit(global0[_wgslsmith_index_u32(95u, 2u)]), !vec4<bool>(global2.b, true, true, false))), global1.c);
    global1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global1.a), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global1.a, u_input.a.x))) | (_wgslsmith_div_vec2_u32(u_input.a, u_input.a) & vec2<u32>(global2.a, 0u)), vec2<u32>(0u, 7533u | abs(global1.a))), global1.b, ~_wgslsmith_add_i32(global1.c, ~global2.c));
    return ~abs(min(countOneBits(~0u), 24168u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> vec3<u32> {
    global1 = Struct_1(~global2.a, any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.b, global1.b, true, true), vec4<bool>(false, global1.b, true, global1.b))) | any(!select(vec4<bool>(global1.b, true, true, true), vec4<bool>(false, global1.b, false, false), true)), 40883i);
    var var_0 = u_input.a.x & min(func_3(), ~global1.a);
    global1 = arg_0;
    var var_1 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c, 29129i, _wgslsmith_div_i32(arg_1, -arg_1), 0i), _wgslsmith_div_vec4_i32((vec4<i32>(0i, global2.c, 1i, -2066i) >> (vec4<u32>(4294967295u, global1.a, global2.a, global1.a) % vec4<u32>(32u))) | abs(vec4<i32>(arg_0.c, global2.c, 0i, arg_1)), abs(~vec4<i32>(arg_1, global1.c, -58800i, global1.c)))));
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(~max(vec3<u32>(1u, global1.a, 1u), vec3<u32>(10244u, global2.a, 54026u))), ~(~vec3<u32>(u_input.a.x, 4294967295u, global2.a)) << (vec3<u32>(reverseBits(global1.a), global2.a, 1u) % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.c, -2134i, -1i), vec4<i32>(-2147483647i, -45039i, global2.c, 60180i)), vec4<i32>(-44493i, var_1.x, var_1.x, global1.c) & vec4<i32>(global1.c, arg_0.c, -63354i, 0i), any(vec4<bool>(global1.b, false, false, global2.b))), select(countOneBits(vec4<i32>(var_1.x, -1i, -24571i, global2.c)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.c, arg_1), vec4<i32>(global2.c, var_1.x, global1.c, 68250i)), vec4<bool>(global2.b, true, arg_0.b, false))) < _wgslsmith_sub_i32(min(_wgslsmith_mod_i32(arg_0.c, arg_1), var_1.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, var_1.x), 1i)), ~_wgslsmith_dot_vec2_i32(var_1.wz, var_1.zw >> (abs(vec2<u32>(global2.a, u_input.a.x)) % vec2<u32>(32u))));
    return vec3<u32>(~21733u, firstTrailingBit(~global2.a) ^ 1u, firstTrailingBit(12401u) << (global2.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(global1.c);
    let var_1 = var_0;
    global0 = array<vec4<u32>, 2>();
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global1.c, 26208u, false)))), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-234f, -495f) - vec2<f32>(1714f, 1078f)) - vec2<f32>(520f, 2070f)) + vec2<f32>(_wgslsmith_f_op_f32(712f * -1940f), _wgslsmith_f_op_f32(-107f * -412f)))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -327f);
    global0 = array<vec4<u32>, 2>();
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(func_2(Struct_1(global2.a, true, var_1), 1i, vec2<f32>(822f, var_2.x)), select(vec3<u32>(global2.a, global1.a, global2.a), vec3<u32>(u_input.a.x, 1u, global1.a), vec3<bool>(false, global2.b, global1.b))), abs(vec3<u32>(u_input.a.x, global1.a, u_input.a.x)) & vec3<u32>(global1.a ^ 0u, min(global1.a, 38268u), global1.a | 18279u)), global2.b, global1.c);
    var var_4 = global1.a;
    let var_5 = !any(select(select(vec2<bool>(global2.b, global2.b), vec2<bool>(true, false), false), !vec2<bool>(global1.b, global2.b), false)) | true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_div_f32(var_2.x, 1460f)))));
}

