struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, 997f, vec4<bool>(true, false, false, false), vec2<i32>(2147483647i, 23192i)), Struct_1(87749u, 746f, vec4<bool>(false, true, false, false), vec2<i32>(0i, 49071i)), Struct_1(21255u, -1016f, vec4<bool>(false, true, false, true), vec2<i32>(-1i, 0i)), Struct_1(4294967295u, 1000f, vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), -1i)), Struct_1(1u, 400f, vec4<bool>(true, false, false, true), vec2<i32>(-9525i, -1i)), Struct_1(110445u, 322f, vec4<bool>(false, false, true, true), vec2<i32>(0i, 2147483647i)), Struct_1(3511u, 1000f, vec4<bool>(false, true, false, true), vec2<i32>(11208i, -37218i)), Struct_1(22386u, -1351f, vec4<bool>(true, true, false, false), vec2<i32>(-72056i, -1i)), Struct_1(877u, 835f, vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(87667u, -782f, vec4<bool>(false, true, true, true), vec2<i32>(23155i, i32(-2147483648))), Struct_1(41027u, -265f, vec4<bool>(false, false, true, true), vec2<i32>(-1i, i32(-2147483648))), Struct_1(10104u, 1127f, vec4<bool>(true, false, false, true), vec2<i32>(-32586i, 1i)), Struct_1(1652u, -327f, vec4<bool>(true, false, false, true), vec2<i32>(-1i, 1i)), Struct_1(51647u, 224f, vec4<bool>(false, false, true, false), vec2<i32>(0i, -1i)), Struct_1(50215u, 835f, vec4<bool>(false, true, false, true), vec2<i32>(-27970i, 36373i)), Struct_1(4294967295u, -757f, vec4<bool>(true, true, true, true), vec2<i32>(-27339i, 1i)), Struct_1(0u, 1224f, vec4<bool>(false, true, false, false), vec2<i32>(15556i, 28846i)), Struct_1(19717u, 1768f, vec4<bool>(true, false, false, true), vec2<i32>(-66616i, 1i)), Struct_1(13216u, -1401f, vec4<bool>(true, false, true, true), vec2<i32>(27447i, 0i)));

var<private> global2: array<i32, 18>;

var<private> global3: u32 = 1u;

var<private> global4: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(21256u, 47165u, 4294967295u), vec3<u32>(39224u, 9305u, 0u), vec3<u32>(0u, 1u, 9085u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    global1 = array<Struct_1, 19>();
    return arg_0 || all(vec2<bool>(false, arg_0));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 19>();
    global2 = array<i32, 18>();
    var var_0 = arg_1;
    let var_1 = global1[_wgslsmith_index_u32(min(var_0.a, 4294967295u & arg_1.a), 19u)];
    global1 = array<Struct_1, 19>();
    return _wgslsmith_add_i32(~(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d, u_input.e), u_input.c.x)), 40239i);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = -1i;
    var var_1 = Struct_1(0u, _wgslsmith_f_op_f32(floor(969f)), vec4<bool>(arg_3.c.x, !func_1(any(vec4<bool>(true, arg_3.c.x, true, false)), vec3<u32>(arg_2.a, 9666u, 45120u)), true, arg_2.c.x), ~select(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.e), arg_2.d), -_wgslsmith_mod_vec2_i32(arg_3.d, vec2<i32>(u_input.d, 14223i)), any(vec3<bool>(false, false, arg_2.c.x))));
    let var_2 = ~(vec4<u32>(~(~arg_3.a), u_input.b, 0u, arg_3.a) >> (_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_1.a, arg_3.a, u_input.a.x, 6651u), firstTrailingBit(vec4<u32>(arg_3.a, 562u, u_input.b, arg_2.a))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 1u, arg_2.a, 0u), ~vec4<u32>(0u, arg_2.a, arg_2.a, 56545u))) % vec4<u32>(32u)));
    global3 = var_2.x;
    global0 = array<vec2<f32>, 15>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_2.b))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(983f, -560f)))));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<vec2<f32>, 15>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x, reverseBits(u_input.b))), arg_0, !vec4<bool>(false, true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), true), -reverseBits(u_input.c));
    var var_1 = u_input.d;
    var var_2 = Struct_1(_wgslsmith_mult_u32(~var_0.a, 8128u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1545f * -686f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_3(5357u, var_0), var_0.c.yx, var_0, Struct_1(var_0.a, var_0.b, var_0.c, vec2<i32>(u_input.e, u_input.e))))))), select(select(var_0.c, var_0.c, vec4<bool>(u_input.a.x <= var_0.a, !var_0.c.x, var_0.c.x || false, true)), !(!var_0.c), min(var_0.d.x >> (13502u % 32u), ~19744i) >= -select(33282i, -2147483647i, true)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1i) * -var_0.d), -countOneBits(vec2<i32>(-1i, -43008i)), ~var_0.d));
    var_2 = global1[_wgslsmith_index_u32(6613u, 19u)];
    return -1255f;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    var var_0 = vec3<bool>(false, arg_2.c.x, arg_2.a > ~(~(~u_input.a.x)));
    var var_1 = min(vec2<i32>(~7721i, min(countOneBits(arg_2.d.x), _wgslsmith_mult_i32(~arg_1, 2147483647i))), -vec2<i32>(global2[_wgslsmith_index_u32(1u, 18u)], ~(-2147483647i) >> (1u % 32u)));
    global2 = array<i32, 18>();
    let var_2 = ~(~(~(~u_input.a.yx)));
    var var_3 = arg_2.c;
    return abs(1u) != ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_1(false, vec3<u32>(1420u, 0u, ~_wgslsmith_div_u32(1u, 1u))), false, func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_f32(max(1230f, -1629f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(541f * 102f)))), -1i, Struct_1(32779u, _wgslsmith_f_op_f32(f32(-1f) * -534f), vec4<bool>(true, true, true, true), vec2<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(39044u, 18u)], -23094i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]))), u_input.a.yx), true);
    var var_1 = Struct_1(select(u_input.b, u_input.b, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), vec4<bool>(var_0.x, select(var_0.x, true, false), any(!var_0.xw) | var_0.x, false), u_input.c);
    let var_2 = select(vec3<bool>(true, true, true), var_0.ywz, true);
    var var_3 = global0[_wgslsmith_index_u32(~u_input.b, 15u)];
    var_1 = Struct_1(25291u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b)), 709f))))), vec4<bool>(all(var_2), 1701f != var_3.x, ~(~var_1.a) >= var_1.a, var_0.x), ~vec2<i32>(firstLeadingBit(57545i), select(firstLeadingBit(-8316i), var_1.d.x | u_input.d, all(var_2))));
    let var_4 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(max(8093u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_1.a, 1u, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.a, 11374u, var_1.a), vec4<u32>(1u, 0u, var_1.a, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u)), vec4<bool>(true, true, true, var_0.x)), ~firstTrailingBit(vec4<u32>(var_1.a, 55119u, 9673u, u_input.a.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(u_input.b), 1u ^ (u_input.a.x | u_input.b), ~(~u_input.b), abs(57531u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 1u, u_input.b, 0u), vec4<u32>(4294967295u, u_input.b, u_input.a.x, 12581u)), abs(vec4<u32>(u_input.b, 33215u, u_input.b, 1u)), ~vec4<u32>(101259u, var_1.a, 14478u, 37980u)) | _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 135022u, var_1.a, 0u), ~vec4<u32>(19254u, var_1.a, u_input.b, 20319u))), 0i, _wgslsmith_f_op_f32(-var_1.b));
}

