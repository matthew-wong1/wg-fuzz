struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(15197i, -19623i), vec2<i32>(-1i, -13175i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(61738i, -1i), vec2<i32>(-59919i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(-46108i, 17623i), vec2<i32>(2147483647i, -50617i), vec2<i32>(-49605i, -21431i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> f32 {
    global1 = array<vec2<i32>, 11>();
    var var_0 = vec4<u32>(90515u, u_input.a.x, reverseBits(~4294967295u), 49243u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_3.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = reverseBits(~(~vec4<u32>(~52721u, var_0.x << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, 94479u), vec4<u32>(u_input.a.x, var_0.x, var_0.x, 7142u)), _wgslsmith_div_u32(1u, var_0.x))));
    var var_2 = min(vec4<i32>((-2147483647i >> (~u_input.a.x % 32u)) & arg_3.b.x, ~reverseBits(-global0.b.x), _wgslsmith_dot_vec4_i32(min(~arg_3.b, countOneBits(vec4<i32>(arg_2, global0.b.x, 888i, arg_3.b.x))), vec4<i32>(-25427i, global0.b.x, 1i, -71257i) << ((vec4<u32>(u_input.b, u_input.d, var_0.x, 1u) << (vec4<u32>(var_0.x, var_0.x, 34143u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.b.x), global0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = Struct_1(!select(vec4<bool>(any(vec4<bool>(arg_0.a.x, arg_0.b.x, false, arg_0.a.x)), true, all(arg_0.b.zz), arg_0.b.x), !(!vec4<bool>(false, true, false, arg_0.a.x)), false), -_wgslsmith_mult_vec2_i32(vec2<i32>(-global0.b.x, 0i), -(~global0.b.ww)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1442f, _wgslsmith_f_op_f32(select(1295f, global0.a, false)), _wgslsmith_f_op_f32(func_3(true, global0.a, -1i, Struct_3(global0.a, vec4<i32>(1i, global0.b.x, var_0.b.x, -2147483647i))))))));
    return ~((_wgslsmith_clamp_u32(4294967295u | u_input.b, max(u_input.d, 0u), arg_1 << (20285u % 32u)) & arg_1) >> ((arg_1 << (_wgslsmith_sub_u32(~4294967295u, ~4294967295u) % 32u)) % 32u));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_1(vec4<bool>(!(26318i > u_input.c) | false, (~39592u < func_2(Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, false, true)), u_input.a.x)) || false, all(vec3<bool>(true, true, true)), select(_wgslsmith_f_op_f32(global0.a * global0.a) == _wgslsmith_f_op_f32(-global0.a), false, true)), vec2<i32>(abs(~(63982i >> (u_input.a.x % 32u))), -149i));
    var var_1 = !(!(!select(var_0.a.yy, select(var_0.a.yx, vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, false)), !vec2<bool>(var_0.a.x, true))));
    var var_2 = ~(~_wgslsmith_add_vec2_u32(u_input.a | countOneBits(u_input.a), ~(~u_input.a)));
    var_1 = var_0.a.wy;
    global0 = Struct_3(_wgslsmith_f_op_f32(step(arg_0, -1902f)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, var_0.b.x, -2147483647i), vec4<i32>(var_0.b.x, 0i, u_input.c, -2147483647i) >> (vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u))) | vec4<i32>(global0.b.x, reverseBits(-64466i), ~(-1i), -u_input.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(911f, abs(~global0.b));
    let var_0 = _wgslsmith_f_op_f32(-global0.a);
    let var_1 = !vec3<bool>(func_1(_wgslsmith_f_op_f32(trunc(var_0))), false, 2147483647i != firstLeadingBit(_wgslsmith_mod_i32(global0.b.x, global0.b.x)));
    let var_2 = global0.a;
    var var_3 = Struct_2(!select(var_1, var_1, !var_1.x), !(!select(var_1, var_1, var_1)));
    global1 = array<vec2<i32>, 11>();
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))), firstTrailingBit(vec4<i32>(-1i) * -(global0.b | vec4<i32>(-1267i, u_input.c, -3368i, 28215i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1673f, var_0, 802f, -107f), vec4<f32>(676f, 1914f, var_4.a, -1339f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(667f, global0.a, 1556f, -728f), vec4<f32>(var_0, var_4.a, 743f, var_0))))), ~(~u_input.a.x), ~(~(~u_input.d) & (~u_input.a.x | u_input.d)), -1586f);
}

