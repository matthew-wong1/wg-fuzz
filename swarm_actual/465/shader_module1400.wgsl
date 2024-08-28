struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = -select(1i, min(~firstTrailingBit(14017i), 44072i), false);
    var var_1 = min(min(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -58265i, 16393i), -vec3<i32>(0i, u_input.a, 51314i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -2147483647i, var_0), -vec4<i32>(u_input.b, var_0, 0i, 0i))), -vec3<i32>(-27751i, 0i, u_input.c)), vec3<i32>(u_input.c, 0i, _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(u_input.c, var_0, var_0, -34356i)), vec4<i32>(var_0, 115i, u_input.b, 2147483647i) << (vec4<u32>(79562u, 19459u, 36438u, 21739u) % vec4<u32>(32u)), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, false, true, false))), ~firstTrailingBit(vec4<i32>(var_0, u_input.c, -14941i, var_0)))));
    var var_2 = 37785i ^ var_0;
    var var_3 = ~(~(~countOneBits(vec3<i32>(var_0, u_input.a, -38062i))));
    var var_4 = ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)));
    return vec4<bool>(var_4.x <= ~countOneBits(~var_4.x), true, arg_0, true);
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = select(!vec4<bool>(arg_0.d.a, all(select(vec2<bool>(arg_0.d.a, true), vec2<bool>(false, true), true)), arg_0.c.a, arg_0.e), select(select(select(!vec4<bool>(false, arg_0.a.a, arg_0.d.a, false), vec4<bool>(arg_0.e, arg_0.c.a, arg_0.a.a, false), false), select(vec4<bool>(arg_0.c.a, false, arg_0.e, arg_0.d.a), !vec4<bool>(arg_0.a.a, arg_0.c.a, false, arg_0.a.a), func_3(arg_0.e)), func_3(arg_0.a.a)), !(!(!vec4<bool>(false, false, true, arg_0.a.a))), !vec4<bool>(false, any(vec2<bool>(true, arg_0.c.a)), any(vec2<bool>(arg_0.c.a, false)), u_input.b >= u_input.a)), vec4<bool>(arg_0.d.a, arg_0.a.a, arg_0.c.a, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(6187u, 4282u, 4294967295u), vec3<u32>(0u, 1u, 19967u))) <= 57650u));
    let var_1 = false;
    var var_2 = arg_0.e;
    let var_3 = vec2<i32>(abs(u_input.c), u_input.b);
    var_2 = any(func_3(false));
    return func_3(false);
}

fn func_1() -> bool {
    let var_0 = ~vec2<u32>(1u, ~reverseBits(~0u));
    var var_1 = Struct_1((260f <= _wgslsmith_f_op_f32(sign(-1000f))) || any(!func_2(Struct_2(Struct_1(true, 121f), 0i, Struct_1(false, 505f), Struct_1(true, -496f), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1886f - -200f) - _wgslsmith_f_op_f32(select(-991f, -560f, false)))))));
    let var_2 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) * 505f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b)))));
    var var_3 = true;
    var_1 = var_2;
    return func_3(func_3(!(true & (var_2.a && true))).x).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-824f * -273f)))));
    var var_2 = vec2<bool>(var_0.x, true);
    var_2 = !vec2<bool>(var_1 == -259f, false);
    var_0 = !select(vec2<bool>(var_0.x, all(vec3<bool>(var_0.x, false, var_2.x))), vec2<bool>(true, func_1()), var_0.x);
    var var_3 = 2147483647i;
    let var_4 = !var_2.x;
    var_2 = vec2<bool>(var_0.x, select(var_2.x, !var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1)), -176f)))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-24960i, firstLeadingBit(u_input.c), u_input.b & _wgslsmith_clamp_i32(31626i, u_input.b, 34132i)), ~vec3<i32>(abs(u_input.a), 1i, -u_input.c)), 1u);
}

