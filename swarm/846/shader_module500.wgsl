struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(354f, -1557f, 1166f);

var<private> global1: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = Struct_4(global1.a, 30207u);
    let var_0 = select(select(vec3<bool>(arg_0.x, all(vec4<bool>(false, arg_0.x, false, false)), any(!vec4<bool>(false, false, true, arg_0.x))), vec3<bool>(all(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x, all(!arg_0)), all(vec3<bool>(any(vec3<bool>(true, true, false)), 0i == u_input.c.x, false))), !(!(!select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, false), false))), select(vec3<bool>(arg_0.x, any(arg_0), arg_0.x), !vec3<bool>(true, !arg_0.x, all(vec3<bool>(true, false, true))), true));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global1.a.x), -1990f, global0.x) - vec3<f32>(_wgslsmith_f_op_f32(420f + 272f), -174f, _wgslsmith_f_op_f32(f32(-1f) * -239f)));
    return _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, u_input.c.x, 4413i), reverseBits(vec3<i32>(u_input.c.x, -54356i, u_input.c.x)))), vec3<i32>(~(-1i >> (u_input.a.x % 32u)), -(~1090i), -(i32(-1i) * -1i))) ^ vec3<i32>(u_input.b, u_input.b, u_input.c.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    global0 = global1.a.yxz;
    let var_0 = abs(~(countOneBits(u_input.a.zz) & arg_0.xz));
    global0 = _wgslsmith_f_op_vec3_f32(-global1.a.xxy);
    let var_1 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-u_input.b, 0i, arg_3) ^ func_3(select(arg_2.zy, vec2<bool>(true, arg_2.x), arg_2.x))), vec3<i32>(-1i, 0i, arg_3));
    let var_2 = vec2<i32>(i32(-1i) * -38636i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b, 3403i >> (arg_0.x % 32u)), -1i, u_input.b, (-60630i >> (1u % 32u)) ^ ~u_input.b), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(23940i, arg_3, -2147483647i, var_1.x)) & ~vec4<i32>(var_1.x, arg_3, var_1.x, u_input.c.x), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, 1i, -12105i), vec4<i32>(u_input.c.x, -13976i, var_1.x, 2147483647i), vec4<i32>(55821i, arg_3, u_input.b, var_1.x)), -vec4<i32>(var_1.x, 16741i, 21339i, 2147483647i)))));
    return select(select(!(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))), !select(vec4<bool>(true, arg_2.x, true, arg_2.x), !vec4<bool>(false, arg_2.x, false, false), vec4<bool>(arg_2.x, false, true, true)), select(!select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, false, arg_2.x)), vec4<bool>(true, true, select(arg_2.x, arg_2.x, arg_2.x), !arg_2.x), vec4<bool>(select(true, arg_2.x, true), arg_2.x, true, arg_2.x))), !select(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), arg_2.x, select(true, true, arg_2.x), true), arg_2.x), !(!all(vec2<bool>(arg_2.x, arg_2.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> bool {
    let var_0 = arg_0;
    global1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(select(1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_clamp_u32(~6271u, ~abs(1u), 0u) ^ abs(u_input.a.x));
    var var_1 = var_0;
    var_1 = select(vec4<bool>(func_2(u_input.a, global1.a.x, vec3<bool>(var_0.x, arg_0.x | var_0.x, all(vec2<bool>(false, var_1.x))), max(u_input.b, u_input.c.x) ^ ~(-28626i)).x, var_1.x && true, true, !var_1.x), !select(!vec4<bool>(false, arg_0.x, arg_1, arg_1), select(!var_0, arg_0, var_0.x), func_2(vec3<u32>(global1.b, 4294967295u, 45210u), _wgslsmith_f_op_f32(round(global0.x)), vec3<bool>(var_1.x, true, arg_1), 4411i).x), arg_1);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-global1.a), ~select(53529u | _wgslsmith_mod_u32(4294967295u, u_input.a.x), 0u, false));
    return true;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.a.a), abs(_wgslsmith_add_vec4_u32(~(arg_3.a.b | arg_3.a.b), vec4<u32>(global1.b, _wgslsmith_mod_u32(arg_3.a.b.x, 4294967295u), _wgslsmith_mod_u32(53096u, u_input.a.x), ~u_input.a.x))));
    var_0 = arg_3.a;
    var var_1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_3.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(ceil(-1331f))))) - var_0.a.x));
    var_2 = global0.zx;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.a.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(1420f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_4) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(func_5(!(!func_4(func_2(vec3<u32>(global1.b, 34244u, global1.b), global1.a.x, vec3<bool>(true, true, false), 31767i), true)), -26154i, !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), -513f, global1.a.x, _wgslsmith_f_op_f32(max(arg_3.a.x, global0.x))), min(abs(vec4<u32>(78646u, 4294967295u, 1u, arg_0.b.x)), arg_0.b ^ vec4<u32>(global1.b, 84455u, arg_2.x, 0u))))));
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(-arg_0.a), 22410u);
    var var_0 = 0u;
    var_0 = 0u;
    var var_1 = firstLeadingBit(~(~min(_wgslsmith_div_u32(arg_2.x, 4294967295u), 41827u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-755f - 785f)));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = select(select(_wgslsmith_mod_vec2_i32(select(u_input.c, u_input.c & u_input.c, true), select(vec2<i32>(u_input.b, 1i), select(u_input.c, vec2<i32>(-26300i, u_input.c.x), vec2<bool>(true, true)), true)), vec2<i32>(u_input.b, u_input.c.x), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x > global0.x), vec2<bool>(func_4(vec4<bool>(true, true, false, true), false), any(vec4<bool>(false, false, true, false))))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(-u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c.x), -vec2<i32>(u_input.b, -36477i))), _wgslsmith_mod_vec2_i32(~vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.c.x, -29876i))), func_2(vec3<u32>(4294967295u, abs(4294967295u), 26449u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -322f)), select(vec3<bool>(true, func_4(vec4<bool>(false, false, true, false), false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), func_2(u_input.a, arg_2.x, vec3<bool>(true, true, true), -32375i).yxx, vec3<bool>(true, true, true))), u_input.c.x).xz);
    global0 = _wgslsmith_f_op_vec3_f32(-global1.a.wyx);
    let var_1 = all(select(vec2<bool>(select(true, true, true), true), vec2<bool>(arg_1 != -903f, !any(vec2<bool>(true, true))), !all(vec4<bool>(true, true, true, true))));
    var var_2 = !(!func_2(u_input.a, arg_1, vec3<bool>(select(true, true, var_1), false, var_1 != var_1), u_input.c.x | (-2147483647i | u_input.b)));
    var var_3 = Struct_1(global1.a, _wgslsmith_mod_vec4_u32(select((vec4<u32>(global1.b, global1.b, 20520u, 4730u) << (vec4<u32>(u_input.a.x, 10909u, u_input.a.x, 5280u) % vec4<u32>(32u))) | ~vec4<u32>(9723u, u_input.a.x, 41024u, u_input.a.x), vec4<u32>(4294967295u, ~global1.b, ~u_input.a.x, 47828u), func_2(reverseBits(vec3<u32>(global1.b, 35579u, u_input.a.x)), global0.x, select(vec3<bool>(var_2.x, false, false), var_2.xwy, vec3<bool>(var_1, var_1, var_2.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_0.x, 2147483647i), vec3<i32>(-2147483647i, u_input.c.x, u_input.b)))), vec4<u32>(~1u, 1u, 59225u >> (global1.b % 32u), global1.b)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1379f, 1221f, _wgslsmith_div_f32(232f, arg_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, -602f, global0.x))))), func_2(~vec3<u32>(~1u, global1.b, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), select(var_2.zzx, vec3<bool>(true, var_1, false), !all(var_2.xx)), _wgslsmith_dot_vec2_i32(u_input.c, func_3(vec2<bool>(true, true)).yz)).zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(-global1.a.x), -1275f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-141f, global1.a.x, global0.x, -1000f), vec4<u32>(1u, u_input.a.x, 0u, 19393u)), u_input.c, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global1.b), Struct_4(vec4<f32>(-377f, -1000f, global1.a.x, global1.a.x), 1u))), global1.a.x)) + global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, -558f)))))))));
    let var_2 = (firstLeadingBit(abs(max(vec3<i32>(27568i, u_input.b, -51425i), vec3<i32>(30800i, u_input.c.x, u_input.b)))) & min(abs(vec3<i32>(-56375i, u_input.b, -16339i)), -abs(vec3<i32>(-1i, u_input.b, u_input.b)))) << (~u_input.a % vec3<u32>(32u));
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_1, vec4<u32>(u_input.a.x, 77182u, 1356u, 48818u)), var_2.zx, vec4<u32>(global1.b, u_input.a.x, global1.b, 3451u), Struct_4(var_1, u_input.a.x))))), func_6(_wgslsmith_f_op_vec3_f32(func_5(any(vec3<bool>(var_0.b.x, false, true)), u_input.b, vec2<bool>(false, var_0.b.x), Struct_3(Struct_1(var_1, vec4<u32>(u_input.a.x, 33700u, u_input.a.x, global1.b))))).x, _wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(912f, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, -1060f)))).a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.a.x, 0u ^ u_input.a.x, _wgslsmith_clamp_u32(24153u, u_input.a.x, global1.b)) << (vec4<u32>(~global1.b, global1.b, 2441u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, min(global1.b, 30263u), 4294967295u, ~u_input.a.x), select(select(vec4<u32>(10104u, global1.b, 0u, global1.b), vec4<u32>(u_input.a.x, 73799u, 4294967295u, 34980u), var_0.b.x), countOneBits(vec4<u32>(37830u, 15426u, global1.b, 4294967295u)), true))));
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xy << ((vec2<u32>(~global1.b, 31979u) | countOneBits(_wgslsmith_add_vec2_u32(u_input.a.yx, u_input.a.xx))) % vec2<u32>(32u)), ~min(reverseBits(global1.b), firstLeadingBit(var_3.b)), _wgslsmith_div_vec3_u32(~(abs(u_input.a) >> (~vec3<u32>(0u, 41465u, 4294967295u) % vec3<u32>(32u))), ~(~(u_input.a | vec3<u32>(global1.b, u_input.a.x, global1.b)))));
}

