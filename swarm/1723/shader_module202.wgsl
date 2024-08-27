struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> i32 {
    global3 = true;
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.yw >> (vec2<u32>(~u_input.b, _wgslsmith_mult_u32(30576u, arg_0)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~arg_2.yz ^ arg_2.yx, vec2<u32>(4294967295u, 51713u), arg_2.zx)), ~arg_2.x);
    global0 = ~(~23971i);
    return 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = -14950i;
    var var_1 = Struct_1(1u >> (_wgslsmith_mod_u32(4294967295u, ~arg_0.a) % 32u));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 710f))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(1169f * arg_1), 354f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f) - _wgslsmith_f_op_f32(800f + -271f)))));
    return var_3.x;
}

fn func_1() -> vec2<u32> {
    global0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(11319i, 13454i), func_2(~(~_wgslsmith_div_u32(14026u, u_input.b)), global1.yw, ~(vec4<u32>(1u, u_input.a, u_input.c, u_input.b) & ~vec4<u32>(0u, 1241u, u_input.a, 1u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(4294967295u), 565f, Struct_2(Struct_1(4294967295u), global1.wyz))) + _wgslsmith_f_op_f32(sign(456f))), -1048f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-359f, 1f, global1.x | global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(416f))))));
    var var_1 = Struct_1(u_input.b);
    var var_2 = Struct_1(firstLeadingBit(22282u));
    var var_3 = countOneBits(vec3<i32>(1i, 1i, 1i));
    return ~vec2<u32>(35414u, ~countOneBits(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(31564u);
    let var_1 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(53976u, 81330u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.c))), select(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 0u))), func_1(), !(!any(global1.xx))));
    var var_2 = global1.wxw;
    let var_3 = Struct_2(Struct_1(86153u), !vec3<bool>(global1.x, global1.x, true | var_2.x));
    var var_4 = vec4<i32>(-_wgslsmith_mult_i32(95574i, -1i), countOneBits(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-761i, -2987i)))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(~1i, -20961i, _wgslsmith_clamp_i32(1i, -2147483647i, 35638i))), -(-vec3<i32>(1i, 1i, -61169i) << (vec3<u32>(1u, u_input.b, var_1) % vec3<u32>(32u)))), _wgslsmith_div_i32(reverseBits(-1i), -1i));
    var_2 = !(!select(var_3.b, vec3<bool>(all(vec3<bool>(false, false, var_3.b.x)), 2147483647i <= var_4.x, global1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1117f, -785f, 1440f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, 193f, -281f)))))), 1u, firstTrailingBit(var_4.zyz));
}

