struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<vec2<bool>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = array<vec2<bool>, 8>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 42944u, 13830u, 31226u), reverseBits(vec4<u32>(5960u, 38771u, 0u, 80874u)))), ~max(select(vec2<u32>(36036u, 0u), vec2<u32>(15767u, 1u), true), firstLeadingBit(vec2<u32>(15079u, 4294967295u)))), !select(vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), true), 295u, any(global0[_wgslsmith_index_u32(0u, 10u)]));
    var var_1 = !(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1306u, var_0.a, var_0.a), vec3<u32>(37046u, 36359u, 0u)), 42465u | var_0.a), var_0.a) < _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(var_0.c, var_0.a, 1u)), var_0.a));
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(min(5753u, 1u), ~var_0.c, 57708u & var_0.a), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(33957u, var_0.a, var_0.a), vec3<u32>(1u, var_0.c, 37070u))), vec3<bool>(false, false, !var_0.b.x))), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(var_0.a, var_0.a)), _wgslsmith_sub_u32(var_0.a << ((var_0.c >> (22824u % 32u)) % 32u), ~(~var_0.a)), _wgslsmith_sub_u32(~var_0.c, var_0.c) | (48637u >> (_wgslsmith_mult_u32(var_0.a, 0u) % 32u))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = max(arg_2.c, func_3(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)) >> (78919u % 32u)) > arg_2.a;
    let var_1 = vec3<i32>(u_input.a, 1i, _wgslsmith_add_i32(-u_input.a, -u_input.a)) & (-reverseBits(select(vec3<i32>(u_input.a, 2147483647i, -30369i), vec3<i32>(u_input.a, -24193i, 17768i), arg_1.wzw)) | -vec3<i32>(~u_input.a, 1i, firstLeadingBit(u_input.a)));
    var var_2 = arg_2;
    var var_3 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 10>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(562f))), vec4<bool>(false, _wgslsmith_add_u32(select(1u, arg_0.c, true), 65202u) == 65462u, all(arg_0.b.xxz) && ((arg_0.d & true) | false), arg_3.b.x), arg_3);
    var var_1 = arg_3;
    let var_2 = arg_3;
    var var_3 = -16497i >> (~func_2(arg_1.x, vec4<bool>(u_input.a < u_input.a, select(var_1.b.x, var_0.b.x, true), arg_0.d, false), var_2).a % 32u);
    return func_2(arg_1.x, var_2.b, arg_0);
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = array<vec2<bool>, 10>();
    let var_0 = func_4(func_2(-1236f, !select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, false), arg_0.x), Struct_1(abs(1u), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~35443u, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(352f, 1000f, 118f, 982f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-716f, -634f, -464f, -984f), vec4<f32>(-1000f, -593f, -1000f, -124f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1116f, 2034f, 884f, -1196f) - vec4<f32>(-532f, -1499f, 889f, -1129f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-664f, 735f, -199f, 1000f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 258f, -522f, 261f))))))), abs(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65777u, 0u, 4294967295u), vec4<u32>(55155u, 1u, 1u, 82370u))), max(_wgslsmith_add_u32(1u, 28247u), 1u >> (0u % 32u)))), Struct_1(~1u, !select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, true, false, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, false)), true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(65347u, 4294967295u, 1u), vec3<u32>(27843u, 0u, 8854u))), all(vec2<bool>(true, true))));
    global1 = array<vec2<bool>, 8>();
    global0 = array<vec2<bool>, 10>();
    let var_1 = vec3<i32>(u_input.a, -1i, 19686i);
    return -abs(firstTrailingBit(vec4<i32>(var_1.x, -18061i, var_1.x, u_input.a))) ^ ~vec4<i32>(-299i, -2147483647i, u_input.a, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(abs(func_1(vec2<bool>(false, true))) >> (vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 104739u), vec2<u32>(1u, 1u)), 46171u), firstLeadingBit(~6833u), ~4294967295u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32((firstLeadingBit(vec4<i32>(4105i, 15792i, u_input.a, 91282i)) & countOneBits(vec4<i32>(u_input.a, -1i, 1i, u_input.a))) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-17036i, u_input.a, -2147483647i, 0i), vec4<i32>(2147483647i, -2110i, 0i, -34467i), vec4<i32>(1i, u_input.a, -15123i, 2147483647i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 5372i, 0i, u_input.a), abs(vec4<i32>(-35916i, 10729i, 62969i, u_input.a)))));
    let var_1 = abs(u_input.a);
    var_0 = -vec4<i32>(~0i, abs(var_0.x), i32(-1i) * -var_0.x, var_0.x);
    let var_2 = vec3<i32>(-1i, _wgslsmith_clamp_i32(~var_0.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_1), var_0.zxz) << (1u % 32u), u_input.a), 39407i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1427f + 375f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-564f * -1968f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1221f, 1929f, 1439f))))));
    global0 = array<vec2<bool>, 10>();
    var_0 = select(func_1(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(1u, 526u, 26056u)), 8u)]), select(firstTrailingBit(-vec4<i32>(2147483647i, var_0.x, 0i, var_0.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_2.x, 2147483647i, 2147483647i), vec4<i32>(u_input.a, 0i, var_2.x, 2147483647i)), vec4<i32>(var_2.x, var_2.x, -15034i, 2147483647i) ^ vec4<i32>(var_1, 14207i, -21598i, var_2.x)), ~_wgslsmith_sub_i32(-196i, 0i), -u_input.a ^ _wgslsmith_dot_vec2_i32(var_0.zy, var_2.yz), min(-1i, ~51502i)), false), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(func_4(func_2(146f, vec4<bool>(false, false, false, false), Struct_1(66623u, vec4<bool>(true, true, false, true), 4294967295u, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, var_3.x, var_3.x, 1128f)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13960u), vec2<u32>(24407u, 4294967295u)), Struct_1(12010u, vec4<bool>(true, true, false, false), 20905u, false)).b.zx), true, true));
    global0 = array<vec2<bool>, 10>();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

