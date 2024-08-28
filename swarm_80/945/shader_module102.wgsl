struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 7> = array<i32, 7>(-90037i, 1i, i32(-2147483648), -3102i, -35740i, 42255i, -57457i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = select(!vec2<bool>(true, !any(vec3<bool>(false, true, true))), vec2<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), select(true, true, true) || true), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f));
    var var_2 = var_0;
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f * global0.x)))), global0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -442f)))));
    return var_3;
}

fn func_3() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(436f, -432f, false))) + _wgslsmith_f_op_f32(-global0.x)) - global0.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -790f, false)) - _wgslsmith_f_op_f32(abs(1046f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) - -333f), _wgslsmith_f_op_f32(floor(739f)));
    global1 = 29290u;
    let var_2 = (_wgslsmith_f_op_f32(583f + 874f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -846f) + -893f)))) | any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(global0.x, 2276f)))) - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(var_1.x, -529f, all(vec2<bool>(false, true)))))), 812f));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1033f, -909f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, 421f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-967f, arg_2.b.a))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, -249f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-111f, global0.x))))))));
    var var_0 = abs(~(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 1u, arg_2.a), vec3<u32>(22208u, arg_1.a, 1u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, arg_2.a, 20393u), vec3<u32>(4294967295u, 13940u, arg_1.a), vec3<u32>(26516u, arg_2.a, arg_2.a)))) ^ firstLeadingBit(vec3<u32>(arg_1.a, arg_1.a, _wgslsmith_mod_u32(0u, arg_2.a) | ~arg_2.a));
    var_0 = select(~(~firstLeadingBit(~vec3<u32>(0u, var_0.x, var_0.x))), vec3<u32>(~(~4338u), reverseBits(countOneBits(0u)), abs(var_0.x)), any(!select(vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_1.c), select(vec4<bool>(arg_1.c, true, false, false), vec4<bool>(arg_2.c, arg_1.c, arg_1.c, arg_2.c), vec4<bool>(true, true, arg_2.c, true)), !vec4<bool>(arg_2.c, arg_1.c, arg_1.c, false))));
    var_0 = ~(~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, 48020u, 4294967295u, 0u), min(vec4<u32>(1u, arg_2.a, arg_1.a, 0u), vec4<u32>(27151u, 18582u, 0u, arg_1.a))), _wgslsmith_mod_u32(arg_2.a, 1u) | ~arg_1.a));
    let var_1 = func_3();
    return arg_1.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = 1u;
    var var_1 = arg_2;
    global1 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(countOneBits(vec2<u32>(var_1.a, 4294967295u))), (vec2<u32>(arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(30106u, arg_2.a, var_1.a, var_1.a), vec4<u32>(0u, arg_2.a, var_1.a, var_1.a))) | vec2<u32>(20164u, abs(22149u))) | reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a, var_1.a) ^ vec2<u32>(4294967295u, arg_2.a), select(vec2<u32>(4294967295u, 12087u), vec2<u32>(var_1.a, var_1.a), var_1.c))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1515f, global0.x)))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1278f);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.d.x, ~u_input.a.x), _wgslsmith_div_i32(abs(-1i), global2[_wgslsmith_index_u32(4294967295u, 7u)]), -arg_2.d.x, _wgslsmith_mod_i32(abs(u_input.b), i32(-1i) * -3393i)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, -1i, arg_2.d.x, -40817i)), vec4<i32>(u_input.a.x, 11828i, -23016i, arg_2.d.x) & vec4<i32>(-2147483647i, -1i, var_1.d.x, u_input.a.x), select(vec4<i32>(0i, -1i, var_1.d.x, arg_2.d.x), var_1.d, vec4<bool>(true, true, true, false))), var_1.d)) << (37838u % 32u);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2254f);
    let var_1 = arg_1;
    let var_2 = func_5(true, func_4(func_2(var_1.zz), Struct_2(43489u, Struct_1(1042f), false, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-11716i, -33153i, var_1.x, -172i), var_1, var_1)), Struct_2(~firstTrailingBit(0u), func_3(), func_2(u_input.a).a >= -533f, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -1i, u_input.b), arg_1)))), Struct_2(~(~4294967295u), func_3(), !(!all(vec2<bool>(false, false))), arg_1), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), global0.x) + -699f)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(global0.x, global0.x, any(vec2<bool>(true, true))))));
    let var_4 = func_2(_wgslsmith_add_vec2_i32(~var_1.ww, -var_1.zx ^ arg_1.zz));
    return Struct_1(_wgslsmith_f_op_f32(672f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))));
}

