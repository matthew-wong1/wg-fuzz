struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(624f, 361f, 2031f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(((1u | _wgslsmith_dot_vec4_u32(vec4<u32>(55692u, 24927u, 45807u, 6246u), vec4<u32>(1332u, 1u, 4294967295u, 4294967295u))) << (1u % 32u)) << (29503u % 32u), select(min(~_wgslsmith_mod_u32(1u, 1u), ~(~4294967295u)), 45534u, true));
    var_0 = _wgslsmith_div_u32(countOneBits(select(countOneBits(1u), ~1u, true) << (~(~4294967295u) % 32u)), ~select(31563u, ~9518u, !arg_1.b));
    let var_1 = arg_1;
    global0 = vec3<f32>(_wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.a, -955f)), var_1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-818f, 1066f)), -701f, false)));
    let var_2 = Struct_3(arg_1, arg_1, _wgslsmith_f_op_vec2_f32(global0.yx + global0.yy), Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.b), true), all(vec4<bool>(arg_1.b, var_1.b, true, arg_1.b))), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, true), true), true)), select(vec2<bool>(!arg_1.b, true), select(vec2<bool>(arg_1.b, false), !vec2<bool>(var_1.b, false), var_1.b), select(vec2<bool>(true, true), vec2<bool>(true, arg_1.b), select(vec2<bool>(arg_1.b, true), vec2<bool>(var_1.b, arg_1.b), false))), !(!vec4<bool>(var_1.b, var_1.b, false, arg_1.b)), Struct_1(_wgslsmith_f_op_f32(-global0.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(-global0.x)))));
    return select(var_2.d.c.zz, var_2.d.a, !var_2.d.a.x);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_clamp_u32(1u, 5097u, ~(~(27989u >> (1u % 32u))));
    return all(!(!func_3(-1000f, Struct_1(512f, true), ~vec3<i32>(u_input.b.x, -11939i, u_input.a), -29965i)));
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(global0.x)), select(!all(vec4<bool>(false, true, true, false)), ~(-u_input.a) != _wgslsmith_div_i32(u_input.b.x, -2147483647i), !func_2()));
    let var_1 = Struct_2(!(!select(!vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(true, true), var_0.b), true)), func_3(2544f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-640f, 1695f)) - _wgslsmith_f_op_f32(-138f + var_0.a)), true), vec3<i32>(~(~u_input.b.x), _wgslsmith_sub_i32(0i, u_input.a) >> (~0u % 32u), -(i32(-1i) * -28246i)), i32(-1i) * -3692i), vec4<bool>(var_0.b, any(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, false), false)) && any(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b))), var_0.b, -u_input.a > max(u_input.b.x, u_input.b.x)), var_0, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -794f))))));
    let var_2 = true;
    global0 = vec3<f32>(-632f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1651f))), _wgslsmith_f_op_f32(floor(-1356f)));
    var var_3 = _wgslsmith_f_op_f32(-var_1.e);
    return !(-2147483647i == max((i32(-1i) * -1i) & (u_input.b.x << (4294967295u % 32u)), _wgslsmith_clamp_i32(u_input.a, -5156i, abs(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(true, false), vec2<bool>(true, func_1())), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), func_3(669f, Struct_1(global0.x, true), vec3<i32>(u_input.a, u_input.a, 3031i), 28677i), true)), vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, func_1(), max(abs(-11631i), _wgslsmith_mult_i32(2147483647i, -1i)) >= ~u_input.a), Struct_1(-362f, !(~6325u <= firstTrailingBit(39457u))), 907f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(187f)), true);
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(18065u, 1u, 0u, 17115u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~14227u, 51961u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(23426u, 39429u, 0u), vec3<u32>(0u, 1u, 5071u)), 1u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = Struct_2(!vec2<bool>(any(var_0.c), true), select(var_0.b, var_0.a, var_0.b), !var_0.c, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a)) * -482f))), var_0.c.x), _wgslsmith_f_op_f32(select(var_0.d.a, var_1.a, var_1.b)));
    var var_4 = var_0.d;
    var var_5 = 3479i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, 54530u), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(select(0u, 12284u, true), abs(4294967295u), firstTrailingBit(4294967295u))) >> (abs(countOneBits(0u)) % 32u), _wgslsmith_f_op_f32(-var_0.e), select(-2147483647i, ~(-1i) ^ countOneBits(u_input.a | 2147483647i), false), max(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30592u, 47564u, 18706u), _wgslsmith_clamp_vec4_u32(vec4<u32>(24975u, 1u, 84732u, 0u), vec4<u32>(74958u, 0u, 19966u, 1u), vec4<u32>(27124u, 0u, 89156u, 4294967295u))), 1u, 58614u)));
}

