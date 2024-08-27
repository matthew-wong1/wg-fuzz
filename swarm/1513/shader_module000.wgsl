struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_1(arg_2.x, u_input.c);
    let var_1 = u_input.c.x;
    var var_2 = u_input.a;
    var var_3 = abs(39780u) | _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(13974u, 17751u), ~arg_1, ~var_2.x, 10513u), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(37764u, arg_1, 4294967295u, var_2.x), vec4<u32>(var_2.x, arg_1, 35191u, arg_1)), ~vec4<u32>(arg_0, var_2.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.a, arg_2.x, arg_2.x, true)));
    var var_4 = _wgslsmith_add_u32(606u, arg_1);
    return false;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(true & all(vec2<bool>(true, true)), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-u_input.e.x, -28907i, -14402i, -9272i), vec4<i32>(_wgslsmith_mult_i32(arg_0, -30066i), ~countOneBits(-1i), -u_input.d.x, _wgslsmith_mult_i32(2147483647i, u_input.e.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1419f, 195f, 168f, -850f))))));
    let var_3 = vec4<i32>(-6481i, arg_1, u_input.d.x, -2147483647i);
    var var_4 = vec3<f32>(993f, var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)));
    return Struct_1(select(select(any(vec2<bool>(true, true)), !var_1.a, func_3(4294967295u, 0u, vec3<bool>(var_1.a, false, var_1.a)) && !var_1.a), var_1.a, var_1.a), vec4<i32>(-19109i, firstTrailingBit(1i) >> ((u_input.a.x >> (0u % 32u)) % 32u), ~(-(arg_0 | 2147483647i)), 1i ^ var_1.b.x));
}

fn func_1() -> vec3<i32> {
    let var_0 = ~u_input.a.x;
    let var_1 = func_2(~u_input.e.x, u_input.e.x);
    var var_2 = Struct_3(var_1, select(vec3<bool>(u_input.a.x <= _wgslsmith_mult_u32(0u, 84593u), !var_1.a | var_1.a, false), select(vec3<bool>(true, var_1.a == false, true), vec3<bool>(func_3(33813u, 1u, vec3<bool>(var_1.a, false, true)), var_1.a & var_1.a, var_1.a), vec3<bool>(0u >= var_0, true, true)), vec3<bool>(false, false, var_1.a)));
    var_2 = Struct_3(func_2(4488i, countOneBits(i32(-1i) * -var_1.b.x)), vec3<bool>(all(!(!vec4<bool>(true, var_2.b.x, var_1.a, var_2.a.a))), var_1.a, all(select(vec3<bool>(var_2.b.x, var_2.a.a, true), select(vec3<bool>(var_1.a, var_2.a.a, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, var_2.a.a)))));
    var_2 = Struct_3(Struct_1((~var_0 >> (~var_0 % 32u)) < abs(u_input.a.x), u_input.c), !(!vec3<bool>(true, var_1.a | var_1.a, func_2(var_1.b.x, -1i).a)));
    return _wgslsmith_mod_vec3_i32(var_1.b.zxz, vec3<i32>(75705i, var_1.b.x, abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(529i, 0i), i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(48995u, u_input.a.x), u_input.a.x ^ (15913u << (u_input.a.x % 32u))) != 1u);
    let var_1 = ~(vec4<u32>(~(~41836u), max(abs(u_input.a.x), abs(8295u)), firstTrailingBit(abs(u_input.a.x)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 30118u)), vec3<u32>(4988u, u_input.a.x, u_input.a.x))) >> (~vec4<u32>(1u, _wgslsmith_mult_u32(30259u, 1u), u_input.a.x, max(31003u, 79435u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec3_i32(func_1(), ~min(u_input.e & vec3<i32>(u_input.e.x, u_input.d.x, -2147483647i), vec3<i32>(max(u_input.c.x, u_input.c.x), 22138i, -179i)));
    var_2 = u_input.d.x;
    var_2 = min(-4887i << (u_input.a.x % 32u), u_input.e.x);
    var var_3 = select(vec2<bool>(func_3(var_1.x, ~abs(0u), vec3<bool>(true, true, true)), true), !vec2<bool>(false, false | all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-644f, 736f))), _wgslsmith_f_op_f32(-1013f + 975f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -243f))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4)) - 1373f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(min(1345f, 561f))))));
    var var_6 = 4294967295u & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(80285u, firstTrailingBit(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 25793u, var_1.x, u_input.a.x) & var_1, ~vec4<u32>(var_1.x, 4294967295u, 0u, 0u))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)))), u_input.b, -func_2(-firstTrailingBit(0i), u_input.d.x).b.x, ~var_1.ww ^ u_input.a);
}

