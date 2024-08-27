struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = -39341i;

var<private> global2: array<u32, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global1 = u_input.a.x;
    let var_0 = Struct_1(vec3<i32>(-1i) * -min(-vec3<i32>(u_input.d.x, 2147483647i, -1i), u_input.c.xww), _wgslsmith_div_vec4_u32(abs(u_input.b), ~u_input.b), min(~1u, ~(global2[_wgslsmith_index_u32(~17476u, 12u)] >> (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 9694u) % 32u))), -994f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, 198f, 728f) * vec3<f32>(360f, 289f, 1127f)), vec3<f32>(-1554f, 251f, 485f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(766f, 1295f, false)), 1f, 1257f)))));
    global1 = ~u_input.c.x;
    global1 = ~u_input.d.x;
    let var_1 = var_0;
    return var_1.a.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = 108338u;
    let var_1 = Struct_1(min(arg_0.xxz, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i | arg_0.x, func_3(), arg_0.x & u_input.d.x), -vec3<i32>(-4070i, u_input.d.x, arg_0.x))), firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(~2972u, u_input.e), ~23467u, 20660u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1396f, _wgslsmith_f_op_f32(753f + -1034f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-897f, -528f, -1255f))) * vec3<f32>(1271f, -698f, -157f)) + vec3<f32>(2378f, -126f, -1279f)))));
    var var_2 = 26275u | ~_wgslsmith_mod_u32(~59953u >> (u_input.e % 32u), _wgslsmith_sub_u32(1u, 0u));
    var var_3 = var_1;
    let var_4 = select(select(!select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, global0.x, true, true), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), true), !global0.x), select(!select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, true)), !select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), global0.x), true), select(vec4<bool>(any(vec3<bool>(false, false, true)), !global0.x, var_1.a.x == 1i, any(vec3<bool>(global0.x, global0.x, false))), select(vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true))), !(!vec4<bool>(global0.x, false, false, false)))), select(select(!select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, true, global0.x)), !vec4<bool>(false, global0.x, global0.x, global0.x), true), vec4<bool>(global0.x, true, false, !global0.x), true), !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, true, global0.x, false)))));
    return Struct_1(_wgslsmith_div_vec3_i32(var_3.a, vec3<i32>(i32(-1i) * -var_3.a.x, -15141i, var_1.a.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_1.b, var_1.b), vec4<u32>(abs(global2[_wgslsmith_index_u32(4294967295u, 12u)]), ~var_1.c, firstLeadingBit(var_1.b.x), ~var_3.b.x), min(var_1.b, var_3.b)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.d, _wgslsmith_f_op_f32(var_1.d * -273f), false)) - var_1.e.x)), var_1.e);
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = u_input.c;
    let var_1 = arg_0.x;
    let var_2 = func_2(vec4<i32>(firstLeadingBit(~var_0.x), ~u_input.c.x, var_0.x, var_0.x));
    global1 = 0i;
    var var_3 = func_2(u_input.c).e;
    return 1759f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0i;
    var var_0 = u_input.c | vec4<i32>(0i, min(~19821i, u_input.d.x), -u_input.d.x, ~_wgslsmith_clamp_i32(u_input.a.x, abs(22705i), firstTrailingBit(u_input.d.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(24291u);
}

