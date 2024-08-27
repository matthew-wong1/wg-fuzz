struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global1: Struct_2 = Struct_2(4874u, vec3<i32>(0i, 38043i, -1i), 1i, i32(-2147483648));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = vec3<bool>(all(select(vec3<bool>(arg_3, arg_3, false), !vec3<bool>(arg_0.x, false, arg_3), vec3<bool>(arg_3, true, all(arg_0)))), 2661u > _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(1u), arg_1 << (arg_1 % 32u)), select(_wgslsmith_sub_u32(15362u, global1.a), _wgslsmith_add_u32(63757u, 11012u), all(global0[_wgslsmith_index_u32(4294967295u, 8u)]))), !all(select(select(vec4<bool>(false, arg_3, false, arg_0.x), vec4<bool>(false, false, arg_3, arg_3), arg_0.x), !vec4<bool>(true, true, arg_0.x, true), any(arg_0.yz))));
    var var_1 = select(1u, _wgslsmith_add_u32(min(arg_1, 4294967295u), _wgslsmith_add_u32(global1.a, ~u_input.a.x)), !any(select(!vec4<bool>(true, arg_0.x, var_0.x, false), select(vec4<bool>(arg_0.x, var_0.x, true, false), vec4<bool>(true, false, true, arg_3), vec4<bool>(arg_3, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, true, arg_0.x, false))));
    var var_2 = false;
    let var_3 = _wgslsmith_sub_u32(53612u, firstLeadingBit(1u)) <= global1.a;
    var var_4 = _wgslsmith_mod_vec4_i32(firstLeadingBit(-(u_input.b >> (u_input.a % vec4<u32>(32u)))), u_input.b);
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> u32 {
    global0 = array<vec3<bool>, 8>();
    var var_0 = select(!vec4<bool>(!all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)), func_3(global0[_wgslsmith_index_u32(global1.a, 8u)], arg_1.x, -36288i >> (global1.a % 32u), true), any(vec2<bool>(true, false)) || any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, !any(vec3<bool>(true, true, false)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), true));
    let var_1 = Struct_2(~(~117886u), ~select(vec3<i32>(-global1.b.x, ~u_input.b.x, ~(-7709i)), _wgslsmith_mult_vec3_i32(global1.b & arg_0.yzy, vec3<i32>(2147483647i, 1199i, u_input.b.x)), vec3<bool>(var_0.x, true, !var_0.x)), -16241i, u_input.b.x);
    var var_2 = Struct_2(_wgslsmith_add_u32(u_input.a.x, global1.a ^ 1u), u_input.b.yxx, global1.c, firstLeadingBit(abs(27901i)));
    var_0 = !(!vec4<bool>(_wgslsmith_f_op_f32(ceil(261f)) != _wgslsmith_f_op_f32(sign(-1000f)), var_0.x, true, true));
    return 0u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, ~58148u, 0u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.a, global1.a), vec3<u32>(global1.a, var_2.a, 15323u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = func_2(~u_input.b, _wgslsmith_div_vec2_u32(~(~vec2<u32>(2162u, arg_0.x)), vec2<u32>(abs(10115u), 4294967295u)));
    let var_1 = -(-u_input.b & abs(select(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), vec4<i32>(global1.c, 0i, global1.d, -1i), select(true, arg_1.x, arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) * 332f));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, 641f, 363f, -316f) - vec4<f32>(var_2, var_2, -1000f, 486f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, -438f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -1000f, var_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, 1104f, -728f), vec4<f32>(576f, -231f, var_2, 1000f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-801f * arg_1.e.x), arg_0.x));
    let var_1 = Struct_2(4294967295u, vec3<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.b.x << (78749u % 32u), u_input.b.x, ~1696i)), firstLeadingBit(_wgslsmith_add_i32(global1.d | global1.c, arg_1.b.x)), -23818i), -1i, 1i);
    return Struct_2(~_wgslsmith_div_u32(arg_1.c.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(global1.a, u_input.a.x)))), vec3<i32>(-(_wgslsmith_clamp_i32(-1i, -3199i, 14632i) >> (var_1.a % 32u)), abs(2147483647i), ~(-firstTrailingBit(-79754i))), 1i, ~var_1.d ^ -8051i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(~firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)), vec2<bool>(true, all(global0[_wgslsmith_index_u32(42801u, 8u)]))))), Struct_1(false, abs(vec2<i32>(~75621i, ~(-2147483647i))), ~_wgslsmith_div_vec2_u32(select(u_input.a.zz, vec2<u32>(24432u, 68164u), true), u_input.a.wx >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), !func_3(global0[_wgslsmith_index_u32(max(u_input.a.x, global1.a), 8u)], 0u, -global1.d, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1423f, 507f)) * vec2<f32>(-976f, -891f)))));
    global0 = array<vec3<bool>, 8>();
    let var_1 = u_input.a.xzx;
    global0 = array<vec3<bool>, 8>();
    let var_2 = vec3<u32>(abs(~66440u), u_input.a.x, 7625u);
    global1 = Struct_2(0u, ~var_0.b, ~reverseBits(_wgslsmith_dot_vec2_i32(global1.b.zy, func_4(vec4<f32>(883f, 1064f, -623f, 316f), Struct_1(false, vec2<i32>(global1.d, 2147483647i), u_input.a.xw, false, vec2<f32>(1456f, -761f))).b.zy)), ~u_input.b.x);
    let var_3 = vec3<bool>(false, !all(vec2<bool>(true, true)), all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, 1162f, -291f, 234f) - vec4<f32>(693f, -1000f, 1000f, -265f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -890f, 453f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, -265f, 888f, 586f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -788f, -125f, 426f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-616f, -1221f, 284f, 1762f))), vec4<bool>(true, var_3.x | var_3.x, false, var_3.x))))), _wgslsmith_f_op_f32(-1f), global1.d & _wgslsmith_mult_i32(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 62424i), vec3<i32>(global1.b.x, u_input.b.x, 1i))));
}

