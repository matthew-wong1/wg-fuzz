struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    global0 = array<Struct_1, 12>();
    var var_0 = arg_0.e.x;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1819f, 652f, -572f, -483f)) + arg_1)), _wgslsmith_f_op_vec4_f32(arg_1 + arg_1)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(848f + _wgslsmith_f_op_f32(select(782f, -2358f, arg_0.a))), _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-arg_0.b)), -1486f, arg_1.x), _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(arg_0.c, -1943f)), _wgslsmith_f_op_f32(-196f * -919f), arg_1.x)))), false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1204f, 547f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.xw))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), 369f))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_1, 12>();
    var var_0 = abs(firstTrailingBit(firstTrailingBit(~vec2<i32>(1i, 1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(50484u, 12u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)))))));
    global0 = array<Struct_1, 12>();
    let var_2 = vec3<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec2<bool>(false, false)))), !(true || any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), all(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    return Struct_1(!(!any(var_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(abs(703f)))))), -1000f, firstLeadingBit(40063i), vec3<bool>(true, any(!(!vec4<bool>(true, var_2.x, true, true))), !var_2.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(-19388i, -firstLeadingBit(-2147483647i));
    var var_1 = ~(~u_input.a);
    var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(~arg_0.d), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 1i), ~vec3<i32>(arg_0.d, arg_0.d, 1i)), arg_3)), -(_wgslsmith_mult_i32(arg_0.d, arg_3) >> (u_input.a.x % 32u)));
    var_0 = _wgslsmith_add_i32(-16737i, 0i);
    global0 = array<Struct_1, 12>();
    return Struct_1(!arg_0.e.x, _wgslsmith_f_op_f32(min(-554f, 2128f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_0.c, arg_0.b)))), (i32(-1i) * -arg_3) >> ((abs(u_input.a.x << (arg_2.x % 32u)) << (~10104u % 32u)) % 32u), vec3<bool>(11886i >= arg_3, arg_0.e.x, !(~arg_2.x >= 84539u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<f32> {
    global0 = array<Struct_1, 12>();
    let var_0 = reverseBits(_wgslsmith_mod_vec3_i32(-select(vec3<i32>(arg_0.d, 2147483647i, 2147483647i) | vec3<i32>(arg_0.d, arg_0.d, arg_0.d), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d, 0i, 45446i), vec3<i32>(-1i, 0i, 0i)), vec3<bool>(arg_0.a, false, arg_0.a)), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(arg_0.d, arg_0.d, arg_0.d)), countOneBits(~vec3<i32>(arg_0.d, 63890i, arg_0.d)), vec3<i32>(arg_0.d, 40057i, abs(arg_0.d)))));
    var var_1 = u_input.b.yw;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-266f, arg_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-574f, 294f))), _wgslsmith_f_op_f32(-arg_0.c), any(!vec4<bool>(true, false, arg_0.e.x, true))))) - arg_0.b);
    let var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), arg_0.b, _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(max(1708f, -789f))))));
    return vec2<f32>(195f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1602f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 769f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(vec4<f32>(arg_0.x, 272f, 1000f, 269f)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(48333u, u_input.b.x, u_input.b.x)), vec2<u32>(u_input.a.x, u_input.b.x), 0i), reverseBits(vec4<u32>(u_input.b.x, 5122u, u_input.a.x, 0u)), func_4(func_4(Struct_1(arg_1, arg_0.x, 1305f, 1i, vec3<bool>(arg_2.x, arg_1, arg_2.x)), 0u, u_input.b.zw, 1i), 0u, select(vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(1u, u_input.b.x), arg_1), i32(-1i) * -33204i).e.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-396f, arg_0.x) + vec2<f32>(arg_0.x, arg_0.x)), true)))));
    global0 = array<Struct_1, 12>();
    let var_1 = select(select(arg_2.wwy, !func_4(func_4(global0[_wgslsmith_index_u32(u_input.c, 12u)], u_input.b.x, vec2<u32>(1u, 0u), -1i), ~1u, ~vec2<u32>(4294967295u, 4294967295u), 1i).e, arg_2.wxz), vec3<bool>(!(false || all(arg_2)), func_2(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 1927f), var_0.x)).e.x, abs(0u & u_input.c) == 0u), true);
    var var_2 = global0[_wgslsmith_index_u32(~1u, 12u)];
    var var_3 = false;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, ~_wgslsmith_add_i32(~45968i, max(42891i, -1i))), min(reverseBits(-34354i << (_wgslsmith_mult_u32(u_input.c, u_input.a.x) % 32u)), i32(-1i) * -1i));
    var var_1 = vec4<bool>(true, all(vec4<bool>((i32(-1i) * -1i) < _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 21148i), vec2<i32>(20710i, 5910i)), select(true, false, true), false, true)), all(vec2<bool>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, -971f)), true, select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)), func_4(global0[_wgslsmith_index_u32(max(u_input.c, 0u), 12u)], max(36558u, u_input.c), min(u_input.a.yy, u_input.b.wx), i32(-1i) * -44544i).a)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-102f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1640f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) - func_4(global0[_wgslsmith_index_u32(1u, 12u)], u_input.c, u_input.b.xz, 1i).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2014f)) - 594f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2099f), -1509f, all(vec4<bool>(false, var_1.x, true, var_1.x))))))));
    var_0 = ~1i;
    let var_3 = global0[_wgslsmith_index_u32(u_input.c, 12u)];
    var_0 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_mult_i32(-var_3.d, ~var_3.d), firstLeadingBit(_wgslsmith_mod_i32(0i, var_3.d)), 38591i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-7940i, 55428i)), ~vec2<i32>(var_3.d, var_3.d))), vec4<i32>(var_3.d, _wgslsmith_mult_i32(-12750i, -22586i), abs(-4330i), -var_3.d) << (u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(var_3.d, _wgslsmith_div_i32(1i, var_3.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.d, -2147483647i), -vec2<i32>(var_3.d, -1i))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.d, var_3.d, var_3.d), vec3<i32>(var_3.d, -1i, -2147483647i)) >> (u_input.a % vec3<u32>(32u)))), reverseBits(-(vec2<i32>(-34647i, 21969i) ^ vec2<i32>(-15303i, var_3.d)) >> (_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a.x, u_input.b.x)) % vec2<u32>(32u))), vec4<u32>(max(66414u, 58721u), u_input.b.x, 7380u, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-var_2.www));
}

