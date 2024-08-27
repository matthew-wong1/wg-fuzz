struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = global0.e;
    var var_1 = vec4<u32>(~u_input.b, 1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, countOneBits(u_input.b ^ 27553u)), u_input.c.x), 1u);
    var_1 = _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(var_1.x, _wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, var_1.x)) & _wgslsmith_add_u32(u_input.c.x, var_1.x), ~(~54241u) >> (~u_input.c.x % 32u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_1.x, 1u, var_1.x), 2322u)));
    var_1 = min(u_input.c, vec4<u32>(4294967295u, ~var_1.x, var_1.x | 1u, 50159u));
    let var_2 = !select(!(!arg_3.c), vec3<bool>(!arg_0.x, true, arg_3.e), select(select(vec3<bool>(arg_3.e, global0.e, arg_3.b.x), vec3<bool>(arg_0.x, arg_0.x, arg_3.e), false), !select(arg_2.b, arg_3.b, vec3<bool>(true, arg_0.x, arg_2.c.x)), arg_3.c));
    return -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_3.d), u_input.d.xw), ~30205i), _wgslsmith_add_i32(arg_1.x, u_input.e), -1i), _wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 2147483647i, -25103i), u_input.d.xwz));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> bool {
    global0 = arg_0;
    global0 = Struct_1(arg_0.a, global0.b, !vec3<bool>(!select(false, arg_0.b.x, false), any(!vec4<bool>(false, global0.c.x, global0.e, false)), true), arg_2.x << ((abs(_wgslsmith_mult_u32(arg_3.x, u_input.c.x)) ^ ~20124u) % 32u), true);
    let var_0 = arg_0.d;
    var var_1 = !select(vec4<bool>(false, true, arg_0.c.x, !arg_0.c.x), !(!(!vec4<bool>(global0.b.x, arg_0.e, arg_0.b.x, true))), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f))) * global0.a), vec3<bool>(global0.c.x, arg_0.b.x & arg_0.e, true), select(vec3<bool>(true, all(select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, arg_0.c.x, var_1.x, arg_0.e), vec4<bool>(arg_0.b.x, false, false, global0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -569f) < _wgslsmith_f_op_f32(-global0.a)), vec3<bool>(!all(vec4<bool>(global0.e, var_1.x, arg_0.b.x, var_1.x)), global0.b.x, arg_0.b.x), !select(!var_1.zxx, var_1.zyw, global0.c.x)), -33824i, global0.e);
    return !(var_2.d >= (_wgslsmith_dot_vec2_i32(u_input.d.wy, u_input.d.yz) ^ var_0)) || any(vec4<bool>(false, !arg_0.b.x, any(arg_0.c), !all(arg_0.b)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = !any(vec3<bool>(func_3(arg_0, 3473i, u_input.d.xyw, u_input.c), global0.c.x, !(global0.b.x | global0.b.x)));
    let var_1 = arg_0.b.x;
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = Struct_1(-553f, var_2.c, arg_0.b, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -2137f) - var_3.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.a, var_3.a)) - 162f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(round(global0.a)), global0.b, global0.c, _wgslsmith_add_i32(countOneBits(func_1(global0.c.zy, vec3<i32>(1i, 3100i, global0.d), Struct_1(global0.a, global0.c, vec3<bool>(true, true, false), global0.d, global0.e), Struct_1(167f, global0.c, vec3<bool>(global0.e, true, true), u_input.d.x, global0.e))) >> (47618u % 32u), 51390i), global0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(156f, global0.b, select(!global0.c, !vec3<bool>(global0.e, true, global0.c.x), select(vec3<bool>(global0.b.x, false, global0.c.x), global0.b, global0.c)), (i32(-1i) * -888i) >> (u_input.c.x % 32u), any(global0.c.xy)))), vec3<bool>(true, true, true), vec3<bool>(global0.c.x, !global0.c.x, any(!global0.b) & true), ~(abs(-12400i) >> (~(u_input.c.x >> (0u % 32u)) % 32u)), global0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 105f), _wgslsmith_f_op_f32(-global0.a)))), select(select(select(select(vec3<bool>(false, global0.e, global0.c.x), global0.c, global0.b), global0.c, global0.c), !select(vec3<bool>(true, global0.e, true), vec3<bool>(global0.e, global0.b.x, false), vec3<bool>(global0.e, global0.b.x, global0.e)), vec3<bool>(all(vec4<bool>(true, global0.b.x, false, global0.c.x)), true, global0.b.x)), global0.b, global0.c), select(!global0.c, global0.b, !vec3<bool>(false, true, any(vec4<bool>(false, false, true, false)))), (-1i ^ _wgslsmith_mod_i32(u_input.a >> (0u % 32u), firstTrailingBit(global0.d))) >> (u_input.c.x % 32u), true);
    global0 = Struct_1(-334f, !global0.b, !(!select(!vec3<bool>(global0.e, false, global0.e), vec3<bool>(true, true, true), vec3<bool>(false, global0.e, global0.c.x))), 11713i, func_3(Struct_1(1232f, global0.c, global0.b, -5317i, global0.b.x), ~u_input.a, u_input.d.zzx, ~vec4<u32>(~4294967295u, u_input.b, countOneBits(u_input.b), abs(u_input.b))));
    var var_0 = ~u_input.d.xxz;
    let var_1 = -1i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-892f)))), !select(global0.c, select(!global0.b, global0.c, !global0.b), true), select(!(!global0.b), select(select(global0.b, global0.b, global0.e), vec3<bool>(global0.a <= global0.a, true, all(global0.b.zy)), vec3<bool>(true, true, !global0.e)), vec3<bool>(false, func_3(Struct_1(global0.a, vec3<bool>(true, global0.b.x, true), global0.b, var_0.x, global0.b.x), firstLeadingBit(global0.d), u_input.d.yyy ^ vec3<i32>(-53224i, var_1, u_input.a), ~u_input.c), !any(global0.b))), -global0.d, global0.c.x);
    let var_3 = _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(reverseBits(u_input.b), 1u)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - global0.a))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(var_2.a * global0.a))))), -vec3<i32>(-19164i, _wgslsmith_add_i32(var_1, -var_1), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 307f, global0.a))) - vec3<f32>(var_2.a, 109f, global0.a))));
}

