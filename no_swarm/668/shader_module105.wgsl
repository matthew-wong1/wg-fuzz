struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1603f;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<u32> {
    let var_0 = all(select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0), !(!vec2<bool>(arg_0, true)), true)) & false;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.x, global1.a.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-978f, global2.a.x))))))), global1.a.zy, select(vec2<bool>(true, !var_0), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), var_0 | var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, 2948f))), vec2<f32>(462f, -925f))))))));
    var var_2 = -1i;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.a)) + global1.a));
    var_2 = _wgslsmith_mult_i32(-22471i, -1i) | u_input.b.x;
    return max(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, _wgslsmith_add_u32(2027u, 6783u), _wgslsmith_div_u32(1u, 5264u))), vec3<u32>(~43928u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(36012u, 34257u)), 24724u), vec3<u32>(~21459u, 1u, _wgslsmith_mod_u32(~40165u, 1u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 0u, 1u)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(9788u, 0u, 81198u), false)), firstLeadingBit(vec3<u32>(61990u, min(0u, 45372u), ~1u))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1634f, _wgslsmith_f_op_f32(-297f * global2.a.x), _wgslsmith_div_f32(-283f, -1093f), global2.a.x) + vec4<f32>(1000f, arg_2.a.x, arg_1, _wgslsmith_div_f32(global2.a.x, 290f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1466f, 1000f, global2.a.x, 163f)))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) * _wgslsmith_f_op_f32(-global2.a.x)), arg_0, arg_2.a.x, _wgslsmith_f_op_f32(ceil(444f)))));
    var var_0 = Struct_3(arg_2, Struct_1(~func_3(true, _wgslsmith_div_f32(arg_2.a.x, arg_2.a.x)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true), -(~firstLeadingBit(vec3<i32>(-3553i, u_input.b.x, -35784i))), vec2<u32>(0u, 4294967295u)), vec4<i32>(-u_input.a, 18189i, u_input.a, -2147483647i), countOneBits(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-global2.a.x) == arg_2.a.x);
    var var_1 = reverseBits(firstTrailingBit(vec3<i32>(var_0.c.x, var_0.b.c.x, 0i)) ^ vec3<i32>(-1i, -5179i >> (var_0.d.x % 32u), i32(-1i) * -39647i)) & countOneBits(select((vec3<i32>(-17306i, u_input.b.x, u_input.b.x) >> (var_0.b.a % vec3<u32>(32u))) << (vec3<u32>(494u, var_0.d.x, var_0.d.x) % vec3<u32>(32u)), var_0.b.c, vec3<bool>(true, any(vec4<bool>(var_0.b.b.x, true, false, false)), 34904u < var_0.b.a.x)));
    var_0 = Struct_3(arg_2, var_0.b, -max(vec4<i32>(firstLeadingBit(56809i), 1i, -1i, -1i >> (var_0.d.x % 32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 20765i, -1i, -1i), vec4<i32>(6067i, 2147483647i, var_1.x, 1i), var_0.c)), ~(~vec2<u32>(~0u, func_3(var_0.e, arg_0).x)), any(vec3<bool>(any(!var_0.b.b), all(vec2<bool>(var_0.b.b.x, true)), !(1085f >= arg_2.a.x))));
    return ~4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = global1.a.x;
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.a.x))))), global2.a.x, global1.a.x, _wgslsmith_f_op_f32(round(155f))));
    let var_2 = vec2<bool>(!arg_1.x, false);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(f32(-1f) * -857f)), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * 708f)), global2.a.x))));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1236f)))), _wgslsmith_f_op_f32(var_1.a.x - global1.a.x), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))))));
    return Struct_2(var_1.a);
}

fn func_1() -> f32 {
    global2 = func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~14731u, ~0u), vec2<u32>(1u, 1u)), ~vec2<u32>(func_2(1776f, -780f, Struct_2(global1.a)), _wgslsmith_mod_u32(0u, 10326u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false)), vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false))));
    global1 = func_4(1u, !(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true)));
    global2 = func_4(0u, !vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_clamp_i32(-3390i, u_input.b.x, 21766i) != -u_input.b.x, any(vec2<bool>(true, true)), true));
    let var_0 = vec4<u32>(1u ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(27413u, 10403u << (0u % 32u), ~0u), 1u), 4974u, 1753u, abs(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 40268u), vec3<u32>(9245u, 0u, 0u))), _wgslsmith_div_u32(55839u, ~33210u))));
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    return _wgslsmith_f_op_f32(-606f + 926f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(877f)), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(115f + global1.a.x))))));
    var var_0 = Struct_3(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), select(vec4<bool>(true, all(vec2<bool>(false, false)), true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), true)), Struct_1(~vec3<u32>(reverseBits(1u), ~4294967295u, ~25405u), vec3<bool>(true, true, true), vec3<i32>(-1i) * -select(vec3<i32>(-1i, -40802i, 0i), vec3<i32>(-89965i, u_input.b.x, u_input.b.x), false), vec2<u32>(1u, ~1u)), vec4<i32>(~(~(~u_input.a)), _wgslsmith_add_i32(-max(u_input.a, u_input.a), u_input.b.x), u_input.a, (~u_input.b.x | (i32(-1i) * -2147483647i)) >> (4294967295u % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, abs(4294967295u)), _wgslsmith_mod_vec2_u32(select(select(vec2<u32>(31569u, 11804u), vec2<u32>(4996u, 1u), vec2<bool>(false, true)), vec2<u32>(21882u, 13373u), true), countOneBits(vec2<u32>(10851u, 4294967295u)))), all(vec2<bool>(true, true)));
    global2 = Struct_2(vec4<f32>(-539f, _wgslsmith_f_op_f32(step(var_0.a.a.x, 248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(201f))), global1.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), global2.a.x, global2.a.x, 1080f);
    var var_2 = -1365f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * global2.a.x))), -688f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1130f, 1803f)))))), abs(~(i32(-1i) * -21554i)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-809f))), _wgslsmith_f_op_f32(func_1()), func_4(~_wgslsmith_add_u32(0u, var_0.d.x), vec4<bool>(-985f == var_1.x, true, var_0.b.b.x, false))), -1333f, var_0.d.x);
}

