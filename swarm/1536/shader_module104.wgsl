struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global0 = Struct_4(!global0.a, 4294967295u, 62555u);
    global0 = Struct_4(select(global0.a, !(!select(global0.a, vec2<bool>(true, true), global0.a.x)), global0.a.x), ~_wgslsmith_add_u32(39891u, ~abs(global0.c)), ~_wgslsmith_clamp_u32(0u, firstLeadingBit(global0.b), 1u));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0);
    global0 = Struct_4(vec2<bool>(1u > (abs(u_input.b.x) & abs(u_input.b.x)), (46907u <= select(54817u, global0.c, true)) || !(!global0.a.x)), countOneBits(~firstTrailingBit(~global0.b)), select(abs(global0.c << (u_input.b.x % 32u)) ^ 1u, abs(global0.c), false));
    global0 = Struct_4(!select(vec2<bool>(true, global0.a.x), vec2<bool>(false, !global0.a.x), global0.a), ~_wgslsmith_mult_u32(abs(global0.c), _wgslsmith_sub_u32(13197u, ~u_input.b.x)), firstTrailingBit(~countOneBits(~9167u)));
    return vec2<bool>(all(!vec3<bool>(true, true || global0.a.x, true | global0.a.x)), global0.a.x != true);
}

fn func_2() -> Struct_4 {
    global0 = Struct_4(select(!global0.a, vec2<bool>(u_input.a.x <= u_input.a.x, global0.a.x), select(select(select(vec2<bool>(global0.a.x, true), vec2<bool>(global0.a.x, false), global0.a.x), func_3(211f), func_3(850f)), !func_3(-1935f), global0.a)), 1u, abs(~u_input.b.x));
    let var_0 = 2147483647i;
    global0 = Struct_4(func_3(_wgslsmith_f_op_f32(1236f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1437f - 166f))))), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, firstTrailingBit(u_input.b.x)), reverseBits(u_input.b.zy)));
    global0 = Struct_4(!global0.a, u_input.b.x, _wgslsmith_mult_u32(max(global0.b, _wgslsmith_clamp_u32(4294967295u, ~4294967295u, 0u)), u_input.b.x));
    var var_1 = _wgslsmith_clamp_u32(1u, reverseBits(125024u), _wgslsmith_dot_vec3_u32(~abs(u_input.b), abs(~u_input.b)));
    return Struct_4(!(!global0.a), countOneBits(~(~4294967295u)), ~firstTrailingBit(~(~global0.c)));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var_0 = Struct_4(func_2().a, 62517u, ~_wgslsmith_mod_u32(53609u, ~(~4294967295u)));
    global0 = Struct_4(select(!select(global0.a, vec2<bool>(false, false), true), select(!func_2().a, func_3(_wgslsmith_f_op_f32(round(1304f))), !global0.a), true), _wgslsmith_div_u32(u_input.b.x, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(27348u, u_input.b.x), vec2<u32>(0u, u_input.b.x)))), max(u_input.b.x, 79952u << (_wgslsmith_div_u32(global0.b, 69423u) % 32u)));
    var_0 = Struct_4(!func_3(_wgslsmith_f_op_f32(min(325f, _wgslsmith_f_op_f32(f32(-1f) * -1993f)))), global0.b << (u_input.b.x % 32u), 4294967295u);
    var var_1 = Struct_2(Struct_1(any(!global0.a) & func_3(_wgslsmith_f_op_f32(step(829f, 460f))).x, firstTrailingBit(~(vec4<i32>(-2147483647i, 0i, -2147483647i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec2<bool>(all(!vec3<bool>(global0.a.x, true, var_0.a.x)), !all(vec4<bool>(false, var_0.a.x, false, true))), 225f));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x >> (func_1() % 32u);
    var var_1 = vec3<bool>(u_input.a.x > u_input.a.x, true, global0.a.x);
    var_0 = reverseBits(~_wgslsmith_mod_i32(u_input.a.x >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, global0.c)) % 32u), ~(-63475i) ^ u_input.a.x));
    var_1 = vec3<bool>(true, any(vec4<bool>(!global0.a.x, func_2().a.x, any(vec2<bool>(true, true)), all(vec2<bool>(var_1.x, true)))), false);
    global0 = func_2();
    var_0 = i32(-1i) * -u_input.a.x;
    let var_2 = -87409i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

