struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<f32>;

var<private> global2: f32 = -302f;

var<private> global3: i32 = -10526i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> u32 {
    global3 = firstTrailingBit(firstLeadingBit(-1i));
    var var_0 = 837f;
    var var_1 = abs(1u);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -176f);
    var_1 = ~(~1u >> (u_input.d.x % 32u));
    return firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, ~_wgslsmith_clamp_u32(4294967295u, 1u, arg_2), ~u_input.d.x), ~(~13109u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    return u_input.a.x >> ((27422u >> (func_3(vec2<bool>(arg_1, false), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(105489u, 10595u, u_input.b.x, u_input.b.x)), firstLeadingBit(vec4<u32>(16569u, 86314u, 3786u, u_input.d.x))), u_input.d.x, select(max(-1i, global0.x), i32(-1i) * -2147483647i, arg_1)) % 32u)) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(exp2(global1.x)))), 1000f, global1.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 131f, -238f)) * vec3<f32>(1145f, 561f, -983f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, 177f))))));
    global3 = firstLeadingBit(_wgslsmith_mult_i32(~(func_2(var_0.x, false, arg_0, vec3<i32>(u_input.c, -57952i, u_input.a.x)) >> (_wgslsmith_mod_u32(38647u, 31125u) % 32u)), _wgslsmith_sub_i32(u_input.a.x, func_2(var_0.x, var_0.x >= var_0.x, arg_0, vec3<i32>(17095i, 2147483647i, u_input.c)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, var_0.x), -940f)));
    var var_2 = !vec3<bool>(all(vec2<bool>(true, true)), arg_0.a, arg_0.a);
    var var_3 = Struct_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, false, var_2.x)), vec3<bool>(all(vec4<bool>(var_2.x, false, arg_0.a, false)), any(vec2<bool>(true, arg_0.a)), any(var_2.zy)), !(!var_2.x))));
    return _wgslsmith_mod_u32(15035u, ~_wgslsmith_sub_u32(~0u, arg_1.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(true);
    let var_1 = arg_1;
    global0 = ~(vec4<i32>(_wgslsmith_mult_i32(-global0.x, _wgslsmith_div_i32(-55620i, global0.x)), 0i, -abs(u_input.a.x), max(~0i, global0.x & 65714i)) | vec4<i32>(-1i, -56169i, min(_wgslsmith_sub_i32(global0.x, u_input.a.x), reverseBits(u_input.a.x)), _wgslsmith_div_i32(-43582i, max(u_input.c, u_input.c))));
    let var_2 = Struct_1(arg_1.a);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, u_input.c), -vec4<i32>(global0.x, 2147483647i, u_input.c, u_input.a.x)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -6564i), -1i ^ global0.x, ~u_input.a.x, abs(global0.x))));
    global0 = select(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, -1i) & (0i & u_input.c), global0.x, global0.x), -1808i, func_4(vec4<u32>(0u, 14981u >> (u_input.d.x % 32u), func_1(Struct_1(false), vec2<u32>(0u, u_input.d.x)), u_input.b.x), Struct_1(all(vec3<bool>(false, false, false)))), u_input.c), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.c, -1i, u_input.a.x, 31604i) << (_wgslsmith_div_vec4_u32(vec4<u32>(30141u, 4294967295u, 38980u, 62854u), vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))), -firstTrailingBit(~vec4<i32>(global0.x, 0i, 2147483647i, global0.x)), select(select(vec4<i32>(1i, u_input.c, global0.x, 16254i) | vec4<i32>(-1i, 36822i, global0.x, 12801i), vec4<i32>(global0.x, u_input.a.x, 37901i, global0.x) | vec4<i32>(global0.x, u_input.c, -1i, global0.x), any(vec3<bool>(true, true, true))), vec4<i32>(-global0.x, _wgslsmith_clamp_i32(2147483647i, u_input.c, -47988i), func_2(-1000f, false, Struct_1(false), u_input.a), u_input.c), true)), false);
    let var_0 = vec2<i32>(-1i, -firstLeadingBit(_wgslsmith_add_i32(-2147483647i, 1i)));
    global3 = _wgslsmith_sub_i32(u_input.c, var_0.x);
    var var_1 = Struct_1(!((all(vec4<bool>(false, true, true, false)) | true) || any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))));
    global2 = _wgslsmith_f_op_f32(max(-236f, _wgslsmith_f_op_f32(-1052f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1151f * 1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.x), vec4<f32>(_wgslsmith_f_op_f32(-835f * _wgslsmith_f_op_f32(-global1.x)), global1.x, global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-465f + global1.x), _wgslsmith_f_op_f32(-global1.x), u_input.d.x <= ~u_input.d.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1444f, global1.x, -685f, global1.x) + vec4<f32>(-412f, global1.x, 934f, global1.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -1480f, 163f, global1.x))), vec4<bool>(true, var_1.a, true, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1396f, 702f, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, 736f)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-223f, 687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), vec3<f32>(434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1826f, 505f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 369f) - global1.x)), any(!select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, var_1.a, var_1.a), false)))));
}

