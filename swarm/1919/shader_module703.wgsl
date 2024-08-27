struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: vec3<f32>;

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1731f, -261f, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, 515f, -576f))), vec3<f32>(_wgslsmith_div_f32(978f, arg_0.a), global1.x, arg_0.a))) - vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.a)), 1553f)), arg_1.a))));
    let var_1 = true;
    global2 = ~reverseBits(~(~4294967295u));
    global0 = array<vec2<i32>, 9>();
    var var_2 = countOneBits(u_input.e);
    return Struct_1(1254f);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = select(!(!vec3<bool>(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, true)))), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), true);
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1.a)))) - arg_0.a)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1024f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))))));
    let var_4 = arg_1;
    return vec4<u32>(4294967295u, ~abs(u_input.e) & _wgslsmith_add_u32(2158u, (u_input.e ^ u_input.b.x) ^ ~u_input.e), ~(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 0u), 26189u >> (u_input.e % 32u))), ~u_input.e);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(51313u, ~(~u_input.e), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, 43025u), ~u_input.d.x), 4294967295u)), func_3(Struct_1(arg_1), var_0));
    let var_2 = select(_wgslsmith_mult_vec3_u32(countOneBits(select(~u_input.d.xzx, abs(u_input.d.xzw), false)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, select(u_input.b, vec2<u32>(u_input.e, var_1), false)), _wgslsmith_add_u32(~var_1, _wgslsmith_add_u32(0u, u_input.d.x)), 4294967295u)), _wgslsmith_add_vec3_u32(~(vec3<u32>(54597u, 41477u, 4294967295u) & u_input.d.xzy), _wgslsmith_sub_vec3_u32(~u_input.d.ywx, u_input.d.wxx)), any(vec3<bool>(!any(vec2<bool>(false, false)), true, any(vec4<bool>(true, false, false, false)))));
    let var_3 = var_0;
    var var_4 = _wgslsmith_mult_i32(u_input.a, u_input.c.x);
    return -max(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, -2147483647i), u_input.c.x, u_input.a, 30081i), vec4<i32>(u_input.c.x ^ 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -5356i, u_input.a), vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.c.x)), u_input.a, 1i)), min(u_input.c.x, ~reverseBits(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(~_wgslsmith_mult_i32(max(u_input.a, u_input.c.x), u_input.c.x), _wgslsmith_clamp_i32(~countOneBits(33680i), ~u_input.a ^ _wgslsmith_mod_i32(u_input.a, u_input.c.x), func_2(u_input.d.x, 1287f, func_1(Struct_1(global1.x), Struct_1(global1.x)))));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-772f, _wgslsmith_f_op_f32(-897f - global1.x))))), func_1(func_1(Struct_1(func_1(Struct_1(global1.x), Struct_1(global1.x)).a), func_1(func_1(Struct_1(global1.x), Struct_1(global1.x)), Struct_1(global1.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(-var_2.a), select(false, false, true)))))));
    global0 = array<vec2<i32>, 9>();
    var var_4 = _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0, abs(var_0), -48613i, var_0) << (_wgslsmith_sub_vec4_u32(~(~u_input.d), u_input.d) % vec4<u32>(32u)), select(vec4<i32>(abs(40903i), 36824i >> (u_input.d.x % 32u), i32(-1i) * -1i, func_2(16974u, 841f, Struct_1(var_2.a))) | firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 73512i, 2147483647i, 20342i), vec4<i32>(var_0, u_input.c.x, var_0, var_0))), vec4<i32>(33692i, 12357i, _wgslsmith_dot_vec4_i32(vec4<i32>(-33067i, -2147483647i, u_input.a, u_input.c.x), vec4<i32>(0i, 1i, -2147483647i, var_0)) << (~71250u % 32u), u_input.c.x), true));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, 1u), var_3.a);
}

