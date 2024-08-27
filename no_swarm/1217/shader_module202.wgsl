struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: Struct_5 = Struct_5(vec4<u32>(1u, 0u, 0u, 35854u), 4294967295u, vec4<u32>(0u, 4294967295u, 13965u, 28547u));

var<private> global2: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(2147483647i, 1431i, 0i), vec3<i32>(i32(-2147483648), 62642i, 36920i), vec3<i32>(-16440i, -1i, 33584i));

var<private> global3: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global3.x) + _wgslsmith_f_op_f32(max(global3.x, 1306f))) - _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x)))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -1630f, global3.x, 690f);
    return var_0.x;
}

fn func_3() -> f32 {
    var var_0 = global3.x;
    let var_1 = vec3<u32>(0u << (_wgslsmith_div_u32(u_input.a.x >> (global1.b % 32u), 4294967295u) % 32u), 1u, min(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, global1.b) << (21925u % 32u), global1.c.x << (countOneBits(firstLeadingBit(4294967295u)) % 32u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(278f, global3.x)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -529f);
    var var_2 = _wgslsmith_add_u32(20997u, 1u);
    return _wgslsmith_f_op_f32(max(-1299f, _wgslsmith_f_op_f32(-global3.x)));
}

fn func_2() -> bool {
    let var_0 = u_input.a.zww;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f)))));
    let var_2 = select(select(select(select(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(25657u, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(38139u, 23u)], false, global0[_wgslsmith_index_u32(14047u, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false, global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, true), false), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)], false, true)), true), vec4<bool>(true, global0[_wgslsmith_index_u32(~u_input.a.x, 23u)], false, global3.x < -1392f)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.c.x, 23u)], false, global0[_wgslsmith_index_u32(var_0.x, 23u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], false, global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), vec4<bool>(true, true, true, var_0.x > var_0.x)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(23631u, 23u)], global0[_wgslsmith_index_u32(2335u, 23u)], false, false), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(global1.b, 23u)]))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), u_input.c == u_input.c), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, false, false), vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(global1.c.x, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], false)), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, global0[_wgslsmith_index_u32(4510u, 23u)], true)), true, false)), all(!(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(20817u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(global1.c.x, 23u)])))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, var_1, 697f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, global3.x), vec3<f32>(-284f, global3.x, var_1))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, var_1, var_1), vec3<f32>(var_1, -702f, var_1))))))), ~u_input.a, !(!global0[_wgslsmith_index_u32(1u, 23u)]), max(~u_input.a.yw, _wgslsmith_add_vec2_u32(~select(u_input.a.zz, vec2<u32>(74236u, 0u), true), ~vec2<u32>(global1.c.x, u_input.a.x) ^ _wgslsmith_mod_vec2_u32(global1.a.zz, u_input.a.xw))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.a)) - vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(-var_1)));
    return !all(var_2.xy) == ((any(var_2.zw) || true) | true);
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> vec3<f32> {
    let var_0 = global3.zx;
    let var_1 = firstTrailingBit(~u_input.c) ^ u_input.c;
    var var_2 = any(vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(global1.b)), 23u)], _wgslsmith_div_u32(global1.a.x, 0u) < 114542u));
    var var_3 = global3.x;
    var var_4 = global3.x;
    return vec3<f32>(var_0.x, _wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(642f - _wgslsmith_div_f32(1527f, 743f))), _wgslsmith_f_op_f32(-global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), 410f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global3 = _wgslsmith_f_op_vec3_f32(func_4(func_2(), Struct_5(_wgslsmith_mult_vec4_u32(u_input.a >> (vec4<u32>(0u, 21336u, global1.a.x, 44776u) % vec4<u32>(32u)), vec4<u32>(global1.b, 42342u, _wgslsmith_mult_u32(global1.c.x, global1.b), ~0u)), abs(_wgslsmith_div_u32(u_input.a.x >> (61224u % 32u), global1.c.x | u_input.a.x)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 4955u)), vec4<u32>(~u_input.a.x, 1u, global1.c.x, global1.a.x)))));
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(-1128f, global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(-global3.x), global3.x), vec4<u32>(0u, select(_wgslsmith_mod_u32(~u_input.a.x, 40376u), 1u, global0[_wgslsmith_index_u32(0u, 23u)]), ~max(1u, _wgslsmith_add_u32(u_input.a.x, 15507u)), _wgslsmith_dot_vec3_u32(~(~u_input.a.xyy), _wgslsmith_div_vec3_u32(vec3<u32>(53355u, 83705u, u_input.a.x), ~vec3<u32>(54810u, global1.c.x, 0u)))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), 23u)], _wgslsmith_mult_vec2_u32(u_input.a.zy, select(u_input.a.zy, ~vec2<u32>(0u, u_input.a.x), true) & ~u_input.a.zz));
    global3 = var_0.a;
    let var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, u_input.b, u_input.b), max(~firstTrailingBit(u_input.b), firstTrailingBit(12872i))), any(vec3<bool>(true, any(vec3<bool>(var_0.c, var_0.c, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-395f * var_0.a.x))))), global3.x), vec2<i32>(u_input.c, _wgslsmith_clamp_i32(8225i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.a, var_1.a, var_1.a), u_input.b), -2147483647i)));
}

