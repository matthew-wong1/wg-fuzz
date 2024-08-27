struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: Struct_1;

var<private> global2: bool = false;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(global1.a, 219f, global1.c, 4294967295u & global1.e.x, u_input.a.yz);
    global0 = array<vec2<bool>, 22>();
    let var_1 = var_0;
    global2 = true;
    global0 = array<vec2<bool>, 22>();
    return abs(-11283i);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.c.x;
    var_0 = 4294967295u;
    global0 = array<vec2<bool>, 22>();
    var var_1 = !select(vec3<bool>(any(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, false), vec2<bool>(false, global1.a))), false, !any(vec4<bool>(true, true, true, arg_2.a))), !(!select(vec3<bool>(true, arg_1.a, true), vec3<bool>(false, arg_2.a, true), true)), global1.a);
    var var_2 = Struct_1(!select(all(var_1.xy), false, arg_2.a && all(vec4<bool>(arg_2.a, arg_2.a, true, var_1.x))), _wgslsmith_f_op_f32(-global1.b), ~(~(~arg_1.c << ((vec4<u32>(global1.d, 42854u, u_input.a.x, u_input.a.x) >> (arg_2.c % vec4<u32>(32u))) % vec4<u32>(32u)))), arg_1.c.x, ~u_input.a.yx);
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.x, -2147483647i), 1i), 0i) | arg_0.x;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = vec3<i32>(~0i, -2147483647i, ~func_3(vec4<i32>(1i, func_2(), 1i, 1i), Struct_1(arg_0.a, _wgslsmith_f_op_f32(min(431f, -1389f)), vec4<u32>(1u, 0u, 7424u, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, global1.c.x), max(arg_0.c.xy, u_input.a.zx)), arg_0));
    var var_1 = min(0u, firstTrailingBit(arg_0.c.x));
    return StorageBuffer(~0u, _wgslsmith_f_op_f32(global1.b + -546f), 1443f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!(global1.a || true) & (!global1.a || (_wgslsmith_sub_u32(global1.d, 46184u) < global1.c.x)), _wgslsmith_f_op_f32(-global1.b), global1.c, global1.e.x & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.e, vec2<u32>(u_input.a.x, 26416u)), _wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.zx)), _wgslsmith_dot_vec4_u32(global1.c, _wgslsmith_sub_vec4_u32(global1.c, vec4<u32>(u_input.a.x, 1u, 32061u, 4294967295u))), max(_wgslsmith_clamp_u32(1u, global1.e.x, global1.d), abs(1u))), vec2<u32>(4294967295u, u_input.a.x));
    global2 = _wgslsmith_f_op_f32(-global1.b) < _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1454f, _wgslsmith_f_op_f32(-global1.b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * global1.b)))));
    var var_0 = global1.e.x;
    let x = u_input.a;
    s_output = func_1(Struct_1(global1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b, -1000f), 1602f), global1.c, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d, 12952u, 7768u, global1.e.x), ~vec4<u32>(1u, global1.c.x, 62015u, 8927u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a.xz, global1.e), select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.xx), vec2<u32>(1u, u_input.a.x), true))));
}

