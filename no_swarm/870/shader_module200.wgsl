struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(select(vec2<u32>(1379u, 1u), vec2<u32>(1u, 1u), false), firstTrailingBit(vec2<u32>(0u, 0u))) << ((_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 33769u), vec2<u32>(29073u, 48851u)), abs(vec2<u32>(748u, 30995u))) << (firstTrailingBit(vec2<u32>(15032u, 8193u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<bool>(true, true, true));
    var var_1 = var_0.a.x;
    var_1 = _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(min(min(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 11227u), vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 4294967295u))), _wgslsmith_dot_vec2_u32(~var_0.a, vec2<u32>(20104u, var_0.a.x))), var_0.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, -113f) - vec2<f32>(-164f, 438f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, 819f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(415f, 1080f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1147f - 943f), _wgslsmith_f_op_f32(1663f + -358f)))))));
    var_1 = ~var_0.a.x;
    return select(vec2<bool>(!any(!var_0.b), u_input.b == 0i), var_0.b.zz, var_0.b.zy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_1(arg_0.a, arg_0.b);
    var var_1 = -firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(-arg_2.x, u_input.c.x), u_input.a.x));
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(1u, 36976u) & arg_1.a), var_3.a, countOneBits(~vec2<u32>(71118u, 35957u) & arg_0.a)), vec2<u32>(4294967295u, 1u));
    return vec3<i32>(u_input.d.x, u_input.d.x | _wgslsmith_clamp_i32(u_input.b, -_wgslsmith_mult_i32(var_1.x, u_input.c.x), _wgslsmith_add_i32(arg_2.x, arg_2.x)), var_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = 1243f;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(u_input.b, u_input.b))) & max(_wgslsmith_mod_i32(u_input.c.x, -2147483647i), -u_input.a.x), 1i, u_input.a.x), func_4(Struct_1(vec2<u32>(0u, 0u << (0u % 32u)), vec3<bool>(true, 2147483647i >= u_input.b, true)), Struct_1(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 17782u), vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 16410u), func_3()), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, u_input.d.x, u_input.a.x), ~vec3<i32>(u_input.a.x, -13665i, u_input.b), vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x))));
    var var_2 = Struct_1(vec2<u32>(~reverseBits(~54259u), 4294967295u), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true), !any(vec3<bool>(true, true, true))), vec3<bool>(true, false, true), false));
    var_0 = 640f;
    let var_3 = all(!vec3<bool>(any(select(vec4<bool>(true, var_2.b.x, false, false), vec4<bool>(true, false, var_2.b.x, true), var_2.b.x)), all(select(vec4<bool>(var_2.b.x, false, var_2.b.x, false), vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x), true)), any(var_2.b.xz)));
    return Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(~var_2.a.x, var_2.a.x >> (14609u % 32u))), vec2<u32>(var_2.a.x, ~var_2.a.x)), select(select(var_2.b, vec3<bool>(var_3 || false, var_3, true), select(select(vec3<bool>(var_3, false, true), var_2.b, var_2.b), select(vec3<bool>(var_3, false, false), var_2.b, var_2.b), func_3().x)), vec3<bool>(var_3, any(var_2.b.xy) & false, var_2.b.x), all(vec4<bool>(true, true, any(vec3<bool>(var_2.b.x, var_3, false)), true))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = func_2();
    let var_1 = 1u;
    var_0 = arg_0;
    var var_2 = arg_0.a.x << (_wgslsmith_mod_u32(arg_0.a.x | ~(~4294967295u), _wgslsmith_clamp_u32(~1u, ~var_1, ~var_1)) % 32u);
    var var_3 = -arg_2.wxw;
    return 56086u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(select(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(54991u, 0u), vec2<u32>(968u, 0u))), vec2<u32>(1u, 1u), true), vec2<u32>(0u, func_1(Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(false, true, false)), u_input.d.x, vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, u_input.a.x))) & vec2<u32>(1u, 1u)), !func_2().b);
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(var_1.a, abs(~reverseBits(vec2<u32>(45710u, 12534u))), vec2<u32>(1u, 36898u) ^ var_0.a), !(!select(!var_1.b, var_1.b, var_0.b.x)));
    var_0 = Struct_1(vec2<u32>(~var_2.a.x, ~min(var_0.a.x, var_0.a.x)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, 0u), reverseBits(var_0.a), vec2<u32>(0u, 5434u)), firstLeadingBit(vec2<u32>(1u, 17591u) >> (vec2<u32>(var_0.a.x, 23559u) % vec2<u32>(32u)))) % vec2<u32>(32u)), var_2.b);
    var_2 = Struct_1(vec2<u32>(var_1.a.x, 1u), !select(select(select(vec3<bool>(var_1.b.x, true, var_0.b.x), vec3<bool>(false, true, var_2.b.x), vec3<bool>(false, var_0.b.x, var_2.b.x)), func_2().b, func_2().b.x), !var_0.b, var_0.b.x != all(vec4<bool>(var_1.b.x, true, var_0.b.x, false))));
    var_2 = func_2();
    let var_3 = var_1;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~var_3.a.x, _wgslsmith_f_op_f32(113f + -679f), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a.x, var_2.a.x, var_2.a.x, 1u) | _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, var_0.a.x), vec4<u32>(26772u, var_2.a.x, var_1.a.x, var_0.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1607u, 33751u, var_3.a.x), vec4<u32>(var_1.a.x, var_3.a.x, var_1.a.x, 83628u))), ~(vec4<u32>(4294967295u, var_3.a.x, 28023u, 39020u) & vec4<u32>(var_3.a.x, var_0.a.x, var_2.a.x, 31929u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-779f + _wgslsmith_f_op_f32(ceil(-496f))))), -431f));
}

