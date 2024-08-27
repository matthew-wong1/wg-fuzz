struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(0u, 1u), 43031u, 19511u), Struct_1(vec2<u32>(9792u, 35259u), 4294967295u, 2856u), Struct_1(vec2<u32>(70935u, 102847u), 81785u, 14967u), Struct_1(vec2<u32>(4294967295u, 19980u), 1u, 1u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 2598u, 52427u), Struct_1(vec2<u32>(4294967295u, 22985u), 0u, 28318u), Struct_1(vec2<u32>(1u, 1u), 0u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 50896u), 0u, 5430u), Struct_1(vec2<u32>(1u, 8725u), 4294967295u, 0u), Struct_1(vec2<u32>(11058u, 1u), 0u, 46601u), Struct_1(vec2<u32>(1u, 0u), 66485u, 1u), Struct_1(vec2<u32>(25192u, 3905u), 55925u, 1087u), Struct_1(vec2<u32>(0u, 14245u), 0u, 38868u), Struct_1(vec2<u32>(20581u, 0u), 34294u, 1u), Struct_1(vec2<u32>(1u, 1u), 34146u, 35323u), Struct_1(vec2<u32>(86186u, 0u), 0u, 3677u));

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global1 = array<Struct_1, 16>();
    global0 = array<vec3<f32>, 1>();
    let var_0 = Struct_2(1i, false, u_input.c, vec2<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    var var_1 = ~(~(~((vec4<i32>(var_0.a, -1i, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, 1u, 2331u, 37310u) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(11603u, 22917u, var_0.c.x, 21760u), vec4<u32>(arg_1.c, arg_1.b, 49015u, 31591u)) % vec4<u32>(32u)))));
    let var_2 = var_1.x;
    return !select(var_0.d, vec2<bool>(any(vec4<bool>(true, false, var_0.d.x, true)), var_0.b), !(any(vec3<bool>(true, var_0.b, var_0.b)) && false));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~48945u, 16u)];
    let var_1 = select(select(select(vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(true, var_0.c >= 1u), select(true, false, any(vec4<bool>(false, false, true, false)))), !vec2<bool>(select(false, false, false), true), true), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0, _wgslsmith_f_op_f32(-368f - -1271f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1750f, arg_0) * vec3<f32>(-665f, -1572f, 701f))))), Struct_1(~_wgslsmith_add_vec2_u32(u_input.c, var_0.a), ~(~0u), abs(var_0.b & u_input.b)), -311f), all(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), any(vec2<bool>(false, true))), vec3<bool>(true, true, func_3(global0[_wgslsmith_index_u32(29827u, 1u)], global1[_wgslsmith_index_u32(221u, 16u)], -843f).x), true)));
    var var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 6731u), vec3<u32>(u_input.c.x, 1u, 1u)) ^ countOneBits(20151u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 0u, var_0.a.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 51062u, 48829u), vec3<u32>(u_input.c.x, 17213u, u_input.c.x)), vec3<u32>(var_0.b, u_input.c.x, 4294967295u))));
    var var_3 = -1005f;
    var_3 = 1083f;
    return Struct_2(max(i32(-1i) * -u_input.a.x, max(firstLeadingBit(abs(u_input.a.x)), ~u_input.a.x & (u_input.a.x | -54353i))), true, ~_wgslsmith_sub_vec2_u32(~reverseBits(var_2.yx), ~countOneBits(var_2.zx)), vec2<bool>(select(var_1.x, var_1.x, select(all(vec2<bool>(var_1.x, false)), u_input.c.x != 0u, all(vec3<bool>(var_1.x, true, false)))), false));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 798f))))), -865f);
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_2 = countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(var_1.c), ~1u, var_1.b), vec3<u32>(var_1.c | var_1.c, firstTrailingBit(var_1.c), u_input.b)), countOneBits(vec3<u32>(func_2(285f, -1191f).c.x, var_1.c, ~4970u))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-766f * 1667f))) + -641f))));
    global2 = var_0.a;
    return var_2.x ^ ~(~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~(~20528u), u_input.b), ~vec2<u32>(u_input.c.x, u_input.c.x)), ~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(32580u, u_input.b), countOneBits(u_input.b))), 1u);
    let var_1 = all(vec2<bool>(true, true));
    let var_2 = -708i;
    var var_3 = u_input.a.x;
    var var_4 = all(select(!select(vec2<bool>(true, var_1), vec2<bool>(false, false), true), select(select(vec2<bool>(var_1, false), select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), vec2<bool>(false, true)), true), !vec2<bool>(var_1, var_1), select(!vec2<bool>(var_1, true), vec2<bool>(true, true), !var_1)), vec2<bool>(true, var_1)));
    let var_5 = var_1;
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a), abs(vec4<u32>(u_input.c.x, func_1(), _wgslsmith_mult_u32(~4294967295u, 30446u), var_0.a.x)), global0[_wgslsmith_index_u32(~62694u, 1u)], var_0.c, ~reverseBits(~(~vec4<u32>(0u, var_0.a.x, u_input.c.x, 20198u))));
}

