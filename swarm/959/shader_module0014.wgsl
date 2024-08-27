struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<vec4<u32>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    var var_0 = vec2<i32>(min(1i, u_input.e), max(_wgslsmith_add_i32(arg_3, max(-u_input.e, 0i)), u_input.e));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.x)), ~countOneBits(~96343u) << (abs(0u) % 32u), -490f, 0u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2768f + arg_0.x)))))));
    global1 = select(vec4<bool>(true || (_wgslsmith_f_op_f32(f32(-1f) * -273f) < _wgslsmith_f_op_f32(trunc(var_1.a))), global1.x, arg_2.x, 1i < firstTrailingBit(_wgslsmith_add_i32(-16334i, -22323i))), !(!vec4<bool>(!global1.x, true, all(vec4<bool>(arg_1.a, arg_1.a, true, global1.x)), u_input.c < 33761u)), vec4<bool>(true, true, arg_1.a && true, global1.x));
    global2 = array<vec4<u32>, 17>();
    global2 = array<vec4<u32>, 17>();
    return ~var_1.b;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = i32(-1i) * -_wgslsmith_mult_i32(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.e), vec3<i32>(u_input.e, -1i, arg_0.x)) ^ (u_input.e | arg_0.x));
    global2 = array<vec4<u32>, 17>();
    var var_1 = Struct_1(-1414f, u_input.d.x & 0u, _wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_div_u32(u_input.c ^ (u_input.b.x | 20781u), func_3(vec3<f32>(-437f, -707f, -460f), Struct_2(true), vec3<bool>(true, global1.x, false), 2147483647i)) & u_input.d.x, -1411f);
    var var_2 = true;
    let var_3 = Struct_2(global1.x);
    return all(!vec2<bool>(any(!global1.xz), any(!vec4<bool>(false, var_3.a, global1.x, true))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global2 = array<vec4<u32>, 17>();
    global1 = select(vec4<bool>(any(vec3<bool>(!global1.x, all(vec3<bool>(global1.x, true, true)), global1.x | global1.x)), true, all(!vec2<bool>(global1.x, true)), any(select(vec4<bool>(global1.x, false, true, true), !vec4<bool>(true, global1.x, false, false), func_2(vec3<i32>(1i, 38676i, u_input.e))))), !(!select(!vec4<bool>(global1.x, true, false, global1.x), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(true, false, global1.x, global1.x), global1.x), global1.x || global1.x)), true && all(!select(global1.ywy, vec3<bool>(global1.x, global1.x, true), global1.xwy)));
    global2 = array<vec4<u32>, 17>();
    var var_0 = 1f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -148f), min(arg_0, func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-2181f, -595f, 637f), vec3<f32>(-1068f, 1000f, -1272f)), Struct_2(global1.x), global1.xwx, countOneBits(u_input.e)) << (arg_0 % 32u)), 162f, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(79718u, u_input.b.x), 9649u | u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1679f, -158f)))) * _wgslsmith_f_op_f32(ceil(-661f))));
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.d, ~select(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.c), 1u, ~1u), countOneBits(vec3<u32>(u_input.a, 1u, u_input.b.x)), global1.x));
    let var_1 = func_1(42948u);
    var var_2 = func_1(~abs(var_0.x));
    let var_3 = -1273f;
    global1 = select(!vec4<bool>(!var_1.a, !any(vec3<bool>(global1.x, false, global1.x)), all(global1.xyx), !global1.x), select(select(select(select(vec4<bool>(global1.x, var_2.a, var_2.a, false), vec4<bool>(global1.x, var_2.a, var_1.a, global1.x), false), !vec4<bool>(false, var_1.a, global1.x, var_1.a), any(vec3<bool>(false, var_1.a, true))), vec4<bool>(select(true, global1.x, true), true, false || global1.x, true), select(var_1.a, var_1.a, true)), vec4<bool>(!(!var_2.a), !(!global1.x), global1.x, all(global1.xz) && var_1.a), select(vec4<bool>(true, false, var_1.a, u_input.d.x <= 23309u), select(vec4<bool>(true, true, false, true), !vec4<bool>(global1.x, global1.x, var_2.a, global1.x), !vec4<bool>(global1.x, true, false, var_2.a)), func_2(vec3<i32>(-6545i, u_input.e, u_input.e)))), !vec4<bool>(var_2.a, true, all(!vec4<bool>(global1.x, var_2.a, var_1.a, false)), all(vec4<bool>(false, true, true, var_2.a))));
    var_2 = func_1(~firstLeadingBit(~func_3(vec3<f32>(var_3, 1122f, var_3), Struct_2(false), vec3<bool>(var_2.a, false, var_2.a), 0i)));
    var var_4 = Struct_1(var_3, u_input.a, 569f, 32645u, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2044f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), 989f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_3, firstLeadingBit(u_input.e));
}

