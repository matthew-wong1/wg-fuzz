struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_1(arg_0.b.x);
    global0 = array<vec3<f32>, 3>();
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(48569i, -18054i, 0i) & vec3<i32>(u_input.a.x, 49157i, -6546i), vec3<i32>(15803i, arg_3.x, arg_3.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), u_input.a.zzw));
    var var_2 = Struct_2(u_input.b.x, -vec4<i32>((2147483647i << (u_input.b.x % 32u)) << (_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x) % 32u), (i32(-1i) * -18290i) ^ abs(arg_0.b.x), firstLeadingBit(arg_0.b.x), firstTrailingBit(1i)), 1i & arg_2);
    var_1 = Struct_1(27988i);
    return countOneBits(_wgslsmith_mod_vec4_i32(var_2.b | abs(u_input.a), var_2.b));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<vec3<f32>, 3>();
    let var_0 = !(_wgslsmith_dot_vec4_i32(~u_input.a & func_3(Struct_3(arg_0.zz, vec2<i32>(7739i, u_input.a.x), arg_0.zx), 1i, u_input.a.x, u_input.a.zwx), vec4<i32>(~(-26283i), u_input.a.x, u_input.a.x, -5473i)) < u_input.a.x);
    let var_1 = Struct_2(109777u, u_input.a, -_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-14431i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)));
    var var_2 = var_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) != _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2022f, -820f)))));
    return Struct_2(65885u, -u_input.a, u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    var var_0 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x);
    var_0 = -25665i;
    return func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-560f * 1088f))), _wgslsmith_f_op_f32(f32(-1f) * -1463f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(154f, -784f, false)))) - -1126f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(477f, _wgslsmith_f_op_f32(1300f + -272f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), false), vec2<bool>(true, true), true), vec2<bool>(true, true), true));
    let var_1 = var_0.b.x >= var_0.c;
    let var_2 = Struct_1(u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1228f, -307f)), _wgslsmith_f_op_f32(489f - 2546f)) + -1074f))), -919f, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b.zx, _wgslsmith_div_u32(6754u, ~reverseBits(u_input.b.x)), var_0.b.yyy, 772u);
}

