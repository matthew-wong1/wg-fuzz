struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_1(54972i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(~arg_0, abs(firstTrailingBit(arg_0)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(240f, -732f))) + vec2<f32>(1500f, 1932f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(169f, 281f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, -1435f) - vec2<f32>(-290f, -380f))))))) - vec2<f32>(-1479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f - 842f)))));
    let var_3 = select(true, 1u > var_0.x, true);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1139f, var_2.x, var_2.x) + vec3<f32>(var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, -273f), vec3<f32>(var_2.x, -1809f, 419f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1119f, var_2.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 1980f, -961f))) + vec3<f32>(123f, var_2.x, var_2.x)))));
    return Struct_1(0i);
}

fn func_3() -> vec4<u32> {
    global1 = Struct_3(!(!vec2<bool>(global0.a.x, true)), func_1(~(_wgslsmith_div_vec4_u32(vec4<u32>(19697u, 1u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, u_input.b, u_input.a.x)) << (vec4<u32>(4294967295u, 1u, 0u, u_input.e.x) % vec4<u32>(32u)))));
    global1 = Struct_3(select(select(!select(vec2<bool>(true, global0.a.x), global1.a, vec2<bool>(global0.a.x, global0.a.x)), !global0.a, !global1.a.x), vec2<bool>(countOneBits(-2147483647i) >= (global1.b.a ^ global1.b.a), true), true), global0.b);
    global0 = Struct_3(vec2<bool>(_wgslsmith_add_i32(-global0.b.a, global1.b.a) < ~(~(-28386i)), all(!(!vec4<bool>(global0.a.x, true, global1.a.x, global0.a.x)))), global1.b);
    let var_0 = global1.b;
    global0 = Struct_3(!global1.a, func_1(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(23955u, 4294967295u, u_input.e.x)), 68847u, _wgslsmith_clamp_u32(u_input.e.x, 8866u, 24925u), u_input.b)));
    return min(min(~(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.b)), vec4<u32>(13228u, u_input.a.x, 0u, u_input.e.x) & vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), vec4<u32>(_wgslsmith_div_u32(u_input.b ^ 0u, ~u_input.e.x), max(10428u | u_input.a.x, ~45848u), 0u, 1u)) ^ reverseBits(vec4<u32>(~44676u, _wgslsmith_add_u32(0u, u_input.b), u_input.b, 5352u) | reverseBits(firstLeadingBit(vec4<u32>(u_input.b, 48934u, 44303u, 1u))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = Struct_3(!global1.a, func_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 26109u), 0u, _wgslsmith_sub_u32(u_input.b, 4294967295u), 71176u)));
    global1 = Struct_3(vec2<bool>(true, all(!select(global1.a, vec2<bool>(false, true), false))), func_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x << (1u % 32u), u_input.e.x | 1u) >> (func_3() % vec4<u32>(32u))));
    global1 = Struct_3(select(select(select(!global0.a, !vec2<bool>(global1.a.x, true), select(vec2<bool>(true, arg_1), vec2<bool>(global1.a.x, true), vec2<bool>(global0.a.x, false))), vec2<bool>(50824u <= u_input.e.x, global1.a.x), !select(global0.a, vec2<bool>(false, true), global0.a.x)), select(vec2<bool>(arg_1, all(vec4<bool>(global0.a.x, false, false, arg_1))), select(select(vec2<bool>(global0.a.x, false), global1.a, global0.a), global1.a, select(global1.a, vec2<bool>(global1.a.x, global0.a.x), vec2<bool>(true, true))), !(false && arg_1)), select(55368u, u_input.a.x, all(global1.a)) != ~u_input.a.x), Struct_1(2147483647i));
    global0 = Struct_3(!(!(!vec2<bool>(false, arg_1))), arg_0);
    let var_0 = func_1(select(vec4<u32>(func_3().x >> (_wgslsmith_add_u32(4294967295u, u_input.e.x) % 32u), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(u_input.e.x, firstTrailingBit(1u))), _wgslsmith_clamp_vec4_u32(func_3(), vec4<u32>(u_input.a.x, u_input.b | 1u, u_input.e.x, u_input.e.x), ~(vec4<u32>(1u, 1u, u_input.e.x, u_input.a.x) ^ vec4<u32>(u_input.b, 0u, 44555u, u_input.a.x))), vec4<bool>(arg_1, true, !(!arg_1), !(!global1.a.x))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = u_input.e.x;
    global0 = Struct_3(global1.a, func_2(func_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(60901u, u_input.b, u_input.a.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(23128u, 1u, 1u, u_input.b), vec4<u32>(29708u, u_input.a.x, u_input.b, u_input.b)))), false));
    var_0 = func_2(Struct_1(_wgslsmith_mod_i32(-1i, ~(~u_input.c.x))), (global0.a.x | !any(vec4<bool>(global1.a.x, false, true, false))) | global1.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(456f * -801f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + 1575f) - -1064f))));
    var var_3 = var_2.x;
    var var_4 = select(vec4<bool>(false, !global0.a.x, false, global0.a.x), vec4<bool>(true, global0.a.x, global1.a.x, select(any(vec4<bool>(true, true, true, true)), all(!vec3<bool>(true, false, global0.a.x)), global0.a.x)), _wgslsmith_clamp_i32(54336i, abs(i32(-1i) * -1i), var_0.a) <= (global0.b.a << ((u_input.a.x & 0u) % 32u)));
    var_0 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1338f, 283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 1215f) * _wgslsmith_f_op_f32(var_2.x + var_2.x)))), vec3<u32>(u_input.b, ~u_input.a.x, firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, 0u)))), -1000f, vec4<u32>(u_input.b, u_input.b, (u_input.b & (u_input.a.x | u_input.e.x)) | 23930u, u_input.e.x | 4294967295u), u_input.a);
}

