struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 617f, 0u, 3031i);

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_1(false, global1.b, global1.c, 0i);
    global0 = var_0;
    global1 = var_0;
    var var_1 = Struct_1(false, 995f, ~(var_0.c << (52908u % 32u)), -1i);
    return ~global1.c;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(any(!vec4<bool>(!global1.a, global1.a, true, global0.a)), 247f, ~func_3(vec4<bool>(arg_0, arg_0, true, false)), -16674i);
    global1 = Struct_1(6791i <= ~(-_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)), -1202f, _wgslsmith_mod_u32(select(0u, ~global1.c, true) & global0.c, 0u), _wgslsmith_dot_vec2_i32(arg_1, min(u_input.d.xz >> (u_input.c.xx % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(u_input.d.x, 0i)))));
    let var_0 = Struct_1(all(!vec2<bool>(u_input.d.x == arg_1.x, !global1.a)), 1942f, u_input.c.x, _wgslsmith_dot_vec2_i32(arg_1, abs(vec2<i32>(_wgslsmith_add_i32(global1.d, global1.d), -86967i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b, global1.b), vec2<f32>(-728f, -1049f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 204f)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, var_0.b) - vec2<f32>(-1000f, global0.b)) * _wgslsmith_div_vec2_f32(vec2<f32>(-614f, 103f), vec2<f32>(global0.b, global0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-417f, -1025f) * vec2<f32>(var_0.b, var_0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, var_0.b))) + vec2<f32>(_wgslsmith_f_op_f32(step(var_0.b, -1262f)), global1.b)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-394f)), 515f), -1246f))));
    global1 = var_0;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -1i;
    global1 = arg_0;
    let var_1 = _wgslsmith_sub_vec3_u32(u_input.c, u_input.b.xww);
    global1 = func_2(true, u_input.d.zy);
    let var_2 = Struct_1(!(!(!all(vec4<bool>(true, false, false, global1.a)))), _wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_mod_u32(0u, ~(~4294967295u)) & (~26431u >> (~global1.c % 32u)), ~18181i);
    return func_2(false, vec2<i32>(19398i, 8182i) & vec2<i32>(~(~global0.d), -2147483647i));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global1 = func_2(all(!vec3<bool>(arg_0.a, arg_0.a, global0.a)), u_input.d.xy);
    let var_0 = select(select(select(!select(vec3<bool>(global1.a, global1.a, arg_0.a), vec3<bool>(true, global0.a, true), global0.a), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.a, false, true), any(vec4<bool>(arg_0.a, false, false, false))), select(!vec3<bool>(true, true, global0.a), !vec3<bool>(false, global0.a, global1.a), !vec3<bool>(arg_0.a, false, arg_0.a))), !(!(!vec3<bool>(false, arg_0.a, global0.a))), all(vec2<bool>(global1.a, true))), !select(select(!vec3<bool>(false, false, global0.a), !vec3<bool>(global1.a, arg_0.a, true), all(vec2<bool>(global0.a, false))), !select(vec3<bool>(arg_0.a, arg_0.a, global0.a), vec3<bool>(true, false, true), vec3<bool>(global0.a, true, arg_0.a)), select(!vec3<bool>(true, true, arg_0.a), !vec3<bool>(arg_0.a, true, true), !vec3<bool>(global0.a, true, global0.a))), vec3<bool>(global1.a, true || all(vec3<bool>(global1.a, false, true)), arg_0.a));
    let var_1 = vec2<i32>(min(min(-abs(global0.d), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, global0.d, arg_0.d, 2147483647i), vec4<i32>(27324i, u_input.d.x, global0.d, -14422i))), select(~(-78541i), global0.d, all(var_0))), arg_0.d);
    let var_2 = func_2(false, var_1);
    return func_1(func_1(arg_0, var_2), Struct_1(false, _wgslsmith_f_op_f32(exp2(var_2.b)), var_2.c, -firstLeadingBit(global0.d)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_mod_u32(~(func_1(arg_0, arg_0).c ^ abs(0u)), _wgslsmith_mult_u32(70384u, select(arg_0.c, ~global1.c, arg_0.a)));
    let var_2 = !(!any(vec3<bool>(global0.a || false, !var_0, any(vec2<bool>(true, arg_0.a)))));
    let var_3 = abs(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(global1.d, -36652i, 1i, 7480i), vec4<i32>(52433i, global0.d, u_input.d.x, u_input.d.x)) ^ abs(firstTrailingBit(vec4<i32>(64578i, u_input.d.x, u_input.d.x, global0.d))), vec4<i32>(max(arg_0.d, abs(global1.d)), _wgslsmith_mult_i32(-1i << (global1.c % 32u), func_1(Struct_1(true, arg_0.b, arg_0.c, -53798i), arg_0).d), arg_0.d, -func_4(Struct_1(global0.a, global1.b, 0u, -36918i)).d)));
    global1 = Struct_1(28584u != (global1.c ^ ~(1u | arg_0.c)), _wgslsmith_f_op_f32(-func_4(Struct_1(!global1.a, func_2(true, var_3.yy).b, ~arg_1, 1i)).b), max(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c, firstLeadingBit(u_input.c)), 26342u)), func_4(Struct_1(!global0.a, _wgslsmith_f_op_f32(-171f + arg_0.b), global1.c, _wgslsmith_div_i32(7791i, -7389i))).d ^ -(_wgslsmith_clamp_i32(1i, global0.d, global0.d) | _wgslsmith_mod_i32(64434i, u_input.d.x)));
    return func_2(true, u_input.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, 1u), u_input.c.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.wyy, vec3<u32>(1u, 79214u, 0u)), ~(~u_input.c)) % 32u), ~14414u);
    var var_1 = func_5(func_4(func_1(Struct_1(true, 2285f, 103561u, -global0.d), Struct_1(all(vec3<bool>(true, global1.a, false)), 183f, ~global0.c, global1.d & u_input.d.x))), max(global1.c, 0u), !select(vec3<bool>(true, true, !global1.a), vec3<bool>(!global0.a, true, global0.a), select(vec3<bool>(true, true, true), !vec3<bool>(global1.a, true, true), global1.a)));
    var var_2 = vec3<bool>(true, true, global1.a);
    let var_3 = Struct_1(true, var_1.b, ~(~(~func_3(vec4<bool>(global1.a, var_1.a, global1.a, true)))), 10752i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(603f, 630f)));
    let var_5 = _wgslsmith_div_f32(-582f, -1584f);
    var_4 = _wgslsmith_f_op_f32(-var_5);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, 126f, -1056f, global0.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, var_3.b, var_3.b, -1825f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, var_1.b, global0.b, -679f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), func_2(false, u_input.d.zz).b, func_5(var_3, 0u, vec3<bool>(true, false, global0.a)).b, _wgslsmith_f_op_f32(1000f * -361f)))), vec4<i32>(-func_1(Struct_1(var_2.x, global0.b, global0.c, var_3.d), func_2(false, u_input.d.yx)).d, -8718i, -22935i << (u_input.b.x % 32u), ~(-1i)), ~u_input.b);
}

