struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    return firstTrailingBit(4294967295u) << (firstLeadingBit(~_wgslsmith_clamp_u32(global1.b, global1.a, 0u)) % 32u);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> bool {
    global1 = Struct_1(arg_2, 90997u, 444f);
    let var_0 = abs(select(_wgslsmith_div_vec3_u32(vec3<u32>(global1.b, 46851u, ~48869u), ~vec3<u32>(arg_2, 0u, global1.b) | ~vec3<u32>(arg_2, arg_2, 1u)), vec3<u32>(0u, min(15349u, 1247u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a, 4294967295u), vec3<u32>(77684u, arg_2, arg_2))) | _wgslsmith_div_vec3_u32(vec3<u32>(44924u, global1.a, global1.b) ^ vec3<u32>(4294967295u, 1u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(7096u, 4294967295u, arg_2), vec3<u32>(4294967295u, 9639u, arg_2))), vec3<bool>(arg_1.x, true, -47326i < (u_input.a.x | -2147483647i))));
    var var_1 = vec4<u32>(var_0.x, 0u, firstTrailingBit(arg_2), arg_2) & ((((vec4<u32>(arg_2, global1.a, global1.a, 2814u) | vec4<u32>(arg_2, 4294967295u, 26800u, var_0.x)) ^ abs(vec4<u32>(1u, 4294967295u, 3673u, 4294967295u))) ^ firstTrailingBit(vec4<u32>(27801u, global1.a, arg_2, var_0.x))) >> (vec4<u32>(global1.a, arg_2, max(~144469u, ~var_0.x), abs(1u)) % vec4<u32>(32u)));
    var var_2 = vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, ~(-u_input.a.x)), u_input.a.x & ~(-(~1i)), ~(_wgslsmith_div_i32(max(2147483647i, 2147483647i), u_input.a.x >> (global1.b % 32u)) << (37278u % 32u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, var_0.x) >> (~var_1.x % 32u), ~1u), _wgslsmith_div_u32(~19424u, 27155u), global1.c));
    return false;
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(firstLeadingBit(~(global1.b ^ func_1())), 1u, 2016f);
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, global1.c, global1.c, -241f) - vec4<f32>(-379f, -1164f, global1.c, -240f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1090f), _wgslsmith_f_op_f32(-global1.c), global1.c, -842f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(951f, 1179f, global1.c, global1.c) * vec4<f32>(global1.c, -212f, global1.c, global1.c))))), vec4<bool>(false, func_3(-421f, vec2<bool>(true, true), global1.a), false, !(0i > u_input.a.x)))), Struct_1(0u, global1.a, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-801f)), _wgslsmith_f_op_f32(global1.c - global1.c))))), vec2<f32>(global1.c, 1076f), _wgslsmith_mod_u32(~0u, 30996u) <= countOneBits(global1.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = func_2().b;
    let var_1 = select(!select(vec4<bool>(arg_1.d, true, any(vec3<bool>(arg_1.d, true, arg_1.d)), arg_1.d && arg_1.d), select(select(vec4<bool>(true, arg_1.d, true, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, arg_1.d, false, true), vec4<bool>(false, false, arg_1.d, false), vec4<bool>(arg_1.d, false, true, true)), vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d)), any(select(vec4<bool>(false, arg_1.d, false, true), vec4<bool>(false, arg_1.d, arg_1.d, true), arg_1.d))), vec4<bool>(!arg_1.d, any(select(vec2<bool>(false, false), select(vec2<bool>(true, arg_1.d), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, arg_1.d))), select(true, arg_1.d, true), true), true);
    global0 = array<Struct_2, 27>();
    return u_input.a.x >> (~0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i, u_input.a.x, firstLeadingBit(u_input.a.x), -firstTrailingBit(-12189i >> (1u % 32u)) ^ _wgslsmith_mult_i32(~(~u_input.a.x), firstLeadingBit(2147483647i)));
    global1 = Struct_1(_wgslsmith_div_u32(19717u, 4112u), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.c, 898f))))));
    let var_1 = ~(vec3<u32>(global1.b, 30374u, 4294967295u) | (~vec3<u32>(4515u, global1.a, 1u) & abs(vec3<u32>(global1.a, 4294967295u, global1.b))));
    var var_2 = global1.c;
    var var_3 = Struct_1(~_wgslsmith_add_u32(func_1(), 1u), firstTrailingBit(_wgslsmith_sub_u32(var_1.x ^ ~1u, var_1.x)), 1804f);
    var var_4 = -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.x, var_0.x, var_0.x)), -(var_0.zzz & u_input.a)), vec3<i32>(0i, func_4(var_0, func_2()), 0i));
    let var_5 = !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_6 = -(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(-var_0.wzz), var_0.xyz, -u_input.a));
    var var_7 = max(select(u_input.a, var_0.ywx, false), reverseBits(var_6));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.xz, var_1.x, var_6);
}

