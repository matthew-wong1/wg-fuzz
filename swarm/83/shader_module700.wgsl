struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(486f, -393f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(34927u, _wgslsmith_f_op_f32(ceil(arg_3.b)), select(select(select(vec3<bool>(var_0, var_0, true), arg_3.c, arg_3.c), vec3<bool>(var_0, false, arg_3.c.x), false), vec3<bool>(false, true, false), !var_0)), 1081f, arg_3, !select(vec2<bool>(arg_3.c.x, u_input.b <= -3875i), vec2<bool>(arg_3.c.x, true), arg_3.c.xz), !(!select(arg_3.c, !arg_3.c, !vec3<bool>(true, arg_3.c.x, true))));
    return !any(select(var_1.c.c, select(vec3<bool>(var_0, arg_3.c.x, var_0), vec3<bool>(var_1.c.c.x, true, true), !var_1.e), select(true, !var_0, u_input.b < arg_0)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -123f);
    let var_1 = Struct_1(~firstLeadingBit(firstLeadingBit(1u) | u_input.a.x), _wgslsmith_f_op_f32(318f - global0.x), !vec3<bool>(func_3(~u_input.b, 517f, u_input.a.x ^ 4294967295u, Struct_1(14190u, 1288f, vec3<bool>(false, false, false))), _wgslsmith_mult_i32(u_input.b, u_input.b) == -58018i, _wgslsmith_f_op_f32(global0.x + var_0) != arg_0.x));
    global0 = arg_0;
    var var_2 = Struct_2(Struct_1(u_input.a.x, arg_0.x, !vec3<bool>(u_input.a.x >= 49864u, var_1.c.x, false && var_1.c.x)), var_0, Struct_1(~(~select(1u, u_input.a.x, var_1.c.x)), arg_0.x, vec3<bool>(!(u_input.a.x > 0u), false, !any(vec3<bool>(var_1.c.x, var_1.c.x, false)))), !var_1.c.xz, var_1.c);
    var var_3 = Struct_5(Struct_3(true, 67504u, vec3<i32>(~13463i, -28127i, -2147483647i | _wgslsmith_dot_vec4_i32(vec4<i32>(-44057i, 7262i, 4951i, 0i), vec4<i32>(14269i, -35887i, u_input.b, u_input.b)))), vec3<f32>(arg_0.x, global0.x, 1269f), abs(~var_1.a), Struct_3(all(!(!vec4<bool>(var_1.c.x, var_2.a.c.x, false, var_1.c.x))), 4294967295u, abs(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, 54944i, 24034i), vec3<i32>(-43182i, 20035i, u_input.b)))));
    return var_2.c;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, -1542f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1120f) + vec2<f32>(-240f, 2438f))), !(global0.x > global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(738f, var_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 648f) + vec2<f32>(var_0.b, 912f)), vec2<bool>(false, var_0.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(-450f * var_0.b), -658f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_0.b)))));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, -1459f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, 672f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1610f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(956f, var_0.b)))))));
    var var_1 = var_0;
    return ~abs(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i >> (u_input.a.x % 32u);
    let var_1 = _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)) >> (reverseBits(57303u) % 32u));
    var var_2 = -2147483647i;
    let var_3 = vec2<bool>(select(true, false, true), any(vec3<bool>(true, all(vec2<bool>(false, false)) == false, true)));
    var var_4 = Struct_3(!var_3.x, ~20296u, ~reverseBits(-vec3<i32>(24919i, u_input.b, u_input.b) & vec3<i32>(-48706i, var_0, var_0)));
    let var_5 = vec4<u32>(min(countOneBits(~reverseBits(var_4.b)), 51723u), ~16250u, firstLeadingBit(~4294967295u), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_u32(~abs(var_5.xzy), reverseBits(select(func_1(), _wgslsmith_clamp_vec3_u32(u_input.a, var_5.wxx, u_input.a), !var_4.a))), countOneBits(var_4.c.xx), global0.x);
}

