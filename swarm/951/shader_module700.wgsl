struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = arg_0.a.x;
    global0 = arg_0.a.x;
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(abs(-1522f)), arg_0.c, u_input.a.x);
    return arg_0.c.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.x | func_3(arg_0);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b * -313f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f * arg_0.b)), !arg_0.a.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))))), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1458f), _wgslsmith_f_op_f32(exp2(arg_0.b)))));
    var var_3 = -1360f;
    var var_4 = arg_0.a;
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(805f + 1715f), _wgslsmith_f_op_f32(ceil(1297f)))) + arg_0.b))), arg_0.c, arg_0.d);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = ~vec2<u32>(~(~36761u), arg_0.x);
    let var_1 = Struct_1(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f * 1370f)))), ~arg_0.xx, _wgslsmith_div_i32(~(u_input.a.x ^ firstTrailingBit(2147483647i)), _wgslsmith_sub_i32(max(-2147483647i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(11284i, -46601i, 1i), u_input.a.ywy)) | u_input.b));
    global0 = true;
    global0 = false;
    let var_2 = func_2(var_1);
    return vec3<bool>(false, true, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = ~max(vec4<u32>(arg_0.c.x, ~35554u, _wgslsmith_sub_u32(1u >> (arg_0.c.x % 32u), _wgslsmith_mod_u32(arg_1.c.x, 59631u)), arg_0.c.x), ~min(vec4<u32>(30728u, arg_1.c.x, 0u, arg_0.c.x), vec4<u32>(arg_1.c.x, arg_1.c.x, arg_0.c.x, arg_0.c.x)) & ~reverseBits(vec4<u32>(38989u, arg_0.c.x, 1u, 0u)));
    var var_1 = arg_0.a.x;
    var var_2 = min(u_input.a, vec4<i32>(max(35279i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, 1i), 10810i << (var_0.x % 32u), arg_1.d)), 1i, _wgslsmith_sub_i32(~(-4465i | arg_0.d), arg_0.d), i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -2147483647i, arg_0.d, -14171i))));
    var var_3 = _wgslsmith_f_op_f32(-arg_1.b);
    var_1 = true;
    return func_2(func_2(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), vec3<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), _wgslsmith_f_op_f32(-325f * _wgslsmith_f_op_f32(select(776f, -1000f, false))) <= _wgslsmith_f_op_f32(trunc(1544f))), select(vec3<bool>(true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true, true), true));
    var var_1 = func_4(Struct_1(!(!func_1(vec4<u32>(51607u, 37520u, 35555u, 20089u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f - 1f) + 1237f), vec2<u32>(~1u, func_2(Struct_1(vec3<bool>(var_0.x, var_0.x, true), 439f, vec2<u32>(1u, 0u), 1i)).c.x), i32(-1i) * -4487i), func_2(Struct_1(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x)), -1746f, firstLeadingBit(~vec2<u32>(26423u, 108523u)), -max(u_input.a.x, -1i))), true);
    var_1 = Struct_1(vec3<bool>(true, true, true), var_1.b, _wgslsmith_div_vec2_u32(var_1.c, vec2<u32>(var_1.c.x, _wgslsmith_mult_u32(4294967295u, select(21907u, 0u, false)))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_div_i32(42656i, 57668i >> ((var_1.c.x << (var_1.c.x % 32u)) % 32u)) | var_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_div_f32(-1495f, 1000f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, -1371f), vec2<f32>(var_1.b, var_1.b))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(631f, var_1.b), vec2<f32>(var_1.b, var_1.b))))), vec2<f32>(-695f, 232f)), vec4<u32>(var_1.c.x, var_1.c.x, ~var_1.c.x, 20956u));
}

