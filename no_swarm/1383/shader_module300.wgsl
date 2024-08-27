struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = ~u_input.d.x;
    let var_1 = vec3<u32>(min(9397u >> (_wgslsmith_add_u32(0u, u_input.d.x) % 32u), u_input.d.x), u_input.d.x, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_div_u32(~0u, abs(108969u))), _wgslsmith_div_u32(74634u, _wgslsmith_mult_u32(1u, u_input.d.x)) << (~1u % 32u)));
    var_0 = var_1.x;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~(~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), u_input.d.x), ~abs(vec2<u32>(_wgslsmith_sub_u32(var_1.x, 67681u), _wgslsmith_clamp_u32(u_input.d.x, var_1.x, u_input.d.x))));
    return false;
}

fn func_3() -> vec3<bool> {
    global0 = array<vec3<f32>, 27>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1154f))), _wgslsmith_f_op_f32(max(171f, -1000f)), !all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-116f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1879f, 1809f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(210f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -842f), -104f))));
    var var_1 = Struct_2(~u_input.c, u_input.d.x, Struct_1(firstLeadingBit(-47915i)));
    var var_2 = Struct_2(1i, ~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.b, 46239u), var_1.b & var_1.b) & ~u_input.d.x), var_1.c);
    var_2 = Struct_2(u_input.b.x | _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-13188i, u_input.b.x, u_input.a.x, -16804i)), min(vec4<i32>(var_1.a, 0i, 2147483647i, u_input.a.x), -vec4<i32>(var_2.c.a, 0i, 9970i, 0i))), var_1.b & (var_2.b >> (var_2.b % 32u)), var_2.c);
    return vec3<bool>(true, true, false);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~u_input.d.zy, max(u_input.d.xy, u_input.d.yz), abs(vec2<u32>(0u, u_input.d.x)));
    global0 = array<vec3<f32>, 27>();
    var var_1 = !vec2<bool>(all(vec4<bool>(true, false, false, false)), func_2(-356f, -730f, Struct_1(arg_1)));
    var var_2 = func_3();
    let var_3 = -1000f;
    return Struct_1(i32(-1i) * -9356i);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> vec2<i32> {
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    var var_0 = ~(~vec2<u32>(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.d.x, arg_0.b), vec4<u32>(arg_2, 1u, 29251u, 1u))), u_input.d.x));
    var_0 = u_input.d.yx;
    return _wgslsmith_mult_vec2_i32((u_input.b.yy & -u_input.a.ww) & countOneBits(u_input.a.xw), _wgslsmith_mod_vec2_i32(vec2<i32>(-firstLeadingBit(-31883i), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(u_input.a.x, -1i))), ~abs(firstTrailingBit(vec2<i32>(u_input.c, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i);
    global0 = array<vec3<f32>, 27>();
    let var_1 = func_4(Struct_2(max(2147483647i, 1926i), abs(u_input.d.x), func_1(u_input.c & (var_0.a & 3319i), _wgslsmith_add_i32(u_input.a.x, u_input.b.x) | -var_0.a)), select(vec3<bool>(func_3().x | true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), true), vec3<bool>(!(u_input.d.x <= u_input.d.x), true, true), false), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.d.x, u_input.d.x), ~reverseBits(vec3<u32>(1u, u_input.d.x, u_input.d.x))) & firstLeadingBit(u_input.d.x));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i) | -vec2<i32>(1i, var_1.x), var_1), -35195i & u_input.b.x, -649i, var_1.x) | vec4<i32>(9825i, var_0.a, 1i, -var_0.a);
    var var_3 = ~(-func_1(1i, 1i).a);
    var_3 = -33242i;
    var var_4 = !select(vec4<bool>(~0u >= ~u_input.d.x, true, func_2(_wgslsmith_f_op_f32(sign(-1387f)), _wgslsmith_f_op_f32(f32(-1f) * -521f), func_1(u_input.a.x, var_2.x)), all(vec3<bool>(false, true, false))), vec4<bool>(all(vec2<bool>(true, true)), false, true, !any(vec3<bool>(true, true, false))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), select(false, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))));
    global0 = array<vec3<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(min(0u, ~0u << (~u_input.d.x % 32u)), u_input.d.x), 31438i, countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.d.zy)), 39650i, 4294967295u);
}

