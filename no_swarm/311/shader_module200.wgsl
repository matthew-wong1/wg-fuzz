struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(1318i, -1i, 0i), vec3<i32>(2147483647i, -16522i, -1i), vec3<i32>(-27698i, -11294i, -47066i), vec3<i32>(1i, 11425i, -1i), vec3<i32>(3437i, 1i, i32(-2147483648)), vec3<i32>(-51456i, -1i, 1i), vec3<i32>(0i, -43954i, i32(-2147483648)), vec3<i32>(1i, -38551i, -2569i), vec3<i32>(24367i, 20902i, i32(-2147483648)), vec3<i32>(2147483647i, 16774i, 184i), vec3<i32>(14641i, 1i, -81499i), vec3<i32>(28609i, 2147483647i, -1i), vec3<i32>(1i, -55042i, 51910i), vec3<i32>(0i, 31989i, 2147483647i), vec3<i32>(-37130i, 4041i, 1i), vec3<i32>(1i, 1i, -35046i), vec3<i32>(-18904i, 0i, 0i), vec3<i32>(-44841i, 157i, -27990i), vec3<i32>(-49306i, -37551i, -25262i), vec3<i32>(-55764i, 47691i, -24001i), vec3<i32>(-10938i, 1i, 2147483647i), vec3<i32>(13001i, i32(-2147483648), 0i), vec3<i32>(24395i, 1i, 0i), vec3<i32>(2147483647i, 33948i, i32(-2147483648)), vec3<i32>(2749i, -60815i, -26669i), vec3<i32>(47229i, -31324i, 48689i), vec3<i32>(2147483647i, -34098i, 1i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(2147483647i, 402i, -1i), vec3<i32>(1i, 16635i, 50660i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = select(!vec3<bool>(~u_input.b <= -955i, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), select(vec3<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(41165u, u_input.c, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) != abs(u_input.a), true), !vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), !(all(vec4<bool>(false, true, false, false)) & true)), true);
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, -475f, 747f, -1426f)))), vec4<u32>(firstTrailingBit(~u_input.c), 1u << (u_input.c % 32u), _wgslsmith_mod_u32(0u, 708u), 0u), Struct_1(vec3<f32>(1f, 1f, 1f))), u_input.c, u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-364f, 248f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-424f, 169f), 1000f)))), -(~(-vec4<i32>(u_input.b, 0i, u_input.b, 1i))));
    global0 = array<vec3<i32>, 30>();
    var var_2 = Struct_4(Struct_2(var_1.a.a, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(75909u, u_input.a), vec2<u32>(u_input.a, var_1.c)) ^ u_input.c, _wgslsmith_mult_u32(var_1.b, ~59048u), ~699u, reverseBits(u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, -461f, var_1.a.c.a.x) + vec3<f32>(var_1.d.x, var_1.a.a.x, -1596f)), _wgslsmith_f_op_vec3_f32(-var_1.a.a.zyw))))), ~(min(abs(var_1.c), ~84135u) << (var_1.c % 32u)), _wgslsmith_dot_vec2_u32(select(select(var_1.a.b.yy, var_1.a.b.wy, var_0.yx), (var_1.a.b.yy >> (var_1.a.b.xx % vec2<u32>(32u))) & min(var_1.a.b.yz, var_1.a.b.wy), vec2<bool>(false, true && var_0.x)), _wgslsmith_sub_vec2_u32(countOneBits(~var_1.a.b.yz), ~_wgslsmith_mult_vec2_u32(vec2<u32>(66117u, 4294967295u), var_1.a.b.wx))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.c.a.x, 496f))), var_1.d.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(var_1.a.c.a.x))), _wgslsmith_f_op_f32(exp2(var_1.d.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 30u)] & vec3<i32>(var_1.e.x, u_input.b, -2147483647i)), global0[_wgslsmith_index_u32(4294967295u, 30u)]), ~var_1.e.x, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_1.e, var_1.e), u_input.b), 28376i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.a.x))))), var_2.d.x)) + 1000f);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(898f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1416f - -129f), _wgslsmith_f_op_f32(max(-377f, 1509f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) * _wgslsmith_f_op_f32(1f - -524f)), _wgslsmith_f_op_f32(func_3())));
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.a))), vec3<bool>(true, true, true)))));
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    return Struct_3(var_1, u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    let var_0 = 1u;
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -377f, arg_0.a.a.x, arg_0.a.a.x))))), max(vec4<u32>(arg_0.b, u_input.c, var_0, var_0) | vec4<u32>(u_input.a, arg_0.b, arg_1.x, 34221u), ~vec4<u32>(arg_1.x, u_input.a, var_0, 1u)) | vec4<u32>(u_input.c, ~29517u, arg_0.b, arg_0.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.a.x, arg_0.a.a.x)), _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(arg_0.a.a.x * 582f)))), min(~0u, 0u), ~u_input.c, vec3<f32>(734f, _wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(381f * 388f)), arg_0.a.a.x), ~max(vec4<i32>(u_input.b, u_input.b, -20567i, -8963i), -vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)) & min(~(-vec4<i32>(u_input.b, -12704i, 36303i, -1i)), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(81997i, -15624i, -1i, 14492i))));
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-468f, -2846f) * -126f) - _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(201f, 1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1179f, -526f), _wgslsmith_f_op_f32(ceil(-171f)), true))))));
    global0 = array<vec3<i32>, 30>();
    let var_1 = true;
    var var_2 = func_4(func_2(), vec2<u32>(_wgslsmith_sub_u32(~(~4294967295u), u_input.a), _wgslsmith_sub_u32(~abs(28512u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 38096u), vec2<u32>(28704u, 1u)))));
    let var_3 = var_2.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_3.a + vec3<f32>(var_2.a.a.x, _wgslsmith_f_op_f32(var_3.a.x * func_2().a.a.x), _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), vec2<bool>(false, any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), true);
    global0 = array<vec3<i32>, 30>();
    let var_1 = var_0.x;
    let var_2 = Struct_3(func_1(), _wgslsmith_div_u32(u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(25827u, 24111u) % vec2<u32>(32u))) >> ((reverseBits(vec2<u32>(var_2.b, 455u)) >> (select(vec2<u32>(u_input.c, 28883u), vec2<u32>(0u, var_2.b), false) % vec2<u32>(32u))) % vec2<u32>(32u)), -vec2<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, -2147483647i)), var_0), _wgslsmith_add_u32(1u, var_2.b), vec3<f32>(var_2.a.a.x, func_1().a.x, -1751f), abs(~vec3<u32>(firstLeadingBit(0u), func_4(Struct_3(Struct_1(vec3<f32>(var_2.a.a.x, -829f, 1511f)), u_input.c), vec2<u32>(u_input.a, var_2.b)).b, 31378u)));
}

