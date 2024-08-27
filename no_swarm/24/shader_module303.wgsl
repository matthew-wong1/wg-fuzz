struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, countOneBits(0u)), 4294967295u, ~(u_input.d.x | u_input.c.x))), (~28530u << (u_input.d.x % 32u)) << (_wgslsmith_sub_u32(1739u, countOneBits(273u)) % 32u), u_input.c.x, 0u);
    var var_1 = -abs(~(~(-2147483647i))) < arg_0.b;
    let var_2 = 1i;
    return _wgslsmith_add_i32(54518i, var_2);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec3<i32> {
    global0 = array<vec2<u32>, 27>();
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, arg_1), vec3<i32>(max(-(~arg_1), _wgslsmith_mod_i32(arg_1, abs(-1i))), -(i32(-1i) * -17601i), _wgslsmith_sub_i32(func_3(Struct_3(false, u_input.a.x)), -max(u_input.a.x, arg_1))));
    let var_1 = vec2<bool>(all(vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), any(select(vec4<bool>(true, any(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, true)), vec4<bool>(true, any(vec2<bool>(false, false)), false, true))));
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    return var_0;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    let var_0 = -min(_wgslsmith_sub_vec3_i32(~func_2(Struct_4(u_input.d.x, -290f), u_input.b), firstTrailingBit(vec3<i32>(0i, u_input.a.x, 5714i) >> (vec3<u32>(69200u, 45008u, 84910u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(2147483647i, arg_0, u_input.b), reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i)), false), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, -1i), max(vec3<i32>(-36967i, arg_0, 26691i), vec3<i32>(-47631i, arg_0, arg_0))), ~(-vec3<i32>(0i, arg_0, u_input.a.x))));
    var var_1 = Struct_3(true & !any(vec3<bool>(false, false, true)), u_input.a.x);
    let var_2 = Struct_1(u_input.d.x, -193f, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 33716u, u_input.c.x, u_input.d.x), vec4<u32>(0u, 0u, 73729u, u_input.c.x)), ~vec4<u32>(4294967295u, 1u, u_input.d.x, 0u) & reverseBits(vec4<u32>(u_input.d.x, 0u, 1u, u_input.c.x))), ~min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 31981u, 71797u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.d.x)), ~vec4<u32>(57135u, u_input.d.x, 12879u, u_input.d.x))), u_input.a);
    return select(vec4<bool>(!any(vec4<bool>(false, false, var_1.a, true)) && (false || (4294967295u != u_input.d.x)), var_1.a, var_1.a, true), select(!vec4<bool>(false, any(vec4<bool>(var_1.a, false, true, var_1.a)), var_1.a, any(vec3<bool>(false, var_1.a, false))), select(vec4<bool>(true, select(true, var_1.a, true), all(vec3<bool>(var_1.a, false, var_1.a)), true), !(!vec4<bool>(true, false, false, var_1.a)), !(!vec4<bool>(var_1.a, true, var_1.a, var_1.a))), var_1.a), any(select(vec3<bool>(var_1.a, var_2.c.x < 38715u, true), select(vec3<bool>(false, true, false), vec3<bool>(var_1.a, true, var_1.a), !vec3<bool>(var_1.a, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(var_1.a, var_1.a, true), var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(all(func_1(u_input.a.x)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), any(vec3<bool>(true, true, true)))) || any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true));
    let var_1 = Struct_4(u_input.c.x, _wgslsmith_f_op_f32(trunc(700f)));
    var var_2 = var_1;
    var_2 = var_1;
    global0 = array<vec2<u32>, 27>();
    let var_3 = Struct_4(146u, _wgslsmith_div_f32(-1000f, -1914f));
    var var_4 = 1i & ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, var_1.b, var_2.b, 862f)))), vec4<f32>(var_1.b, -486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -1000f))), -128f));
}

