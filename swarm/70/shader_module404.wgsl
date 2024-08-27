struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: bool;

var<private> global2: vec4<i32>;

var<private> global3: vec2<bool>;

var<private> global4: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> Struct_1 {
    return Struct_1(u_input.a, true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.b.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1071f, 2253f), global4.b.d)), _wgslsmith_f_op_f32(-global4.c.c.x), 417f), false);
}

fn func_3() -> u32 {
    var var_0 = global4.b.c;
    let var_1 = vec3<u32>(~abs(_wgslsmith_div_u32(var_0.a, 39834u)), ~global4.c.a, ~_wgslsmith_add_u32(~global4.b.c.a, _wgslsmith_sub_u32(~40316u, ~56295u)));
    global2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(global4.d.a.x, global4.d.a.x, -47887i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), _wgslsmith_div_i32(0i, global4.d.a.x), 2147483647i, -global4.d.a.x);
    let var_2 = !(!select(vec4<bool>(var_0.b, true, all(global4.b.b.xz), var_0.d), select(!vec4<bool>(false, true, false, var_0.d), vec4<bool>(global4.b.c.b, global3.x, false, true), !vec4<bool>(true, global4.c.d, var_0.b, global3.x)), select(select(vec4<bool>(true, global4.b.c.d, true, global4.c.b), vec4<bool>(true, false, var_0.d, true), vec4<bool>(global3.x, global3.x, global4.c.d, true)), select(vec4<bool>(global4.c.d, true, global3.x, false), vec4<bool>(global4.c.d, var_0.b, global4.c.b, global4.b.c.b), vec4<bool>(true, true, false, false)), !vec4<bool>(false, var_0.d, global4.b.c.b, var_0.d))));
    let var_3 = 1u;
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = vec3<bool>(false, arg_1.b, all(vec2<bool>(false, global4.c.b)));
    let var_1 = -reverseBits(-2516i);
    global0 = array<vec2<f32>, 27>();
    var var_2 = reverseBits(~global4.a.zwy);
    let var_3 = Struct_5(-vec3<i32>(0i, u_input.b.x, ~var_1), _wgslsmith_f_op_vec2_f32(-global4.b.c.c.xx), func_1(global4.a.x), global4.d);
    return StorageBuffer(_wgslsmith_mult_u32(u_input.a, ~func_3()), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, u_input.a, global4.c.a), vec3<u32>(4294967295u, 0u, arg_0) & global4.b.a)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.a, var_2.x, 4294967295u), vec3<u32>(16485u, global4.b.a.x, 4294967295u))), vec4<u32>(min(var_2.x, ~(~u_input.a)), ~(~4294967295u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, arg_1.a, arg_1.a, arg_1.a), vec4<u32>(4294967295u, global4.b.c.a, arg_1.a, global4.c.a), global4.b.c.b), global4.a), ~(~(1u & var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstTrailingBit(global4.a.wwz), vec3<bool>((~11643u ^ global4.c.a) > 0u, 1u >= (_wgslsmith_dot_vec3_u32(global4.a.yzy, vec3<u32>(4294967295u, 1u, u_input.a)) << (_wgslsmith_dot_vec4_u32(global4.a, global4.a) % 32u)), global4.c.b), func_1(_wgslsmith_mod_u32((4294967295u << (global4.b.a.x % 32u)) ^ ~global4.c.a, ~61205u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1096f)) + _wgslsmith_div_f32(global4.c.c.x, _wgslsmith_f_op_f32(global4.c.c.x * -610f))));
    global3 = var_0.b.zx;
    global4 = Struct_4(vec4<u32>(~50951u, 23581u, u_input.a, 4294967295u), global4.b, global4.c, global4.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(var_0.c.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1038f, global4.b.d, 821f, 1402f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(861f + var_0.d))), global4.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), 1637f)));
    var var_2 = vec3<bool>(true, any(vec4<bool>(!var_0.b.x == true, var_0.c.b, true, true)), global4.c.b);
    let var_3 = ~_wgslsmith_clamp_vec3_u32(var_0.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.a.x, u_input.a, u_input.a) | var_0.a, vec3<u32>(var_0.a.x | 0u, _wgslsmith_mod_u32(var_0.c.a, 1u), ~u_input.a)), var_0.a);
    var_0 = global4.b;
    var var_4 = global4.b;
    let x = u_input.a;
    s_output = func_2(1u, var_0.c);
}

