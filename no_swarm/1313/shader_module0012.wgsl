struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = vec4<u32>(~1u, global1.b.b, global0.x, 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.b.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_3.b.a, 1511f))))))) < arg_3.b.a;
    let var_2 = global1.b;
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_4, arg_3: vec3<u32>) -> bool {
    global1 = Struct_3(0u, arg_2.b, ~vec3<u32>(global0.x, ~(global1.c.x << (1u % 32u)), _wgslsmith_mult_u32(0u, global1.b.b) | _wgslsmith_div_u32(global1.a, global0.x)));
    let var_0 = -1661f;
    var var_1 = Struct_1(!arg_0.x, var_0, vec4<bool>(!all(select(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<bool>(arg_0.x, true, true), false)), true, select(!all(vec2<bool>(arg_0.x, false)), true, true), !all(vec3<bool>(true, true, true))), arg_2.a.x, -_wgslsmith_mod_vec3_i32(u_input.b.wyx, firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a.x, 40361i, u_input.a.x)))));
    let var_2 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_mult_u32(arg_2.b.b, ~arg_2.b.b)), global0.x) >> (_wgslsmith_add_u32(~firstLeadingBit(global1.c.x), 13758u) % 32u);
    let var_3 = -9244i;
    return !(!(!(arg_2.a.x & arg_2.a.x))) & all(select(!(!var_1.c.wy), select(select(vec2<bool>(true, var_1.c.x), vec2<bool>(var_1.a, false), true), select(arg_0, vec2<bool>(false, arg_2.a.x), false), true), arg_2.a));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_3 {
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(global1.c, global1.c), 1u);
    var var_0 = 173f;
    var var_1 = _wgslsmith_mod_i32(-1i, -2147483647i);
    var var_2 = Struct_5(~(~(firstLeadingBit(vec2<u32>(global0.x, global1.a)) & ~vec2<u32>(0u, 68924u))), Struct_3(~1u, global1.b, _wgslsmith_mod_vec3_u32(~global1.c, global1.c)), vec4<bool>(!(!(!arg_1)), !(!any(vec4<bool>(true, false, arg_0, arg_1))), all(!vec2<bool>(arg_1, arg_1)) || !arg_0, !func_3(!vec2<bool>(arg_0, arg_0), global1.b.c, Struct_4(vec2<bool>(arg_0, true), Struct_2(global1.b.c, 95636u, -545f)), vec3<u32>(1164u, 1u, global1.a))));
    global1 = var_2.b;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(min(countOneBits(_wgslsmith_add_i32(u_input.a.x, 27080i)), abs(_wgslsmith_div_i32(49459i, u_input.b.x))), max(u_input.a.x, u_input.b.x), _wgslsmith_sub_i32(u_input.a.x & abs(-16770i), -_wgslsmith_mult_i32(u_input.b.x, -15912i))), u_input.a.x, !(!((global1.b.c == global1.b.a) || true)), Struct_3(~global1.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.a, 140f)), firstLeadingBit(10688u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.a, 600f)) - global1.b.a)), _wgslsmith_div_vec3_u32(select(_wgslsmith_mod_vec3_u32(global1.c, global1.c), select(vec3<u32>(20838u, global0.x, 1u), vec3<u32>(25169u, global0.x, global1.a), vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false))), global1.c)));
    global1 = func_2(any(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), all(vec2<bool>(true, false)))), false || any(vec3<bool>(true, true, true)));
    let var_1 = 213f;
    global1 = func_2(true, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-390f, var_1, var_1), vec3<f32>(var_1, var_1, -1495f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1196f)))), 164f)));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-max(21829i, u_input.a.x), global1.c << (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global0.x, 4146u, global0.x), vec4<u32>(global0.x, 4294967295u, global1.b.b, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(30394u, 20499u, global0.x), vec3<u32>(25196u, global1.c.x, global0.x)), 1u) % vec3<u32>(32u)), _wgslsmith_div_u32(select(_wgslsmith_add_u32(4294967295u, global0.x), _wgslsmith_sub_u32(4294967295u, 43247u), any(vec3<bool>(false, false, true))) | ~1u, abs(countOneBits(reverseBits(5324u)))), ~(-1847i));
}

