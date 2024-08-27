struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    return u_input.b.zx;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec4<bool> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(431f, arg_1)) * -185f) > 442f, true);
    let var_1 = u_input.c.x;
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)));
    global0 = array<Struct_3, 12>();
    return vec4<bool>(560f < _wgslsmith_f_op_f32(exp2(var_3)), true, ~u_input.d.x == _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, u_input.d.x, 29640u) ^ vec4<u32>(var_1, 14699u, var_1, 116208u), ~vec4<u32>(46652u, u_input.c.x, var_1, 95203u)), u_input.c), true);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = true;
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_1 = firstLeadingBit(abs(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(-26509i, arg_0.e.e, u_input.e.x, 18832i), vec4<i32>(-1i, -11842i, -1i, -1i)), select(-vec4<i32>(u_input.a, arg_0.e.e, -22326i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.e, -3006i, 67326i, u_input.b.x), vec4<i32>(1i, 1i, u_input.e.x, u_input.a)), func_3(vec4<i32>(u_input.a, 1i, arg_0.e.e, u_input.b.x), 2041f)))));
    return min(_wgslsmith_add_vec4_i32(var_1, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, var_1.x), -1i), min(_wgslsmith_add_i32(2147483647i, 0i), -1i), 1i, abs(-69609i))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-21801i, _wgslsmith_mod_i32(4995i, u_input.e.x), vec2<i32>(~u_input.e.x, u_input.b.x) ^ _wgslsmith_sub_vec2_i32(func_1(vec4<i32>(u_input.a, -13591i, u_input.b.x, u_input.b.x)), vec2<i32>(~u_input.e.x, -68224i)), ~_wgslsmith_dot_vec4_i32(func_2(Struct_3(u_input.c.xwz, Struct_1(84184u, vec4<f32>(-2873f, 1300f, 880f, -261f)), false, vec2<bool>(false, true), Struct_2(false, Struct_1(u_input.c.x, vec4<f32>(-1000f, -126f, -668f, 518f)), vec4<u32>(u_input.c.x, u_input.c.x, 86826u, u_input.d.x), Struct_1(11843u, vec4<f32>(2158f, -2098f, 1297f, -209f)), -13525i)), u_input.c.yz) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, u_input.a, -14463i, 17495i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 0i, u_input.b.x, 1i), vec4<i32>(-1i, u_input.b.x, u_input.e.x, -10671i)))));
}

