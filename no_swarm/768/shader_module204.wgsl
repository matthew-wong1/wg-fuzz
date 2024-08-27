struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 949f)), global0.x, _wgslsmith_f_op_f32(-548f + global0.x))));
    let var_0 = ~u_input.a.x;
    var var_1 = ~firstTrailingBit(35385u);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, global0.x, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(852f, 871f, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, 285f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 823f, global0.x, -1435f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, -1715f, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, 908f, 389f, -1178f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -843f)), !select(vec4<bool>(true, false, arg_1, true), vec4<bool>(true, arg_0.a, arg_1, true), vec4<bool>(false, true, false, true))))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 1363f, global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-429f - 403f), _wgslsmith_f_op_f32(-1511f - -802f)), -309f)));
    return !(!(!select(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(true, arg_0.a)), !vec2<bool>(arg_1, true), arg_0.a)));
}

fn func_2() -> vec2<bool> {
    return select(func_3(Struct_1(true), _wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(f32(-1f) * -953f)), select(vec2<bool>(true, true), func_3(Struct_1(func_3(Struct_1(false), true).x), !func_3(Struct_1(true), true).x), select(vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(true, false, true)), false), select(func_3(Struct_1(true), true), vec2<bool>(false, false), u_input.d.x < 4294967295u))), !(!select(vec2<bool>(true, false), func_3(Struct_1(true), true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<f32>) -> i32 {
    let var_0 = vec3<bool>(abs(arg_1.c.x) == arg_1.e.x, !select(false, all(!vec3<bool>(false, arg_2.x, false)), true), arg_1.e.x > _wgslsmith_dot_vec2_i32(arg_1.e.yx, _wgslsmith_mod_vec2_i32(arg_1.e.zz, vec2<i32>(-23393i, 53321i))));
    global0 = vec4<f32>(arg_3.x, -1988f, _wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1401f))), _wgslsmith_f_op_f32(ceil(-393f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, arg_3.x, any(!vec4<bool>(arg_2.x, true, true, true))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-489f, 1066f, arg_2.x)), _wgslsmith_f_op_f32(-1000f + 251f), -1197f, -127f))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, arg_3.x, 124f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), -1000f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -220f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(798f, -1189f)) - -1985f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1625f)) + _wgslsmith_div_f32(global0.x, arg_3.x)), _wgslsmith_div_f32(1327f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, _wgslsmith_f_op_f32(round(-957f)), _wgslsmith_f_op_f32(select(1000f, global0.x, true)), _wgslsmith_f_op_f32(global0.x * -1000f))), vec4<bool>(!arg_2.x | true, arg_0.x, any(arg_2), all(var_0)))));
    var var_1 = ~(firstTrailingBit(_wgslsmith_mult_u32(29527u, 0u)) ^ u_input.d.x);
    return arg_1.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = 1i;
    var var_1 = Struct_1(select(43026i, 26962i, false) >= u_input.a.x);
    let var_2 = select(vec2<u32>(u_input.d.x, abs(max(u_input.c, abs(26495u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, u_input.c), 16683u), ~vec2<u32>(20266u, 4294967295u)), _wgslsmith_mult_u32(firstLeadingBit(~u_input.d.x), ~(u_input.d.x >> (4294967295u % 32u)))), true);
    return ~vec4<i32>(-(~u_input.e >> (23996u % 32u)), func_4(func_2(), Struct_2(Struct_1(false), Struct_1(var_1.a), vec4<i32>(1i, 2147483647i, u_input.b, 87621i), vec2<bool>(var_1.a, var_1.a), vec4<i32>(1i, u_input.a.x, u_input.a.x, 2147483647i)), vec2<bool>(var_1.a, true), _wgslsmith_f_op_vec2_f32(-arg_1.zz)) | -_wgslsmith_mult_i32(u_input.b, 46490i), u_input.e, 7742i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false))), Struct_1(!any(vec3<bool>(true, true, false))), reverseBits(func_1(Struct_1(true), vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), global0.x, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(41194u, u_input.d.x) << (vec2<u32>(4294967295u, u_input.d.x) % vec2<u32>(32u))))), vec2<bool>(true, true), select(vec4<i32>(-2147483647i, u_input.a.x, u_input.e, u_input.b) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(u_input.b, countOneBits(_wgslsmith_sub_i32(2147483647i, u_input.e)), u_input.a.x, _wgslsmith_div_i32(abs(u_input.e), u_input.b)), func_4(select(vec2<bool>(false, true), vec2<bool>(false, true), false), Struct_2(Struct_1(false), Struct_1(true), vec4<i32>(22879i, u_input.e, -38148i, u_input.a.x), vec2<bool>(false, true), vec4<i32>(53425i, u_input.e, 1i, u_input.e)), func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(1318f, global0.x) * vec2<f32>(-269f, 1510f))) < u_input.b));
    global0 = vec4<f32>(1000f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(632f, _wgslsmith_f_op_f32(-global0.x))))) + 1326f), 332f);
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-189f, -798f, 175f, -742f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(933f, -1224f, 2051f, 1695f) - vec4<f32>(1423f, global0.x, 1000f, -196f)) * vec4<f32>(-385f, 1149f, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(674f, global0.x))), _wgslsmith_f_op_f32(-1302f - 2295f), global0.x), vec4<bool>(true, _wgslsmith_f_op_f32(global0.x - global0.x) != global0.x, !(u_input.c != 0u), var_0.d.x)))));
    let var_1 = var_0.b;
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(55224u, _wgslsmith_dot_vec4_u32(min(u_input.d, u_input.d), firstTrailingBit(abs(~u_input.d))), _wgslsmith_f_op_f32(150f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(-global0.x)))))), global0.x, global0.wxy);
}

