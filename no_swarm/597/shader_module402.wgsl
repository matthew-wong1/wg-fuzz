struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<u32>(32232u, 46579u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    global0 = Struct_1(arg_0.a, u_input.c.yz);
    var var_0 = global0.a;
    global0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-336f, arg_3.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - arg_3.x) - _wgslsmith_f_op_f32(-arg_3.x))), vec2<u32>(arg_2.a.b.x, 0u));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -318f, arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, 991f, 274f, arg_3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -673f)))))), arg_1.x || all(vec4<bool>(false, true, arg_0.a, arg_0.a | false)));
    return true;
}

fn func_2() -> bool {
    let var_0 = u_input.b;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), -2599f, _wgslsmith_f_op_f32(-1335f * 236f), -104f))), true);
    global0 = Struct_1(func_3(Struct_1(false, min(vec2<u32>(u_input.d, global0.b.x), ~global0.b)), vec2<bool>(select(var_1.b, !global0.a, var_1.b), !var_1.b), Struct_3(Struct_2(~vec4<i32>(-2147483647i, var_0, 2147483647i, u_input.b), vec2<u32>(1u, 29806u), Struct_1(var_1.b, vec2<u32>(global0.b.x, 4294967295u)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, -904f, global0.a)), _wgslsmith_f_op_f32(-1181f - var_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(-1584f)), _wgslsmith_f_op_f32(-var_1.a.x)), all(vec3<bool>(global0.a, true, global0.a))))), _wgslsmith_mult_vec2_u32(firstLeadingBit(global0.b) << (max(_wgslsmith_div_vec2_u32(vec2<u32>(16337u, 4294967295u), vec2<u32>(31033u, 2621u)), ~vec2<u32>(4294967295u, 29016u)) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a.x, u_input.c.x)) >> (~(~u_input.a) % vec2<u32>(32u))));
    global0 = Struct_1(var_1.b, u_input.c.yw);
    return any(vec3<bool>(global0.a, any(select(select(vec4<bool>(var_1.b, true, global0.a, var_1.b), vec4<bool>(false, true, false, false), false), select(vec4<bool>(global0.a, true, global0.a, var_1.b), vec4<bool>(var_1.b, global0.a, global0.a, var_1.b), vec4<bool>(false, false, global0.a, true)), select(vec4<bool>(true, true, false, global0.a), vec4<bool>(var_1.b, global0.a, global0.a, false), vec4<bool>(var_1.b, global0.a, global0.a, true)))), false));
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<i32>(u_input.b, ~7010i);
    var var_1 = false;
    var_0 = vec2<i32>(var_0.x | 10132i, abs(_wgslsmith_sub_i32(select(var_0.x, var_0.x, global0.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global0.b.x, u_input.d), vec4<u32>(u_input.d, global0.b.x, global0.b.x, 0u)) % 32u), -12154i & var_0.x)));
    var_1 = !(func_2() || !global0.a);
    let var_2 = _wgslsmith_mod_vec2_i32(min(~vec2<i32>(-1i << (global0.b.x % 32u), -u_input.b), max(vec2<i32>(-var_0.x, -1i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, u_input.b), vec2<i32>(2147483647i, 2147483647i)))), ~vec2<i32>(9351i, ~0i));
    return Struct_3(Struct_2(-vec4<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), 10246i, 69845i, firstTrailingBit(-1i)), u_input.a ^ firstTrailingBit(global0.b), Struct_1(false, _wgslsmith_add_vec2_u32(u_input.c.zy, global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(global0.b.x), ~116380u, _wgslsmith_sub_u32(81562u, _wgslsmith_mult_u32(u_input.c.x, ~global0.b.x)), global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1015f)) * -758f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1941f, -2058f) * _wgslsmith_f_op_f32(min(1406f, 830f))))), _wgslsmith_mult_vec2_i32(-var_0.a.a.xw, vec2<i32>(i32(-1i) * -2147483647i, 1i)), 69563i >> (abs(~var_0.a.b.x >> (global0.b.x % 32u)) % 32u), vec4<u32>(max(13388u, ~var_0.a.b.x), _wgslsmith_mult_u32(abs(1u), global0.b.x), 1u, global0.b.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.c.b.x, u_input.a.x, ~global0.b.x, firstLeadingBit(1u)), vec4<u32>(74587u, 23888u, countOneBits(31845u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0.b.x), var_0.a.c.b))) % vec4<u32>(32u)));
}

