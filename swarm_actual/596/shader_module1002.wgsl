struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<f32, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<f32> {
    global1 = array<f32, 10>();
    global0 = array<f32, 17>();
    var var_0 = _wgslsmith_mod_u32(u_input.c.x, u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(509f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1439f, 1652f)))), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 10u)])), false))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 10u)])))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(u_input.c.x, Struct_1(vec2<f32>(1f, -401f), u_input.d.yy, vec3<u32>(_wgslsmith_add_u32(~u_input.c.x, ~u_input.c.x), 1u >> (countOneBits(u_input.c.x) % 32u), ~1u)), Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), firstTrailingBit(u_input.b), select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<u32>(4294967295u, 50017u, u_input.c.x), abs(firstLeadingBit(vec3<u32>(2294u, 0u, u_input.c.x))), true)), u_input.d.x);
    let var_1 = firstTrailingBit(select(~(~vec2<i32>(-66504i, var_0.d) >> (abs(vec2<u32>(58817u, 24542u)) % vec2<u32>(32u))), reverseBits(countOneBits(reverseBits(vec2<i32>(-2147483647i, -27868i)))), vec2<bool>(!any(vec3<bool>(true, true, false)), true)));
    global0 = array<f32, 17>();
    return Struct_2(firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(var_0.b.c.x), 6390u)), var_0.b, var_0.b, var_0.c.b.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = -1553f;
    let var_1 = false;
    var var_2 = func_2();
    global1 = array<f32, 10>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, _wgslsmith_f_op_f32(1399f * global1[_wgslsmith_index_u32(~u_input.c.x, 10u)]))) * arg_1.a);
    return func_2().b;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_add_u32(4294967295u, 0u >> (func_2().c.c.x % 32u));
    let var_1 = select(select(vec4<bool>(!arg_1, all(vec4<bool>(arg_1, true, false, false)), false, select(arg_3.b.x > arg_3.b.x, true, true)), !vec4<bool>(true, true, arg_3.b.x == u_input.b.x, true), !select(vec4<bool>(arg_1, arg_1, false, true), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, true), arg_1), any(vec4<bool>(arg_1, false, arg_1, arg_1)))), select(select(select(vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), !arg_1), vec4<bool>(arg_1, u_input.d.x <= u_input.a, true, any(vec3<bool>(arg_1, false, arg_1))), select(!vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, arg_1, false, any(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), true))), all(select(select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(arg_1, arg_1, false, false), true))), all(vec4<bool>(true, true, arg_1, arg_1)));
    global0 = array<f32, 17>();
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -777f) - vec2<f32>(-746f, 1331f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1409f, arg_3.a.x) * arg_0))) * vec2<f32>(290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -1361f))), true, max(57802u, 6371u), func_1(vec3<bool>(false, true, true), Struct_1(vec2<f32>(981f, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), u_input.d.yx, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), 459f))))), vec2<i32>(func_2().c.b.x, abs(abs(u_input.d.x ^ u_input.d.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(76455u, 29036u, u_input.c.x), 35211u), vec3<u32>(u_input.c.x, ~(~0u), _wgslsmith_div_u32(~4294967295u, ~u_input.c.x)), vec3<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~_wgslsmith_mod_u32(1072u, 1u), u_input.c.x)));
    global0 = array<f32, 17>();
    global1 = array<f32, 10>();
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u >> (func_1(vec3<bool>(true, true, true), var_0, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22807u, u_input.c.x, 37922u, 1u), vec4<u32>(u_input.c.x, var_0.c.x, var_0.c.x, 0u)), 17u)]).c.x % 32u), _wgslsmith_div_u32(u_input.c.x, select(max(var_0.c.x, 4294967295u), 54474u >> (u_input.c.x % 32u), true))), _wgslsmith_clamp_u32(u_input.c.x, ~(~func_1(vec3<bool>(false, false, false), Struct_1(vec2<f32>(1623f, global1[_wgslsmith_index_u32(var_0.c.x, 10u)]), vec2<i32>(46018i, u_input.b.x), vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x)), 440f).c.x), ~0u));
    var var_2 = _wgslsmith_mult_vec2_u32(select(~var_0.c.yz, ~var_0.c.zy, any(vec4<bool>(false, true, true, true))) ^ var_0.c.zz, vec2<u32>(u_input.c.x, 1u << (func_2().c.c.x % 32u)) << (vec2<u32>(var_1, 1u) % vec2<u32>(32u)));
    let var_3 = reverseBits(~min(~abs(vec2<i32>(u_input.a, -48035i)), -var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(40807u, 10u)] - 997f))))), ~0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_0.a, true, u_input.c.x, var_0))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), vec2<u32>(firstTrailingBit(19127u), 0u << ((var_1 << (var_1 % 32u)) % 32u)));
}

