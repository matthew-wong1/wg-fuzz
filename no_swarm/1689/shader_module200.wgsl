struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    var var_0 = firstLeadingBit(reverseBits(vec3<i32>(1i, reverseBits(1i), _wgslsmith_mult_i32(select(29431i, 1i, true), max(-40381i, 1i)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0, -935f, false)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, 465f, arg_2.a)))), _wgslsmith_f_op_f32(select(276f, arg_0, select(!arg_1.x, !arg_1.x, false)))), ~_wgslsmith_div_u32(u_input.a.x, 1u), Struct_3(var_0.zx, vec3<bool>(true & any(vec4<bool>(arg_1.x, false, true, false)), !arg_2.a, true), ~vec2<u32>(~65109u, ~13623u)));
    return 51407u;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<i32> {
    global0 = array<vec2<bool>, 1>();
    var var_0 = false;
    var var_1 = Struct_4(427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) * -602f), u_input.d.x & _wgslsmith_mult_u32(28883u, _wgslsmith_mult_u32(67832u, func_3(-918f, arg_0.b, Struct_1(arg_0.b.x), vec4<u32>(u_input.d.x, u_input.a.x, arg_0.c.x, 4294967295u)))), arg_0);
    return min(vec3<i32>(-1i) * -vec3<i32>(~(-1i), var_1.d.a.x, arg_1), ~vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -17583i, firstTrailingBit(1i)), arg_1, var_1.d.a.x));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(min(~arg_2.x, 46979i), -7537i), -_wgslsmith_add_i32(abs(-1i), select(abs(arg_2.x), arg_1.x, !arg_0)));
    var_0 = arg_1.x;
    global0 = array<vec2<bool>, 1>();
    var var_1 = _wgslsmith_mod_i32(arg_2.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, arg_2.x), -66013i));
    return 0i;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = -_wgslsmith_mod_i32(func_4(!all(vec2<bool>(false, false)), ~select(vec4<i32>(1i, -1i, 0i, -26329i), vec4<i32>(39172i, 0i, -35452i, 954i), vec4<bool>(true, true, true, true)), ~func_2(Struct_3(vec2<i32>(0i, -1i), vec3<bool>(true, false, false), u_input.d.zy), 2147483647i)), 0i);
    var var_1 = Struct_1(all(vec2<bool>(any(vec3<bool>(true, false, false)) & true, true || any(vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(291f, -1452f)))), 947f)));
    var_1 = Struct_1(!var_1.a);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-483f, 1f))) + _wgslsmith_f_op_f32(-908f - -445f)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 1>();
    var var_0 = select(-countOneBits(max(vec4<i32>(1i, 2147483647i, -2147483647i, 38298i), vec4<i32>(-15516i, -1i, -6877i, -1i))) << (~(~(~vec4<u32>(u_input.d.x, u_input.a.x, 0u, u_input.c.x))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, func_1(vec4<u32>(0u, u_input.d.x, 74637u, u_input.c.x)) << (firstLeadingBit(92559u) % 32u), ~1i, _wgslsmith_add_i32(-33615i, _wgslsmith_mult_i32(-34654i, -592i))), -vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, -1i), _wgslsmith_add_i32(-33506i, 1i), -19623i)), true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1807f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-890f, -1000f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) + 696f));
    var_0 = reverseBits(vec4<i32>(var_0.x, abs(func_1(u_input.b)), _wgslsmith_mult_i32(countOneBits(-2147483647i), func_2(Struct_3(var_0.ww, vec3<bool>(true, false, false), vec2<u32>(u_input.d.x, 30009u)), -20649i).x), firstLeadingBit(_wgslsmith_add_i32(var_0.x, 0i)))) << (~u_input.c % vec4<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), var_1.x, any(vec3<bool>(true, true, false)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_2.a, false)), _wgslsmith_f_op_f32(min(var_2.a, 759f))))), -2098f, var_2.a);
    var_0 = _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_0.x, var_0.x, abs(2147483647i), 2147483647i)) & abs(_wgslsmith_add_vec4_i32(vec4<i32>(-9178i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 0i, var_0.x, var_0.x) & vec4<i32>(var_0.x, var_0.x, var_0.x, -8678i))), vec4<i32>(max(23479i, ~11933i), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(23438i, var_0.x)), var_0.zz), 1i, 1i) << (vec4<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, 13u)), 62509u, u_input.d.x, ~1u & abs(u_input.c.x)) % vec4<u32>(32u)));
    var var_3 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)) | true, ~u_input.a.x > ~u_input.d.x, false), true), vec3<bool>(select(true || (u_input.a.x > u_input.c.x), 4294967295u == select(u_input.c.x, u_input.d.x, false), true), true, select(false, false, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(select(var_1.x, -320f, var_4))))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.x, -1726i | var_0.x, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.wx, var_0.xx), -var_0.x, _wgslsmith_sub_i32(var_0.x, var_0.x), var_0.x))), var_0.x);
}

