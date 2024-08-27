struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    global0 = Struct_2(abs(1u), Struct_1(!arg_1.b.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_1.c.x ^ global0.c.x, 1i, -2147483647i), ~reverseBits(~vec3<i32>(1i, 0i, 0i))));
    let var_0 = vec2<bool>(!(u_input.a >= ~u_input.a), true);
    let var_1 = global0.c;
    var var_2 = vec3<i32>(u_input.b, 5423i, var_1.x & min(u_input.b, firstTrailingBit(select(global0.c.x, -2147483647i, false))));
    var_2 = vec3<i32>(-max(arg_1.c.x << (20551u % 32u), arg_1.c.x), max(_wgslsmith_mult_i32(-var_2.x, -20302i), -6538i), ~var_1.x) | max(vec3<i32>(u_input.b, 1i, 21211i), arg_1.c);
    return 36607u;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(~_wgslsmith_div_u32(38656u, ~func_3(vec4<bool>(global0.b.a, global0.b.a, global0.b.a, false), Struct_2(9540u, global0.b, global0.c))), Struct_1(any(!select(vec4<bool>(global0.b.a, global0.b.a, global0.b.a, true), vec4<bool>(global0.b.a, false, true, global0.b.a), global0.b.a))), vec3<i32>(_wgslsmith_mult_i32(min(-arg_1, countOneBits(-35447i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 1i, -37111i, 1i), vec4<i32>(arg_1, u_input.b, global0.c.x, -1i))), u_input.b, ~(reverseBits(-1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(25646u, u_input.a, 4294967295u, arg_0.x), vec4<u32>(41228u, 0u, global0.a, arg_0.x)) % 32u))));
    let var_1 = Struct_1(global0.b.a);
    var var_2 = ~_wgslsmith_mult_u32(~(~abs(0u)), ~abs(4294967295u) ^ global0.a);
    var_2 = reverseBits(arg_0.x);
    let var_3 = false;
    return var_0;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    global0 = func_2(vec2<u32>(global0.a, 1u), ~global0.c.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1579f, 1000f, 442f, 1713f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(654f, -353f, -410f, -880f), vec4<f32>(-720f, 1308f, -1000f, 1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(836f, -1097f, -817f, 2175f) + vec4<f32>(690f, 517f, -130f, 753f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-1255f, 752f, 1000f, 447f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - -1807f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1713f)), -962f), -956f))));
    global0 = func_2(vec2<u32>(reverseBits(27809u), 4294967295u), -(_wgslsmith_mod_i32(-9948i, min(-14574i, u_input.b)) << (countOneBits(~global0.a) % 32u)));
    let var_1 = _wgslsmith_mult_u32(global0.a, ~(~4294967295u >> ((71265u << (u_input.a % 32u)) % 32u))) <= abs(63684u);
    let var_2 = Struct_2(func_2(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.a, 59357u), vec3<u32>(1u, 74375u, 27120u)), abs(23770u) ^ (global0.a >> (0u % 32u))), _wgslsmith_add_i32(u_input.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 1i), -17341i))).a, global0.b, _wgslsmith_mult_vec3_i32((_wgslsmith_div_vec3_i32(global0.c, global0.c) >> (~vec3<u32>(global0.a, u_input.a, 50816u) % vec3<u32>(32u))) << (~firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, 4294967295u)) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x, u_input.b, 1i) ^ global0.c, vec3<i32>(u_input.b, -2147483647i, global0.c.x))));
    return StorageBuffer(~_wgslsmith_add_i32(-1i, func_2(vec2<u32>(u_input.a, 58321u) | vec2<u32>(0u, var_2.a), var_2.c.x).c.x), max(-func_2(select(vec2<u32>(u_input.a, global0.a), vec2<u32>(u_input.a, u_input.a), global0.b.a), ~(-6084i)).c.x, ~(-(~(-1i)))), -8925i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!(!select(vec3<bool>(global0.b.a, true, false), !vec3<bool>(false, true, global0.b.a), !global0.b.a)));
}

