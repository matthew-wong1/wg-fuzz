struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_4 = Struct_4(2679f, 32543i, Struct_3(vec3<f32>(-617f, -779f, -1097f), 45i), vec2<f32>(-1841f, -1500f), Struct_2(vec4<u32>(1u, 4294967295u, 74799u, 1u), vec2<i32>(-1i, 1i)));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<i32>(-57433i, 22966i)), Struct_2(vec4<u32>(53976u, 1u, 26625u, 42338u), vec2<i32>(10409i, i32(-2147483648))), Struct_2(vec4<u32>(1u, 73934u, 125211u, 101555u), vec2<i32>(35416i, 0i)), Struct_2(vec4<u32>(40270u, 7694u, 1u, 4294967295u), vec2<i32>(-1i, 19361i)), Struct_2(vec4<u32>(18675u, 58565u, 11814u, 0u), vec2<i32>(76187i, 2147483647i)), Struct_2(vec4<u32>(43265u, 14183u, 0u, 9976u), vec2<i32>(-9753i, -1i)), Struct_2(vec4<u32>(1u, 33761u, 43082u, 4294967295u), vec2<i32>(17433i, -1295i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.a.x;
    global0 = vec2<bool>(any(select(!vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, true, global0.x), !select(vec3<bool>(false, false, global0.x), vec3<bool>(true, false, false), global0.x))), !(!global0.x));
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.a * vec3<f32>(-1397f, 2831f, var_0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1304f, var_0, var_0), arg_0.a, true))))), -2147483647i);
    global2 = array<Struct_2, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), 270f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2379f, global1.d.x, global1.a, global1.d.x) - vec4<f32>(-332f, global1.c.a.x, global1.a, 147f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, -1086f, -733f, global1.c.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a, -1074f, -1086f, global1.c.a.x))))))));
    let var_1 = Struct_4(1000f, reverseBits(1i), global1.c, vec2<f32>(-1511f, _wgslsmith_f_op_f32(abs(global1.a))), global2[_wgslsmith_index_u32(global1.e.a.x, 7u)]);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), global1.c.a.x, _wgslsmith_f_op_f32(var_0.x * 1000f));
    var var_3 = firstLeadingBit(vec2<u32>(min(~40425u, 44766u) | (1u & _wgslsmith_mult_u32(var_1.e.a.x, 5169u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 0u), u_input.d.yz)));
    global0 = !select(!(!(!vec2<bool>(global0.x, false))), vec2<bool>(!select(global0.x, true, global0.x), true), false);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, -104f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), 2186f)), _wgslsmith_f_op_f32(abs(1f)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32) -> vec4<bool> {
    global0 = vec2<bool>(all(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), global0.x);
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.c)))), _wgslsmith_clamp_i32(~(-2147483647i), arg_2, arg_2), Struct_3(_wgslsmith_f_op_vec3_f32(-global1.c.a), u_input.a ^ abs(arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * global1.d), _wgslsmith_f_op_vec2_f32(round(arg_0)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.a.x, arg_1.x), global1.c.a.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))), global1.e);
    var var_0 = Struct_3(vec3<f32>(-600f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -495f))), -653f), -reverseBits(-13029i));
    var var_1 = !vec3<bool>(!global0.x && (any(vec4<bool>(global0.x, global0.x, false, global0.x)) & !global0.x), global0.x, true);
    let var_2 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global1.e.a.wz, vec2<u32>(u_input.c.x, global1.e.a.x)) << (~4294967295u % 32u), 4294967295u);
    return !(!select(select(select(vec4<bool>(true, true, var_1.x, global0.x), vec4<bool>(true, var_1.x, var_1.x, false), false), vec4<bool>(var_1.x, false, false, var_1.x), !vec4<bool>(global0.x, false, var_1.x, global0.x)), vec4<bool>(global0.x, true, any(vec3<bool>(true, var_1.x, false)), all(var_1.xz)), !select(vec4<bool>(global0.x, true, var_1.x, true), vec4<bool>(false, false, true, false), vec4<bool>(var_1.x, false, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    let var_1 = -1595f;
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = arg_2;
    global2 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_mult_i32(-2147483647i, countOneBits(func_4(func_1(arg_2, vec2<f32>(var_0.x, arg_2.x), 0i), Struct_1(450f, vec3<f32>(-953f, arg_2.x, 1007f), vec2<f32>(arg_2.x, global1.c.a.x), vec2<i32>(-34933i, global1.b))).d.x)) ^ _wgslsmith_mod_i32(select(u_input.a | u_input.a, 0i, select(true, arg_0, false)) << (global1.e.a.x % 32u), abs(-1i));
    let var_2 = 32369i >= (global1.e.b.x >> (1u % 32u));
    global0 = vec2<bool>(!any(select(vec2<bool>(global0.x, arg_0), !vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false))), !arg_0);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(-1358f, i32(-1i) * -1i, global1.c, _wgslsmith_f_op_vec2_f32(func_5(false, func_4(func_1(global1.c.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, -1000f)), -2147483647i), Struct_1(-1755f, global1.c.a, _wgslsmith_f_op_vec2_f32(-global1.c.a.xy), global1.e.b)), global1.d)), Struct_2(u_input.d, global1.e.b ^ vec2<i32>(u_input.a, 12676i)));
    let var_0 = global1.e.a.wx;
    let var_1 = global1.c;
    global0 = !vec2<bool>(firstLeadingBit(0u) == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_0.x), u_input.d.xz), !global0.x | !(u_input.d.x <= 4633u));
    var var_2 = var_1.a.x;
    global1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * -570f), _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_vec2_f32(func_3()).x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.e, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, global1.c.b, u_input.a), vec3<i32>(0i, u_input.e, 1i))), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, -2147483647i, 45079i), vec3<i32>(0i, u_input.e, 13300i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(37888i, 2147483647i, 18931i) ^ vec3<i32>(-31355i, u_input.e, var_1.b), select(vec3<i32>(17764i, 43842i, global1.e.b.x), vec3<i32>(1i, global1.b, -1i), vec3<bool>(false, global0.x, true))), _wgslsmith_mult_i32(61774i, 9078i))), global1.c, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_5(false, Struct_1(-477f, vec3<f32>(212f, global1.c.a.x, global1.c.a.x), var_1.a.zy, global1.e.b), global1.c.a.xz)).x)), 933f))), global1.e);
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.e.a.x, var_0.x, 4294967295u), vec3<i32>(~u_input.e, -_wgslsmith_add_i32(countOneBits(31069i), u_input.a), 1i), var_0.x, vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_1.b, -18996i), countOneBits(vec3<i32>(17188i, u_input.e, 2147483647i))));
}

