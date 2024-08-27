struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4809i;

var<private> global1: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = select(vec4<bool>(global1.c, all(select(vec4<bool>(true, true, false, false), !vec4<bool>(false, false, global1.b, global1.a.x), !global1.a)), !(!(u_input.a > u_input.a)), !(reverseBits(u_input.b.x) != _wgslsmith_div_i32(u_input.d, 0i))), select(vec4<bool>(global1.d <= _wgslsmith_f_op_f32(exp2(global1.d)), firstLeadingBit(u_input.a) != ~u_input.a, all(global1.a) || true, false), global1.a, !global1.a), true);
    global0 = firstTrailingBit(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.b) | _wgslsmith_mod_i32(u_input.b.x, u_input.d), 0i));
    global0 = 1i;
    var var_1 = Struct_1(vec4<bool>(any(!(!global1.a)), true, !var_0.x, ~u_input.a != ~0u), any(global1.a.xyx), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 171f)))) * _wgslsmith_f_op_f32(min(global1.d, -707f))));
    var var_2 = Struct_1(!select(vec4<bool>(false | var_0.x, !var_0.x, all(vec3<bool>(global1.b, var_1.b, var_1.a.x)), all(vec3<bool>(global1.c, var_1.b, global1.c))), var_0, all(!global1.a)), false, false, 1317f);
    return 1i;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(global1.a, any(global1.a), !(arg_1 != global1.a.x), _wgslsmith_f_op_f32(-618f * global1.d));
    let var_1 = Struct_1(!select(!var_0.a, !var_0.a, var_0.a), max(arg_2.x, func_3()) >= -18034i, global1.c, var_0.d);
    let var_2 = -19243i;
    let var_3 = var_1;
    let var_4 = Struct_1(vec4<bool>(!(_wgslsmith_f_op_f32(sign(var_1.d)) < _wgslsmith_f_op_f32(-var_3.d)), true || var_1.a.x, any(vec3<bool>(true, true, any(var_0.a.xxz))), var_3.b), arg_1, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.d))))));
    return var_3.d;
}

fn func_1() -> bool {
    global1 = Struct_1(!(!select(vec4<bool>(global1.c, global1.b, true, global1.c), vec4<bool>(true, false, global1.b, global1.c), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + global1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(u_input.b.x, true, u_input.b))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.d, -124f)))), !global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d))));
    var var_0 = vec4<f32>(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), -798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-679f, _wgslsmith_f_op_f32(step(-426f, -296f)))) * _wgslsmith_f_op_f32(1f * 146f)), _wgslsmith_f_op_f32(sign(-944f)));
    var_0 = vec4<f32>(-1492f, _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(-global1.d)), -531f, 686f);
    var var_1 = Struct_1(global1.a, true, true, -1000f);
    var var_2 = u_input.a;
    return any(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + global1.d)) == 809f, global1.b & !(global1.d == 913f), !(u_input.a <= u_input.a) & var_1.b, var_1.b));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(388f, arg_0.d, -246f, -1024f), vec4<f32>(arg_0.d, -617f, global1.d, -486f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, -1000f, global1.d, 1442f))))))));
    global0 = arg_1;
    global0 = 23697i;
    var var_1 = arg_0;
    global1 = Struct_1(select(vec4<bool>(arg_2.x, false, !(!arg_2.x), global1.a.x), vec4<bool>(arg_2.x, var_1.a.x, true, any(select(arg_2, vec4<bool>(true, global1.c, var_1.a.x, false), true))), !global1.a), false, select(_wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(trunc(1000f))) > arg_0.d, true, arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.d))))) + 1150f));
    return 8812i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(global1.a, global1.a, global1.a), !(!global1.b) || false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d))) + 1403f));
    var var_1 = var_0;
    var var_2 = vec4<u32>(~_wgslsmith_div_u32(~0u, ~_wgslsmith_sub_u32(57418u, u_input.a)), 1u, countOneBits(~(~50260u)) & (u_input.a << ((_wgslsmith_mod_u32(u_input.a, 42511u) & _wgslsmith_add_u32(u_input.a, 92370u)) % 32u)), ~_wgslsmith_mult_u32(max(2143u, ~u_input.a), ~(~0u)));
    global0 = func_4(var_0, ~_wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(-u_input.d, _wgslsmith_mult_i32(u_input.c.x, -29254i))), vec4<bool>(!(!any(var_0.a.zx)), global1.a.x, func_1(), max(-u_input.d, u_input.c.x) == (_wgslsmith_dot_vec3_i32(vec3<i32>(50262i, 2147483647i, u_input.d), vec3<i32>(u_input.b.x, 28874i, -2147483647i)) & u_input.b.x)), _wgslsmith_sub_i32(countOneBits(-_wgslsmith_mod_i32(-7543i, 1i)), -(u_input.d ^ u_input.b.x) | ~18134i));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(898f, -512f, -408f, global1.d))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_1.d, -961f, 145f) * vec4<f32>(global1.d, var_0.d, -426f, global1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1930f, -1080f, var_1.d, var_0.d)))))), all(!(!var_1.a.yzw)))));
}

