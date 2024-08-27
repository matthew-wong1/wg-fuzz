struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 46791u), vec2<u32>(4294967295u, 21643u), vec2<u32>(12889u, 43109u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 7094u), vec2<u32>(1u, 87463u), vec2<u32>(5457u, 0u), vec2<u32>(24348u, 32078u), vec2<u32>(1u, 41898u), vec2<u32>(11354u, 13200u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 39345u), vec2<u32>(35938u, 6102u), vec2<u32>(17659u, 70584u), vec2<u32>(1u, 4294967295u), vec2<u32>(43157u, 1u), vec2<u32>(3949u, 90882u), vec2<u32>(7006u, 4294967295u), vec2<u32>(1u, 92865u), vec2<u32>(7550u, 26816u), vec2<u32>(4294967295u, 9907u), vec2<u32>(11658u, 46976u), vec2<u32>(11266u, 22104u), vec2<u32>(0u, 31804u), vec2<u32>(93875u, 4294967295u), vec2<u32>(63983u, 19750u), vec2<u32>(28575u, 4835u));

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<i32>(u_input.a.x, abs(~0i), -89714i);
    let var_1 = all(vec3<bool>(true, true, false));
    global1 = false;
    var var_2 = Struct_2(Struct_1(vec3<bool>(!var_1 || !var_1, 1i <= (u_input.a.x ^ u_input.a.x), all(select(vec2<bool>(var_1, var_1), vec2<bool>(false, false), true))), -_wgslsmith_add_i32(-3794i, 0i) >> (~4294967295u % 32u), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(956f * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(576f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, _wgslsmith_f_op_f32(-119f - 1000f)))), firstLeadingBit(-14869i), ~max(i32(-1i) * -1i, 1i));
    let var_3 = ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.wz, vec2<i32>(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, var_0.x))), vec2<i32>(-_wgslsmith_sub_i32(var_0.x, u_input.a.x), _wgslsmith_div_i32(~(-33782i), var_0.x)));
    return !(!vec3<bool>((true & var_2.a.a.x) && false, !any(vec3<bool>(var_1, false, false)), var_1));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(998f, 1990f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(806f, 180f)) * -1146f))));
    var_0 = true;
    var var_1 = Struct_1(func_3(), 7347i, 54663i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(621f, -791f, true)), _wgslsmith_f_op_f32(step(911f, -649f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(243f, -613f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1617f, -868f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1522f, -356f), vec2<f32>(619f, 444f), false)), all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(392f, 280f) * vec2<f32>(-857f, -408f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-697f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2454f) * _wgslsmith_f_op_f32(select(-502f, 1000f, false)))))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-454f, 1000f, var_1.a.x)))))), _wgslsmith_f_op_f32(1095f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e.x)) - _wgslsmith_f_op_f32(-260f * var_1.d)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(726f, 364f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(343f, -551f))))), var_1.e));
    var var_3 = u_input.b.x;
    return -1702f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2.x, arg_2.x, 2147483647i, u_input.b.x), firstTrailingBit(vec4<i32>(38044i, 24585i, 10237i, arg_0.b))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-34438i, 25997i, 34600i, -30616i), vec4<i32>(-71940i, 34403i, arg_2.x, -21864i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_0.b, 1i, u_input.a.x), ~vec4<i32>(-57742i, arg_0.c, arg_2.x, arg_1.b)))), 1697i);
    global1 = true;
    var_0 = _wgslsmith_div_i32(countOneBits(-17365i), 18848i);
    global2 = array<vec4<bool>, 19>();
    let var_1 = _wgslsmith_f_op_f32(min(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f))));
    return arg_1.e;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.d)))), _wgslsmith_f_op_f32(-arg_1))));
    let var_1 = select((firstTrailingBit(global0[_wgslsmith_index_u32(83308u, 30u)]) << (~vec2<u32>(66689u, 6360u) % vec2<u32>(32u))) >> (~(vec2<u32>(73721u, 1u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<u32>(~2765u, ~26349u), vec2<bool>(all(vec2<bool>(true, arg_2.a.x)), arg_2.a.x)) & vec2<u32>(1u, _wgslsmith_add_u32(0u, abs(4294967295u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, var_0)) - _wgslsmith_f_op_vec2_f32(arg_2.e * arg_2.e)) - vec2<f32>(_wgslsmith_f_op_f32(arg_2.e.x * var_0), _wgslsmith_f_op_f32(-200f * arg_2.e.x))))), arg_2.e));
    global2 = array<vec4<bool>, 19>();
    let var_3 = -vec3<i32>(~(-25936i), u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a));
    return Struct_1(arg_2.a, countOneBits(_wgslsmith_add_i32(u_input.a.x, arg_3)), ~77030i, _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_vec2_f32(-arg_2.e));
}

