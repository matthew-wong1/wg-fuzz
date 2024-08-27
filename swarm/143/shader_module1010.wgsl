struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<u32>(7561u, 31245u), vec4<f32>(-612f, -1444f, 1000f, -462f)), Struct_1(vec2<u32>(0u, 29204u), vec4<f32>(-2133f, -155f, 569f, 1761f)), Struct_1(vec2<u32>(45987u, 4294967295u), vec4<f32>(-304f, 902f, -1869f, -1000f)), Struct_1(vec2<u32>(52595u, 59478u), vec4<f32>(-389f, 505f, -511f, 837f)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(1743f, -1000f, 434f, -210f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<f32> {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f - _wgslsmith_f_op_f32(floor(-374f))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * -408f);
    let var_1 = global0[_wgslsmith_index_u32(~arg_0, 5u)];
    global0 = array<Struct_1, 5>();
    var var_2 = var_1.b.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * 808f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(427f - var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_f_op_f32(min(-2199f, _wgslsmith_f_op_f32(-var_1.b.x))), var_1.b.x) * vec4<f32>(var_1.b.x, 897f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-132f, 435f, arg_3 != var_1.a.x)), var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -895f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(vec2<u32>(select(_wgslsmith_div_u32(24372u, 4294967295u), u_input.c, true), _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(4294967295u, u_input.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(~u_input.b, arg_0.x, arg_0.x, u_input.b)))));
    let var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))) - var_0.b.x)));
    global0 = array<Struct_1, 5>();
    return Struct_1(var_1, vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2)))))), _wgslsmith_f_op_f32(-var_0.b.x), var_2));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0.b.www;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, arg_0.b.x))))), vec3<f32>(arg_1.b.x, func_2(arg_2).b.x, arg_3.b.x), true)) * vec3<f32>(-1551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), arg_0.b.x));
    var var_2 = func_2(select(arg_2, !vec2<bool>(arg_2.x, arg_2.x != true), arg_2));
    var_2 = func_2(arg_2);
    let var_3 = 24119i;
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1356f, -748f, 360f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 1000f, arg_2.x) + vec3<f32>(-1016f, arg_2.x, arg_2.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(func_4(func_2(vec2<bool>(true, true)), Struct_1(u_input.a, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(~7473u, 5u)]))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1637f, arg_2.x, arg_2.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -770f))), 1709f, _wgslsmith_f_op_f32(ceil(447f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, arg_2.x)))))));
    var var_2 = all(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_3 = countOneBits(vec3<i32>(-2147483647i, firstTrailingBit(countOneBits(2147483647i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 77574u, u_input.a.x), ~vec3<u32>(0u, u_input.a.x, 24197u)) % 32u), _wgslsmith_sub_i32(-1i, -(arg_0 | arg_0))));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.wx + vec2<f32>(var_0.x, arg_2.x)), var_1.ww))))));
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 42093u), vec2<u32>(arg_1, 1u)) & func_2(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))).a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = select(1u << (firstTrailingBit(_wgslsmith_clamp_u32(0u, 49655u, arg_1) & ~0u) % 32u), abs(~64438u), !(!(!all(vec3<bool>(false, false, true)))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2117f, 172f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(u_input.a.x, arg_1), vec4<f32>(-693f, -223f, -1000f, 1000f)), Struct_1(arg_0, vec4<f32>(-586f, -258f, 449f, -1000f)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(arg_1, 5u)])))))))));
    global0 = array<Struct_1, 5>();
    return global0[_wgslsmith_index_u32(4294967295u >> (abs(_wgslsmith_sub_u32(reverseBits(max(70877u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 542u, 62082u), ~vec4<u32>(u_input.b, 0u, 1u, 6507u)))) % 32u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(func_1(-countOneBits(73233i), min(1u, 89282u), vec2<f32>(_wgslsmith_f_op_f32(674f * -863f), -1525f)), ~(~(~1550u))), 0u);
    var var_1 = Struct_1(u_input.a, var_0.b);
    var_1 = Struct_1(select(_wgslsmith_mod_vec2_u32(vec2<u32>(select(var_1.a.x, var_0.a.x, false), var_0.a.x), var_0.a), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, var_1.a) ^ _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, var_0.a.x)), abs(var_1.a) ^ func_5(var_0.a, 0u).a), false), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, _wgslsmith_f_op_f32(var_0.b.x + var_1.b.x), 1040f, _wgslsmith_f_op_f32(-var_1.b.x))), var_1.b)));
    let var_2 = any(vec4<bool>(!(!all(vec2<bool>(true, false))), !(true | all(vec4<bool>(true, true, true, true))), false, false));
    let var_3 = any(select(select(!vec3<bool>(false, var_2, var_2), vec3<bool>(false, true & var_2, !var_2), ~var_0.a.x == 4294967295u), vec3<bool>(all(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), true)), false, !var_2), !(!select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, true), var_2))));
    let var_4 = ~(~(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.a.x, var_0.a.x), vec3<u32>(5818u, 1u, 39270u))) << ((select(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(u_input.c, 76954u, var_1.a.x), var_2) >> (vec3<u32>(1u, var_1.a.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_5 = -(~select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 32755i, 8643i))), vec3<i32>(min(1i, -1i), -1i, _wgslsmith_sub_i32(0i, 1i)), vec3<bool>(var_1.b.x >= 2231f, any(vec4<bool>(false, var_2, false, false)), true)));
    let var_6 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, ~vec2<u32>(var_0.a.x, 7104u)), vec2<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(13524u, 4294967295u, 77359u, var_4.x)), select(vec4<u32>(var_4.x, var_1.a.x, 1u, 4294967295u), vec4<u32>(u_input.b, 0u, var_4.x, var_4.x), var_2)), _wgslsmith_div_u32(var_4.x, select(58770u, 37760u, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, _wgslsmith_f_op_f32(func_4(func_2(select(vec2<bool>(var_3, var_2), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(var_3, false), vec2<bool>(var_3, var_2)))), Struct_1(~(~var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.b.x, var_1.b.x, var_0.b.x, var_1.b.x)))), !vec2<bool>(var_2, var_2), Struct_1(vec2<u32>(~4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * _wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b)))))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 33300u, u_input.c, u_input.a.x), ~vec4<u32>(var_1.a.x, 2280u, u_input.b, var_6.x)) >> (~vec4<u32>(var_0.a.x, var_0.a.x, var_1.a.x, 25501u) % vec4<u32>(32u))), var_5.x, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.b, _wgslsmith_sub_u32(4294967295u, u_input.c))), max(vec2<u32>(var_6.x, var_1.a.x) << (var_6 % vec2<u32>(32u)), ~func_5(u_input.a, 4294967295u).a)));
}

