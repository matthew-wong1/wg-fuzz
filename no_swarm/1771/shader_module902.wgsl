struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<vec2<i32>, 23>();
    global0 = array<vec2<i32>, 23>();
    var var_0 = vec2<u32>(firstLeadingBit(46265u), 0u);
    var var_1 = !arg_3.b;
    var_0 = ~(~vec2<u32>(~_wgslsmith_mult_u32(0u, 28344u), 1u));
    return vec3<bool>(true, arg_2.b.x, all(!(!(!vec4<bool>(arg_2.a.a.x, false, true, arg_0.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))));
    var var_1 = Struct_4(1u, -1i > u_input.a, Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), 305f, arg_0.x, -476f))), abs(~(~71080u)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(35236i, 3477i, 34930i), vec3<i32>(u_input.a, 1i, 15115i), vec3<i32>(u_input.a, -5394i, u_input.a)), reverseBits(vec3<i32>(9342i, u_input.a, u_input.a)))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(vec4<bool>(false, false, true, true), true, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<bool>(false, true, false)), vec3<bool>(true, false, true)))))));
    let var_2 = var_1.c.e.a.zx;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_0)))), var_1.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a.x + -588f), _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_div_f32(-1065f, -421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -188f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f + _wgslsmith_f_op_f32(1078f + _wgslsmith_f_op_f32(var_0 + arg_0.x)))));
    var_1 = Struct_4(~1u, select(var_1.c.e.a.x, true, !(!all(vec2<bool>(var_2.x, var_2.x)))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.a))), countOneBits(0u), ((arg_1 ^ 25514u) & max(4294967295u, 17596u)) == 14988u, var_1.c.d, var_1.c.e));
    return any(vec3<bool>(var_1.c.c || !(var_1.b || false), true && (all(vec3<bool>(var_2.x, true, var_1.b)) & !var_1.c.c), var_2.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_4(0u, func_2(vec2<f32>(_wgslsmith_f_op_f32(1233f + 1102f), _wgslsmith_f_op_f32(f32(-1f) * -1645f)), _wgslsmith_mod_u32(~4294967295u, ~arg_0) & (firstTrailingBit(18424u) << (arg_0 % 32u))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), 663f, 1f, -917f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2427f, 356f, 1073f, -902f))), arg_2, arg_1.a.x, firstTrailingBit(-vec3<i32>(-2147483647i, -566i, -2147483647i)) | abs(vec3<i32>(2147483647i, u_input.a, u_input.a)), arg_1));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1041f, var_0.c.a.x, 270f, var_0.c.a.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.c.a, vec4<f32>(1494f, var_0.c.a.x, -149f, 1154f))))) * var_0.c.a));
    let var_2 = !var_0.b;
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(var_0.a, arg_0, 13292u, arg_2))), ~vec4<u32>(arg_0, arg_0 & arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 59139u, 68524u, arg_2), vec4<u32>(47014u, var_0.c.b, arg_2, var_0.a)), 14756u << (1u % 32u))), vec4<u32>(~firstTrailingBit(arg_0 ^ 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_0, var_0.c.b), ~84541u, _wgslsmith_div_u32(arg_0, 4294967295u), max(65162u, var_0.c.b)), abs(firstLeadingBit(vec4<u32>(arg_2, 4294967295u, 4294967295u, 52508u)))), ~(~max(42192u, 71787u)), ~2651u));
    let var_4 = !(!(!all(func_3(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), var_0.c.e.a.x, Struct_2(arg_1, arg_1.a), Struct_2(Struct_1(arg_1.a), vec3<bool>(var_0.c.c, var_2, true))).zz)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_div_f32(-234f, 188f));
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1518f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-885f, -1393f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_1 = Struct_2(Struct_1(select(!(!vec3<bool>(arg_0, arg_0, false)), select(vec3<bool>(arg_0, true, arg_0), func_3(vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0, Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(true, false, arg_0)), Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(false, arg_0, arg_0))), true), _wgslsmith_div_i32(0i, u_input.a) > ~(-4124i))), vec3<bool>(arg_0, arg_0, arg_0));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, 807f, var_0), vec4<f32>(var_0, 523f, -456f, -1564f))))))), abs(4294967295u), true, vec3<i32>(u_input.a, _wgslsmith_sub_i32(~(~u_input.a), (u_input.a << (45295u % 32u)) << (~4294967295u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, 9755i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(0i, -8449i, -5350i, 2147483647i), vec4<i32>(-71817i, 11874i, 1i, u_input.a), true), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-38171i, u_input.a, -18206i, -1i)))), Struct_1(func_3(!vec4<bool>(arg_0, var_1.a.a.x, arg_0, var_1.b.x), func_2(vec2<f32>(733f, var_0), 0u) | true, var_1, var_1)));
    global0 = array<vec2<i32>, 23>();
    return Struct_2(var_2.e, vec3<bool>(false, !var_2.e.a.x, var_1.a.a.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> Struct_5 {
    global0 = array<vec2<i32>, 23>();
    global0 = array<vec2<i32>, 23>();
    var var_0 = Struct_5(true, func_4(arg_2 == 13833i, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + -1923f))))).a, func_4(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1599f - arg_0.x) - _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))).a, arg_2);
    var var_1 = _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(~(~(~1u)), 23u)], vec2<i32>(u_input.a, max(i32(-1i) * -21942i, 9558i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, abs(~u_input.a)), reverseBits(-(~vec2<i32>(1i, -44525i)))));
    var_0 = Struct_5(any(select(vec4<bool>(!arg_1.a.a.x, func_4(false, arg_0.x).a.a.x, !arg_1.a.a.x, true), arg_3, select(!vec4<bool>(true, var_0.a, arg_1.b.x, false), select(vec4<bool>(var_0.c.a.x, arg_3.x, true, true), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, false), false), select(vec4<bool>(arg_3.x, true, var_0.b.a.x, false), arg_3, vec4<bool>(false, true, arg_1.a.a.x, true))))), arg_1.a, arg_1.a, ~(-abs(_wgslsmith_sub_i32(arg_2, -6563i))));
    return Struct_5(true, func_4(any(select(arg_3, arg_3, all(vec3<bool>(arg_3.x, arg_3.x, var_0.b.a.x)))), _wgslsmith_f_op_f32(908f - arg_0.x)).a, func_4(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)))).a, ~_wgslsmith_div_i32(var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1272f)), _wgslsmith_f_op_f32(-1715f * -976f)), vec3<f32>(1f, 1f, 1f))), func_4(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, Struct_1(vec3<bool>(false, true, true)), 61498u)))))), u_input.a, select(vec4<bool>(true, true, true, true), !vec4<bool>(func_3(vec4<bool>(true, true, true, true), true, Struct_2(Struct_1(vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<bool>(true, false, true)), vec3<bool>(true, false, true))).x, u_input.a >= u_input.a, true, true), false));
    let var_1 = Struct_2(func_4(func_4(!func_5(vec3<f32>(-774f, 656f, 219f), Struct_2(Struct_1(vec3<bool>(var_0.c.a.x, true, true)), var_0.c.a), 1i, vec4<bool>(var_0.a, false, true, var_0.c.a.x)).a, _wgslsmith_f_op_f32(floor(2214f))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~24241u, func_5(vec3<f32>(1000f, -340f, 686f), Struct_2(Struct_1(vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.c.a.x)), vec3<bool>(true, var_0.a, false)), u_input.a, vec4<bool>(var_0.c.a.x, true, false, true)).b, 1u)))).a, var_0.c.a);
    global0 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 26511u, 52916u, 0u)), ~vec4<u32>(12605u, 1u, 0u, 61106u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 11614u, 35174u, 26322u), vec4<u32>(4294967295u, 53050u, 16478u, 18576u), vec4<u32>(1u, 4294967295u, 1u, 15268u)) % vec4<u32>(32u)))));
}

