struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(1u, 4294967295u), vec2<u32>(29901u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(61091u, 1u), vec2<u32>(0u, 1u), vec2<u32>(44652u, 36940u), vec2<u32>(2566u, 4294967295u), vec2<u32>(13674u, 0u), vec2<u32>(51597u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(122099u, 106490u), vec2<u32>(39113u, 61924u), vec2<u32>(60722u, 0u), vec2<u32>(7217u, 0u), vec2<u32>(23189u, 1u), vec2<u32>(1u, 82646u));

var<private> global1: array<u32, 2> = array<u32, 2>(0u, 52180u);

var<private> global2: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(39646u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(25377u, 0u, 1744u), vec3<u32>(0u, 1u, 0u), vec3<u32>(63109u, 9472u, 9752u), vec3<u32>(49386u, 54056u, 1u), vec3<u32>(4294967295u, 0u, 38919u), vec3<u32>(61755u, 4294967295u, 27108u), vec3<u32>(0u, 12375u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(11524u, 4294967295u, 0u), vec3<u32>(26820u, 0u, 2486u), vec3<u32>(0u, 8107u, 45582u), vec3<u32>(1u, 34345u, 31964u), vec3<u32>(1u, 34622u, 86014u), vec3<u32>(1u, 71047u, 37879u), vec3<u32>(44552u, 33382u, 0u), vec3<u32>(1u, 65088u, 4294967295u), vec3<u32>(24102u, 4294967295u, 99887u), vec3<u32>(17910u, 0u, 4294967295u));

var<private> global3: array<vec2<f32>, 29>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global4 = arg_0;
    var var_0 = arg_2.x;
    var_0 = _wgslsmith_add_i32(-arg_2.x, -33909i);
    var var_1 = false;
    global4 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global4.a)), global4.d.x, 242f > global4.a)))), vec2<i32>(arg_0.b.x, arg_0.b.x), 35353u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(1276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1728f, 202f, arg_1)) + _wgslsmith_f_op_f32(-global4.a)), _wgslsmith_f_op_f32(-1000f + -350f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -3081f);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec2<i32> {
    let var_0 = false;
    let var_1 = var_0;
    global0 = array<vec2<u32>, 16>();
    var var_2 = _wgslsmith_f_op_f32(select(352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, true, _wgslsmith_mod_vec4_i32(min(vec4<i32>(global4.b.x, 0i, -42885i, global4.b.x), vec4<i32>(global4.b.x, -2147483647i, 48374i, arg_0.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, global4.b.x, 0i), vec4<i32>(arg_0.b.x, global4.b.x, arg_0.b.x, global4.b.x))), false))), true));
    global0 = array<vec2<u32>, 16>();
    return _wgslsmith_div_vec2_i32(global4.b, vec2<i32>(14506i, ~_wgslsmith_mult_i32(~(-8811i), 0i)));
}

fn func_3() -> f32 {
    var var_0 = func_1(Struct_1(321f, _wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 1i), ~(-global4.b)), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f * global4.a) - _wgslsmith_f_op_f32(-global4.a)), global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.d.x)) - _wgslsmith_f_op_f32(select(global4.a, global4.a, true))))), -1064f, global4.c).x;
    global1 = array<u32, 2>();
    global4 = Struct_1(_wgslsmith_f_op_f32(step(global4.a, _wgslsmith_f_op_f32(-439f - -580f))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global4.b, vec2<i32>(-2147483647i, -1i)), i32(-1i) * -1i), _wgslsmith_add_vec2_i32(vec2<i32>(global4.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.b.x, 5694i, 1i, 0i), vec4<i32>(global4.b.x, global4.b.x, -2147483647i, 17980i))), vec2<i32>(-2202i, global4.b.x & global4.b.x))), ~global4.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-global4.a), -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.d.x + -198f), _wgslsmith_div_f32(621f, global4.d.x), global4.d.x))));
    return global4.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1010f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-436f, _wgslsmith_f_op_f32(sign(667f)))))), _wgslsmith_mod_vec2_i32(-func_1(Struct_1(329f, vec2<i32>(global4.b.x, global4.b.x), global4.c, vec3<f32>(-1000f, global4.a, 1343f)), global4.a, 4294967295u << (global4.c % 32u)), countOneBits(abs(global4.b | vec2<i32>(global4.b.x, -22362i)))), max(~(60101u << (u_input.a % 32u)), ~(~(~global4.c))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global4.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.d + global4.d))), global4.d));
    global4 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(ceil(var_0.d.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-413f * global4.d.x)))))), func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(300f)) - _wgslsmith_f_op_f32(abs(-175f))), ~(~vec2<i32>(global4.b.x, 0i)), 1u & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 2u)], 2u)], 66935u), global4.d), -395f, 0u), global1[_wgslsmith_index_u32(global4.c, 2u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(global4.a - global4.d.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1287f * -1000f) + -1417f))), _wgslsmith_mult_vec2_i32(~(min(vec2<i32>(0i, -13624i), var_0.b) | countOneBits(vec2<i32>(global4.b.x, 0i))), global4.b), global1[_wgslsmith_index_u32(min(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(474u, global1[_wgslsmith_index_u32(90332u, 2u)]), ~vec2<u32>(u_input.c, var_0.c)), 2u)]), ~global1[_wgslsmith_index_u32(u_input.c, 2u)]), 2u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-567f, -382f, var_0.d.x))), _wgslsmith_f_op_vec3_f32(-global4.d), vec3<bool>(false, true, false))))), var_0.d));
    let var_2 = any(select(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true)) & all(vec2<bool>(true, !select(false, false, true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(879f * _wgslsmith_f_op_f32(f32(-1f) * -400f)), -var_0.b, ~select(var_0.c, 4294967295u, var_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1546f, 859f, global4.d.x))))));
    var var_3 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global4.b.x << (~u_input.a % 32u)), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)));
}

