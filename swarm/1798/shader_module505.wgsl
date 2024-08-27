struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    global0 = Struct_1(-_wgslsmith_div_i32(~(-28910i) >> (arg_2.b % 32u), global0.a), _wgslsmith_mult_u32(~(~(~arg_2.b)), 1u), true, -40372i, vec2<bool>(countOneBits(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(arg_2.d, arg_2.d, arg_2.d))) <= arg_2.a, any(!vec3<bool>(true, arg_1, true))));
    var var_0 = Struct_4(u_input.a.x, true & any(!vec2<bool>(arg_3.x, true)), true, !all(vec3<bool>(global0.c, arg_3.x, true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(828f * -160f), _wgslsmith_f_op_f32(floor(708f)), -357f, 1260f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(808f, -382f, -524f, 1000f) + vec4<f32>(204f, 405f, 531f, -837f)))), !select(vec4<bool>(false, false, false, global0.c), vec4<bool>(true, true, false, false), false))))));
    let var_1 = all(select(vec4<bool>(all(!vec3<bool>(arg_3.x, true, arg_2.e.x)), !(-976f > var_0.e.x), arg_3.x, arg_3.x), vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec4<bool>(false, global0.e.x, var_0.d, false)), any(global0.e), arg_1, any(vec3<bool>(arg_1, false, arg_2.c))), vec4<bool>(any(vec4<bool>(arg_3.x, true, false, arg_2.e.x)), false, all(global0.e), arg_1 | false), vec4<bool>(global0.c, true, arg_3.x, true))));
    var var_2 = Struct_2(~arg_0.a);
    let var_3 = _wgslsmith_sub_u32(firstLeadingBit(global0.b), arg_2.b) & 4294967295u;
    return _wgslsmith_mult_i32(u_input.d, -global0.d);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec4<u32> {
    global0 = Struct_1(arg_0.a.a, ~u_input.b.x, arg_0.a.c | !global0.c, _wgslsmith_mod_i32(func_3(Struct_2(vec2<u32>(global0.b, 31930u)), global0.e.x, arg_0.a, vec2<bool>(true, global0.c)) | _wgslsmith_clamp_i32(u_input.e.x, -3658i, -2147483647i), 1i), vec2<bool>(false, arg_0.a.e.x));
    let var_0 = u_input.b.xy;
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_vec2_u32(u_input.b.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), var_0))), vec4<i32>(arg_1.x, arg_2.x, 2147483647i, u_input.c), _wgslsmith_dot_vec4_i32(~firstLeadingBit(reverseBits(vec4<i32>(global0.a, arg_1.x, u_input.e.x, global0.a))), countOneBits(vec4<i32>(2147483647i, -53608i, _wgslsmith_add_i32(arg_2.x, -25708i), 7795i ^ global0.a))), global0.b);
    var var_2 = 13649u;
    let var_3 = Struct_5(Struct_1(_wgslsmith_sub_i32(abs(u_input.e.x), countOneBits(var_1.c)) | firstTrailingBit(1i), ~var_0.x & min(_wgslsmith_div_u32(9755u, 124770u), 1u & var_1.d), arg_0.a.e.x, -arg_1.x >> (2892u % 32u), !arg_0.a.e), 2586i);
    return u_input.b;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1804f) + _wgslsmith_f_op_f32(min(3035f, -790f))))))));
    var var_1 = vec2<u32>(global0.b, abs(0u));
    let var_2 = firstTrailingBit(~(countOneBits(u_input.b) ^ func_2(Struct_5(Struct_1(-1i, 7908u, false, arg_0.a, arg_0.e), 41148i), u_input.e, ~vec3<i32>(-18212i, -1i, -1i))));
    var var_3 = Struct_1(0i, 34995u, global0.c != false, 5427i, global0.e);
    var_1 = abs(vec2<u32>(~(~u_input.a.x), 4294967295u));
    return countOneBits(vec4<i32>(2147483647i, -2147483647i, 59960i, -u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~_wgslsmith_sub_vec4_i32(~(-vec4<i32>(global0.a, 1i, -24065i, 2147483647i)), func_1(Struct_1(u_input.c, u_input.a.x, false, u_input.e.x, vec2<bool>(global0.c, global0.c)))));
    let var_1 = Struct_1(9274i, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.b, 1u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~countOneBits(u_input.b) | u_input.b), true, firstLeadingBit(u_input.c), global0.e);
    var var_2 = Struct_3(Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 111074u), vec2<u32>(0u, 1u))), abs(_wgslsmith_sub_vec4_i32(select(var_0, var_0, vec4<bool>(var_1.e.x, var_1.c, false, var_1.e.x)), ~vec4<i32>(-2147483647i, global0.d, -7454i, -44411i)) & vec4<i32>(min(u_input.e.x, var_1.a), 1i, 25759i, _wgslsmith_mod_i32(u_input.e.x, var_0.x))), firstTrailingBit(func_1(Struct_1(~(-3166i), ~global0.b, global0.e.x & true, global0.a, select(global0.e, var_1.e, global0.e.x))).x), ~min(0u, 1u));
    global0 = var_1;
    let var_3 = global0.e.x;
    let var_4 = global0.b;
    var var_5 = ~(0u << (_wgslsmith_dot_vec3_u32(func_2(Struct_5(Struct_1(var_0.x, 82804u, true, 2147483647i, global0.e), -2147483647i), vec3<i32>(var_1.d, -1i, 11913i), vec3<i32>(0i, 1i, -2147483647i)).xyw, min(u_input.b.yzx, u_input.b.zyz)) % 32u)) != _wgslsmith_dot_vec4_u32(u_input.b, u_input.b);
    var_2 = Struct_3(Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(4294967295u, var_1.b)) | u_input.a, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_2.a.a, vec2<u32>(1u, global0.b)), firstLeadingBit(vec2<u32>(u_input.b.x, 1u))), firstTrailingBit(var_2.a.a))), vec4<i32>(_wgslsmith_mult_i32(~(-2147483647i ^ var_0.x), 1i), -(~global0.d), _wgslsmith_mult_i32(abs(firstTrailingBit(var_1.d)), var_1.a), firstTrailingBit(1i)), u_input.d, abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, var_2.d, var_2.a.a.x, 1u), ~u_input.b, true), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(select(max(~vec2<i32>(var_1.d, -46250i), var_0.yw), var_0.zy, var_1.e), vec2<i32>(-1i) * -(vec2<i32>(var_0.x, var_1.d) & var_0.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(683f, -499f, -1124f), vec3<f32>(2771f, 789f, -381f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(198f, -1052f, 511f), vec3<f32>(1619f, 894f, 1537f), vec3<bool>(true, global0.e.x, var_1.c)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1957f, 372f, 1851f) * vec3<f32>(-400f, -170f, 122f)) - vec3<f32>(1f, 1f, 1f)))));
}

