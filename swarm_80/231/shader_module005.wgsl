struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true));

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, true, false, false, false, true, false, false, true, true, true, true, false, true, false);

var<private> global2: array<Struct_2, 24>;

var<private> global3: vec4<u32> = vec4<u32>(5477u, 64748u, 4294967295u, 39534u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: bool) -> f32 {
    global1 = array<bool, 16>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, 2511f), -244f)))), _wgslsmith_div_f32(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = any(!(!vec4<bool>(arg_0.a.c.x < arg_0.a.d, arg_0.a.a.x && true, true, false)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1313f + arg_0.a.b) - 1034f) - _wgslsmith_f_op_f32(-arg_0.a.b))), 1000f);
    global0 = array<vec4<bool>, 5>();
    global1 = array<bool, 16>();
    let var_2 = vec2<u32>(global3.x, ~arg_0.a.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x >> (_wgslsmith_add_u32(min(u_input.c.x, 51553u), max(85221u >> (u_input.d.x % 32u), ~global3.x) << (60333u % 32u)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_f_op_f32(-189f + 1888f))))));
    var var_2 = false;
    var var_3 = u_input.a << (global3.x % 32u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1650f)), _wgslsmith_mult_i32(-_wgslsmith_mult_i32(2147483647i, u_input.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -2147483647i))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~4294967295u, 24u)])), vec2<f32>(725f, _wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(f32(-1f) * -1721f))), vec2<i32>(_wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.a, 20613i)), ~vec2<i32>(-1i, u_input.a) ^ -vec2<i32>(-15027i, u_input.a)), ~_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(35772i, u_input.a))), abs(-23230i), -907f);
}

