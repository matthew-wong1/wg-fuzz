struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = ~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(3964u, u_input.b, arg_3.e), vec3<u32>(22680u, u_input.b, arg_3.e)))) ^ countOneBits(~(~firstTrailingBit(vec3<u32>(u_input.b, arg_3.e, u_input.b))));
    let var_1 = arg_3.c.b;
    global0 = array<vec4<f32>, 19>();
    var var_2 = !(-32711i != firstLeadingBit(i32(-1i) * -arg_2.x));
    let var_3 = arg_3;
    return !arg_3.c.a.wyw;
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-743f, -981f, -1032f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2170f + _wgslsmith_f_op_f32(select(400f, 325f, true))), -436f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -604f))) - -1815f), -169f));
    var var_2 = 33862i << (0u % 32u);
    var var_3 = _wgslsmith_f_op_f32(floor(462f));
    var_2 = select(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), abs(vec2<i32>(u_input.a, u_input.a))), reverseBits(vec2<i32>(-u_input.a, _wgslsmith_div_i32(1i, u_input.a)))), i32(-1i) * -((u_input.a | u_input.a) >> (u_input.b % 32u)), arg_0.a);
    return Struct_3(arg_0, Struct_2(vec4<bool>(false || var_0.a, true, var_0.a, true), -130f, -586f), Struct_2(!(!select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(false, false, true, arg_0.a), true)), _wgslsmith_f_op_f32(-var_1.x), 1249f), _wgslsmith_add_i32(u_input.a, 1i), abs(~(select(u_input.c, 0u, arg_0.a) | 22199u)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = 1u;
    var var_2 = _wgslsmith_sub_vec3_i32(min(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(var_1, 0u, u_input.b) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, u_input.a, 1i)), select(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-8237i, u_input.a, -2147483647i) ^ vec3<i32>(6551i, 25415i, u_input.a), vec3<bool>(true, true, true))), vec3<i32>(~(~u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, 2147483647i)) << (1u % 32u), _wgslsmith_sub_i32(-1i, u_input.a >> (var_1 % 32u)))), vec3<i32>(6346i, i32(-1i) * -14323i, (u_input.a & u_input.a) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 0u, 94135u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, var_1, u_input.c), vec3<u32>(u_input.c, var_1, var_1))) % 32u)));
    var var_3 = var_0.zxx;
    var var_4 = Struct_3(Struct_1(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1514f))))), var_0.x), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1133f, var_0.x) * 344f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -562f))))), firstTrailingBit(u_input.a) | -5270i, max(u_input.b, arg_0));
    return func_3(Struct_1(any(select(func_2(vec2<bool>(var_4.c.a.x, false), false, vec4<i32>(2147483647i, 2147483647i, 4452i, -2147483647i), Struct_3(var_4.a, Struct_2(vec4<bool>(true, var_4.a.a, false, var_4.a.a), 190f, var_0.x), Struct_2(var_4.c.a, 1426f, var_3.x), -20020i, var_1)), var_4.b.a.xxy, var_4.c.a.zyw))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<f32>, 19>();
    global0 = array<vec4<f32>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(648f + 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -593f))), arg_3.c))));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) - _wgslsmith_f_op_f32(sign(var_0.x))), any(arg_3.a), func_3(arg_0.a).a.a, true);
    var var_2 = Struct_1(!all(vec4<bool>(func_2(arg_0.b.a.yz, false, vec4<i32>(-9086i, arg_0.d, 46937i, arg_0.d), arg_0).x, var_1.x, arg_0.b.a.x, func_2(var_1.xy, false, vec4<i32>(arg_0.d, u_input.a, -1i, 12528i), arg_0).x)));
    return arg_0.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec4<f32>, 19>();
    var var_0 = vec4<i32>(abs(1i), 28386i, ~(u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a))), -2147483647i) | reverseBits(vec4<i32>(u_input.a, -3756i & min(u_input.a, u_input.a), min(u_input.a ^ 1i, ~u_input.a), ~(-1i)));
    var var_1 = ~1u ^ u_input.c;
    var_1 = 4294967295u;
    var var_2 = vec4<u32>(7294u, func_3(func_3(arg_1).a).e, 44255u, u_input.c);
    return func_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 18613u, var_2.x)), vec3<u32>(select(~var_2.x, select(23296u, 3065u, true), true), _wgslsmith_dot_vec2_u32(~var_2.xx, ~var_2.yz), firstTrailingBit(var_2.x ^ 28457u)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 19>();
    let var_0 = vec4<bool>(true, any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))) | false, true, true);
    let var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1215f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1468f - 1059f)))), _wgslsmith_f_op_f32(sign(-1697f))), func_4(func_1(countOneBits(min(23668u, 1u))), !(var_0.x & false), i32(-1i) * -46079i, Struct_2(var_0, 1000f, _wgslsmith_f_op_f32(step(767f, _wgslsmith_f_op_f32(230f - 1757f))))));
    global0 = array<vec4<f32>, 19>();
    var var_2 = Struct_2(vec4<bool>(any(var_0.yz), select(true, var_0.x, !var_0.x), all(vec2<bool>(false, var_1.a.x)), !((-1i > u_input.a) & false)), _wgslsmith_f_op_f32(-2283f + 492f), var_1.c);
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, -12127i) ^ abs(0i), func_3(Struct_1(func_5(vec2<f32>(var_2.b, -740f), Struct_1(false)).a.x)).d), -1i, func_3(func_1(~(~1u)).a).d, i32(-1i) * -24376i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 44796u, 0u) << (vec3<u32>(firstLeadingBit(abs(u_input.b)), u_input.c, ~(u_input.b << (u_input.c % 32u))) % vec3<u32>(32u)), 1117f, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, ~0u), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 3835u), vec2<u32>(1u, u_input.c)))));
}

