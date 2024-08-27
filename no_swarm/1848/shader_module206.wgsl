struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, true);

var<private> global1: vec4<i32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global2 = !arg_0;
    var var_0 = vec3<f32>(2047f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-744f)))), -547f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1098f, -156f) + -1000f)))));
    let var_1 = -(_wgslsmith_clamp_i32(reverseBits(~global1.x), _wgslsmith_mod_i32(global1.x, -global1.x), (i32(-1i) * -2371i) | global1.x) >> (~u_input.a.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-2393f - var_0.x))))));
    let var_3 = Struct_1(true, global2.x);
    return var_3;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_u32(abs(u_input.a.x), 20258u);
    global0 = Struct_1(true, any(vec3<bool>(true | arg_0, any(vec3<bool>(global0.b, arg_1.c.a, true)), all(global2.xy))) & true);
    var var_1 = arg_1.c;
    var var_2 = vec3<bool>(global0.b, true, true);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.a);
    return select(max(vec3<i32>(-3746i, -2147483647i, _wgslsmith_mult_i32(min(-1i, 1i), abs(arg_1.b))), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_1.b), global1.xz), -14298i, _wgslsmith_mult_i32(1i, -67585i))), countOneBits(max(vec3<i32>(global1.x, _wgslsmith_mult_i32(arg_1.b, 1i), -2147483647i), _wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, global1.x, -23862i), vec3<i32>(-2147483647i, arg_1.b, global1.x)), global1.yzw))), !global0.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> bool {
    return arg_1.c.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = Struct_1(false, true);
    let var_0 = global1.zxy;
    global1 = vec4<i32>(~(-2147483647i), max(-_wgslsmith_mult_i32(global1.x, func_3(true, Struct_2(1085f, arg_0.b, Struct_1(arg_1.a, false))).x), reverseBits(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, global1.x), -65528i, var_0.x))), -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-966i, -34300i, var_0.x, var_0.x)), -vec4<i32>(global1.x, var_0.x, 0i, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-15345i, global1.x, arg_0.b, 0i) | vec4<i32>(global1.x, global1.x, global1.x, 8201i), firstLeadingBit(vec4<i32>(-28854i, -28541i, arg_0.b, 34822i)))), min((1i >> (u_input.a.x % 32u)) & var_0.x, (0i | _wgslsmith_mult_i32(arg_0.b, arg_0.b)) & -1i));
    global0 = Struct_1(true, !(global2.x || !func_4(vec4<bool>(true, true, false, global0.a), Struct_2(arg_0.a, 6319i, arg_0.c), vec3<i32>(var_0.x, 1i, 1i), Struct_3(vec2<f32>(arg_0.a, arg_0.a), arg_0.a, Struct_1(arg_0.c.a, true), Struct_1(arg_0.c.b, global0.a)))));
    global0 = Struct_1(!(global0.b != false), any(global2.yzx));
    return 21315u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1981f), _wgslsmith_f_op_f32(f32(-1f) * -673f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, -2398f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 284f)), all(global2.xz))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1784f)), 115f), _wgslsmith_f_op_f32(f32(-1f) * -1185f))));
    var var_1 = Struct_1(global0.a && !global0.b, func_1(!vec4<bool>(true, !global2.x, false, true)).b);
    return StorageBuffer(func_5(Struct_2(-1040f, ~global1.x, arg_0), Struct_1(!global2.x, func_4(vec4<bool>(true, false, global0.a, arg_0.a), Struct_2(-1700f, -2147483647i, Struct_1(global2.x, false)), func_3(true, Struct_2(var_0.x, 16810i, arg_0)), Struct_3(vec2<f32>(var_0.x, -203f), 114f, Struct_1(arg_0.a, var_1.b), arg_0)))), -select(~vec4<i32>(70676i, global1.x, global1.x, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-35854i, global1.x, global1.x, global1.x) | vec4<i32>(global1.x, 8229i, global1.x, -6149i), ~vec4<i32>(33315i, global1.x, -2147483647i, 76132i)), global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, var_0.x, -1565f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(func_1(!select(vec4<bool>(global0.a, false, global2.x, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 15684u, 55601u, u_input.a.x)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(71530u, 1u), u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(24041u, u_input.a.x, u_input.a.x, 4294967295u))), u_input.a.x, u_input.a.x)));
}

