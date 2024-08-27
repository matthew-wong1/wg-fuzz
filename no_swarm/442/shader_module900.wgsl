struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(6337u, 36108u, vec4<u32>(44077u, 8844u, 4294967295u, 44758u), 20041i);

var<private> global1: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))))));
    global1 = _wgslsmith_f_op_f32(-913f + _wgslsmith_div_f32(482f, _wgslsmith_f_op_f32(ceil(-814f))));
    let var_0 = arg_1.wwx;
    global1 = -375f;
    var var_1 = arg_2.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(970f + 382f), -650f, _wgslsmith_f_op_f32(387f * -370f), _wgslsmith_f_op_f32(round(1016f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1045f, -993f, -1593f, -425f)))))));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-2147483647i, global0.d, global0.d), vec4<bool>(true, true, false, true), Struct_4(Struct_2(Struct_1(global0.b, 4294967295u, global0.c, global0.d), 4294967295u), vec2<bool>(true, true)), Struct_1(global0.c.x, u_input.a, global0.c, global0.d))))), arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 583f))), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(global0.d, global0.d, -18923i), vec4<bool>(true, false, false, true), Struct_4(Struct_2(Struct_1(global0.c.x, 61215u, vec4<u32>(u_input.a, global0.a, 124683u, global0.a), global0.d), 1u), vec2<bool>(true, false)), Struct_1(u_input.a, global0.c.x, global0.c, 1i))).x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + arg_0)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_1 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), abs(19596u) > ~global0.b), vec3<bool>(true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))), vec3<bool>(_wgslsmith_f_op_f32(-var_0.x) != var_0.x, false, any(vec4<bool>(false, false, false, false)) | true)), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), false, true), vec3<bool>(true, true, -554f < var_0.x)), true);
    var var_2 = any(vec4<bool>(!var_1.x, true, var_1.x, !any(vec2<bool>(false, var_1.x)) & (~(-2147483647i) == _wgslsmith_add_i32(68148i, global0.d))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * 139f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-845f, 1785f))) + _wgslsmith_f_op_f32(f32(-1f) * -194f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(353f - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(1334f)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-786f - _wgslsmith_f_op_f32(func_2(vec4<f32>(-928f, 155f, -223f, 953f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(ceil(-324f)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(-abs(vec3<i32>(global0.d, 2147483647i, arg_1.x)), vec4<bool>(false, true, true & arg_0.x, arg_0.x), Struct_4(Struct_2(Struct_1(68235u, global0.a, global0.c, global0.d), 9889u), vec2<bool>(arg_0.x, true)), Struct_1(1u, arg_2 >> (global0.c.x % 32u), ~global0.c, _wgslsmith_mod_i32(global0.d, global0.d)))).x - -1969f));
    global1 = var_0;
    var var_1 = global0.c.x;
    var var_2 = _wgslsmith_mod_u32(71393u, 25778u);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f - _wgslsmith_f_op_f32(round(-963f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f * -1886f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1824f + -768f) * _wgslsmith_f_op_f32(sign(-934f)))));
    let var_0 = Struct_4(arg_1, !select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(arg_1.b >= 32256u, true), !all(vec4<bool>(false, true, false, false))));
    let var_1 = select(vec4<bool>(var_0.b.x, all(vec3<bool>(false, arg_0.d <= var_0.a.a.d, all(vec4<bool>(true, var_0.b.x, var_0.b.x, true)))), all(vec2<bool>(true, any(vec2<bool>(false, false)))), true), select(select(!(!vec4<bool>(var_0.b.x, false, false, true)), vec4<bool>(true, global0.c.x > var_0.a.b, false, false), any(vec4<bool>(true, var_0.b.x, true, var_0.b.x)) & true), !(!(!vec4<bool>(true, var_0.b.x, false, var_0.b.x))), true), select(!(!select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, false), false)), select(!select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), var_0.b.x), !(!vec4<bool>(var_0.b.x, true, false, true)), any(select(vec4<bool>(false, true, var_0.b.x, false), vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.b.x, true, false, true)))), var_0.b.x & true));
    var var_2 = vec3<bool>(var_1.x, var_0.b.x, any(!select(vec4<bool>(var_1.x, var_0.b.x, false, false), var_1, var_1.x)) || var_1.x);
    let var_3 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(var_2.x, var_1.x), vec2<bool>(true, true)), !vec2<bool>(false, var_2.x), select(vec2<bool>(var_2.x, var_1.x), !var_1.xw, select(vec2<bool>(false, true), var_2.zz, var_2.x))), select(vec2<bool>(!any(vec2<bool>(true, var_0.b.x)), !any(vec4<bool>(true, true, true, var_0.b.x))), !vec2<bool>(var_1.x, 1u < u_input.a), false), !var_0.b);
    return select(var_1, select(var_1, var_1, false), select(!vec4<bool>(var_2.x, any(vec2<bool>(false, true)), any(var_1.ywz), var_0.b.x), select(vec4<bool>(!var_0.b.x, var_1.x && var_3.x, global0.b == 35162u, var_1.x), vec4<bool>(select(var_2.x, true, var_3.x), false, select(false, var_2.x, false), var_2.x), var_1), var_1));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    let var_0 = -min(select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 16657i, -552i, global0.d) ^ vec4<i32>(global0.d, global0.d, -2147483647i, 1i), abs(vec4<i32>(arg_0, arg_0, -47372i, 5313i))), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.d, arg_0, -20208i, arg_0), vec4<i32>(2147483647i, global0.d, arg_0, -2147483647i)) | ~vec4<i32>(-11151i, 2147483647i, 2147483647i, arg_0), false), abs(min(~vec4<i32>(arg_0, 2147483647i, -2147483647i, global0.d), vec4<i32>(global0.d, arg_0, arg_0, -6922i))));
    var var_1 = global0.c;
    var var_2 = _wgslsmith_add_u32(max(var_1.x, ~global0.c.x), 42381u);
    var var_3 = Struct_1(~69408u, 34511u >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(24690u, 0u, 50996u, u_input.a), reverseBits(vec4<u32>(var_1.x, 1u, 23299u, 7047u)))) % 32u), ~(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(global0.c.xzz, global0.c.yxy), reverseBits(3341u), func_1(arg_1.yxy, var_0.xz, 112889u))), global0.d);
    global0 = Struct_1(u_input.a, ~u_input.a, ~(var_3.c | ~(vec4<u32>(0u, var_1.x, var_3.a, 3455u) >> (global0.c % vec4<u32>(32u)))), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1517f * 1396f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_mult_i32(global0.d, ~(-1i)), func_4(Struct_1(_wgslsmith_add_u32(~1u, u_input.a), func_1(vec3<bool>(true, true, true), firstTrailingBit(vec2<i32>(global0.d, global0.d)), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(68696u, u_input.a, 1u, global0.b) >> (global0.c % vec4<u32>(32u)), ~global0.c, ~global0.c), -1i), Struct_2(Struct_1(abs(23983u), ~global0.c.x, vec4<u32>(28935u, global0.b, global0.a, 0u), global0.d), abs(abs(global0.a))))));
    let var_0 = reverseBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(global0.d, 27006i) ^ -vec2<i32>(global0.d, 12464i), -_wgslsmith_sub_vec2_i32(vec2<i32>(12354i, global0.d), vec2<i32>(-2147483647i, global0.d))) | (_wgslsmith_mult_vec2_i32(vec2<i32>(-23446i, global0.d), ~vec2<i32>(global0.d, global0.d)) ^ ~(-vec2<i32>(-12587i, global0.d))));
    var var_1 = -vec2<i32>(min(global0.d, -52562i), 2147483647i);
    var_1 = vec2<i32>(83806i, _wgslsmith_add_i32(firstTrailingBit(max(-15065i, var_1.x)), -global0.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1570f, 1f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1947f))), 869f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, _wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(func_2(vec4<f32>(1454f, 558f, 1262f, -845f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2179f, -732f, -1013f)))) + vec3<f32>(1320f, 898f, _wgslsmith_div_f32(-309f, -913f))))));
    global1 = _wgslsmith_f_op_f32(sign(-1037f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a, 27795u));
}

