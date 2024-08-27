struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = arg_3;
    global0 = array<vec2<f32>, 19>();
    var_0 = Struct_1(arg_3.a, 258f);
    let var_1 = arg_2.x;
    global0 = array<vec2<f32>, 19>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, 1119f, arg_3.b, var_0.b))))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = !select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), !any(vec3<bool>(false, false, true)) & true);
    var_0 = !(!select(!(!vec2<bool>(var_0.x, true)), vec2<bool>(arg_3.a.x > 0i, -2147483647i == u_input.a), true));
    global0 = array<vec2<f32>, 19>();
    var_0 = vec2<bool>(var_0.x, true);
    var var_1 = any(select(vec2<bool>(arg_1.x > ~arg_3.a.x, false), select(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), arg_1.x < arg_3.a.x), vec2<bool>(true, true), true), any(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.b)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_1(vec4<i32>(-(u_input.a >> (~48224u % 32u)), 1770i >> (arg_0 % 32u), 0i & u_input.a, u_input.a), 1000f);
    global0 = array<vec2<f32>, 19>();
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - 808f), _wgslsmith_f_op_f32(-2177f + arg_1.x)) * arg_1.x))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7060u, arg_0), vec3<u32>(arg_0, arg_0, 1u)), 4294967295u << (arg_0 % 32u), ~42676u, _wgslsmith_mult_u32(arg_0, arg_0))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -1i, 0i) ^ vec3<i32>(34624i, 20629i, -37992i), var_0.a.xzx), _wgslsmith_dot_vec4_i32(var_1.a, -vec4<i32>(var_1.a.x, 55809i, 2147483647i, u_input.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-696f, -1000f, var_1.b, var_0.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(175f, arg_1.x, var_1.b, arg_1.x), vec4<f32>(var_0.b, arg_1.x, 1136f, 2451f), true)))), _wgslsmith_f_op_vec4_f32(func_3(var_1.a.zz, firstLeadingBit(4294967295u), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(vec4<i32>(var_1.a.x, u_input.a, 2147483647i, -12347i), -229f))))), var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * arg_1.x)))), !(false & any(vec4<bool>(false, false, true, true)))));
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - arg_1.x), _wgslsmith_f_op_f32(select(arg_1.x, var_1.b, false))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> i32 {
    return reverseBits(func_2(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, _wgslsmith_f_op_f32(-1042f + arg_0), _wgslsmith_f_op_f32(sign(arg_1.b))))).a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = 1i;
    var var_1 = arg_1;
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    var var_2 = vec3<i32>(u_input.a, arg_0.x >> (80974u % 32u), _wgslsmith_mult_i32(func_5(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), func_2(1u, vec3<f32>(var_1.x, -1658f, -1692f))) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(83349u, 7644u, 43545u, 4294967295u), vec4<u32>(1u, 4294967295u, 21797u, 62271u)), max(0u, 17518u)) % 32u), -_wgslsmith_mult_i32(1i, u_input.a)));
    return ~1u;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = !select(select(!(!vec4<bool>(false, false, arg_2, arg_2)), !(!vec4<bool>(false, true, false, arg_2)), !(!arg_2)), !vec4<bool>(arg_2, true, true, arg_2), arg_2);
    var var_1 = arg_1;
    return arg_1;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = func_2(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1f), arg_2.b, arg_1.b)));
    let var_2 = vec4<bool>(all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, select(true, false, true)), true)), ~(-2147483647i) > (~_wgslsmith_dot_vec3_i32(var_0.a.wwx, vec3<i32>(0i, -12130i, arg_1.a.x)) | abs(func_5(arg_2.b, Struct_1(vec4<i32>(arg_3.a.x, -1i, arg_3.a.x, -12996i), arg_1.b)))), any(vec4<bool>(true, false, true, true)), !(!select(true, true, arg_1.b < 1060f)));
    let var_3 = var_2.x;
    global0 = array<vec2<f32>, 19>();
    return func_2(4294967295u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xwz + vec3<f32>(831f, -703f, 945f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b, arg_0.x, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(u_input.a, _wgslsmith_add_i32(firstLeadingBit(7744i), ~reverseBits(-1i)), 42003i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, 1682f, -1189f, var_0.b))), vec4<f32>(389f, -976f, var_0.b, -1297f))))), Struct_1(~_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(2147483647i, -28291i, u_input.a, var_0.a.x)), _wgslsmith_f_op_f32(select(1027f, _wgslsmith_f_op_f32(trunc(-1676f)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))))), Struct_1(var_0.a, 1000f), func_6(~vec3<u32>(func_1(vec2<i32>(-4501i, var_0.a.x), vec3<f32>(1774f, var_0.b, var_0.b)), 9314u, 1u), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 49860u, 18227u, 0u), ~vec4<u32>(46640u, 67172u, 6311u, 25190u)), vec3<f32>(_wgslsmith_f_op_f32(sign(-193f)), 108f, _wgslsmith_f_op_f32(exp2(var_0.b)))), all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_7(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)) - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(min(var_0.b, var_0.b)), -1506f, -1695f), func_6(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 42444u), vec3<u32>(1u, 1u, 12301u)), Struct_1(vec4<i32>(var_0.a.x, 8129i, 45429i, -2147483647i), -810f), !all(vec2<bool>(true, true))), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6892u, 96516u), _wgslsmith_mult_vec3_u32(vec3<u32>(32724u, 1u, 29383u), vec3<u32>(1u, 96584u, 4654u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-960f, var_0.b, 478f) - vec3<f32>(var_0.b, 2038f, var_0.b)))), func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -860f, var_0.b, var_0.b) - vec4<f32>(var_0.b, -185f, -1092f, -452f))), Struct_1(var_0.a, _wgslsmith_f_op_f32(max(var_0.b, var_0.b))), func_6(~vec3<u32>(1u, 1u, 4294967295u), func_6(vec3<u32>(25423u, 98398u, 0u), Struct_1(var_0.a, var_0.b), true), true), Struct_1(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a), 722f))).a.x, ~(-1i), 1u);
}

