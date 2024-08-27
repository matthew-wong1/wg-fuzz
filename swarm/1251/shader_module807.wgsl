struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 1062f;

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 11>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = ~vec4<u32>(u_input.c.x & ~(u_input.c.x | 0u), 4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 125603u, 0u, 63481u), vec4<u32>(7334u, u_input.c.x, u_input.c.x, u_input.c.x))), abs(u_input.c.x << (1u % 32u)));
    var var_1 = global0.a;
    global4 = array<f32, 6>();
    let var_2 = (global0.b & vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -19709i), global0.b)), reverseBits(u_input.b.x) << (4294967295u % 32u))) ^ -(global0.b << (_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_0.x, 39423u)), vec2<u32>(0u, var_0.x) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.a.a, var_1.a), vec4<f32>(arg_0, -978f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global2.a.a.x * 487f)), var_1.a.x)));
    return 0i;
}

fn func_3() -> u32 {
    global3 = array<vec3<i32>, 11>();
    global4 = array<f32, 6>();
    global1 = _wgslsmith_f_op_f32(trunc(1f));
    var var_0 = _wgslsmith_f_op_f32(trunc(-266f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(390f, _wgslsmith_div_f32(254f, global0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -384f), global0.a.a.x)))), -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(10174i, u_input.a.x) | u_input.a.yx, ~global2.b), max(vec2<i32>(14422i, global0.b.x), min(u_input.b.xz, global0.b))), true);
    return 1u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(countOneBits(1471i), -35720i), -vec2<i32>(11197i, _wgslsmith_mult_i32(1i, u_input.a.x))));
    var var_1 = max(-(_wgslsmith_mult_i32(~2147483647i, arg_2.x >> (1u % 32u)) ^ (arg_2.x ^ func_2(global0.a.a.x))), _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(global2.b.x, arg_2.x)), global0.b.x) >> ((_wgslsmith_add_u32(func_3(), 1u) & func_3()) % 32u));
    global1 = 156f;
    let var_2 = arg_1;
    var var_3 = all(!vec3<bool>(true, global0.c, true));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(886f, _wgslsmith_div_f32(-755f, 359f), -2255f, -2756f) * global0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a))), global2.a, u_input.a);
    global0 = Struct_2(global2.a, global0.b, !any(vec2<bool>(global2.c, select(true, global0.c, global2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-242f, vec4<u32>(_wgslsmith_div_u32(53837u, 4294967295u), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(15288u, u_input.c.x, 1u) << (vec3<u32>(23291u, 0u, u_input.c.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) >> (~firstTrailingBit(u_input.c.x) % 32u)), _wgslsmith_sub_u32(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x) | vec3<u32>(u_input.c.x, u_input.c.x, 0u), select(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), false)), _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(0u, 14235u)), u_input.c.x, 0u)), ~u_input.c.x);
}

