struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    let var_0 = vec3<i32>(-select(24806i, -33289i, !any(vec4<bool>(true, true, false, true))), ~_wgslsmith_div_i32(u_input.e.x | u_input.e.x, max(u_input.e.x, -6084i)) << (firstTrailingBit(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a))) % 32u), ~0i);
    global0 = array<vec3<bool>, 1>();
    let var_1 = Struct_3(true, Struct_1(firstTrailingBit(u_input.a)), var_0, u_input.c.yz, ~vec4<i32>(-1i, 2147483647i, min(1i, -9950i), firstTrailingBit(-1i ^ u_input.e.x)));
    return u_input.a;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = func_3(vec3<f32>(-155f, 1047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f + 1f))));
    global0 = array<vec3<bool>, 1>();
    var var_1 = -vec2<i32>(-(25133i & u_input.b.x), i32(-1i) * -u_input.b.x);
    let var_2 = Struct_1(35668u);
    var var_3 = true;
    return 3518i;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(!(!(u_input.b.x != -2147483647i)), Struct_1(~countOneBits(0u)), _wgslsmith_add_vec3_i32(~u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, u_input.c.x, func_2(u_input.a)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), countOneBits(27536i), _wgslsmith_mod_i32(u_input.d.x, 41264i)))), _wgslsmith_div_vec2_i32(abs(firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(-1i, -2147483647i)))), u_input.e.xy), u_input.e);
    var var_1 = !select(any(!vec4<bool>(false, arg_0, arg_0, arg_0)), arg_0, all(select(!vec4<bool>(false, arg_0, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, var_0.a)))));
    var_1 = any(select(select(select(vec3<bool>(false, var_0.a, arg_0), global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec3<bool>(var_0.a, var_0.a, true), true), !(!vec3<bool>(true, var_0.a, var_0.a)), !global0[_wgslsmith_index_u32(abs(1u), 1u)])) || arg_0;
    let var_2 = max(0u, var_0.b.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(arg_1, 2195f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + arg_1))) * arg_1))));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<bool>, 1>();
    var var_0 = select(vec4<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, 1u, 23749u, arg_1.a), ~vec4<u32>(33724u, 43147u, 50421u, u_input.a)) < 4294967295u, false, _wgslsmith_mod_i32(0i, u_input.c.x) != -1i, _wgslsmith_dot_vec4_i32(~u_input.d, ~u_input.c) >= (firstLeadingBit(82917i) << ((u_input.a << (4294967295u % 32u)) % 32u))), select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, false, false, true)) == true, !any(global0[_wgslsmith_index_u32(u_input.a, 1u)]), true && all(vec4<bool>(true, false, false, true)), false), true || (true || all(vec2<bool>(true, true)))), select(vec4<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(arg_1.a, 1u)])), false, all(vec2<bool>(false, true))), vec4<bool>(!(arg_0 < -564f), false, true, true), u_input.a >= 1u));
    var_0 = select(select(vec4<bool>(any(var_0.wy), var_0.x, var_0.x, any(vec4<bool>(false, true, false, var_0.x))), !(!(!vec4<bool>(true, true, var_0.x, true))), var_0.x), vec4<bool>(any(global0[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e.x, 0i), ~u_input.b.x) < -1i, !(0u == _wgslsmith_div_u32(0u, u_input.a)), true), vec4<bool>(false, all(var_0.yx), var_0.x, all(vec3<bool>(var_0.x, true, var_0.x & false))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f * _wgslsmith_f_op_f32(-1353f + 1524f))), -316f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(358f, 393f))))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, arg_1.a), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, 37175u, 1u), ~vec3<u32>(0u, arg_1.a, arg_1.a)))), firstLeadingBit(abs(firstTrailingBit(vec3<u32>(u_input.a, arg_1.a, u_input.a))))), 1u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_4(-127f, func_1(any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-146f + -612f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-921f * _wgslsmith_f_op_f32(610f - 344f)), _wgslsmith_f_op_f32(f32(-1f) * -460f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(714f, -1661f, -1385f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1290f, 289f, 205f))))))));
    global0 = array<vec3<bool>, 1>();
    global0 = array<vec3<bool>, 1>();
    let var_1 = Struct_3(any(vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)), true)), func_1(true, _wgslsmith_f_op_f32(f32(-1f) * -156f)), u_input.e.wzx, _wgslsmith_add_vec2_i32(-u_input.c.yy, u_input.c.yx), u_input.d);
    global0 = array<vec3<bool>, 1>();
    let var_2 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(var_2, -abs(vec4<i32>(-2147483647i, var_1.e.x, var_2.x, 28153i) << (vec4<u32>(u_input.a, 44657u, 4294967295u, u_input.a) % vec4<u32>(32u)))), var_0.x, var_0.x, var_2.x << (u_input.a % 32u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a, 4294967295u, abs(_wgslsmith_clamp_u32(var_1.b.a, u_input.a, u_input.a)), abs(u_input.a)), vec4<u32>(u_input.a, 0u, ~firstTrailingBit(3634u), u_input.a)));
}

