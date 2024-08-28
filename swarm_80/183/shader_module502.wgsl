struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4166u, 1u);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 14011u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = 1i;
    global3 = vec2<u32>(firstLeadingBit(4294967295u & ~(~u_input.d.x)), global0.x);
    global3 = u_input.d.wy;
    var var_1 = 54073i;
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~global0.x), global3.x), select(vec2<u32>(~18965u, ~84089u), vec2<u32>(countOneBits(u_input.a << (0u % 32u)), max(u_input.d.x, _wgslsmith_clamp_u32(17494u, global3.x, 1u))), global1.ww));
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: f32, arg_3: f32) -> vec4<bool> {
    global0 = _wgslsmith_sub_vec2_u32(abs(u_input.d.wz), _wgslsmith_add_vec2_u32(u_input.d.yw, ~vec2<u32>(_wgslsmith_mod_u32(global3.x, global0.x), ~u_input.d.x)));
    var var_0 = ~_wgslsmith_mod_vec4_u32(u_input.d, u_input.d);
    global0 = u_input.d.yx;
    var var_1 = 48535u;
    global0 = u_input.d.xx;
    return select(select(vec4<bool>(arg_1, true, global1.x, !any(global1.yy)), select(vec4<bool>(global1.x, all(vec4<bool>(true, arg_1, false, arg_1)), arg_1 | arg_1, !arg_1), vec4<bool>(all(global1.yw), arg_1 == arg_1, true, all(vec3<bool>(arg_1, false, arg_1))), global1.x), !(!(!vec4<bool>(arg_1, true, arg_1, arg_1)))), select(vec4<bool>(true, false, true, false), vec4<bool>(select(false, true, true), true, false, !(arg_1 | global1.x)), !select(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, global1.x, arg_1, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, true, true, global1.x), false), arg_1 && false)), all(global1.yxz));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = !(!select(!select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, global1.x)), !(!vec4<bool>(global1.x, false, false, true)), !global1.x || false));
    let var_0 = abs(u_input.c.x);
    global1 = !select(func_3(vec2<f32>(854f, _wgslsmith_f_op_f32(948f - 371f)), !all(global1.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1170f, -1039f)) + -121f), -401f), vec4<bool>(func_1(!vec4<bool>(true, global1.x, global1.x, true), -594f, _wgslsmith_f_op_f32(f32(-1f) * -1073f)), false, !(global1.x & true), global1.x), func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, -1756f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(399f, -640f) - vec2<f32>(253f, 346f)), vec2<bool>(true, true))), false && global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2069f) + -2272f)));
    var var_1 = vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(global0.x, u_input.a)), 3623u, ~_wgslsmith_dot_vec3_u32(countOneBits(global2[_wgslsmith_index_u32(arg_0.x, 3u)]) & _wgslsmith_div_vec3_u32(vec3<u32>(global3.x, arg_0.x, arg_0.x), vec3<u32>(0u, global3.x, 15797u)), _wgslsmith_sub_vec3_u32(u_input.d.yzz, select(vec3<u32>(0u, global0.x, 0u), vec3<u32>(447u, 4294967295u, arg_0.x), false))));
    var var_2 = -1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-851f * _wgslsmith_f_op_f32(abs(175f))), 599f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, _wgslsmith_sub_vec4_u32(u_input.d, u_input.d)), u_input.d)), vec4<u32>(reverseBits(~1u & (4294967295u << (global3.x % 32u))), global3.x >> (_wgslsmith_clamp_u32(u_input.a, ~1u, 1u) % 32u), ~u_input.d.x, ~79558u));
    var var_1 = u_input.c.x;
    var_1 = max(2147483647i, ~abs(_wgslsmith_clamp_i32(20006i, 2147483647i, 1i) ^ ~(-1i)));
    let var_2 = reverseBits(u_input.c);
    let var_3 = true;
    global3 = u_input.d.xw;
    global1 = vec4<bool>(true, true, select(any(!global1.wwy), func_1(vec4<bool>(true, var_3, var_3, false), _wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_f_op_f32(f32(-1f) * -127f)) & func_1(!vec4<bool>(true, global1.x, false, false), _wgslsmith_f_op_f32(func_2(vec3<u32>(global3.x, var_0.x, 28079u))), _wgslsmith_f_op_f32(f32(-1f) * -828f)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-164f)) - _wgslsmith_f_op_f32(f32(-1f) * -643f)) - -1040f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(633f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2470f, -216f) + _wgslsmith_f_op_f32(1023f - 712f)), -1048f))), 1u, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.x, global0.x), u_input.b)), ~abs(abs(105262u)), 33680u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, global3.x, 4294967295u))) - -276f), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-763f - -930f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(399f)) * _wgslsmith_f_op_f32(-1000f - 731f)))), vec4<i32>(i32(-1i) * -23580i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, -1i, var_2.x) ^ vec4<i32>(u_input.c.x, 2147483647i, var_2.x, 1i), vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)), -10760i), max(-u_input.c.x, var_2.x), _wgslsmith_clamp_i32(var_2.x, 31209i, -910i)));
}

