struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = ~(~1u);
    let var_1 = Struct_2(vec4<bool>(true, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), u_input.a.x < firstTrailingBit(firstTrailingBit(1u)), false), vec3<bool>(true, true, !all(vec2<bool>(true, false))), vec2<u32>(countOneBits(~countOneBits(u_input.a.x)), 4294967295u), 1i);
    global0 = array<Struct_1, 24>();
    var var_2 = ~(-_wgslsmith_mod_vec2_i32(arg_0, -(arg_0 & arg_0)));
    let var_3 = var_1.c.x;
    return var_1;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f * -2261f)), -561f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(484f, 830f)), -966f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-342f, 1597f), vec2<f32>(1856f, -1815f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-942f, -1797f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * -815f), 1078f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-947f * 2344f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + _wgslsmith_f_op_f32(ceil(749f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), false)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> bool {
    global0 = array<Struct_1, 24>();
    var var_0 = vec4<bool>(_wgslsmith_add_u32(func_2(_wgslsmith_mod_vec2_i32(arg_2.yx, arg_2.xz)).c.x, ~(~79198u)) > 0u, -511f <= _wgslsmith_f_op_f32(floor(-1275f)), select(true, false, true == (select(true, false, true) || true)), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(arg_1, -571f)), arg_1) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(977f, 1416f, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 289f, -375f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -117f, arg_1) * vec3<f32>(arg_1, -1875f, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 645f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0, 442f), arg_0, arg_0) * vec3<f32>(470f, 1f, _wgslsmith_f_op_f32(max(arg_0, 445f)))))));
    var var_2 = true;
    let var_3 = firstLeadingBit(select(~u_input.a.yw, u_input.a.zw, vec2<bool>(!(arg_0 >= -1137f), all(vec3<bool>(false, true, true)))));
    return var_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~0u, ~(~(~1u))), u_input.a.x), 24u)];
    global2 = func_4(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1592f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(f32(-1f) * -105f)))), _wgslsmith_f_op_f32(func_3(countOneBits(~abs(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -1i))), true, func_2(select(vec2<i32>(var_0.a.x, 1i), vec2<i32>(-11950i, 28601i), arg_0.zy)))), _wgslsmith_div_vec3_i32(select(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -50463i, 0i), vec3<i32>(5186i, 0i, var_0.a.x))), vec3<i32>(var_0.a.x, var_0.a.x | -1i, var_0.a.x), !(!arg_0.x)), _wgslsmith_add_vec3_i32((vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x) | vec3<i32>(8137i, 2147483647i, -18061i)) | vec3<i32>(0i, 1i, 0i), abs(countOneBits(vec3<i32>(12799i, 2147483647i, var_0.a.x))))));
    var var_1 = _wgslsmith_mult_u32(arg_1, select(0u << (_wgslsmith_add_u32(_wgslsmith_sub_u32(78039u, arg_1), u_input.a.x) % 32u), 0u, var_0.d));
    global0 = array<Struct_1, 24>();
    global1 = 4294967295u;
    return -select(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 56312i, 2147483647i), vec4<i32>(-2147483647i, -15078i, var_0.a.x, var_0.a.x)), countOneBits(~vec4<i32>(-6188i, 2147483647i, var_0.a.x, var_0.a.x)), func_2(var_0.a | var_0.a).a) ^ vec4<i32>(var_0.a.x, firstTrailingBit(~min(2147483647i, 48586i)), abs(-20694i), var_0.a.x | 9698i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global1 = func_2(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(~firstTrailingBit(arg_0.xzx), ~func_1(vec3<bool>(arg_1.x, true, arg_1.x), 31048u).zyz))).c.x;
    var var_0 = func_2((arg_0.zw ^ arg_0.wy) & vec2<i32>(-firstLeadingBit(arg_0.x), arg_0.x));
    let var_1 = -arg_0;
    var var_2 = Struct_1(func_1(vec3<bool>(!(!var_0.a.x), false, false), var_0.c.x).zy, !all(!var_0.b.zy), (u_input.a.wxw | ~vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)) | _wgslsmith_mod_vec3_u32(select(~vec3<u32>(0u, var_0.c.x, u_input.a.x), ~vec3<u32>(84018u, 1u, u_input.a.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_add_vec3_u32(~u_input.a.xwz, reverseBits(u_input.a.xxy))), false, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.zw), _wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(u_input.a.x, u_input.a.x))), ~_wgslsmith_mod_u32(var_0.c.x, u_input.a.x)) ^ 49057u);
    let var_3 = select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(max(-1320f, _wgslsmith_f_op_f32(1000f - -297f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f - _wgslsmith_f_op_f32(sign(1067f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -501f)))), false && !(!var_2.d), any(vec2<bool>(false, !arg_1.x)));
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(-17253i, 1i), -var_2.a.x), true, var_2.c, var_2.d, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(vec3<bool>(true, false, true), u_input.a.x), vec4<i32>(2147483647i, 13359i, 2147483647i, 0i)), reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(i32(-1i) * -24561i, abs(37142i), -33740i << (u_input.a.x % 32u), -41171i))), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-19973i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6388i, 59132i), vec2<i32>(-3723i, 12051i))), ~(~vec2<i32>(12372i, -31866i)))).a.yz);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec3<f32>(var_1, _wgslsmith_f_op_f32(func_3(vec4<i32>(~(-2147483647i) ^ var_0.a.x, var_0.a.x, select(1i, var_0.a.x, var_0.b & false), ~_wgslsmith_div_i32(-21394i, -8182i)), false, func_2(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) * _wgslsmith_div_f32(var_1, 1166f)));
    let var_3 = Struct_1(var_0.a, _wgslsmith_add_i32(_wgslsmith_add_i32(1i, var_0.a.x | var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, -1i), -vec3<i32>(var_0.a.x, -2147483647i, var_0.a.x))) >= firstTrailingBit(_wgslsmith_add_i32(~var_0.a.x, max(2147483647i, var_0.a.x))), u_input.a.yyy, _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~17303u) != _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.a.x), u_input.a.x, 20790u), firstLeadingBit(~var_0.c)), u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, 836f, var_1) - var_2)) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1), var_1)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 423f, var_2.x) - var_2) + vec3<f32>(224f, -489f, -422f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_2), vec3<f32>(var_2.x, -1233f, var_2.x)))) - vec3<f32>(_wgslsmith_f_op_f32(max(-701f, -235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), var_1)));
    var_0 = Struct_1(var_0.a, var_0.b, var_3.c, !all(vec2<bool>(true, var_0.d)), ~min(20182u, var_0.c.x));
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-43383i, -2671f, vec3<i32>(0i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(-10831i, var_0.a.x, var_0.a.x) << (u_input.a.zxz % vec3<u32>(32u))), firstTrailingBit(~vec3<i32>(37495i, 31011i, var_3.a.x))), reverseBits(-var_0.a.x)), countOneBits(func_1(select(!vec3<bool>(true, var_0.b, false), !vec3<bool>(false, var_0.d, false), true), var_3.e)), vec4<u32>(0u, var_0.c.x, _wgslsmith_sub_u32(func_2(abs(vec2<i32>(var_3.a.x, var_3.a.x))).c.x, _wgslsmith_clamp_u32(var_0.e, 4294967295u, 4294967295u)), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.x, u_input.a.x), u_input.a.xw), ~(~44451u))));
}

