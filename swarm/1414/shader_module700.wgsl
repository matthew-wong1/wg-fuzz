struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(741f, 776f));

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = select(vec4<bool>(_wgslsmith_dot_vec3_u32(countOneBits(arg_0.xzw), vec3<u32>(arg_1, 4294967295u, 29399u) << (arg_0.wwy % vec3<u32>(32u))) <= 4294967295u, global1.b, all(vec3<bool>(!global1.a, all(vec3<bool>(false, arg_2.a, false)), 0i != u_input.c)), (~61794u ^ u_input.b) <= 4294967295u), select(vec4<bool>(any(!vec3<bool>(arg_2.b, true, arg_2.a)), !arg_2.b, true, select(select(true, false, false), arg_2.a, false)), select(vec4<bool>(true, !global1.a, false, global1.a), !select(vec4<bool>(false, true, false, arg_2.a), vec4<bool>(global1.a, false, true, global1.b), vec4<bool>(false, false, false, arg_2.b)), _wgslsmith_clamp_u32(4294967295u, arg_1, 4294967295u) != 1u), all(vec3<bool>(all(vec2<bool>(arg_2.a, global1.b)), !arg_2.b, all(vec2<bool>(true, false))))), select(!select(vec4<bool>(arg_2.a, true, true, global1.a), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, global1.b))), select(vec4<bool>(!arg_2.b, false, false, !arg_2.b), select(vec4<bool>(global1.b, false, global1.a, false), vec4<bool>(global1.b, true, false, global1.a), vec4<bool>(arg_2.a, true, arg_2.a, false)), select(select(vec4<bool>(global1.b, true, global1.a, false), vec4<bool>(false, false, arg_2.a, true), arg_2.b), vec4<bool>(arg_2.a, true, true, false), arg_2.a)), select(vec4<bool>(!arg_2.a, true, false, true), vec4<bool>(true, true, true, true), select(!vec4<bool>(global1.a, true, false, global1.b), select(vec4<bool>(global1.a, false, false, global1.a), vec4<bool>(true, false, global1.a, arg_2.a), vec4<bool>(global1.a, arg_2.b, true, true)), true))));
    let var_1 = 380f;
    let var_2 = vec3<bool>(any(!(!vec4<bool>(global1.a, true, true, global1.a))), all(!vec2<bool>(var_0.x, true)), false);
    global1 = arg_2;
    var var_3 = -500f;
    return abs(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.c, -13718i), vec3<i32>(1i, u_input.e, u_input.c)), vec3<i32>(u_input.e, u_input.e ^ u_input.d, _wgslsmith_add_i32(u_input.d, u_input.c)), ~(~vec3<i32>(33837i, u_input.d, u_input.d))) | _wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.d, 0i, -3061i), vec3<i32>(u_input.e, u_input.e, u_input.c)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -2147483647i, 2147483647i), vec3<i32>(1i, u_input.d, u_input.d)), abs(vec3<i32>(21700i, 2147483647i, 43915i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 1u)]);
    var var_1 = 59808u;
    var var_2 = max(_wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(_wgslsmith_div_i32(u_input.c, u_input.e), -1i, ~(22743i >> (u_input.a % 32u)))), ~arg_0);
    let var_3 = vec3<f32>(var_0.x, 2230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(f32(-1f) * -177f))) + 154f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.x, arg_2)))) - var_0.x));
    return select(!(!(!vec2<bool>(true, global1.b))), arg_1.wy, all(vec2<bool>(!all(arg_1.zxx), !(!global1.b))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(272f, 1000f))) - vec2<f32>(-1000f, -972f)))));
    global1 = Struct_1(any(func_4(func_3(vec4<u32>(35939u, 24498u, 35135u, 1u), u_input.a, Struct_1(global1.a, global1.a)), vec4<bool>(!global1.b, global1.b, true, true), _wgslsmith_f_op_f32(-2176f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !(!global1.b));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.e, u_input.c)), vec2<i32>(u_input.c, -2147483647i | u_input.d)), -min(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(8577i, u_input.c))), vec2<bool>(any(select(vec4<bool>(global1.b, true, global1.a, false), !vec4<bool>(global1.b, true, false, false), select(vec4<bool>(global1.b, false, global1.a, global1.b), vec4<bool>(global1.b, false, false, global1.a), false))), true));
    return Struct_1(var_1.b.x, (global1.b || !any(var_1.b)) | (_wgslsmith_f_op_f32(-1140f - 1311f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f * var_0.x))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<i32> {
    global1 = func_2();
    global1 = Struct_1(global1.a, !func_4(max(~vec3<i32>(-8093i, u_input.d, -12331i), vec3<i32>(-19123i, 20764i, u_input.e) << (vec3<u32>(1416u, 0u, u_input.b) % vec3<u32>(32u))), !select(vec4<bool>(global1.b, true, true, global1.a), vec4<bool>(false, false, arg_0.b.x, global1.b), vec4<bool>(false, global1.b, false, global1.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1805f + arg_1.x)))).x);
    var var_0 = select(!select(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, global1.a), select(vec4<bool>(false, true, global1.a, false), vec4<bool>(true, global1.b, global1.a, arg_0.b.x), vec4<bool>(global1.b, arg_0.b.x, false, arg_0.b.x)), arg_0.b.x), select(vec4<bool>(arg_0.b.x, true, false, true), vec4<bool>(true, true, false, false), global1.a), vec4<bool>(true, u_input.a != u_input.a, false, arg_0.b.x)), select(select(vec4<bool>(any(vec4<bool>(global1.b, arg_0.b.x, true, global1.b)), func_2().b, global1.a, arg_0.b.x), !(!vec4<bool>(true, false, true, arg_0.b.x)), select(!vec4<bool>(arg_0.b.x, false, global1.b, arg_0.b.x), !vec4<bool>(arg_0.b.x, true, false, false), vec4<bool>(true, global1.b, arg_0.b.x, false))), select(!select(vec4<bool>(global1.a, true, arg_0.b.x, true), vec4<bool>(global1.a, global1.b, arg_0.b.x, arg_0.b.x), global1.b), !select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(arg_0.b.x, true, false, global1.a), arg_0.b.x), func_2().a), any(arg_0.b) && func_2().a), global1.b);
    let var_1 = Struct_2(-(i32(-1i) * -2147483647i), func_4(-(vec3<i32>(-1i) * -vec3<i32>(u_input.e, -1i, -38886i)), vec4<bool>(false, all(var_0.xy) | any(var_0.yz), any(vec4<bool>(true, var_0.x, false, arg_0.b.x)), all(!vec4<bool>(false, var_0.x, arg_0.b.x, true))), arg_1.x));
    var var_2 = !vec2<bool>(true, !(!(-1i > u_input.c)));
    return vec4<i32>(var_1.a, ~(-49213i), u_input.c, _wgslsmith_mult_i32(i32(-1i) * -41036i, 43844i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_i32(~select(~(-vec4<i32>(u_input.c, 0i, u_input.e, u_input.d)), ~(-vec4<i32>(15096i, u_input.d, 2147483647i, 1726i)), !vec4<bool>(true, global1.b, false, global1.b)), select(vec4<i32>(_wgslsmith_add_i32(~u_input.d, 2147483647i), u_input.e, _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, u_input.d), ~u_input.d), -1i), _wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.c, u_input.d, u_input.e, u_input.e) | vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.e)) | func_1(Struct_2(9092i, vec2<bool>(true, global1.b)), vec4<f32>(-267f, 1525f, -854f, 435f)), ~(vec4<i32>(2147483647i, 4822i, -87216i, u_input.e) | vec4<i32>(u_input.c, -1i, u_input.e, 0i)), ~min(vec4<i32>(13906i, 0i, -2147483647i, u_input.d), vec4<i32>(1i, u_input.e, 26235i, u_input.e))), select(vec4<bool>(global1.a, all(vec2<bool>(true, true)), true, func_2().b), !(!vec4<bool>(global1.b, global1.a, global1.b, global1.a)), select(select(vec4<bool>(global1.a, true, global1.b, global1.b), vec4<bool>(false, global1.b, global1.a, true), vec4<bool>(true, true, global1.a, global1.a)), select(vec4<bool>(true, true, global1.b, true), vec4<bool>(global1.b, false, global1.b, global1.b), global1.a), !global1.b))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-327f))))) * 1000f));
    let var_2 = var_1;
    var var_3 = Struct_1(global1.a, global1.b);
    let var_4 = firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(26707u, u_input.a), min(vec2<u32>(48430u, abs(0u)), ~vec2<u32>(37566u, u_input.a) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 106815u)))));
    var var_5 = 5949u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.c, _wgslsmith_mult_i32(~(-1i), _wgslsmith_div_i32(1i, u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(round(var_1))))));
}

