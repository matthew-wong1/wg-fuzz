struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<Struct_2, 24>;

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    global2 = ~1u ^ u_input.c.x;
    let var_0 = Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a) | ~vec2<i32>(u_input.a.x, 2200i), u_input.a));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_vec3_u32(u_input.c, u_input.c);
    let var_3 = arg_1 | ~(~1u);
    return reverseBits(var_0.a);
}

fn func_3() -> f32 {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(~u_input.b), vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, 70005u), 1u, ~_wgslsmith_mult_u32(38461u, u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 1u, 4611u, u_input.b.x)), u_input.c.x))), _wgslsmith_add_vec4_u32(max(abs(vec4<u32>(4294967295u, u_input.c.x, 40057u, u_input.b.x)), ~vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x)), vec4<u32>(select(u_input.b.x, u_input.c.x, global1.a.x), _wgslsmith_clamp_u32(u_input.b.x, 66107u, 4294967295u), _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 90860u), min(u_input.c.x, 4294967295u))) | vec4<u32>(countOneBits(46285u), ~(~83u), u_input.c.x, u_input.c.x));
    global2 = 22762u;
    var var_2 = Struct_2(vec2<bool>(any(select(select(vec4<bool>(false, global1.a.x, false, global1.a.x), vec4<bool>(true, false, false, false), false), !vec4<bool>(global1.a.x, global1.a.x, false, true), global1.a.x)), select(1u <= (var_1.x >> (3672u % 32u)), global1.a.x, !(4294967295u >= u_input.c.x))));
    var_0 = !var_2.a.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f * 370f)))), 445f))));
}

fn func_2() -> StorageBuffer {
    var var_0 = ~reverseBits(~abs(u_input.c.x));
    var var_1 = Struct_1(u_input.a.x << (u_input.c.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), 1f, !(global1.a.x & global1.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -847f));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(336f, -1650f), vec2<f32>(167f, -115f))))))), 129f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-396f, -1048f) * vec2<f32>(-1000f, 233f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1760f, 1531f), vec2<f32>(1000f, -1418f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, -1518f)), global1.a))))), abs(-abs(select(-26300i, 2147483647i, global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-34372i | u_input.a.x, min(u_input.a.x, (func_1(false, 4294967295u) ^ ~u_input.a.x) << (_wgslsmith_mod_u32(~0u, select(7827u, 0u, global1.a.x)) % 32u)), (-1i | _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x)) >> (u_input.b.x % 32u));
    var var_1 = any(vec3<bool>(!global1.a.x, any(vec4<bool>(all(vec4<bool>(global1.a.x, true, false, global1.a.x)), true, global1.a.x, true)), false != any(vec4<bool>(true, global1.a.x, global1.a.x, true))));
    global3 = array<Struct_2, 24>();
    var var_2 = Struct_2(global1.a);
    let var_3 = firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(firstTrailingBit(1u), _wgslsmith_clamp_u32(17237u, u_input.c.x, u_input.c.x), u_input.b.x, 1u), ~u_input.b));
    let var_4 = all(!vec2<bool>(true, !(!var_2.a.x)));
    var var_5 = Struct_1(~u_input.a.x);
    global3 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = func_2();
}