fn func_1() -> bool {
    let var_0 = func_5(abs(u_input.b.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1761f - 806f), _wgslsmith_f_op_f32(floor(820f)))), 943f, true))), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), -(-3022i & u_input.b.x), -1i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(448f + 270f), _wgslsmith_f_op_f32(step(-508f, 285f))), 728f), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<bool>(true, true, true), ~u_input.a.x, ~67022i, _wgslsmith_f_op_f32(func_2()), vec2<f32>(1370f, 1498f)), Struct_1(vec3<bool>(false, false, true), ~2147483647i, 2028i, _wgslsmith_f_op_f32(-901f * -850f), _wgslsmith_f_op_vec2_f32(vec2<f32>(871f, 957f) + vec2<f32>(-118f, -718f))), u_input.a.zyz, 1u))), ~u_input.b.x);
    let var_1 = var_0.c;
    let var_2 = var_0;
    var var_3 = Struct_2(Struct_1(vec3<bool>(select(!var_2.a.x, all(vec3<bool>(var_2.a.x, var_2.a.x, false)), var_2.a.x & false), var_2.a.x, var_2.a.x), reverseBits(var_1 >> (0u % 32u)) | var_2.c, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1456f), 1108f)), var_2.d), var_2.e), i32(-1i) * -(~8236i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(15347i, 0i), u_input.b.xy), firstLeadingBit(~(u_input.b.xz >> (global0[_wgslsmith_index_u32(49429u, 30u)] % vec2<u32>(32u))))));
    let var_4 = func_5(vec2<i32>(~reverseBits(-var_2.c), 73585i), var_3.a.e.x, func_5(abs(_wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.b.xz | u_input.b.yy)), -206f, Struct_1(select(func_3(), vec3<bool>(true, true, var_2.a.x), var_3.a.a), -(var_2.b & var_2.c), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * 1350f), _wgslsmith_f_op_vec2_f32(sign(var_0.e))), -u_input.a.x), var_1);
    return true;
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_1.x << (0u % 32u), -u_input.b.x), 0i), max(_wgslsmith_clamp_vec2_i32(~u_input.a.zx, arg_1.xw | vec2<i32>(-21025i, -2147483647i), -arg_1.xx), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, arg_1.x)), ~vec2<i32>(u_input.b.x, arg_2)))), 1601f, Struct_1(vec3<bool>(arg_3.x, false, false), arg_2, countOneBits(firstTrailingBit(~0i)), _wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(func_2())), vec2<f32>(_wgslsmith_f_op_f32(sign(1982f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -abs(abs(countOneBits(-10521i))));
    let var_1 = Struct_2(func_5(vec2<i32>(-(~(-10066i)), ~arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1822f), func_5(max(vec2<i32>(-28691i, -11785i) ^ vec2<i32>(arg_2, arg_1.x), _wgslsmith_add_vec2_i32(arg_1.xx, u_input.a.zy)), -682f, Struct_1(!arg_3.zyz, -4307i, arg_1.x, var_0.e.x, vec2<f32>(var_0.e.x, var_0.e.x)), arg_2), -1i), abs(0i), var_0.c);
    global2 = array<vec4<bool>, 19>();
    var var_2 = ~(~select(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 28572u, 0u, 33427u), vec4<u32>(10056u, 44989u, 48142u, 37625u))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(11624u, 59238u, 21893u, 69652u)), firstTrailingBit(vec4<u32>(7293u, 0u, 31027u, 4294967295u))), select(!global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(99977u, 19u)], select(arg_0, arg_0, global2[_wgslsmith_index_u32(65677u, 19u)]))));
    let var_3 = func_3().xx;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -170f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1653f + -513f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(303f, -522f) * _wgslsmith_f_op_f32(201f - 424f)) + _wgslsmith_f_op_f32(f32(-1f) * -537f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f * 119f) + _wgslsmith_f_op_f32(-1000f - -799f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f - _wgslsmith_div_f32(-1146f, 197f)) * 140f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), func_1()), u_input.a, 28150i, vec4<bool>(all(vec2<bool>(true, false)), true, true, true)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-550f)), _wgslsmith_f_op_f32(f32(-1f) * -560f))), 848f));
    let var_2 = Struct_2(Struct_1(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), func_3()), func_5(~vec2<i32>(u_input.a.x, u_input.b.x), _wgslsmith_f_op_f32(floor(1139f)), func_5(vec2<i32>(u_input.a.x, u_input.a.x), var_1, Struct_1(vec3<bool>(false, false, true), u_input.a.x, -1i, var_1, vec2<f32>(663f, 152f)), u_input.a.x), _wgslsmith_mod_i32(-2147483647i, 5064i)).a, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_1())), countOneBits(u_input.a.x), firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))), -(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) & u_input.b.x) << (~1u % 32u), -firstTrailingBit(min(select(u_input.a.x, -27952i, false), u_input.a.x)));
    var var_3 = var_2;
    var var_4 = Struct_2(Struct_1(var_3.a.a, ~u_input.a.x, var_3.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(abs(func_5(vec2<i32>(var_2.b, u_input.b.x), var_2.a.e.x, var_2.a, -41742i).d))), var_3.a.e), var_2.b, firstTrailingBit(_wgslsmith_add_i32(-firstLeadingBit(u_input.a.x), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(var_4.c, u_input.b.x, 21763i, var_3.a.b))), max(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.c, -28463i, var_3.b, 49099i), vec4<i32>(31017i, 53060i, 1i, var_3.b)), _wgslsmith_div_vec4_i32(vec4<i32>(var_4.a.c, var_3.b, var_2.a.b, var_4.c), u_input.a))), var_3.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_3.a.d)))));
}

