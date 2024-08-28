struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75221u;

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2.wyz;
    global2 = countOneBits(vec3<i32>(global2.x << (u_input.b % 32u), _wgslsmith_clamp_i32(min(global2.x, arg_0.a), _wgslsmith_sub_i32(45597i, u_input.d), _wgslsmith_mult_i32(global2.x, global2.x)) << (_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.b), u_input.b >> (60134u % 32u)) % 32u), reverseBits(3240i)));
    let var_1 = firstLeadingBit(54343u);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(132f)))), -238f, _wgslsmith_f_op_f32(f32(-1f) * -1810f)), arg_1)));
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(arg_0.a), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.e), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, global2.x, arg_0.a, arg_0.a), vec4<i32>(global2.x, global2.x, 38372i, 28208i)))), -34837i), _wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(arg_0.a, global2.x, 1i)) | _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0.a, -39234i, 2147483647i), vec3<i32>(15471i, global2.x, global2.x) ^ vec3<i32>(1i, global2.x, u_input.a)), -abs(vec3<i32>(2147483647i, -2147483647i, -2147483647i) | vec3<i32>(global2.x, -15225i, -1i))));
    return global1[_wgslsmith_index_u32(var_1, 2u)];
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<i32> {
    global1 = array<Struct_1, 2>();
    var var_0 = vec2<bool>(1i != _wgslsmith_add_i32(max(-arg_0.b.b.x, -arg_3.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, 0i, -2147483647i, 1i), ~vec4<i32>(5861i, -11864i, global2.x, arg_3.x))), false);
    var var_1 = abs(-9932i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-549f, 2383f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, -243f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(160f, 1433f) * vec2<f32>(-488f, -1251f)), false)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(abs(139f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(-284f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f + 1861f)))));
    var var_3 = min(func_2(Struct_4(_wgslsmith_sub_i32(~u_input.d, arg_0.b.b.x << (4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, var_2.x, var_2.x) + vec4<f32>(-323f, -1000f, var_2.x, var_2.x))))), vec4<bool>(var_0.x || all(vec3<bool>(true, arg_0.a.x, arg_0.b.a)), arg_0.b.a, !arg_0.a.x, any(!vec4<bool>(arg_0.b.a, false, arg_0.b.a, true))), !(!select(vec4<bool>(true, false, arg_0.b.a, var_0.x), vec4<bool>(true, arg_0.b.a, var_0.x, true), var_0.x))).a.x, ~0u);
    return arg_0.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(~111711u, 2u)];
    global2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(select(_wgslsmith_add_vec3_i32(arg_1.a.wxy, vec3<i32>(9410i, global2.x, global2.x)), vec3<i32>(2147483647i, u_input.e, global2.x), true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 31115i, arg_1.a.x) & vec3<i32>(u_input.d, -32867i, arg_1.a.x), vec3<i32>(global2.x, 1i, arg_0.b.x) | vec3<i32>(arg_0.b.x, -36974i, 11564i)), vec3<i32>(43195i, 0i, 13642i) << (~vec3<u32>(4294967295u, 568u, arg_0.d.x) % vec3<u32>(32u))), -(max(arg_1.a.yyz, vec3<i32>(global2.x, arg_1.a.x, -2147483647i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.d.x, 0u, 17155u), vec3<u32>(u_input.b, 21810u, u_input.b), vec3<u32>(23379u, 16358u, 4294967295u)) % vec3<u32>(32u)))), (_wgslsmith_sub_vec3_i32(~arg_1.a.wxz, select(arg_1.a.wyw, vec3<i32>(-1i, global2.x, 7903i), arg_0.a)) & abs(vec3<i32>(u_input.e, 2147483647i, u_input.a))) >> ((~vec3<u32>(2360u, u_input.b, 1u) | arg_2.wxw) % vec3<u32>(32u)), vec3<i32>(abs(2147483647i), u_input.d, global2.x));
    global2 = ~arg_1.a.wxz;
    return Struct_4(firstTrailingBit(1i) | global2.x);
}

