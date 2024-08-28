struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 22>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x));
    global0 = min(50065u, 17670u);
    let var_1 = Struct_3(Struct_1(firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20588u, 22u)], 22u)], 0u), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)])), vec2<u32>(9968u, 1u))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a.x, 25872i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), true), vec3<i32>(u_input.a.x, u_input.a.x, -6888i)), u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(-1158f)), 114f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -1900f, 913f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, var_0, 2195f, -158f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2023f, 1000f, var_0, 338f)), vec4<f32>(var_0, arg_0.x, -145f, -977f))), vec4<bool>(true, select(true, true, true), true, true)))), !(!(-u_input.a.x > (u_input.a.x ^ u_input.a.x))), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)] ^ global1[_wgslsmith_index_u32(24894u, 22u)], 22u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(18192u, 22u)], 22u)]), 22u)], global1[_wgslsmith_index_u32(~2009u, 22u)]));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-826f, -689f, var_0) * vec3<f32>(730f, var_1.b.b.x, 258f))), _wgslsmith_f_op_vec3_f32(var_1.b.a + arg_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.a), _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, arg_0.x, var_1.b.b.x))) * _wgslsmith_f_op_vec3_f32(-var_1.b.a))))));
    return any(vec2<bool>(!(!var_1.c) && (true & var_1.c), all(vec3<bool>(var_1.c, var_1.c, false)) && var_1.c));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = -(_wgslsmith_mult_vec2_i32(u_input.a.yz, ~vec2<i32>(u_input.a.x, -2147483647i)) & _wgslsmith_div_vec2_i32(-vec2<i32>(arg_2.x, u_input.a.x), u_input.a.zz));
    let var_1 = Struct_3(Struct_1(select(vec2<u32>(global1[_wgslsmith_index_u32(abs(66308u), 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(54585u, 4294967295u), 22u)], 22u)]), min(~vec2<u32>(1u, 1u), vec2<u32>(34755u, global1[_wgslsmith_index_u32(0u, 22u)])), vec2<bool>(true, func_3(arg_0.b.wyw))), _wgslsmith_mod_i32(arg_1.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), arg_2.xx))), Struct_2(arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.b, arg_0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, arg_0.b.x, -966f, -289f)), vec4<f32>(474f, -1145f, 763f, -1142f)))), true, firstTrailingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1174u, 22u)], global1[_wgslsmith_index_u32(32856u, 22u)]), 22u)], 22u)] | _wgslsmith_dot_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 4294967295u, 1u), vec3<u32>(21103u, 30657u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)])), vec3<u32>(26252u, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)]))));
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    let var_2 = _wgslsmith_mod_vec2_u32(firstTrailingBit(~(~vec2<u32>(global1[_wgslsmith_index_u32(58968u, 22u)], 1u))) ^ ~(~var_1.a.a), vec2<u32>(~max(var_1.a.a.x << (17534u % 32u), countOneBits(global1[_wgslsmith_index_u32(var_1.d, 22u)])), abs(_wgslsmith_add_u32(var_1.d, 4294967295u))));
    return Struct_3(var_1.a, Struct_2(arg_0.b.wwz, var_1.b.b), !(!((var_1.b.a.x == arg_0.a.x) | var_1.c)), 1u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    global0 = _wgslsmith_mod_u32(arg_0.a.a.x, 15454u);
    var var_0 = func_2(func_2(arg_1.b, abs(arg_2.xw), ~_wgslsmith_mult_vec3_i32(u_input.a, select(vec3<i32>(arg_0.a.b, arg_2.x, 2147483647i), vec3<i32>(arg_0.a.b, arg_2.x, arg_2.x), vec3<bool>(arg_1.c, arg_0.c, arg_0.c)))).b, vec2<i32>(~(-_wgslsmith_add_i32(arg_0.a.b, arg_0.a.b)), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b.b.xzz)), _wgslsmith_f_op_vec4_f32(step(arg_0.b.b, vec4<f32>(1627f, arg_1.b.a.x, 1492f, 1000f)))), select(vec2<i32>(arg_2.x, 44699i) << (vec2<u32>(17231u, arg_1.a.a.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a.xx, u_input.a.yx, arg_2.xw), select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0.c)), -(~u_input.a)).a.b), firstTrailingBit(vec3<i32>(0i, (-81001i << (arg_1.d % 32u)) << (_wgslsmith_dot_vec2_u32(arg_0.a.a, arg_0.a.a) % 32u), -2147483647i))).a;
    var var_1 = !(!(!(!select(vec2<bool>(false, arg_0.c), vec2<bool>(true, true), vec2<bool>(arg_1.c, arg_1.c)))));
    var_0 = arg_1.a;
    var var_2 = func_2(func_2(func_2(Struct_2(arg_1.b.a, _wgslsmith_f_op_vec4_f32(-arg_1.b.b)), vec2<i32>(reverseBits(-2147483647i), -arg_2.x), u_input.a >> (~vec3<u32>(var_0.a.x, arg_0.a.a.x, arg_1.a.a.x) % vec3<u32>(32u))).b, reverseBits(reverseBits(-u_input.a.xx)), select(select(reverseBits(vec3<i32>(17794i, 20019i, -2147483647i)), firstLeadingBit(vec3<i32>(u_input.a.x, arg_2.x, var_0.b)), select(vec3<bool>(arg_1.c, false, true), vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_0.c, false, var_1.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 24344i, -9549i), arg_2.xwx), vec3<i32>(-46642i, 63913i, u_input.a.x)), vec3<bool>(func_3(arg_1.b.a), !arg_1.c, false))).b, arg_2.xy, ~min(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, arg_0.a.b, 1i))), vec3<i32>(-1i) * -vec3<i32>(25775i, var_0.b, -2147483647i))).b;
    return _wgslsmith_sub_u32(~abs(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x)) & abs(arg_1.d), 1u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(~((39342u | (global1[_wgslsmith_index_u32(arg_0.a.x, 22u)] & 27700u)) & ~(~4937u)), ~arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~arg_0.a.x, ~arg_0.a.x | ~939u, func_4(Struct_3(Struct_1(vec2<u32>(31218u, arg_0.a.x), 2147483647i), Struct_2(vec3<f32>(202f, -240f, 180f), vec4<f32>(645f, -195f, 1429f, -397f)), false, global1[_wgslsmith_index_u32(14957u, 22u)]), func_2(Struct_2(vec3<f32>(-850f, -1335f, 1279f), vec4<f32>(1080f, 1167f, 761f, 238f)), vec2<i32>(-69366i, 2147483647i), u_input.a), -vec4<i32>(arg_0.b, -755i, arg_0.b, arg_0.b), _wgslsmith_div_f32(185f, 1065f))), ~vec4<u32>(~arg_0.a.x, min(arg_0.a.x, 1u), 1u, ~0u)), ~arg_0.a.x);
    var_0 = ~vec4<u32>(49668u, ~4294967295u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(1u, 22u)], var_0.x, arg_0.a.x), vec4<u32>(4294967295u, 1u, 1u, 14156u))), 22u)], 4294967295u), ~(~(~1231u)));
    var var_1 = max(firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), u_input.a), max(u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, u_input.a.x, 37971i)), -vec3<i32>(2147483647i, -19473i, arg_0.b)))), arg_0.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1494f) + vec2<f32>(-1000f, 1008f))))) * vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(524f * -190f)), -600f));
    var_1 = _wgslsmith_mod_i32(24564i, arg_0.b);
    return Struct_1(vec2<u32>(26000u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 46833u, global1[_wgslsmith_index_u32(var_0.x, 22u)], var_0.x), ~vec4<u32>(global1[_wgslsmith_index_u32(10379u, 22u)], global1[_wgslsmith_index_u32(84742u, 22u)], arg_0.a.x, 34252u)), ~reverseBits(vec4<u32>(7012u, 4367u, 0u, var_0.x)))), 48575i);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec3<f32> {
    global0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_3.d, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 22u)], 22u)] >> ((arg_1 << (1u % 32u)) % 32u), arg_3.a.a.x)), reverseBits(~66352u));
    global0 = ~18973u >> (arg_3.a.a.x % 32u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.x)), -616f, _wgslsmith_f_op_f32(min(1396f, _wgslsmith_f_op_f32(791f + arg_3.b.a.x)))) * vec3<f32>(arg_3.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.a.x + 624f) + _wgslsmith_f_op_f32(f32(-1f) * -690f)), arg_3.b.b.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1451f + 302f) - _wgslsmith_f_op_f32(arg_3.b.b.x + -738f)), -1466f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true)) != true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(7771u, min(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3273u, 22u)], 22u)])), 22u)], 22u)], ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)]), (u_input.a.x < -49453i) != (u_input.a.x < 33834i), Struct_3(func_1(Struct_1(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11363u, 22u)], 22u)], 22u)], 22u)], 22u)]), 7973i)), Struct_2(vec3<f32>(1895f, -1564f, 161f), vec4<f32>(237f, 1000f, 716f, 283f)), false, global1[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(823f, -957f, 217f, 1000f) - vec4<f32>(1464f, -371f, 799f, -726f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, -1453f, 392f, 586f) - vec4<f32>(-1328f, 530f, 169f, -2252f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, 2167f, 991f, -1577f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, -778f, 1625f, 1644f) * _wgslsmith_div_vec4_f32(vec4<f32>(-386f, 1116f, -354f, -967f), vec4<f32>(-1169f, 849f, 850f, 927f))))));
    var_0 = any(vec2<bool>(any(vec3<bool>(true, false, false)), !func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-732f, var_1.b.x, var_1.a.x))))));
    let var_2 = func_2(Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.b)), reverseBits(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.xy ^ vec2<i32>(u_input.a.x, -1i), firstLeadingBit(vec2<i32>(u_input.a.x, 4639i))))), u_input.a).b;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(1u, 22u)]), 22u)], 22u)], func_1(func_1(func_2(var_1, u_input.a.yx, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)).a)).a.x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(32901u, 82915u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 22u)]), vec2<u32>(0u, 20167u), ~vec2<u32>(10582u, global1[_wgslsmith_index_u32(1u, 22u)])))), 22u)];
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(925f, 350f), var_2.a.x) - -892f))), 1059f);
    let var_5 = -6855i;
    let var_6 = Struct_3(Struct_1(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 16828u) << (1u % 32u), 22u)]), _wgslsmith_div_i32(var_5, u_input.a.x)), Struct_2(var_2.b.wzx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(886f, var_4.x, -922f, -1111f) + var_2.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.b))))), true, firstLeadingBit(~abs(33519u)));
    var var_7 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_6.d));
}