fn func_6(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global0.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(420f, -1587f), vec2<f32>(-401f, -1136f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2424f, arg_0.a) + vec2<f32>(global0.x, arg_0.a))))))));
    var var_1 = Struct_2(firstLeadingBit(~(~_wgslsmith_div_u32(34732u, 28074u))), arg_0, true, -vec4<i32>(countOneBits(global2[_wgslsmith_index_u32(~16377u, 7u)]), reverseBits(i32(-1i) * -3323i), -2147483647i, global2[_wgslsmith_index_u32(1u, 7u)]));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(535f, arg_0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.a, var_0.x, false))), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1256f, arg_0.a) - vec2<f32>(global0.x, -424f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_1.b.a))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 977f) * vec2<f32>(454f, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_1.b.a) - vec2<f32>(global0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 118f)) + vec2<f32>(877f, -895f)))), !vec2<bool>(!select(false, var_1.c, var_1.c), any(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, var_1.c))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, arg_0.a, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(func_2(vec2<i32>(-47915i, 1i)).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_div_f32(var_0.x, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1129f))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1000f, vec4<i32>(var_1.d.x, global2[_wgslsmith_index_u32(36827u, 7u)], 2147483647i, var_1.d.x)).a + arg_0.a)), 885f));
    var_1 = Struct_2(~(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, var_1.a, var_1.a), 1u, _wgslsmith_add_u32(var_1.a, 0u))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-347f + var_0.x), _wgslsmith_f_op_f32(round(-277f)))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, 15413i, 1i), vec4<i32>(1i, 0i, 2147483647i, 60671i))), (_wgslsmith_mult_u32(~1u, var_1.a) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(28683u, var_1.a), vec2<u32>(var_1.a, var_1.a)) % 32u)) < 35185u, -vec4<i32>(countOneBits(-18027i), ~(-global2[_wgslsmith_index_u32(1u, 7u)]), u_input.a.x, 1i));
    return -1655f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 726f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1431f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, global0.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -332f)))))) * vec2<f32>(-1248f, global0.x)));
    let var_0 = true;
    var var_1 = Struct_1(global0.x);
    let var_2 = _wgslsmith_f_op_f32(func_6(func_1(_wgslsmith_div_f32(415f, global0.x), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(1u, 7u)], -2147483647i, u_input.b, global2[_wgslsmith_index_u32(11624u, 7u)]), firstTrailingBit(vec4<i32>(1i, 1i, u_input.a.x, global2[_wgslsmith_index_u32(15683u, 7u)]))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, global2[_wgslsmith_index_u32(50310u, 7u)], global2[_wgslsmith_index_u32(46321u, 7u)], u_input.b), ~vec4<i32>(-55067i, global2[_wgslsmith_index_u32(44523u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(82830u, 7u)], 5532i, u_input.b), vec4<i32>(global2[_wgslsmith_index_u32(34365u, 7u)], -2147483647i, 1i, 35979i)))))));
    let var_3 = vec3<bool>(true, true && (true || var_0), !var_0);
    var var_4 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(45528u, 6053u, 77782u, 92805u), min(select(vec4<u32>(1u, 72407u, 0u, 16886u), vec4<u32>(1u, 4294967295u, 1u, 59786u), vec4<bool>(false, false, var_0, var_3.x)), abs(vec4<u32>(0u, 20355u, 97861u, 1u)))), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(88430u, 42070u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9813u, 29160u), vec3<u32>(1u, 0u, 0u)), 18508u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(~abs(global2[_wgslsmith_index_u32(88276u, 7u)]), select(u_input.a.x | -10007i, global2[_wgslsmith_index_u32(abs(64862u), 7u)], all(var_3.zy)), -28531i), reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, global2[_wgslsmith_index_u32(20824u, 7u)], 0i), vec3<i32>(0i, global2[_wgslsmith_index_u32(48109u, 7u)], u_input.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -278f))), ~abs(max(-vec4<i32>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(43893u, 7u)], -40352i, u_input.a.x), vec4<i32>(-2147483647i, -39744i, global2[_wgslsmith_index_u32(78764u, 7u)], -7901i))), vec3<f32>(var_1.a, -421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), firstLeadingBit(select(abs(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(0u, 7u)], -32183i, u_input.a.x, -5001i))), ~select(vec4<i32>(7536i, u_input.b, -2147483647i, u_input.b), vec4<i32>(global2[_wgslsmith_index_u32(0u, 7u)], -37519i, global2[_wgslsmith_index_u32(82992u, 7u)], -91725i), vec4<bool>(false, true, true, false)), !(var_3.x && var_3.x))));
}

