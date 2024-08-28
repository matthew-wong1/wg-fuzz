struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    global0 = Struct_1(global0.a, ~(~_wgslsmith_mult_u32(~u_input.d, u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.c)))))), false, any(global0.a.zx));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) - global0.c.ww)), global0.c.xy))));
    let var_0 = u_input.b.xw;
    var var_1 = u_input.b.yyz;
    global1 = _wgslsmith_f_op_vec2_f32(sign(global0.c.zz));
    return vec3<bool>(global0.d, false, _wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global0.c.x)) - -358f));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(func_3(), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~4294967295u, ~(~18889u), _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u))), 0u, global0.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1244f, -2205f, global0.c.x, -1978f))), _wgslsmith_f_op_vec4_f32(sign(global0.c))), vec4<f32>(_wgslsmith_f_op_f32(step(global0.c.x, global1.x)), global0.c.x, _wgslsmith_f_op_f32(max(1000f, -595f)), 1000f))), _wgslsmith_f_op_vec4_f32(-global0.c))), any(vec4<bool>(any(!global0.a.yy), !global0.d, true && (global1.x != 959f), true || select(global0.e, true, true))), ~u_input.e.x > ~(-1i));
    var_0 = Struct_1(select(vec3<bool>(_wgslsmith_f_op_f32(step(-399f, global1.x)) > 403f, false, true), var_0.a, vec3<bool>(var_0.a.x, !(global0.a.x != global0.e), global0.e)), min(u_input.d, 53996u), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-817f))), -2144f, -1000f), 1i < u_input.b.x, global0.a.x);
    var var_1 = Struct_1(var_0.a, _wgslsmith_sub_u32(~55398u, _wgslsmith_dot_vec4_u32(u_input.a, max(vec4<u32>(var_0.b, var_0.b, var_0.b, 4294967295u), u_input.a)) << (_wgslsmith_sub_u32(~0u, 47717u) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, global1.x, 358f, 784f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -477f, var_0.c.x, global1.x) - global0.c)))), _wgslsmith_add_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.e.x, 33208i))) <= -223i, var_0.b != _wgslsmith_add_u32(~u_input.c.x, ~_wgslsmith_div_u32(global0.b, global0.b)));
    var var_2 = u_input.e.x;
    global0 = Struct_1(global0.a, ~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * var_0.c.x), _wgslsmith_f_op_f32(-var_1.c.x), global0.c.x, _wgslsmith_f_op_f32(var_1.c.x + 207f)))), !all(var_0.a), true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 2008f, 419f, -440f), _wgslsmith_f_op_vec4_f32(min(var_0.c, var_1.c))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1567f, -1000f, 1211f, global0.c.x) * var_0.c), vec4<f32>(global1.x, global0.c.x, -684f, var_0.c.x), true))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.c))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1929f, var_0.c.x, 1000f, -799f)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.c.x)))))));
    let var_0 = global0.c.x;
    let var_1 = arg_1;
    global0 = Struct_1(!global0.a, _wgslsmith_add_u32(~(97741u ^ global0.b), ~countOneBits(28418u)) ^ (1u << (_wgslsmith_dot_vec3_u32(~u_input.c, ~vec3<u32>(global0.b, 112286u, global0.b)) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))), arg_1.c)), all(vec4<bool>(true, true, true, true)) | (_wgslsmith_div_u32(40883u, 1u) < global0.b), !arg_1.e);
    global1 = _wgslsmith_f_op_vec2_f32(global0.c.wz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.yx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.c.yx, var_1.c.yy)) * vec2<f32>(var_1.c.x, var_1.c.x))), arg_1.c.wx));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -907f;
    var var_1 = 52910u;
    var var_2 = _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-u_input.b.x, abs(_wgslsmith_mod_i32(-2147483647i, u_input.e.x & 2147483647i))), max(-(~u_input.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.xww, select(u_input.e.www, vec3<i32>(u_input.e.x, 32494i, 1i), true)), _wgslsmith_mod_vec3_i32(select(u_input.b.wwx, u_input.e.xyw, global0.e), firstLeadingBit(u_input.b.zwy)))));
    let var_3 = arg_0;
    var var_4 = var_3.e;
    return var_3.a;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(global0.a, ~1u, vec4<f32>(-853f, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - -138f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.x)) * 1000f)))), !any(vec4<bool>(false, !arg_1.e, !arg_1.d, all(vec3<bool>(true, false, global0.d)))), any(!arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0.b, Struct_1(func_4(func_1(global0.a, Struct_1(vec3<bool>(global0.d, global0.a.x, false), u_input.d, vec4<f32>(global1.x, global0.c.x, global1.x, global0.c.x), true, false))), 884u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, -1000f, 792f, global0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(927f, -967f, -435f, 246f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1785f, -1000f, global1.x, global0.c.x))))), true, global1.x < 876f));
    var var_1 = ~u_input.c;
    global0 = var_0;
    var_1 = _wgslsmith_mult_vec3_u32(u_input.a.xxy, select(u_input.a.wzz, select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 16632u), ~u_input.c), vec3<u32>(~u_input.d, 1u ^ u_input.d, _wgslsmith_mult_u32(var_0.b, global0.b)), (u_input.c.x != 1u) | (-366f == global1.x)), select(!var_0.a, vec3<bool>(true, !var_0.a.x, any(vec3<bool>(global0.e, false, global0.d))), global0.a)));
    global1 = global0.c.xx;
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(-u_input.b.x, _wgslsmith_add_i32(-1i, u_input.e.x)) ^ u_input.b.x, u_input.b.x, u_input.e.zy, vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(var_1.yz, vec2<u32>(32650u, 1u))), select(abs(vec2<u32>(var_2.b, var_1.x)), ~vec2<u32>(4294967295u, var_0.b), global0.a.x & var_2.d)), firstTrailingBit(_wgslsmith_clamp_u32(var_1.x ^ var_0.b, _wgslsmith_sub_u32(var_1.x, global0.b), max(4294967295u, var_2.b))), _wgslsmith_div_u32(1u, 31706u)));
}

