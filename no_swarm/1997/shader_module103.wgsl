struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(236f, -444f, -1353f, -432f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<f32>) -> bool {
    var var_0 = vec3<bool>(arg_1, arg_1, ~u_input.a.x > 4755u);
    let var_1 = Struct_1(vec4<bool>(!arg_1, all(var_0.yy), true, -u_input.b > _wgslsmith_mod_i32(~(-1i), u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -299f), 1u, 4294967295u, false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(46891u, 4u)])) * _wgslsmith_f_op_f32(f32(-1f) * -835f));
    var var_3 = ~(~(~(~0u)));
    global0 = array<f32, 4>();
    return true;
}

fn func_3() -> u32 {
    var var_0 = Struct_1(!vec4<bool>(true, select(true, true, all(vec2<bool>(false, false))), ~51206u <= u_input.a.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~20386u), 4u)]), 277f), 21753u, 0u, true);
    var var_1 = ~(min(~abs(vec4<u32>(var_0.d, 4294967295u, 36187u, u_input.a.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(36183u, 28679u, u_input.a.x, var_0.c), vec4<u32>(var_0.c, var_0.d, var_0.c, 4566u)), vec4<u32>(var_0.d, u_input.a.x, 4294967295u, var_0.d) >> (vec4<u32>(4294967295u, var_0.c, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) & ~(~(~vec4<u32>(var_0.c, u_input.a.x, 4294967295u, var_0.c))));
    let var_2 = u_input.b;
    var var_3 = Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(-var_0.b) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 4u)] * global0[_wgslsmith_index_u32(10333u, 4u)]), all(var_0.a.zx), any(var_0.a.zx), var_0.a.x), var_0.b, select(64918u, _wgslsmith_clamp_u32(firstLeadingBit(var_0.d), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 272u), vec2<u32>(var_1.x, u_input.a.x)), _wgslsmith_mod_u32(var_0.d, u_input.a.x), all(vec3<bool>(var_0.e, false, false))), 117604u), all(!select(var_0.a.zwz, var_0.a.yyy, var_0.a.x))), min(var_0.d, 71464u), any(vec3<bool>(true, select(true, !var_0.a.x, all(vec2<bool>(true, var_0.a.x))), !(34658i <= var_2))));
    var var_4 = var_0.e;
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_3.d, 81737u, var_1.x) ^ abs(vec4<u32>(var_1.x, 0u, 1u, u_input.a.x)), ~vec4<u32>(var_0.c, 1u, 37426u, 27566u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = arg_0;
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    var var_1 = 670f;
    let var_2 = vec3<bool>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), (u_input.b << (abs(89492u) % 32u)) < _wgslsmith_clamp_i32(abs(u_input.b), select(-80035i, -1i, var_0.a.x), -17482i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-590f, -687f), vec2<f32>(global0[_wgslsmith_index_u32(17638u, 4u)], 1533f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.d, 4u)]), _wgslsmith_f_op_f32(min(-419f, -364f))))), func_2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.d, 4u)], -179f), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(19303u, 4u)], 1456f), vec2<f32>(arg_0.b, -478f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-934f, 1656f) + _wgslsmith_div_vec2_f32(vec2<f32>(661f, global0[_wgslsmith_index_u32(18990u, 4u)]), vec2<f32>(var_0.b, var_0.b))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), 1620f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 1757f)) * -1955f) <= _wgslsmith_f_op_f32(-1138f * _wgslsmith_f_op_f32(arg_0.b * 724f)));
    return abs(select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 36630u, u_input.a.x, 38504u), vec4<u32>(u_input.a.x, 59327u, 3102u, 71367u), true), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.c, 4294967295u, 31056u), vec4<u32>(u_input.a.x, 60756u, arg_0.d, u_input.a.x))), _wgslsmith_div_u32(max(11242u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 13977u)), arg_0.a.x)) < _wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_3(), _wgslsmith_div_u32(12041u, arg_0.d) ^ u_input.a.x), _wgslsmith_mult_u32(~reverseBits(4294967295u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(61553u, 26656u), ~u_input.a.x, max(13335u, 1u))), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    var var_0 = firstLeadingBit(select(~reverseBits(1u), u_input.a.x, !func_1(Struct_1(vec4<bool>(false, false, false, true), 785f, 32727u, 4294967295u, false), ~u_input.b)));
    var_0 = (45246u | ~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.xz), u_input.a.x ^ 8025u)) >> (u_input.a.x % 32u);
    global0 = array<f32, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 2400f)), vec4<f32>(global0[_wgslsmith_index_u32(11124u, 4u)], -551f, -255f, 392f), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -1460f, 382f, -954f) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(2938u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)])) * vec4<f32>(global0[_wgslsmith_index_u32(50753u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(33432u, 4u)], -143f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-767f, global0[_wgslsmith_index_u32(27054u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<f32>(1845f, -2658f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 1580f), true)) * vec4<f32>(-2367f, -1292f, global0[_wgslsmith_index_u32(0u, 4u)], 1154f)))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 4u)] * global0[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(floor(-821f))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(32176u), 101522u), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(27423u, 4u)], 882f)) * global0[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(1828f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 4u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] + global0[_wgslsmith_index_u32(u_input.a.x, 4u)])))));
    global0 = array<f32, 4>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -262f, -306f))))));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-915f * global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), global0[_wgslsmith_index_u32(~21197u, 4u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(31175u, 4u)], 317f, var_2.x)))), _wgslsmith_f_op_vec3_f32(abs(var_1.xxy)), _wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-490f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -311f), -745f, _wgslsmith_f_op_f32(f32(-1f) * -811f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1319f, 2606f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], var_2.x) * vec4<f32>(var_2.x, var_1.x, var_1.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 515f, -968f, global0[_wgslsmith_index_u32(0u, 4u)]))))), u_input.a.x);
}

