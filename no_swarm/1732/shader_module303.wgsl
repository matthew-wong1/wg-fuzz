struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = i32(-1i) * -arg_1.c.x;
    let var_1 = Struct_1(true, arg_1.b, vec3<i32>(select(~(~(-2910i)), -(~21376i), true), firstLeadingBit(~arg_1.c.x << (firstTrailingBit(arg_2.b) % 32u)), _wgslsmith_add_i32(1i, arg_2.c.x)));
    let var_2 = false;
    var var_3 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_1.b, 0u), _wgslsmith_mod_u32(var_1.b, arg_2.b), var_1.b), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(10079u, arg_2.b, u_input.a.x), vec3<u32>(36517u, var_1.b, arg_2.b)), ~arg_0.zwy)), u_input.a.wxx);
    var_3 = abs(abs(max(vec3<u32>(arg_1.b | var_3.x, min(4294967295u, var_1.b), 47034u), vec3<u32>(var_1.b >> (4294967295u % 32u), 4294967295u, arg_0.x))));
    return select(var_2, true, any(select(!(!vec4<bool>(true, true, true, arg_3)), select(vec4<bool>(false, true, var_1.a, true), select(vec4<bool>(arg_3, false, false, false), vec4<bool>(var_1.a, true, false, arg_2.a), true), !vec4<bool>(arg_2.a, var_2, arg_3, var_2)), select(select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(false, arg_1.a, arg_2.a, arg_2.a), vec4<bool>(arg_1.a, true, true, arg_2.a)), vec4<bool>(true, true, var_2, var_2), arg_3))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(true, ~_wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.zx), _wgslsmith_div_vec3_i32(-(u_input.c.wyy << (_wgslsmith_mult_vec3_u32(u_input.a.zyx, vec3<u32>(1u, u_input.a.x, 1u)) % vec3<u32>(32u))), abs(firstLeadingBit(u_input.c.yyy))));
    let var_1 = var_0;
    var var_2 = u_input.a.xx;
    let var_3 = max(1i, -2147483647i);
    let var_4 = _wgslsmith_mod_vec4_i32(~u_input.c & -vec4<i32>(reverseBits(var_1.c.x), -5987i, _wgslsmith_dot_vec3_i32(u_input.c.xwx, u_input.c.zwx), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 53373i, var_0.c.x, u_input.b), u_input.c)), vec4<i32>(u_input.c.x | ~(-1i), ~1i, abs(_wgslsmith_div_i32(-53413i, _wgslsmith_dot_vec2_i32(var_1.c.xx, vec2<i32>(0i, -2147483647i)))), -u_input.c.x));
    return !vec3<bool>(var_1.a, (var_1.a & func_3(vec4<u32>(var_0.b, 49218u, 4294967295u, u_input.a.x), var_1, var_1, var_0.a)) | var_0.a, !(!var_1.a));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(true, ~51736u, -min(vec3<i32>(select(-36336i, u_input.c.x, true), u_input.b >> (arg_1 % 32u), 1i), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_3, 19045i, 2945i), -vec3<i32>(u_input.b, u_input.c.x, 28155i))));
    let var_1 = select(select(!vec3<bool>(true, true, any(vec3<bool>(var_0.a, false, var_0.a))), vec3<bool>(all(!vec4<bool>(var_0.a, false, true, true)), var_0.a, any(vec2<bool>(var_0.a, false))), !select(vec3<bool>(var_0.a, false, var_0.a), func_2(), true)), vec3<bool>(true, !(-u_input.c.x < _wgslsmith_mod_i32(1i, var_0.c.x)), var_0.a), false);
    let var_2 = var_0;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2, arg_2)))), -630f, 764f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(f32(-1f) * -1178f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -992f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_2, -1774f, -924f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, arg_2, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, -1212f, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -1489f, -1396f)))))));
    var var_4 = u_input.a.yyx;
    return Struct_1(true, var_2.b, var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = -1i;
    let var_2 = Struct_1(func_2().x, func_1(-2147483647i, ~_wgslsmith_mult_u32(6783u << (var_0.b % 32u), ~arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-188f, -1621f)))), ~firstLeadingBit(0i)).b, _wgslsmith_mod_vec3_i32(-(~select(arg_1.c, var_0.c, false)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(48547i, -22668i, -11425i, 29178i), vec4<i32>(-21939i, var_1, 76334i, arg_1.c.x)), -1i, ~_wgslsmith_add_i32(2147483647i, u_input.b))));
    var var_3 = any(select(!vec3<bool>(true, true, select(false, false, arg_1.a)), vec3<bool>(var_2.a, !(!var_2.a), any(vec4<bool>(false, false, true, true))), (var_0.a | var_2.a) || arg_1.a));
    var_3 = !(!any(!(!vec2<bool>(false, arg_1.a))));
    return 1i & _wgslsmith_add_i32(_wgslsmith_add_i32(func_1(arg_0.c.x, ~18951u, _wgslsmith_f_op_f32(306f + 384f), u_input.c.x).c.x, _wgslsmith_dot_vec2_i32(arg_1.c.yx, _wgslsmith_div_vec2_i32(vec2<i32>(-51171i, 0i), vec2<i32>(arg_1.c.x, 1i)))), _wgslsmith_div_i32(arg_0.c.x, 29935i));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    return func_1(reverseBits(u_input.c.x >> (abs(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(23959u, 16476u))) % 32u)), 45676u, _wgslsmith_f_op_f32(ceil(932f)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_5(vec4<i32>(1i, func_4(func_1(u_input.c.x, ~73001u, -1227f, ~(-53973i)), Struct_1(true, select(1u, 6021u, false), -u_input.c.xzz)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -27248i, u_input.c.x), u_input.c) & countOneBits(u_input.b), u_input.c.x | u_input.c.x), _wgslsmith_add_i32(1i, countOneBits(_wgslsmith_sub_i32(11490i, -54853i)))), _wgslsmith_div_vec2_u32(u_input.a.zy, _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.xw)) | ~countOneBits(vec2<u32>(104547u, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, 903f, -305f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, -159f, -372f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1595f, -653f)))), vec3<f32>(_wgslsmith_div_f32(-1594f, _wgslsmith_div_f32(961f, -139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) + _wgslsmith_f_op_f32(-1993f + 1359f)), -828f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-906f, _wgslsmith_f_op_f32(step(-696f, -115f)), _wgslsmith_f_op_f32(max(303f, 1078f)))))));
    var var_3 = var_1;
    var var_4 = -38758i;
    var var_5 = var_1.c.x & -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-918f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -103f))), ~_wgslsmith_sub_vec2_i32((u_input.c.yw & u_input.c.wx) << (u_input.a.zz % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(965i, u_input.c.x), var_1.c.yx) ^ var_3.c.zz));
}

