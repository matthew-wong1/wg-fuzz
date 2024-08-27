struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(53366u, false, true), Struct_1(1u, true, false), Struct_1(1u, true, true), Struct_1(5427u, true, false), Struct_1(0u, true, true), Struct_1(0u, false, false), Struct_1(0u, true, true), Struct_1(1u, true, false), Struct_1(17885u, true, true), Struct_1(26163u, true, true), Struct_1(24388u, false, true), Struct_1(76251u, false, true), Struct_1(2652u, true, true), Struct_1(1u, true, false), Struct_1(29233u, false, false), Struct_1(69507u, false, false), Struct_1(4294967295u, false, false), Struct_1(4294967295u, false, false), Struct_1(4294967295u, true, true), Struct_1(69407u, false, false), Struct_1(1u, false, false), Struct_1(4294967295u, true, false), Struct_1(0u, false, false), Struct_1(1u, false, true), Struct_1(35423u, true, false));

var<private> global2: f32;

var<private> global3: Struct_3;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1250f, -156f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f + 368f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1664f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-696f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -433f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f * 306f))))));
    let var_1 = -274f;
    var var_2 = Struct_4(u_input.b.x, Struct_1(u_input.a.x, !all(vec2<bool>(true, true)), _wgslsmith_add_u32(abs(global3.a), ~7119u) < (firstLeadingBit(48797u) >> (global3.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1252f + _wgslsmith_div_f32(var_1, _wgslsmith_div_f32(var_1, -1436f)))));
    return Struct_3(0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = func_2();
    global4 = array<Struct_3, 26>();
    global1 = array<Struct_1, 25>();
    let var_1 = countOneBits(~(-2147483647i));
    global0 = any(select(!select(!vec3<bool>(true, arg_0.c, arg_1.b.b), vec3<bool>(true, true, true), global3.a < var_0.a), !(!select(vec3<bool>(true, false, arg_1.b.b), vec3<bool>(true, false, arg_0.b), vec3<bool>(false, arg_1.b.c, arg_1.b.c))), vec3<bool>(true, -782f == _wgslsmith_f_op_f32(step(arg_1.c, arg_2)), false)));
    return 1i;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(872f * 749f));
    var var_1 = all(!vec3<bool>(false, all(vec3<bool>(false, true, true)), true));
    let var_2 = all(vec4<bool>(!any(vec3<bool>(false, true, true)), true, any(vec3<bool>(select(true, true, true), false, select(true, true, true))), false));
    var var_3 = select(!vec4<bool>(true, false, all(vec2<bool>(var_2, var_2)), select(any(vec3<bool>(var_2, false, var_2)), false, true)), !(!select(!vec4<bool>(var_2, var_2, false, false), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2))), !vec4<bool>(var_2, !(true || var_2), any(!vec2<bool>(true, var_2)), true));
    let var_4 = -37213i;
    return ~(-vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(1i, -18943i) << (~4294967295u % 32u), ~var_4 >> (~23128u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 26>();
    let var_0 = abs(_wgslsmith_dot_vec3_i32(func_3(~vec4<u32>(22490u, u_input.a.x, 19941u, 10429u), func_1(Struct_1(2218u, true, false), Struct_4(u_input.b.x, Struct_1(24232u, true, true), 844f), -1269f, u_input.b.x) | 0i), _wgslsmith_div_vec3_i32(vec3<i32>(5467i, _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(-1587i, u_input.b.x)), ~(-56893i)), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, global3.a, 0u, 53848u)), vec4<u32>(global3.a, ~41878u, u_input.a.x, 1u)), -15510i);
}

