struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(2050f, -967f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = -(((vec4<i32>(-1i) * -vec4<i32>(u_input.b, -2147483647i, -4416i, arg_0)) << (_wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, arg_3.x, 1u, u_input.a), arg_3, true), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, arg_3.x, global0.c), arg_3)) % vec4<u32>(32u))) << (vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(1u, global0.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(0u, 0u)), 2984u | global0.c)) % vec4<u32>(32u)));
    var var_1 = -1i;
    global0 = Struct_1(arg_3.x & (4294967295u >> (arg_3.x % 32u)), var_0.xxz ^ var_0.xyw, 60751u);
    global1 = ~(u_input.a ^ _wgslsmith_div_u32(global0.a, ~arg_3.x)) >= u_input.a;
    let var_2 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), !vec4<bool>(u_input.a <= u_input.a, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(true, true, true)), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false), true)), true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -1171f), vec2<f32>(-1189f, arg_2), var_2.yz)))) * vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), -122f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1640f, global2.x)) - vec2<f32>(_wgslsmith_f_op_f32(global2.x - -547f), -452f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 517f) * vec2<f32>(717f, 965f))), vec2<f32>(_wgslsmith_f_op_f32(-771f + arg_2), _wgslsmith_f_op_f32(645f + arg_2))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -518f), vec2<f32>(111f, global2.x), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(countOneBits(30987i), _wgslsmith_div_i32(u_input.b, -2147483647i), global2.x, ~vec4<u32>(global0.c, 17494u, 4294967295u, 35819u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, 2642f)))))));
    let var_1 = Struct_1(u_input.a, countOneBits(reverseBits(global0.b)), ~81666u);
    global1 = global0.c >= _wgslsmith_div_u32(global0.a | 4294967295u, abs(u_input.a) ^ ~select(4294967295u, 38695u, true));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(var_0.x, -1029f), false))), true))));
    global0 = var_1;
    return vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, var_0.x)))))));
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    global2 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)));
    global1 = !(_wgslsmith_f_op_f32(f32(-1f) * -985f) >= arg_1);
    global1 = global2.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_1) - _wgslsmith_f_op_f32(-global2.x)))));
    var var_0 = vec3<i32>(-u_input.b & abs(1i), u_input.b, _wgslsmith_mult_i32(abs(countOneBits(u_input.b)), global0.b.x));
    global2 = _wgslsmith_f_op_vec2_f32(func_2());
    return 14743i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global0.b);
    var_0 = -vec3<i32>(reverseBits(var_0.x), var_0.x & -2147483647i, _wgslsmith_add_i32(1i >> (global0.a % 32u), -global0.b.x ^ ~(-33036i)));
    global0 = Struct_1(_wgslsmith_mult_u32(~1u, ~global0.a), vec3<i32>(~0i ^ global0.b.x, func_1(global2.x, _wgslsmith_f_op_f32(-global2.x)), select(var_0.x << (select(global0.a, 18250u, true) % 32u), abs(-u_input.b), true)), ~(~global0.a));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~global0.a, _wgslsmith_add_u32(~u_input.a, min(32782u, 0u)), ~69074u) >> (~_wgslsmith_div_u32(~16990u, countOneBits(global0.a)) % 32u), ~(~firstLeadingBit(global0.a) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 16024u), vec2<u32>(global0.c, 0u)) >> (_wgslsmith_mod_u32(global0.a, u_input.a) % 32u))));
    var var_2 = ~0i;
    global0 = Struct_1(_wgslsmith_clamp_u32(min(1880u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 4294967295u, 1u, global0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c, var_1, var_1, 46629u), vec4<u32>(var_1, 0u, 1u, var_1), vec4<u32>(u_input.a, 0u, var_1, 4294967295u)))), ~1u, u_input.a), max(vec3<i32>(17479i, _wgslsmith_div_i32(i32(-1i) * -1444i, _wgslsmith_mod_i32(u_input.b, global0.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, -25557i, var_0.x), abs(vec4<i32>(u_input.b, global0.b.x, global0.b.x, global0.b.x)))), -global0.b), _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(29465u, global0.a, 1u), min(min(44344u, 1947u), _wgslsmith_dot_vec4_u32(vec4<u32>(57819u, 27199u, 1u, u_input.a), vec4<u32>(u_input.a, 43198u, var_1, global0.c)))), 1u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f)))), _wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_vec2_f32(func_2()).x, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(-364f, global0.b);
}

