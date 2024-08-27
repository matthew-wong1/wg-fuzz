struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 28>;

var<private> global3: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: f32) -> vec3<i32> {
    global3 = (firstLeadingBit(_wgslsmith_mult_i32(u_input.c, u_input.c)) << (1u % 32u)) <= -(~12382i);
    global0 = vec3<f32>(207f, arg_2, -1310f);
    var var_0 = vec3<bool>(true, true, any(!vec4<bool>(true, true, all(vec2<bool>(false, false)), all(vec2<bool>(true, false)))));
    global2 = array<vec3<u32>, 28>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1196f, arg_2)), vec3<f32>(666f, 642f, global0.x), true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -711f, -1387f))))));
    return select(vec3<i32>(-51166i, firstLeadingBit(-6252i) | _wgslsmith_div_i32(-49587i, u_input.c), countOneBits(reverseBits(u_input.c)) >> (u_input.b.x % 32u)), vec3<i32>(select(-firstLeadingBit(u_input.c), ~u_input.c << (u_input.b.x % 32u), any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_clamp_i32(~1i, _wgslsmith_mult_i32(799i, i32(-1i) * -15711i), -u_input.c), u_input.c), var_0.x);
}

fn func_2(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, ~(-1i), _wgslsmith_mult_i32(u_input.c, u_input.c)), abs(countOneBits(vec3<i32>(-10094i, -2147483647i, 0i)))), firstLeadingBit(func_3(Struct_4(global0.x), vec4<u32>(u_input.b.x, 41430u, 11797u, u_input.b.x) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_f_op_f32(global0.x + global0.x)))));
    global1 = 15878i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.yx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1066f, 1000f), _wgslsmith_f_op_vec2_f32(select(global0.zy, _wgslsmith_f_op_vec2_f32(select(global0.xy, vec2<f32>(981f, global0.x), vec2<bool>(true, false))), vec2<bool>(true, true)))))));
    var var_2 = true;
    global2 = array<vec3<u32>, 28>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1493f, global0.x, var_1.x, var_1.x), vec4<f32>(947f, arg_0.a, -948f, -459f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-104f, 423f, arg_0.a, -420f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(583f, -1366f, -1106f, var_1.x), vec4<f32>(var_1.x, var_1.x, 434f, 981f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -1000f, -980f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, var_1.x, global0.x, arg_0.a) - vec4<f32>(1063f, -667f, global0.x, 164f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2004f, arg_0.a, arg_0.a, -1000f), vec4<f32>(var_1.x, global0.x, global0.x, 1082f), vec4<bool>(true, false, true, false)))))), vec4<bool>(false, any(vec3<bool>(false, true, true)), true, true)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = countOneBits(min(abs(countOneBits(~vec2<u32>(arg_2.x, 1u))), ~(~firstTrailingBit(arg_2.xy))));
    global2 = array<vec3<u32>, 28>();
    var var_1 = false;
    let var_2 = _wgslsmith_div_u32(min(var_0.x, abs(54567u)), max(abs(_wgslsmith_add_u32(u_input.b.x, 3185u)) << (1u % 32u), ~(~630u)));
    var var_3 = Struct_3(!(!(!select(arg_1.yyy, vec3<bool>(false, false, arg_1.x), arg_1.x))), Struct_2(arg_1.x));
    return Struct_2(arg_0.x == -2336f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2(Struct_4(-2353f))), select(select(select(select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(arg_1.a, arg_0.a, arg_0.a, false), vec4<bool>(false, true, false, arg_1.a)), select(vec4<bool>(arg_0.a, true, true, true), vec4<bool>(arg_0.a, false, arg_1.a, arg_0.a), vec4<bool>(arg_1.a, false, arg_0.a, arg_1.a)), select(vec4<bool>(false, arg_1.a, arg_0.a, arg_1.a), vec4<bool>(true, false, arg_0.a, arg_1.a), arg_0.a)), select(select(vec4<bool>(arg_1.a, false, false, arg_1.a), vec4<bool>(arg_0.a, true, true, arg_1.a), arg_0.a), select(vec4<bool>(true, arg_0.a, true, arg_1.a), vec4<bool>(arg_0.a, arg_0.a, false, false), true), !vec4<bool>(false, arg_1.a, arg_1.a, true)), all(!vec2<bool>(false, arg_0.a))), !vec4<bool>(true, global0.x != global0.x, true, arg_1.a), vec4<bool>(true, select(any(vec2<bool>(true, false)), all(vec3<bool>(arg_1.a, arg_0.a, false)), !arg_1.a), !arg_1.a, !all(vec4<bool>(false, arg_1.a, arg_0.a, arg_1.a)))), firstTrailingBit(vec3<u32>(0u, max(_wgslsmith_div_u32(u_input.a.x, 75089u), 0u), u_input.a.x)), vec4<i32>(4764i, -59304i, -10274i ^ max(abs(-38853i), _wgslsmith_div_i32(u_input.c, 2147483647i)), ~1913i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(815f * global0.x)))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.x)));
    var var_2 = max(22496u, firstLeadingBit(_wgslsmith_add_u32(reverseBits(u_input.b.x ^ u_input.a.x), reverseBits(u_input.a.x))));
    var_1 = _wgslsmith_f_op_f32(floor(168f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -853f, global0.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, arg_0.c.x, global0.x)))))) - vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(arg_0.b)), global0.x)));
    return abs(67256i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2798f)))));
    global1 = _wgslsmith_add_i32(-_wgslsmith_div_i32(1i, -_wgslsmith_sub_i32(28188i, u_input.c)), -8972i);
    let var_0 = vec3<i32>(~_wgslsmith_add_i32(-abs(u_input.c), i32(-1i) * -u_input.c), u_input.c, _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.c, 0i), -max(i32(-1i) * -5142i, func_1(Struct_1(false, global0.x, vec2<f32>(global0.x, global0.x), global0.yz), Struct_2(true)))));
    let var_1 = u_input.c;
    let var_2 = Struct_3(select(vec3<bool>(true, true, true != all(vec4<bool>(true, true, false, true))), vec3<bool>(true, all(vec2<bool>(true, true)), false), true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(1950f, global0.x, global0.x, global0.x)), vec4<f32>(global0.x, global0.x, -103f, -283f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -128f, global0.x, global0.x), vec4<f32>(1373f, global0.x, global0.x, global0.x))))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), vec3<u32>(~u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(max(reverseBits(19671i), func_1(Struct_1(false, -238f, global0.xx, vec2<f32>(global0.x, -952f)), Struct_2(true))), var_0.x, 56260i, abs(-2147483647i))));
    var var_3 = Struct_1(var_2.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 1655f), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_f32(global0.x, 543f))), vec2<f32>(2166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + 567f))), global0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, _wgslsmith_div_u32(0u, u_input.b.x) & u_input.b.x) | _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a.x, u_input.b.x), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 4294967295u))), ~u_input.b.zy));
}

