struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(true, vec2<i32>(-80780i, -26085i), Struct_3(Struct_2(-29834i), vec2<bool>(true, false))), Struct_4(true, vec2<i32>(i32(-2147483648), -52110i), Struct_3(Struct_2(9495i), vec2<bool>(true, true))), Struct_4(false, vec2<i32>(1299i, -14903i), Struct_3(Struct_2(-11919i), vec2<bool>(false, false))), Struct_4(false, vec2<i32>(-53154i, 1i), Struct_3(Struct_2(-53917i), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(-13782i, -10055i), Struct_3(Struct_2(-2979i), vec2<bool>(false, true))), Struct_4(false, vec2<i32>(-27927i, 2147483647i), Struct_3(Struct_2(1i), vec2<bool>(false, false))), Struct_4(false, vec2<i32>(-2985i, -5074i), Struct_3(Struct_2(-23437i), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(0i, 0i), Struct_3(Struct_2(24030i), vec2<bool>(true, true))), Struct_4(false, vec2<i32>(25133i, 31867i), Struct_3(Struct_2(7362i), vec2<bool>(false, false))), Struct_4(true, vec2<i32>(13402i, -1i), Struct_3(Struct_2(-2156i), vec2<bool>(false, true))), Struct_4(true, vec2<i32>(-4657i, 1321i), Struct_3(Struct_2(9665i), vec2<bool>(false, false))), Struct_4(true, vec2<i32>(16507i, 0i), Struct_3(Struct_2(0i), vec2<bool>(false, true))), Struct_4(false, vec2<i32>(18073i, i32(-2147483648)), Struct_3(Struct_2(i32(-2147483648)), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(i32(-2147483648), 25094i), Struct_3(Struct_2(23703i), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(1i, -11402i), Struct_3(Struct_2(0i), vec2<bool>(false, true))), Struct_4(true, vec2<i32>(-17479i, 1i), Struct_3(Struct_2(-15612i), vec2<bool>(false, false))), Struct_4(true, vec2<i32>(i32(-2147483648), -16984i), Struct_3(Struct_2(-25425i), vec2<bool>(false, false))), Struct_4(false, vec2<i32>(i32(-2147483648), -7187i), Struct_3(Struct_2(-14530i), vec2<bool>(true, false))), Struct_4(true, vec2<i32>(1i, -24693i), Struct_3(Struct_2(-67803i), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(-24176i, 1i), Struct_3(Struct_2(1i), vec2<bool>(false, true))), Struct_4(true, vec2<i32>(20716i, 50607i), Struct_3(Struct_2(0i), vec2<bool>(false, true))), Struct_4(false, vec2<i32>(1i, -319i), Struct_3(Struct_2(0i), vec2<bool>(true, true))), Struct_4(false, vec2<i32>(0i, 1i), Struct_3(Struct_2(17528i), vec2<bool>(true, false))), Struct_4(true, vec2<i32>(7028i, -28801i), Struct_3(Struct_2(-12305i), vec2<bool>(true, true))), Struct_4(false, vec2<i32>(11349i, 2147483647i), Struct_3(Struct_2(i32(-2147483648)), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(i32(-2147483648), -48726i), Struct_3(Struct_2(1i), vec2<bool>(true, false))), Struct_4(false, vec2<i32>(i32(-2147483648), 1i), Struct_3(Struct_2(-43171i), vec2<bool>(true, false))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<Struct_4, 27>();
    let var_0 = select(select(vec3<bool>(!arg_0.b.x, false, max(u_input.b, 0u) > ~0u), vec3<bool>(all(select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), arg_0.b.x)), arg_0.b.x, true), vec3<bool>(arg_0.b.x && any(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x)), arg_0.b.x, arg_0.b.x)), select(vec3<bool>(select(true, !arg_0.b.x, true), true, select(true, all(vec3<bool>(true, false, true)), true)), !(!select(vec3<bool>(true, true, arg_0.b.x), vec3<bool>(false, arg_0.b.x, false), arg_0.b.x)), select(!vec3<bool>(false, arg_0.b.x, arg_0.b.x), vec3<bool>(any(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)), !arg_0.b.x, true), arg_0.b.x)), !(!(!(!vec3<bool>(arg_0.b.x, true, arg_0.b.x)))));
    let var_1 = true | var_0.x;
    let var_2 = abs(_wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a.xx, select(u_input.a.xx, vec2<i32>(arg_0.a.a, u_input.a.x), arg_0.b.x)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(0i, arg_0.a.a)) << (vec2<u32>(u_input.e.x, 0u) % vec2<u32>(32u)), vec2<i32>(-22185i, -46280i) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yy) % vec2<u32>(32u)))));
    global0 = array<Struct_4, 27>();
    return u_input.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_0 = Struct_2(-firstLeadingBit(firstLeadingBit(-1i)));
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    return -23463i;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = abs(u_input.e.zxz);
    let var_1 = ~func_4(Struct_2(_wgslsmith_sub_i32(20243i, 77426i) ^ -arg_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1000f, -994f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1429f, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, arg_0)))), Struct_1(0u), ~func_3(Struct_3(Struct_2(u_input.a.x), arg_2)));
    let var_2 = u_input.a.x >> (~(~68084u) % 32u);
    let var_3 = -_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_2, 2147483647i, arg_1.x, var_2), vec4<i32>(arg_1.x, -1i, -3869i, var_2)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -37816i), u_input.a.yz), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1088i, 1i, 0i)), i32(-1i) * -1i, firstLeadingBit(var_2)), vec4<i32>(func_4(Struct_2(-1i), vec3<f32>(-1257f, arg_0, arg_0), Struct_1(8197u), vec4<u32>(u_input.b, 0u, 0u, var_0.x)), _wgslsmith_mult_i32(var_1, arg_1.x), -u_input.a.x, firstTrailingBit(var_1)), ~vec4<i32>(u_input.a.x, -2147483647i, -1i, var_2) & min(vec4<i32>(arg_1.x, var_2, 2147483647i, var_1), vec4<i32>(var_1, var_2, 14680i, u_input.a.x))));
    global0 = array<Struct_4, 27>();
    return 0u;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = (~_wgslsmith_sub_u32(5969u, func_2(-1047f, vec3<i32>(2147483647i, 0i, u_input.a.x), vec2<bool>(arg_0, false))) <= ~18864u) & (!all(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0)) | !arg_0);
    let var_1 = Struct_1(~u_input.b);
    let var_2 = select(select(vec4<bool>(arg_0, any(!vec3<bool>(arg_0, arg_0, arg_0)), arg_0, !(-10394i < u_input.a.x)), !(!vec4<bool>(arg_0, true, false, true)), select(vec4<bool>(10401u == var_1.a, arg_0, any(vec2<bool>(arg_0, false)), true), !(!vec4<bool>(arg_0, false, false, true)), vec4<bool>(false, true, arg_0 & arg_0, true))), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(any(!vec3<bool>(arg_0, true, arg_0)), arg_0, arg_0, false));
    let var_3 = 100418u;
    let var_4 = Struct_2(u_input.a.x);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(select(true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, false, false))), true, true), u_input.e.x);
    let var_1 = -vec2<i32>(var_0.a, select(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), max(-38454i, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, 24016i), abs(-56263i), -1i), (u_input.a.x > -1i) & (u_input.c < u_input.e.x)));
    let var_2 = global0[_wgslsmith_index_u32(0u, 27u)];
    global0 = array<Struct_4, 27>();
    var var_3 = Struct_3(func_1((_wgslsmith_dot_vec2_i32(var_2.b, vec2<i32>(var_1.x, 28283i)) >= 1i) | true, _wgslsmith_mult_u32(firstTrailingBit(0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 66354u, 12025u, u_input.d), vec4<u32>(1u, u_input.d, u_input.b, 79369u)), ~(~3069u))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(min(-1000f, 221f)), !var_2.c.b.x)))), -773f, firstLeadingBit(u_input.b));
}

