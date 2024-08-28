struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(1771f, -729f, -965f));

var<private> global1: f32 = 539f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global1 = -467f;
    global1 = _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(sign(-1000f)));
    let var_0 = -948f;
    var var_1 = Struct_4(vec3<f32>(global0.a.x, -721f, 1022f), 462f, firstLeadingBit(select(vec3<i32>(_wgslsmith_div_i32(u_input.a, 0i), 0i, ~(-21858i)), vec3<i32>(u_input.b, u_input.b, u_input.a) & vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<bool>(any(vec3<bool>(false, false, true)), 1i <= u_input.b, u_input.e.x != 16007u))));
    let var_2 = vec3<u32>(~firstTrailingBit(~24337u), u_input.e.x, ~u_input.d);
    return select(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(false, false, any(vec3<bool>(true, true, true)), true), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -244f);
    var var_1 = Struct_5(-_wgslsmith_mod_i32(arg_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), arg_3.yx & vec2<i32>(9211i, arg_3.x))), Struct_1(!select(func_3(), vec4<bool>(true, false, arg_2, false), any(vec2<bool>(arg_2, false)))), 45759u);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(global0.a * global0.a));
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(456f + -1268f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), global0.a.x) * vec3<f32>(var_0, _wgslsmith_f_op_f32(select(-1000f, var_0, arg_0.x)), 1268f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5) -> Struct_5 {
    let var_0 = 23238u;
    global1 = -1347f;
    global0 = func_2(arg_1.b.a.zy, ~vec3<u32>(arg_1.c, ~var_0, 5763u), !any(arg_1.b.a), _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(12258i, 9142i), arg_1.a, _wgslsmith_div_i32(1i, arg_1.a), -2287i), -vec4<i32>(u_input.b, -1i, ~arg_1.a, 0i)));
    var var_1 = func_3().x;
    var var_2 = abs(vec2<i32>(~arg_1.a, u_input.b));
    return Struct_5(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), abs(vec2<i32>(arg_1.a, u_input.a))), -(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-23349i, u_input.a)))), arg_1.b, select(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, select(_wgslsmith_clamp_u32(96657u, 86288u, arg_1.c), max(u_input.c.x, var_0), arg_1.b.a.x)), false));
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))) * global0.a.x)));
    global1 = var_0;
    var var_1 = reverseBits(u_input.c.wzw) >> (~abs(~vec3<u32>(u_input.c.x, u_input.d, 1u)) % vec3<u32>(32u));
    var_1 = vec3<u32>(1u, 4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(1u, var_1.x, func_1(arg_0.b.a.xy, func_1(vec2<bool>(true, false), Struct_5(u_input.b, Struct_1(arg_0.b.a), u_input.e.x))).c)));
    let var_2 = vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-1i, 11966i, -30052i)), ~vec3<i32>(arg_0.a, arg_0.a, max(1i, 0i))), ~(~_wgslsmith_mod_i32(-27478i, -62788i)));
    return arg_0.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1416f, 1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1146f, -516f, 566f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))) * -839f))), firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, -1i), vec3<i32>(-1i, arg_0.x, arg_0.x)), ~firstTrailingBit(arg_0))));
    let var_1 = Struct_5(44669i, func_1(!(!func_3().zy), Struct_5(~_wgslsmith_sub_i32(arg_0.x, arg_0.x), func_1(vec2<bool>(false, false), Struct_5(u_input.b, Struct_1(vec4<bool>(false, true, true, true)), 11518u)).b, ~u_input.c.x)).b, arg_2);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -688f), 1151f))), var_1.b.a.xxz)));
    let var_2 = Struct_3(var_1.b.a.yzz, Struct_2(_wgslsmith_f_op_vec3_f32(sign(global0.a))), vec2<bool>(any(var_1.b.a.yx), var_1.b.a.x), 647u);
    var var_3 = Struct_5(var_1.a, func_1(func_3().yx, Struct_5(u_input.b, Struct_1(var_1.b.a), 1u)).b, 4294967295u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(global0.a * global0.a)))));
    global1 = -1228f;
    let var_0 = Struct_3(vec3<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true & (~4294967295u > u_input.c.x)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, global0.a.x, global0.a.x)) - vec3<f32>(global0.a.x, 1f, _wgslsmith_f_op_f32(-754f * global0.a.x)))), !(!vec2<bool>(all(vec2<bool>(true, false)), u_input.a >= u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.zzz), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), u_input.c.zwz)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 22593u, u_input.d), u_input.e.wyz) << (u_input.d % 32u)), abs(~vec2<u32>(72963u, u_input.c.x) ^ ~vec2<u32>(0u, 4294967295u))));
    global0 = func_5(select(vec3<i32>(_wgslsmith_clamp_i32(4088i, u_input.b, u_input.b), func_4(func_1(vec2<bool>(false, true), Struct_5(u_input.b, Struct_1(vec4<bool>(var_0.a.x, var_0.c.x, var_0.c.x, false)), u_input.c.x))), -u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(u_input.b), _wgslsmith_mod_i32(u_input.b, 38394i), u_input.a), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, 25404i)), vec3<i32>(u_input.b, 26141i, u_input.b), vec3<i32>(2147483647i, u_input.a, 19360i) | vec3<i32>(u_input.b, 1i, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.b), vec3<i32>(-2147483647i, -30976i, -1i))), var_0.a), ~(~52632u), var_0.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.zx), global0.a.zy, var_0.a.xz));
    global1 = 1f;
    let var_2 = max(~u_input.c.x, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(0u, var_2), vec2<i32>(-33410i, 0i & ~u_input.b));
}

