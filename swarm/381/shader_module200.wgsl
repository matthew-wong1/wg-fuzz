struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(round(arg_0.d));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = Struct_4(global0.a);
    let var_0 = true;
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(select(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * 498f)), arg_0.x != ~arg_0.x))));
    var var_1 = var_0;
    global0 = Struct_4(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), 1f)))));
    return firstLeadingBit(_wgslsmith_div_u32(arg_1, _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_2.c, 4294967295u) & vec2<u32>(1u, 0u)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(1u, arg_0.c, 88837u, arg_0.c))), max(~vec4<u32>(32676u, 0u, arg_0.c, 0u) ^ (vec4<u32>(1u, arg_0.c, 11313u, arg_0.c) << (vec4<u32>(5462u, arg_0.c, 0u, arg_0.c) % vec4<u32>(32u))), vec4<u32>(~arg_0.c, arg_0.c, ~66787u, 0u))) | _wgslsmith_add_u32(~func_3(-vec3<i32>(u_input.a, u_input.b.x, arg_0.a), 99147u, Struct_1(arg_0.b, arg_0.a, 65301u, vec2<f32>(148f, 2190f))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0.c, 895u), vec3<u32>(71097u, 10340u, arg_0.c)), arg_0.c, 0u));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)))));
    global0 = Struct_4(arg_0.d.x);
    global0 = Struct_4(arg_2.x);
    global0 = Struct_4(arg_2.x);
    return all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false), false), false));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_5 {
    var var_0 = arg_1;
    let var_1 = all(!select(!arg_1, vec2<bool>(all(vec2<bool>(var_0.x, false)), false), any(vec2<bool>(arg_1.x, true)) && !var_0.x));
    var var_2 = select(!vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, all(!(!vec4<bool>(var_0.x, arg_1.x, var_1, var_0.x))), true, all(vec3<bool>(false || var_1, func_2(Struct_1(u_input.b.x, 1i, 0u, vec2<f32>(global0.a, global0.a)), -586f, vec2<f32>(global0.a, 980f)), all(vec4<bool>(true, true, var_1, false))))), false & var_0.x);
    global0 = Struct_4(global0.a);
    var_0 = var_2.yz;
    return Struct_5(select(select(select(!vec3<bool>(arg_1.x, true, var_2.x), vec3<bool>(var_1, var_2.x, var_1), true), !vec3<bool>(false, var_1, var_2.x), var_2.xzz), var_2.xxy, arg_0 != ~(~0u)), Struct_1(-_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), u_input.a), i32(-1i) * -1i, arg_0, vec2<f32>(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_div_f32(-1374f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1u, vec2<bool>(select(select(-1i, 2147483647i, true) == u_input.b.x, false, func_2(Struct_1(u_input.b.x, -5354i, 17504u, vec2<f32>(global0.a, global0.a)), -384f, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(-14962i, 3323i, 61975u, vec2<f32>(global0.a, 536f)), Struct_4(-476f), 90575u, u_input.b.x)))), !(true & (global0.a != global0.a))));
    global0 = Struct_4(_wgslsmith_f_op_f32(abs(1000f)));
    var var_1 = ~(-u_input.b);
    var_1 = ~(~_wgslsmith_add_vec3_i32(u_input.b, u_input.b));
    let var_2 = var_0.a.x && func_2(Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -30859i, u_input.a, var_1.x)), firstLeadingBit(vec4<i32>(-7378i, var_1.x, var_0.b.a, 23156i))), _wgslsmith_div_i32(var_1.x, 0i), ~7502u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.d) + vec2<f32>(var_0.b.d.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(sign(global0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.d.x, -984f))), _wgslsmith_f_op_f32(abs(var_0.b.d.x))));
    var_1 = ~u_input.b;
    let var_3 = Struct_5(var_0.a, func_4(41808u, select(!vec2<bool>(var_2, var_2), !(!vec2<bool>(true, var_0.a.x)), select(vec2<bool>(var_0.a.x, false), var_0.a.xz, !var_0.a.yx))).b);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(max(-vec3<i32>(var_3.b.a, var_3.b.a, 6806i), -u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.c, var_0.b.c, _wgslsmith_clamp_u32(0u, var_3.b.c, 4294967295u), var_3.b.c >> (var_0.b.c % 32u)), reverseBits(vec4<u32>(var_0.b.c, 0u, 79319u, var_3.b.c))) & max(firstLeadingBit(vec4<u32>(1u, 1u, 7230u, var_0.b.c)), vec4<u32>(var_3.b.c, 10157u, var_0.b.c, 0u) >> (~vec4<u32>(var_0.b.c, var_3.b.c, var_3.b.c, 0u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.b.x), max(vec2<i32>(1i, 68i), u_input.b.xy), var_0.a.zz), (u_input.b.yy ^ var_1.yx) ^ var_1.xy) >> (var_0.b.c % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(278f - -960f), _wgslsmith_f_op_f32(f32(-1f) * -141f))), var_0.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.d.x * 381f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1080f, global0.a, 116f) - vec4<f32>(global0.a, var_3.b.d.x, 1578f, -369f))))));
}

