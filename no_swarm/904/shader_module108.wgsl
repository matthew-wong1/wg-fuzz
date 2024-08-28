struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-271f, 547f, 940f), false, vec2<u32>(1u, 23012u), 2147483647i, -190f);

var<private> global1: f32 = 139f;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(248f, 300f, -457f), true, vec2<u32>(0u, 49270u), 0i, -357f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = -23422i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1580f, global0.a.x), _wgslsmith_f_op_f32(min(global0.a.x, global0.e)), _wgslsmith_f_op_f32(-global0.e))))), true, abs(_wgslsmith_clamp_vec2_u32(global2.c, abs(~global2.c), ~vec2<u32>(20526u, 0u) & global0.c)), u_input.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.e, global2.e))))));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a + global0.a), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), -1505f), global2.b)), any(vec3<bool>(!global2.b && true, any(!vec2<bool>(false, var_1.b)), select(true, true, arg_0))), var_1.c, 1i, global2.e);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(707f)))) * _wgslsmith_f_op_f32(step(-446f, _wgslsmith_f_op_f32(-1436f + -2782f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(select(global2.a.x, global2.e, arg_0))))), -873f), true, global0.c, -_wgslsmith_dot_vec2_i32(min(-u_input.b.zx, vec2<i32>(0i, 14425i)), -vec2<i32>(global2.d, var_0)), global2.a.x);
    var var_3 = Struct_1(44680u, vec2<f32>(-508f, 976f), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, ~(~50475i), _wgslsmith_add_i32(global2.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, global2.d, var_0), vec3<i32>(global2.d, 2093i, global0.d)))), u_input.b), global2.c.x, any(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(global2.b, true, global0.b, arg_0), vec4<bool>(global0.b, global0.b, var_2.b, true)), !vec4<bool>(true, false, true, global2.b), select(vec4<bool>(var_1.b, arg_0, var_2.b, global2.b), select(vec4<bool>(true, var_2.b, true, arg_0), vec4<bool>(true, arg_0, false, global0.b), vec4<bool>(false, global2.b, var_2.b, false)), !vec4<bool>(var_2.b, global0.b, var_1.b, true)))));
    return ~select(countOneBits(i32(-1i) * -2147483647i), 61415i, any(vec4<bool>(arg_0, var_1.b, true, var_1.b)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<u32> {
    var var_0 = -_wgslsmith_add_vec2_i32(u_input.b.yy, vec2<i32>(arg_1, ~arg_1));
    var var_1 = _wgslsmith_clamp_i32(min(max(-2147483647i, func_3(global0.b != global0.b)), global0.d), 2147483647i, arg_1);
    let var_2 = true || (~u_input.b.x < ~(-arg_1));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2272f, 1000f, _wgslsmith_f_op_f32(floor(-247f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.a))) + vec3<f32>(_wgslsmith_f_op_f32(1488f + global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(-global2.a.x)))), any(select(vec2<bool>(true, true), select(!vec2<bool>(global2.b, true), select(vec2<bool>(true, false), vec2<bool>(true, global0.b), vec2<bool>(global0.b, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(global0.b, true), vec2<bool>(global2.b, var_2), var_2), vec2<bool>(true, true)))), _wgslsmith_clamp_vec2_u32(~(~global2.c), vec2<u32>(_wgslsmith_sub_u32(arg_2 | 4294967295u, 36869u), ~global0.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~10u), global2.c)), _wgslsmith_div_i32(-(arg_1 >> (abs(global0.c.x) % 32u)), -1i), _wgslsmith_f_op_f32(min(global2.e, -1256f)));
    let var_3 = _wgslsmith_div_vec3_f32(global2.a, global2.a);
    return vec2<u32>(abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 4294967295u, 30212u), vec3<u32>(global2.c.x, arg_2, global2.c.x))), min(~arg_2, abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 0u, global2.c.x, global2.c.x), vec4<u32>(arg_2, 1u, global0.c.x, 2608u), vec4<bool>(var_2, true, global0.b, global0.b)), vec4<u32>(arg_2, 4294967295u, global0.c.x, global0.c.x)))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(1440f * 102f), 593f)))), arg_1.x, ~(~reverseBits(_wgslsmith_clamp_vec2_u32(global2.c, global2.c, vec2<u32>(global2.c.x, global0.c.x)))), _wgslsmith_clamp_i32(~u_input.a, 8423i, -min(global2.d ^ 39121i, ~2740i)), _wgslsmith_f_op_f32(sign(-1000f)));
    let var_0 = Struct_2(global0.a, !all(select(!vec2<bool>(arg_1.x, false), arg_1, vec2<bool>(arg_1.x, global2.b))), func_2(global2.d, 1141i, ~(_wgslsmith_div_u32(global0.c.x, global2.c.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(94187u, global0.c.x), global0.c) % 32u))), -15448i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.a.x, global2.e)))) + _wgslsmith_f_op_f32(-470f + _wgslsmith_f_op_f32(sign(arg_0)))))));
    let var_1 = Struct_1(global2.c.x, vec2<f32>(1f, 1f), vec3<i32>(var_0.d, -(~14313i), reverseBits(_wgslsmith_add_i32(global0.d, 1i) ^ ~(-1i))), firstTrailingBit(var_0.c.x), arg_1.x);
    var var_2 = global2.c.x;
    var_2 = 22587u;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global2.a.x, global0.e) + global2.a))))), global2.e > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.x)))), vec2<u32>(_wgslsmith_clamp_u32(1u << (global0.c.x % 32u), ~63033u, 4294967295u), 0u) ^ select(_wgslsmith_mod_vec2_u32(vec2<u32>(28092u, 4294967295u), global2.c), min(global0.c, global0.c) | (global0.c << (global2.c % vec2<u32>(32u))), !select(vec2<bool>(global0.b, global2.b), vec2<bool>(true, false), vec2<bool>(global2.b, global2.b))), global0.d, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(round(1891f)), !vec2<bool>(true, select(true, global2.b, true)))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, global0.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global0.a, global2.a, vec3<bool>(global2.b, global0.b, var_0.b))), _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.e, -1307f, -338f)), true)), global0.a), vec3<bool>(global0.b, any(!vec3<bool>(true, global2.b, true)), var_0.b))), global0.b, ~global2.c, ~global0.d, 497f);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(floor(1507f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-621f, var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(var_0.e * -1019f))))), any(vec3<bool>(any(vec2<bool>(true, true)), any(!vec2<bool>(global2.b, true)), (var_0.b == false) & !var_0.b)), _wgslsmith_div_vec2_u32(~vec2<u32>(~global2.c.x, _wgslsmith_mod_u32(global2.c.x, global2.c.x)), vec2<u32>(~_wgslsmith_div_u32(64701u, global0.c.x), global2.c.x)), min(global2.d, 0i), -679f);
    var var_1 = ~firstLeadingBit(~vec3<u32>(72756u >> (global0.c.x % 32u), var_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(40294u, global2.c.x, global0.c.x, 54385u), vec4<u32>(4294967295u, global2.c.x, global0.c.x, global2.c.x))));
    var var_2 = _wgslsmith_mult_u32(0u, global2.c.x);
    var var_3 = Struct_1(global0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-596f * -451f), 616f)))), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mult_vec3_i32(min(u_input.b, vec3<i32>(var_0.d, 0i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global0.d, u_input.a), vec3<i32>(2147483647i, 2147483647i, var_0.d))), u_input.b, true), vec3<i32>(global2.d, global2.d, -2147483647i), abs(~firstLeadingBit(u_input.b))), ~(~global2.c.x), _wgslsmith_f_op_f32(round(488f)) >= _wgslsmith_f_op_f32(ceil(var_0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, var_0.c.x, 1u, ~(var_1.x >> (var_3.d % 32u))));
}

