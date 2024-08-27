struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: u32;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    global0 = array<f32, 20>();
    var var_0 = global2.b;
    global0 = array<f32, 20>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 20u)]) - _wgslsmith_f_op_f32(-global2.a)))));
    var var_2 = u_input.b.x;
    return _wgslsmith_sub_u32((min(4294967295u, select(16287u, 30303u, false)) & 0u) | (u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(14785u, 0u), vec2<u32>(65643u, 4294967295u))) % 32u)), 1u << ((_wgslsmith_mult_u32(27778u, ~u_input.a) ^ 4294967295u) % 32u));
}

fn func_2() -> vec4<u32> {
    global1 = 0u;
    let var_0 = global0[_wgslsmith_index_u32(4294967295u >> (u_input.a % 32u), 20u)];
    global1 = _wgslsmith_mod_u32(func_3() | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 76243u), ~vec2<u32>(11160u, 4294967295u)), firstTrailingBit(~4294967295u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(global2.c, global0[_wgslsmith_index_u32(0u, 20u)])), global0[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(622f, global2.c))));
    var var_2 = abs(u_input.b.x);
    return vec4<u32>(u_input.a, u_input.a, func_3(), _wgslsmith_sub_u32(abs(u_input.a), 4294967295u));
}

fn func_4(arg_0: u32, arg_1: f32) -> vec3<bool> {
    global1 = countOneBits(~1u);
    global1 = 4294967295u;
    var var_0 = ~85818u;
    var var_1 = vec3<i32>(1i, 82278i, u_input.c.x);
    var var_2 = u_input.b.x;
    return select(!select(select(!vec3<bool>(true, global2.b, false), select(vec3<bool>(global2.b, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, global2.b)), vec3<bool>(global2.b, any(vec2<bool>(true, true)), any(vec3<bool>(global2.b, global2.b, false))), true), vec3<bool>(!global2.b, true, all(select(!vec2<bool>(true, global2.b), !vec2<bool>(global2.b, true), vec2<bool>(true, global2.b)))), !(!(!vec3<bool>(global2.b, global2.b, false))));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = firstTrailingBit(u_input.c.yx);
    var var_1 = func_4(_wgslsmith_dot_vec4_u32(~func_2() | abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 42407u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<u32>(func_2().x, u_input.a, ~_wgslsmith_sub_u32(u_input.a, u_input.a), ~(~0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(188f, -197f)) - global2.c));
    return _wgslsmith_div_i32(var_0.x, u_input.c.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_f_op_f32(floor(306f)), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(9457u, 20u)]))))));
    var var_0 = u_input.b.xy;
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(1u, u_input.a), 36435u, abs(u_input.a)), ~(~vec4<u32>(50464u, 15727u, 0u, 8487u)), global2.b)), ~min(~vec4<u32>(4294967295u, 0u, u_input.a, 1800u), vec4<u32>(u_input.a, u_input.a, u_input.a, 11217u) << (vec4<u32>(u_input.a, 63002u, 4294967295u, u_input.a) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(58743u, u_input.a, 1402u, u_input.a) | vec4<u32>(1u, u_input.a, 0u, 24067u)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.a, 48649u), u_input.a, u_input.a, ~29595u) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_div_f32(-957f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(15396u, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 20u)]))))));
    return Struct_2(1222f, any(vec3<bool>(u_input.a < ~1u, false, any(select(vec3<bool>(true, true, global2.b), vec3<bool>(arg_1.a, false, false), arg_1.a)))), global0[_wgslsmith_index_u32(u_input.a, 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-min(abs(func_1(-1405f)), u_input.b.x), Struct_1(all(!(!vec3<bool>(false, global2.b, global2.b))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(21623u, 20u)])), _wgslsmith_f_op_f32(round(107f)))) + _wgslsmith_f_op_f32(-global2.c)), -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) << (~106629u % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1565f))))));
    global2 = func_5(1i, Struct_1(false, ~firstLeadingBit(u_input.b.x >> (u_input.a % 32u)), -322f, ~countOneBits(u_input.c.x) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(24265u, u_input.a), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 49972u) % vec2<u32>(32u))) % 32u), -1000f));
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(542f)), 582f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(round(-594f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-773f, 354f)))), -1883f);
    var_2 = func_5(u_input.c.x, Struct_1(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 20u)]) >= 1870f, global2.b, true), i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), var_2.a, ~(~(~(-33830i))), _wgslsmith_f_op_f32(select(-367f, _wgslsmith_f_op_f32(trunc(var_2.a)), global2.b))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global2.c, _wgslsmith_f_op_f32(floor(var_2.c)), var_1)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), -669f))), var_1, _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1406f - global2.a) - -2171f)));
    var var_4 = select(vec4<bool>(-u_input.c.x < (_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.b.xx) ^ _wgslsmith_mod_i32(2147483647i, 87236i)), true, all(select(vec4<bool>(true, var_2.b, false, var_0.b), vec4<bool>(true, var_2.b, true, true), false)) != var_2.b, !(any(vec2<bool>(var_0.b, false)) | false)), !vec4<bool>(true, all(vec2<bool>(true, true)), !(422f < global2.a), false), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(~91612u, 4294967295u)), u_input.a), vec3<u32>(~102091u, u_input.a, select(abs(~u_input.a), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 43044u, 26515u, 51345u), vec4<bool>(var_2.b, true, true, var_4.x)), vec4<u32>(u_input.a, u_input.a, 34736u, 0u)), true != (-2147483647i == u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(max(-1198f, var_0.a)), false)) * _wgslsmith_f_op_f32(f32(-1f) * -454f)));
}

