struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    var var_0 = !vec3<bool>(arg_2.b.x, false && (!arg_2.e | (u_input.b > u_input.b)), true);
    return ~(1u | abs(max(1u, arg_1.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = u_input.c.x;
    return arg_1.a;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(122f, _wgslsmith_f_op_f32(max(561f, -236f))))));
    var var_1 = Struct_2(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(45072u, ~4294967295u), firstLeadingBit(~(~u_input.c.x)), ~0u), Struct_1(func_4(select(u_input.a.xx, vec2<u32>(5967u, u_input.a.x), true), Struct_1(~u_input.c.zy, vec4<bool>(true, true, true, true), vec3<f32>(-122f, -713f, var_0), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), u_input.b == -2147483647i), vec4<u32>(u_input.c.x, ~u_input.c.x, abs(44140u), func_3(var_0, vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, u_input.c.x), Struct_1(u_input.c.yy, vec4<bool>(false, false, false, true), vec3<f32>(var_0, 936f, var_0), vec4<bool>(true, false, false, true), true))), ~u_input.a.x), vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), true), vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), var_0), vec4<bool>(false, true, true, true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))) == all(vec2<bool>(true, true))));
    let var_2 = Struct_3(var_1.b.c.yx, var_1.b.b.x);
    var var_3 = max(u_input.a.x, ~_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1097u, u_input.c.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.a.x, 10906u, 4294967295u, u_input.a.x))), ~countOneBits(vec4<u32>(u_input.a.x, var_1.b.a.x, u_input.a.x, u_input.c.x))));
    var var_4 = vec4<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -880f), var_2.a.x)), var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1035f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), -108f))) - _wgslsmith_f_op_f32(round(1635f))), 138f);
    return Struct_2(0u, var_1.b);
}

fn func_1() -> Struct_5 {
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    let var_0 = Struct_5(u_input.a.x, func_2());
    var var_1 = false && (min(_wgslsmith_sub_i32(-15088i | u_input.b, ~(-2147483647i)), _wgslsmith_mult_i32(u_input.b, 84659i)) == _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.b, u_input.b), 1i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = func_1();
    var_1 = Struct_5(4294967295u, var_1.b);
    global0 = array<vec3<bool>, 1>();
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.b.c.x)))));
    var var_3 = _wgslsmith_div_vec4_i32(min(abs(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & -vec4<i32>(u_input.b, 21482i, u_input.b, u_input.b)), ~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b, 4603i, 20212i))), vec4<i32>(~u_input.b, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 9218i, 33714i, u_input.b))), u_input.b, u_input.b));
    global0 = array<vec3<bool>, 1>();
    var var_4 = var_1.b;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-2147483647i)) << (0u % 32u), (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.x, var_3.x, 16772i), vec4<i32>(0i, 1i, u_input.b, u_input.b))) ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(-24234i, var_3.x), u_input.b));
}

