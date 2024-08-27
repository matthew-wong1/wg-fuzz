struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2746i;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 0u, 18351u, 0u, -863f);

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec4<bool> {
    var var_0 = global1.a.x;
    global0 = _wgslsmith_div_i32(global2.x, ~_wgslsmith_mult_i32(u_input.a.x, arg_1 >> (~u_input.c.x % 32u)));
    return !(!select(vec4<bool>(all(vec4<bool>(global1.a.x, global1.a.x, false, false)), false, true, !global1.a.x), select(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(false, false, global1.a.x, global1.a.x)), !vec4<bool>(false, true, global1.a.x, global1.a.x)));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global1 = Struct_1(!(!func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-2260f, 2198f, -1691f, global1.e), vec4<f32>(global1.e, global1.e, 803f, 126f)), select(global2.x, u_input.a.x, true))), ~u_input.b.x, ~(~0u), max(1u, u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, _wgslsmith_f_op_f32(exp2(global1.e)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(261f, 554f, global1.a.x)), _wgslsmith_f_op_f32(trunc(global1.e)), true)))));
    let var_0 = Struct_1(!select(global1.a, !(!global1.a), true != !global1.a.x), u_input.b.x, global1.d, 17976u, _wgslsmith_f_op_f32(-global1.e));
    global0 = ~(~_wgslsmith_mod_i32(-10637i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_0, u_input.a), 1i)));
    global0 = -global2.x;
    let var_1 = true;
    return false;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = vec3<u32>(~arg_0, 1u, 0u);
    var var_2 = global1.a;
    let var_3 = select(select(select(select(var_0.a.zyw, !vec3<bool>(arg_2.a.x, false, false), global1.a.zzz), select(vec3<bool>(arg_2.a.x, true, true), select(var_0.a.zzz, arg_2.a.zxz, arg_2.a.x), select(arg_2.a.xwz, var_2.wxz, vec3<bool>(var_2.x, var_0.a.x, global1.a.x))), true), var_0.a.zzz, func_2(u_input.a ^ abs(vec3<i32>(global2.x, arg_1, -2147483647i)))), select(select(vec3<bool>(!var_2.x, true, !arg_2.a.x), !(!vec3<bool>(false, arg_2.a.x, true)), !var_0.a.x && false), select(!var_2.ywz, vec3<bool>(any(vec3<bool>(arg_2.a.x, true, true)), global1.a.x, global1.a.x), select(var_0.a.yzz, arg_2.a.yzx, func_3(vec4<f32>(1699f, arg_2.e, arg_2.e, global1.e), 2147483647i).zxz)), true), !select(!global1.a.x, !var_0.a.x, all(!var_2.xwx)));
    let var_4 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.zy) >> (~(~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), ~u_input.b.zy), _wgslsmith_mult_u32(57911u, arg_0), 119075u);
    return Struct_1(var_0.a, 0u, ~(~var_1.x), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(821f, 301f, false)))))) + global1.e));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    global1 = func_4(u_input.b.x, -29843i, Struct_1(vec4<bool>(global1.a.x, global1.a.x, func_2(arg_2), all(select(vec2<bool>(true, global1.a.x), global1.a.wz, true))), _wgslsmith_dot_vec3_u32(select(firstLeadingBit(u_input.b), vec3<u32>(0u, 4294967295u, global1.b), global1.a.x), ~(~vec3<u32>(4294967295u, 0u, 4128u))), 42604u, 76610u, global1.e));
    let var_0 = !(global1.a.x && any(!select(global1.a, global1.a, global1.a)));
    var var_1 = 1u;
    var var_2 = ~global1.b;
    let var_3 = false;
    return Struct_1(!global1.a, u_input.c.x, 0u, _wgslsmith_dot_vec2_u32(~firstLeadingBit(abs(u_input.b.xz)), u_input.b.zz), global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(644f, global1.e, !global1.a.x)));
    var_0 = global1.e;
    var var_1 = func_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, abs(1i), countOneBits(-58024i)), u_input.a), -countOneBits(-global2.x)), _wgslsmith_mod_u32(~firstLeadingBit(u_input.d), global1.c), ~u_input.a & u_input.a);
    var_0 = 259f;
    global1 = func_4(_wgslsmith_mult_u32(global1.d, var_1.b), global2.x, func_1(-vec2<i32>(-30694i, min(global2.x, u_input.a.x)), firstLeadingBit(1u), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -2147483647i, u_input.a.x), -vec3<i32>(67998i, u_input.a.x, 7419i)), max(countOneBits(vec3<i32>(global2.x, global2.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(global2.x, global2.x, u_input.a.x))))));
    global0 = -firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a.x, 33730i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-1i, global2.x, 9487i)) << (((32459u << (u_input.c.x % 32u)) ^ global1.d) % 32u));
    var_1 = func_4(var_1.b, ~u_input.a.x, func_1(-u_input.a.yx, max(abs(1u), u_input.d), abs(_wgslsmith_sub_vec3_i32(abs(u_input.a), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, var_1.a.x)))));
    var var_2 = Struct_1(func_1(vec2<i32>(23864i, -_wgslsmith_mult_i32(1i, global2.x)), ~min(3708u >> (0u % 32u), 4294967295u), ~u_input.a).a, ~(~4294967295u), u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(129f * -1783f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2.x, u_input.a.x, global2.x, global2.x), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1695f))), firstLeadingBit(_wgslsmith_mult_vec3_u32(~u_input.b, ~firstLeadingBit(vec3<u32>(var_2.b, 4294967295u, var_2.d)))));
}

