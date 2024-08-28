struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(58594u, 4294967295u, 0u, 1u), vec4<u32>(0u, 3888u, 0u, 45963u), vec4<u32>(4294967295u, 75239u, 60556u, 0u), vec4<u32>(56904u, 0u, 29507u, 120646u), vec4<u32>(8721u, 1u, 23476u, 4294967295u), vec4<u32>(0u, 4294967295u, 85511u, 94200u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(28067u, 0u, 20859u, 30628u));

var<private> global1: vec2<f32>;

var<private> global2: Struct_4 = Struct_4(31823u, vec2<f32>(640f, -682f));

var<private> global3: Struct_2 = Struct_2(vec2<u32>(1u, 4294967295u), vec2<f32>(587f, -1000f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global2 = Struct_4(u_input.c.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(global1.x + 795f)), global3.b, all(vec3<bool>(true, true, false)) && true)), global2.b, !any(vec2<bool>(true, true)) | true)));
    var var_0 = Struct_2(~(~vec2<u32>(1u, _wgslsmith_mod_u32(global3.a.x, u_input.a.x))), vec2<f32>(global3.b.x, global3.b.x));
    global0 = array<vec4<u32>, 9>();
    let var_1 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)), !(var_0.b.x <= global2.b.x) | true);
    var var_2 = Struct_2(max(vec2<u32>(~abs(var_0.a.x), _wgslsmith_mult_u32(~global3.a.x, _wgslsmith_sub_u32(global3.a.x, u_input.a.x))), vec2<u32>(6633u, abs(29681u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), global2.b.x)));
    return firstLeadingBit(2147483647i ^ _wgslsmith_dot_vec2_i32(min(firstLeadingBit(vec2<i32>(-2920i, 2147483647i)), countOneBits(vec2<i32>(-73558i, u_input.d))), firstTrailingBit(vec2<i32>(u_input.d, u_input.b))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-9163i, -20098i), vec2<i32>(0i, u_input.b), vec2<i32>(u_input.d, u_input.b))), _wgslsmith_add_i32(u_input.d, ~(-23009i))), u_input.a.x, u_input.a.x, -vec3<i32>(_wgslsmith_mod_i32(-1i, -2147483647i), 2147483647i, ~u_input.b)), !(~u_input.a.x != 1u), -1i, Struct_2(vec2<u32>(global2.a, ~global3.a.x), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1636f * -566f))))));
    let var_1 = !select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, var_0.b), !vec4<bool>(false, var_0.b, false, var_0.b)), !(!(!vec4<bool>(true, var_0.b, false, var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) >= -448f);
    var var_2 = func_3();
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(-global2.b));
    let var_3 = var_0.d;
    return Struct_1(-14003i, var_3.a.x, 4294967295u, -vec3<i32>(var_0.a.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -20800i), var_0.a.d.xz), ~_wgslsmith_clamp_i32(u_input.b, var_0.a.d.x, var_0.a.a)));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = 1f;
    let var_1 = Struct_3(func_2(), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, false), any(vec4<bool>(true, true, true, true)))), ~arg_0, Struct_2(~firstLeadingBit(vec2<u32>(0u, 61273u)), _wgslsmith_f_op_vec2_f32(global2.b - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global3.b, global3.b))))));
    global2 = Struct_4(u_input.c.x, vec2<f32>(var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(862f + var_0)))));
    global2 = Struct_4(_wgslsmith_div_u32(~3201u, var_1.d.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global3.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(countOneBits(global2.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x))))), _wgslsmith_f_op_f32(func_1(u_input.b))));
    let var_1 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1353f) + vec2<f32>(var_0.b.x, -928f)) + vec2<f32>(1319f, global1.x)))))));
    let var_2 = true;
    let var_3 = Struct_3(func_2(), false, -1i, Struct_2(max(~(vec2<u32>(var_0.a, var_1.a) & vec2<u32>(global3.a.x, global3.a.x)), vec2<u32>(9062u, var_0.a) ^ global3.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(var_1.b)), _wgslsmith_f_op_vec2_f32(-global2.b), vec2<bool>(true, true)))));
    let var_4 = Struct_3(var_3.a, var_2, i32(-1i) * -1i, Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 30126u), max(~var_3.d.a, max(vec2<u32>(4294967295u, global2.a), vec2<u32>(var_1.a, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.x, 580f))))));
    let var_5 = vec3<bool>(var_2, ~(~global3.a.x) >= select(_wgslsmith_clamp_u32(var_0.a, 1u, _wgslsmith_add_u32(var_3.a.b, var_1.a)), var_1.a, any(!vec3<bool>(true, true, var_4.b))), !var_2);
    var var_6 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -491f)));
    let var_7 = reverseBits(-vec3<i32>(var_4.a.a, -_wgslsmith_mod_i32(u_input.b, u_input.d), ~(-var_3.c)));
    var var_8 = vec4<i32>(firstLeadingBit(var_7.x), -2147483647i, func_2().a, min(-1i, func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(select(func_2().d, vec3<i32>(var_3.c, _wgslsmith_mult_i32(-2147483647i, ~var_8.x), ~u_input.b & func_3()), !any(select(vec4<bool>(var_3.b, var_2, true, true), vec4<bool>(true, true, var_3.b, true), vec4<bool>(var_3.b, var_2, true, false)))), (4294967295u >> ((var_3.a.c | _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.c, 11948u, var_0.a), vec3<u32>(var_3.d.a.x, 4294967295u, var_4.a.b))) % 32u)) | var_0.a, vec3<u32>(_wgslsmith_sub_u32(min(var_1.a, global2.a), u_input.a.x >> (var_4.d.a.x % 32u)) & var_1.a, _wgslsmith_sub_u32(min(var_3.a.b, global2.a), ~var_0.a) << (~(~0u) % 32u), ~_wgslsmith_div_u32(4294967295u, 12587u)), countOneBits(vec3<u32>(global2.a, 88677u, ~select(u_input.c.x, 6757u, true))));
}

