struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44944u;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(604f, -766f), vec2<f32>(1843f, -213f), vec2<f32>(-602f, 743f), vec2<f32>(-1541f, 1000f), vec2<f32>(221f, -1000f), vec2<f32>(-204f, -792f), vec2<f32>(-718f, 886f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    let var_0 = u_input.b;
    global0 = select(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), ~_wgslsmith_sub_u32(48099u >> (select(arg_0, 4294967295u, false) % 32u), u_input.a.x), all(vec2<bool>(true, all(vec3<bool>(false, true, false)))) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    var var_1 = ~(u_input.a.x ^ u_input.a.x);
    var_1 = _wgslsmith_div_u32(~(~firstTrailingBit(countOneBits(45223u))), 14519u);
    let var_2 = arg_1 & vec2<u32>(~(~arg_1.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.zwz, u_input.a.yxw), ~vec3<u32>(arg_1.x, 4294967295u, u_input.a.x)));
    return -21654i;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global1 = array<vec2<f32>, 7>();
    let var_0 = Struct_4(vec4<bool>(select(arg_1, 0u >= arg_0, !arg_1) && true, arg_1, true, any(vec3<bool>(false, all(vec4<bool>(arg_1, arg_1, false, true)), false))), true, Struct_3(-countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 27280i, u_input.b), vec4<i32>(u_input.b, 2147483647i, -1i, u_input.b))), _wgslsmith_mult_i32(abs(-2147483647i), _wgslsmith_add_i32(func_3(0u, vec2<u32>(1u, 1u), -288f), 0i))), Struct_1(232f, vec4<i32>(u_input.b, 16574i, u_input.b, func_3(_wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.yzz), u_input.a.wz, -1168f)), 0i, reverseBits(~(-vec2<i32>(u_input.b, u_input.b)))));
    let var_1 = vec4<bool>(arg_1, false, false, any(!vec4<bool>(true, arg_1, any(var_0.a.xz), true)));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(36341u, 14873u), _wgslsmith_sub_u32(arg_0, arg_0 ^ firstLeadingBit(4294967295u)), 1u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f * _wgslsmith_f_op_f32(round(var_0.d.a))));
    return false;
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = 33676i;
    let var_1 = _wgslsmith_div_vec3_u32(u_input.a.wzz, vec3<u32>(14484u, u_input.a.x, 21467u));
    var var_2 = _wgslsmith_clamp_vec2_u32(u_input.a.wz | vec2<u32>(~select(0u, u_input.a.x, true), u_input.a.x), ~vec2<u32>(88594u, u_input.a.x), ~(u_input.a.wx >> ((_wgslsmith_add_vec2_u32(u_input.a.xz, var_1.xy) ^ ~u_input.a.wx) % vec2<u32>(32u))));
    var var_3 = u_input.b ^ -1i;
    var_3 = -29680i;
    return abs(min(17469i, -2147483647i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = u_input.a.wx;
    let var_1 = abs(func_4(func_2(23331u, false))) & 2147483647i;
    var var_2 = arg_2;
    var var_3 = Struct_2(abs(_wgslsmith_add_u32(arg_1.x & 8364u, _wgslsmith_sub_u32(15249u, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(20888u, arg_0.x, 18859u, 42161u))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1066f)))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(var_2.a, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(2147483647i, var_2.b))), func_3(u_input.a.x, vec2<u32>(arg_1.x, var_0.x), 1149f), ~var_1 ^ var_2.b, _wgslsmith_mult_i32(16023i, u_input.b) & var_2.a), -1i, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(41012i, 16603i) << (u_input.a.zw % vec2<u32>(32u)), vec2<i32>(36883i, arg_2.a)), _wgslsmith_mult_i32(firstLeadingBit(var_2.b), ~(-1i)))), select(vec4<bool>(!all(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-816f)), _wgslsmith_div_f32(-2410f, -518f))))), firstLeadingBit(arg_0.x) <= ~_wgslsmith_div_u32(0u, 4294967295u));
    let var_4 = !var_3.c.yw;
    return StorageBuffer(var_3.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a.yy, u_input.a, Struct_3(~u_input.b, _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(u_input.b, u_input.b)), abs(~vec2<i32>(42001i, u_input.b)))));
}