fn func_1() -> Struct_4 {
    let var_0 = vec3<i32>(2147483647i, u_input.d, global2.x);
    let var_1 = func_4(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(50063u, 4226u, 0u, 4294967295u), vec4<u32>(1u, u_input.b, 1u, 47899u)), vec4<u32>(77394u, 43454u, u_input.b, 1u)) > abs(~u_input.b), countOneBits(func_3(Struct_5(vec3<bool>(true, false, false), Struct_2(false, vec2<i32>(-46966i, global2.x), global1[_wgslsmith_index_u32(4294967295u, 2u)], vec2<u32>(u_input.b, 8170u))), 4294967295u, func_2(Struct_4(-22502i), vec4<f32>(-926f, 605f, 197f, -884f), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), max(vec3<i32>(14847i, global2.x, -2147483647i), var_0))), Struct_1(firstLeadingBit(vec4<u32>(36716u, 0u, 4294967295u, u_input.b))), func_2(Struct_4(1i), vec4<f32>(-621f, _wgslsmith_f_op_f32(floor(-695f)), -831f, _wgslsmith_f_op_f32(floor(-135f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)).a.zy), Struct_3(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, var_0.x, -24244i, 85i), _wgslsmith_clamp_vec4_i32(vec4<i32>(54793i, -22843i, -51637i, global2.x), vec4<i32>(var_0.x, global2.x, global2.x, -1i), vec4<i32>(0i, global2.x, -2147483647i, -1i)), abs(vec4<i32>(var_0.x, 1i, 0i, var_0.x)))), Struct_2(true, ~max(var_0.yz, var_0.zx), func_2(Struct_4(var_0.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1741f, 681f, -936f))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), countOneBits(vec2<u32>(6785u, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(437f, 1226f, -1283f, -155f), vec4<f32>(566f, -1313f, 459f, 1353f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1304f, 736f, -119f, -981f) + vec4<f32>(575f, 1343f, -294f, 1903f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(366f, 1000f, 1732f, 249f)))))), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, u_input.b), ~firstLeadingBit(vec2<u32>(u_input.b, u_input.b)))), vec4<u32>(u_input.b, max(~u_input.b, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 560u, u_input.b, 4294967295u)))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, 1u)), firstTrailingBit(min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, u_input.b)))), 66455u));
    global0 = _wgslsmith_add_u32(max(u_input.b, ~u_input.b << (0u % 32u)), 1u);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b >> (~u_input.b % 32u)), ~u_input.b, ~countOneBits(_wgslsmith_mult_u32(44400u, 7517u))), vec4<u32>(0u, 1u << (func_2(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(-684f, 317f, 448f, 1065f) - vec4<f32>(1518f, 658f, -477f, 2398f)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)).a.x % 32u), 4294967295u, max(_wgslsmith_add_u32(u_input.b >> (73585u % 32u), u_input.b), firstLeadingBit(25818u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1054f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(561f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-799f)), _wgslsmith_div_f32(-1935f, -396f)))))));
    return Struct_4(firstLeadingBit(0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(global2.xx >> (_wgslsmith_div_vec2_u32(vec2<u32>(~1u, ~u_input.b), ~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u)), vec2<i32>(abs(u_input.e << (1u % 32u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -29454i, -2147483647i), u_input.a)));
    var var_1 = func_1();
    let var_2 = !(!vec4<bool>(false, true, _wgslsmith_f_op_f32(960f + 1000f) == _wgslsmith_f_op_f32(floor(257f)), any(vec4<bool>(true, true, true, true))));
    var var_3 = select(vec3<i32>(~(-2147483647i), -38064i, 18793i), countOneBits(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(var_0, var_1.a, -43105i)), max(-vec3<i32>(2147483647i, 2147483647i, var_0), ~vec3<i32>(u_input.e, u_input.d, -79148i)))), vec3<bool>(_wgslsmith_f_op_f32(round(1f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), true, select(!all(vec2<bool>(true, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, false, var_2.x)) && any(vec4<bool>(false, var_2.x, false, false)), false)));
    let var_4 = vec4<f32>(-1269f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(316f + -857f))), 1703f)) * 1004f), -1062f, 1000f);
    let var_5 = select(vec3<bool>(true, var_2.x, !all(!vec2<bool>(false, var_2.x))), var_2.zwx, !select(var_2.yzy, vec3<bool>(true & var_2.x, !var_2.x, !var_2.x), vec3<bool>(true, false, u_input.b < 0u)));
    var_3 = vec3<i32>(u_input.a, _wgslsmith_add_i32(32490i, _wgslsmith_mod_i32(-7542i, -2147483647i)) >> ((_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))) >> (~reverseBits(u_input.b) % 32u)) % 32u), var_1.a & ((_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 11641i), u_input.c) ^ _wgslsmith_add_i32(32270i, var_3.x)) | _wgslsmith_dot_vec2_i32(vec2<i32>(39154i, -2896i), global2.zy)));
    var var_6 = any(select(!(!vec3<bool>(var_5.x, true, var_2.x)), vec3<bool>(true, true, true), -846i > ~(-u_input.d)));
    var var_7 = vec2<i32>(_wgslsmith_add_i32(15290i, _wgslsmith_mult_i32(-2147483647i, 1i)), -6698i) | ~var_3.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u), vec4<u32>(1u, 26196u, 43209u, 4294967295u))), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(19649u, 1u, 0u, 14896u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 67839u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 81503u), vec4<u32>(1u, u_input.b, 1u, 1u) ^ vec4<u32>(u_input.b, u_input.b, 26371u, 0u)))));
}

