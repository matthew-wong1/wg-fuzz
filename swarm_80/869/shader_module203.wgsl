struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-16033i, 11718i, 1i, -1i, 53632i, 1i);

var<private> global1: array<f32, 25>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_1.c, 25u)], -1000f));
    global1 = array<f32, 25>();
    global0 = array<i32, 6>();
    global1 = array<f32, 25>();
    global0 = array<i32, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 25u)]), global1[_wgslsmith_index_u32(~arg_0, 25u)]) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.a, 25u)], global1[_wgslsmith_index_u32(arg_1.c, 25u)]))) + global1[_wgslsmith_index_u32(countOneBits((arg_1.c ^ arg_1.b.x) << ((arg_0 << (44566u % 32u)) % 32u)), 25u)]));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<i32, 6>();
    var var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 25u)] - -226f);
    global1 = array<f32, 25>();
    var_0 = _wgslsmith_f_op_f32(func_2(arg_0.b.x, Struct_1(0u, _wgslsmith_add_vec4_u32(arg_0.b, countOneBits(vec4<u32>(4294967295u, 0u, arg_0.a, arg_0.a))), 0u)));
    var var_1 = -(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(58995i, u_input.a, -1i, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a, -33152i, -5665i)), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.a, 6u)], -22172i, -61027i, -7732i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(15358i, -1i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(96867u, 6u)], -18336i, u_input.a)))) & ~u_input.a);
    return false;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = 11573u;
    var var_1 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(~4294967295u, ~30011u) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~0u, 1u, min(0u, 1u)), ~(~vec4<u32>(515u, 1u, 1299u, 1u)))), 24u)];
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(min(var_1.b.x, var_1.c), ~4294967295u, ~24165u), min(~(~var_1.b.xwy), select(max(vec3<u32>(var_1.b.x, var_1.c, var_1.a), vec3<u32>(1u, 4502u, 0u)), vec3<u32>(36987u, var_1.a, var_1.c), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, true), false)))), var_1.b, reverseBits(1u >> (var_1.a % 32u)));
    var_1 = Struct_1(firstTrailingBit(var_2.b.x), var_2.b, abs(~4294967295u));
    var var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(30222i, 0i, u_input.a), ~(~(~vec3<i32>(arg_1.x, 82405i, -1i)))), _wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1.x, -1i, -1i), min(vec3<i32>(-24273i, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<i32>(u_input.a, arg_1.x, u_input.a))), countOneBits(min(-vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(var_2.c, 6u)], 2147483647i), vec3<i32>(-25733i, arg_1.x, -1i) << (vec3<u32>(61710u, var_1.c, var_2.a) % vec3<u32>(32u))))));
    return select(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0, arg_0), true), vec3<bool>(arg_0, false, false), true)), vec3<bool>(!arg_0, arg_0, select(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, false))), select(!arg_0, true, all(vec3<bool>(true, arg_0, false))), false)), !(!(!select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    global1 = array<f32, 25>();
    global2 = array<Struct_1, 24>();
    global0 = array<i32, 6>();
    let var_0 = select(vec3<bool>(true, true, func_1(global2[_wgslsmith_index_u32(1u, 24u)])), select(select(vec3<bool>(true, any(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true)), func_3(true, vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, u_input.a), i32(-1i) * -37242i)));
    global2 = array<Struct_1, 24>();
    var var_1 = -118f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, ~(~4294967295u)), _wgslsmith_div_vec2_u32(~select(~vec2<u32>(1u, 0u), min(vec2<u32>(22269u, 0u), vec2<u32>(1u, 23035u)), func_3(false, vec2<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 0i)).zx), select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 2539u), select(vec2<u32>(9161u, 0u), vec2<u32>(1u, 4294967295u), vec2<bool>(var_0.x, true))), vec2<bool>(true, true))), -870f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(573f, -832f)) + _wgslsmith_f_op_f32(floor(-1402f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14705u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -432f)))) * _wgslsmith_f_op_f32(404f * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(abs(17754u), 25u)], global1[_wgslsmith_index_u32(abs(18323u), 25u)], var_0.x)))));
}

