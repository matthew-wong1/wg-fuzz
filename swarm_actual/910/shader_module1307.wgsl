struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-137f, 143f), vec2<f32>(741f, 630f), vec2<f32>(-317f, 105f), vec2<f32>(-1161f, 476f), vec2<f32>(-945f, 1060f), vec2<f32>(-1445f, 881f), vec2<f32>(-1895f, -1589f), vec2<f32>(-674f, -1796f), vec2<f32>(1498f, -1000f), vec2<f32>(1000f, -2655f), vec2<f32>(-960f, -1109f), vec2<f32>(-162f, 200f), vec2<f32>(1089f, 1046f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~59688u), u_input.b.xx);
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(31001u, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(41647u, u_input.b.x), arg_1)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) << (vec2<u32>(u_input.b.x, ~var_0) % vec2<u32>(32u));
    global0 = ~(-45137i);
    var var_2 = u_input.b.x;
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = firstLeadingBit(func_3(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), -vec2<i32>(1i, 7688i), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_div_f32(-206f, -408f), !arg_1.x))), ~u_input.b.wx));
    global1 = array<vec2<f32>, 13>();
    let var_1 = u_input.a;
    let var_2 = Struct_2(vec2<f32>(-1695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1146f))), _wgslsmith_f_op_f32(f32(-1f) * -1367f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -229f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -217f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-707f, -1000f, 1388f), vec3<f32>(-502f, 1566f, -1442f), arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 1000f, -178f)), !arg_1.x)))));
    global1 = array<vec2<f32>, 13>();
    return vec4<bool>(arg_1.x && false, arg_1.x, ~(~max(u_input.b.x, 1u)) == _wgslsmith_add_u32(4294967295u ^ firstLeadingBit(var_0.x), func_3(Struct_1(arg_1.x, var_2.c.x, u_input.d.zz, arg_1.x, var_2.a.x), abs(vec2<u32>(var_0.x, 1u))).x), false);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = -43430i;
    global0 = ~_wgslsmith_sub_i32(5687i, 31668i);
    var var_1 = Struct_1(!arg_0, -879f, ~_wgslsmith_sub_vec2_i32(u_input.c.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(33515i, -1i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), ~vec2<i32>(0i, u_input.c.x))), true, 1000f);
    var var_2 = !select(func_2(u_input.b.x, vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), var_1.a, var_1.a)), select(!(!vec4<bool>(true, var_1.d, var_1.a, arg_0)), !select(vec4<bool>(var_1.d, true, false, false), vec4<bool>(false, false, arg_0, true), var_1.d), vec4<bool>(arg_0 == var_1.d, 1000f < var_1.b, func_2(u_input.b.x, vec3<bool>(true, arg_0, var_1.d)).x, var_1.a)), vec4<bool>(arg_0, !any(vec2<bool>(false, var_1.d)), !all(vec2<bool>(true, var_1.a)), -u_input.d.x > ~2147483647i));
    global0 = 1i;
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(firstTrailingBit(16048u), 13u)] * vec2<f32>(287f, 1709f)))), vec2<f32>(var_1.e, -237f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e)) * _wgslsmith_f_op_f32(select(1296f, -2081f, var_2.x))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(round(var_1.e)))))), vec3<f32>(-420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, var_1.e))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.e + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1070f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = Struct_3(15444u > ~reverseBits(u_input.b.x));
    var var_1 = _wgslsmith_add_vec2_u32(u_input.b.xx, ~_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(28312u, 0u)), u_input.b.zw, u_input.b.ww));
    var var_2 = vec4<f32>(-2019f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1673f * 707f) - _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(ceil(-273f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_0))), _wgslsmith_f_op_f32(select(arg_2, arg_0, var_0.a)));
    let var_3 = Struct_3(true);
    let var_4 = Struct_3(var_0.a & var_3.a);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(-firstLeadingBit(~u_input.a), u_input.c.x);
    let var_0 = _wgslsmith_div_i32(u_input.c.x, u_input.d.x);
    global0 = u_input.a;
    var var_1 = vec3<u32>(~(~2225u), 1u, ~_wgslsmith_mod_u32(countOneBits(u_input.b.x), ~u_input.b.x) >> (~_wgslsmith_mod_u32(~16749u, _wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(u_input.b.x, 54699u))) % 32u));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1453f))), func_1(true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(740f))))) << (max(1u, _wgslsmith_mod_u32(~(~u_input.b.x), _wgslsmith_sub_u32(max(u_input.b.x, 135495u), ~var_1.x))) % 32u);
    global0 = i32(-1i) * -_wgslsmith_mult_i32(2147483647i, -var_0 | firstLeadingBit(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(4370u, _wgslsmith_sub_vec4_u32(vec4<u32>(9562u, 0u, var_1.x, 1u), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(floor(-1573f)), _wgslsmith_f_op_f32(trunc(-1306f)), -140f), 6827u);
}

