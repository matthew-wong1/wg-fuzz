struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> vec4<u32> {
    global0 = array<f32, 22>();
    var var_0 = vec4<i32>(~u_input.a, u_input.a, ~_wgslsmith_add_i32(arg_1, u_input.a), u_input.a);
    var_0 = abs(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 1i, var_0.x), vec4<i32>(u_input.a, var_0.x, var_0.x, arg_1), vec4<i32>(-1i, -8139i, var_0.x, u_input.a)) >> (abs(vec4<u32>(u_input.b, arg_2.b, arg_0.a, 4294967295u)) % vec4<u32>(32u)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_1, var_0.x, arg_1), vec4<i32>(1i, -2147483647i, arg_1, 1i)))));
    var var_1 = false;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_2.c, vec3<u32>(u_input.b, 66156u, arg_2.b)), 22u)], global0[_wgslsmith_index_u32(11649u, 22u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(max(arg_2.b, arg_0.a), 22u)]))) != _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(16591u, 4294967295u), 22u)])) + _wgslsmith_f_op_f32(-1f)));
    return select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.c.x, arg_0.a), vec4<u32>(arg_0.a, 12963u, 1u, 40339u)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 15561u, arg_0.a, 0u) & vec4<u32>(arg_2.b, arg_0.a, 1u, arg_0.a), select(vec4<u32>(u_input.b, 1u, arg_2.c.x, 28932u), vec4<u32>(arg_2.b, 4294967295u, 1u, 8752u), arg_2.a))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(u_input.b, 15460u, 19529u, 0u), abs(vec4<u32>(57227u, 26464u, arg_2.c.x, arg_0.a)), all(vec3<bool>(arg_2.a.x, false, var_2))), _wgslsmith_add_vec4_u32(~vec4<u32>(699u, 1u, 9479u, 4294967295u), ~vec4<u32>(arg_2.c.x, 1u, 1u, 1044u))) >> (vec4<u32>(~firstTrailingBit(7606u), 79886u, arg_0.a, ~(~u_input.b)) % vec4<u32>(32u)), arg_2.a);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = func_3(arg_1.e.c, -firstTrailingBit(-1i), arg_3);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1472f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3.c.x, 22u)]), arg_2.x))));
    var var_2 = vec3<bool>(1119f >= var_1.x, true, !arg_1.d.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3.b, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -1389f), arg_0)), _wgslsmith_f_op_f32(var_1.x + -1061f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) - arg_2.x) + global0[_wgslsmith_index_u32(44909u, 22u)]));
    let var_4 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(_wgslsmith_clamp_u32(19287u, arg_1.e.c.a, arg_1.c.x), ~var_0.x, 1u)), ~select(vec3<u32>(abs(68094u), func_3(Struct_1(arg_1.e.c.a), u_input.a, Struct_4(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_0, false), arg_3.c.x, var_0.yxz)).x, 0u), ~abs(arg_1.c), any(var_2.yz)));
    return arg_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = -383f;
    let var_1 = _wgslsmith_div_i32(u_input.a, 11478i);
    global0 = array<f32, 22>();
    var var_2 = ~(~(~var_1));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1010f)), 1887f, 416f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(459u, 22u)], arg_2.x, arg_2.x)))), arg_2))), arg_2));
    return Struct_4(select(!(!vec4<bool>(arg_0.b.x, arg_0.a.x, arg_0.b.x, arg_0.b.x)), select(vec4<bool>(any(vec4<bool>(arg_0.b.x, arg_0.a.x, arg_0.b.x, arg_0.b.x)), false | arg_0.b.x, any(vec4<bool>(arg_0.b.x, true, true, true)), !arg_0.b.x), vec4<bool>(4294967295u > arg_1, false || arg_0.b.x, all(arg_0.b), arg_0.b.x), vec4<bool>(true, true, true, arg_0.b.x)), arg_0.b.x), 1u, _wgslsmith_mult_vec3_u32(~vec3<u32>(48116u, arg_1, ~arg_1), reverseBits(func_3(func_2(true, Struct_3(vec3<bool>(arg_0.a.x, false, true), vec2<i32>(49622i, -40603i), vec3<u32>(arg_0.c.a, arg_0.c.a, 4294967295u), arg_0.b, arg_0), arg_2.yx, Struct_4(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.b.x), 104709u, vec3<u32>(4294967295u, 59520u, 4822u))).c, -1i, Struct_4(vec4<bool>(true, arg_0.a.x, arg_0.b.x, false), 85707u, vec3<u32>(72708u, arg_1, arg_1))).wwy)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = true;
    global0 = array<f32, 22>();
    let var_1 = Struct_4(select(vec4<bool>(false, false, !(u_input.a > u_input.a), !(var_0 != false)), vec4<bool>(true, !all(vec4<bool>(var_0, true, true, false)), global0[_wgslsmith_index_u32(~arg_2.x, 22u)] != 176f, !any(vec3<bool>(false, true, true))), vec4<bool>(any(arg_1.a.xyw), false, arg_1.a.x, false)), ~arg_1.b, reverseBits(~(~_wgslsmith_sub_vec3_u32(arg_1.c, arg_1.c))));
    global0 = array<f32, 22>();
    var var_2 = arg_1.a.wy;
    return _wgslsmith_mod_vec3_u32(~var_1.c, vec3<u32>(abs(firstLeadingBit(_wgslsmith_div_u32(0u, arg_1.c.x))), firstTrailingBit(~(~arg_1.c.x)), 17381u));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_u32(~func_5(firstLeadingBit(vec2<i32>(33338i, -1i)), func_4(func_2(arg_0, Struct_3(vec3<bool>(true, arg_0, true), vec2<i32>(-27434i, u_input.a), vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(arg_0, true, false), Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), Struct_1(75251u))), vec2<f32>(618f, 640f), Struct_4(vec4<bool>(arg_0, arg_0, false, false), u_input.b, vec3<u32>(21258u, u_input.b, u_input.b))), 4294967295u ^ u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, 106f, global0[_wgslsmith_index_u32(u_input.b, 22u)])), -vec3<i32>(u_input.a, u_input.a, 31685i)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 36302u, 4294967295u))), _wgslsmith_div_vec3_u32(firstLeadingBit(~(~vec3<u32>(1u, 28796u, u_input.b))), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b)) & vec3<u32>(max(34890u, u_input.b), func_4(Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(false, true, true), Struct_1(4294967295u)), 28335u, vec3<f32>(-1281f, -1000f, -214f), vec3<i32>(-1i, u_input.a, u_input.a)).c.x, 103057u)));
    var_0 = abs(max(vec3<u32>(1u, func_2(select(arg_0, false, arg_0), Struct_3(vec3<bool>(false, false, arg_0), vec2<i32>(u_input.a, 2147483647i), vec3<u32>(var_0.x, 27285u, var_0.x), vec3<bool>(arg_0, arg_0, false), Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), Struct_1(u_input.b))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 658f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 22u)], -1258f))), Struct_4(vec4<bool>(true, arg_0, true, false), 21710u, vec3<u32>(3366u, 1u, 11722u))).c.a, func_2(true, Struct_3(vec3<bool>(false, false, false), vec2<i32>(-2147483647i, u_input.a), vec3<u32>(u_input.b, u_input.b, var_0.x), vec3<bool>(false, true, false), Struct_2(vec2<bool>(true, false), vec3<bool>(arg_0, arg_0, arg_0), Struct_1(u_input.b))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(984f, global0[_wgslsmith_index_u32(0u, 22u)]))), func_4(Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(false, false, true), Struct_1(u_input.b)), var_0.x, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(var_0.x, 22u)], 601f), vec3<i32>(u_input.a, u_input.a, 34562i))).c.a), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.x, 0u, u_input.b), vec3<u32>(u_input.b, 49511u, var_0.x), vec3<bool>(false, true, arg_0)), func_3(Struct_1(var_0.x), -1i, Struct_4(vec4<bool>(true, arg_0, false, arg_0), var_0.x, vec3<u32>(u_input.b, 19992u, u_input.b))).yyw), vec3<u32>(_wgslsmith_sub_u32(var_0.x, 73487u), _wgslsmith_div_u32(25551u, var_0.x), func_2(arg_0, Struct_3(vec3<bool>(false, arg_0, true), vec2<i32>(1i, -2282i), vec3<u32>(var_0.x, 0u, var_0.x), vec3<bool>(false, arg_0, false), Struct_2(vec2<bool>(arg_0, false), vec3<bool>(true, true, true), Struct_1(var_0.x))), vec2<f32>(147f, 397f), Struct_4(vec4<bool>(true, arg_0, arg_0, true), 33003u, vec3<u32>(var_0.x, u_input.b, 1u))).c.a))));
    var var_1 = Struct_3(vec3<bool>(all(func_4(Struct_2(vec2<bool>(arg_0, false), vec3<bool>(false, false, arg_0), Struct_1(var_0.x)), u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1436f, global0[_wgslsmith_index_u32(26260u, 22u)], -684f) * vec3<f32>(465f, global0[_wgslsmith_index_u32(141459u, 22u)], -384f)), vec3<i32>(1i, u_input.a, 9083i)).a), any(vec3<bool>(true, true, true)), select(true, false, true) & false), vec2<i32>(firstLeadingBit(~u_input.a), -38104i), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.x, u_input.b, var_0.x)), select(~vec3<u32>(1u, u_input.b, var_0.x), ~vec3<u32>(var_0.x, 0u, var_0.x), func_4(Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), Struct_1(var_0.x)), 1u, vec3<f32>(-588f, 2217f, 804f), vec3<i32>(u_input.a, u_input.a, -2147483647i)).a.yxy)), !vec3<bool>(all(vec3<bool>(false, true, arg_0)), true, !any(vec2<bool>(arg_0, false))), func_2(false, Struct_3(vec3<bool>(-2147483647i != u_input.a, true, arg_0), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(34454i, u_input.a), vec2<bool>(arg_0, false))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 9934u), var_0.x, 25150u ^ var_0.x), vec3<bool>(arg_0, true, true), func_2(arg_0, Struct_3(vec3<bool>(false, true, arg_0), vec2<i32>(44437i, 0i), vec3<u32>(100889u, 1u, u_input.b), vec3<bool>(false, arg_0, true), Struct_2(vec2<bool>(false, true), vec3<bool>(false, arg_0, false), Struct_1(67593u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, 295f)), Struct_4(vec4<bool>(true, true, arg_0, arg_0), u_input.b, vec3<u32>(var_0.x, 1u, 33769u)))), vec2<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 7447u, u_input.b), vec4<u32>(u_input.b, 4061u, 0u, 49737u))), 22u)], -929f), func_4(Struct_2(vec2<bool>(arg_0, true), vec3<bool>(true, true, arg_0), Struct_1(u_input.b)), func_2(arg_0, Struct_3(vec3<bool>(arg_0, arg_0, false), vec2<i32>(0i, -35713i), vec3<u32>(var_0.x, var_0.x, 60103u), vec3<bool>(arg_0, true, false), Struct_2(vec2<bool>(arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), Struct_1(u_input.b))), vec2<f32>(-522f, global0[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_4(vec4<bool>(arg_0, arg_0, arg_0, true), 15560u, vec3<u32>(36218u, 4294967295u, 81811u))).c.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(2471u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(2135u, 22u)])), vec3<f32>(-805f, -683f, 626f))), ~(~vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    let var_2 = true;
    var var_3 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 22u)]) - global0[_wgslsmith_index_u32(~(~(~var_1.e.c.a)), 22u)]) * 1131f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, _wgslsmith_f_op_f32(abs(-1000f)) >= _wgslsmith_f_op_f32(func_1(false)), true), !(u_input.b >= reverseBits(u_input.b))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, (u_input.b >= 1u) && true, true, true)), vec4<bool>(true, true, true, true));
    let var_1 = func_4(Struct_2(!vec2<bool>(true, var_0.x), !(!func_2(var_0.x, Struct_3(var_0.wxw, vec2<i32>(-2147483647i, u_input.a), vec3<u32>(25386u, 0u, 2064u), vec3<bool>(var_0.x, false, true), Struct_2(var_0.zw, vec3<bool>(var_0.x, true, var_0.x), Struct_1(9655u))), vec2<f32>(global0[_wgslsmith_index_u32(954u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]), Struct_4(vec4<bool>(var_0.x, false, var_0.x, var_0.x), u_input.b, vec3<u32>(u_input.b, 0u, u_input.b))).b), Struct_1(countOneBits(0u))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], -890f, global0[_wgslsmith_index_u32(4028u, 22u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1238f, 887f, 409f) + vec3<f32>(global0[_wgslsmith_index_u32(26855u, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]))))), -min(-vec3<i32>(-17993i, -18126i, 11061i), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a)))));
    let var_2 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i) * -abs(vec3<i32>(u_input.a, u_input.a, u_input.a))), ((max(vec3<i32>(u_input.a, -19982i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)) & ~vec3<i32>(u_input.a, 2147483647i, 0i)) << (var_1.c % vec3<u32>(32u))) & -firstTrailingBit(-vec3<i32>(u_input.a, u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(6594u, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 0u) << (var_1.c.xz % vec2<u32>(32u))), var_1.c.zz)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], -274f, -1000f, global0[_wgslsmith_index_u32(0u, 22u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, -744f, -1632f, global0[_wgslsmith_index_u32(u_input.b, 22u)]) - vec4<f32>(-403f, global0[_wgslsmith_index_u32(u_input.b, 22u)], 776f, -1560f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-647f, 1191f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(55473u, 22u)] * global0[_wgslsmith_index_u32(u_input.b, 22u)]), _wgslsmith_f_op_f32(ceil(-918f)), -239f))), func_2(var_0.x, Struct_3(vec3<bool>(var_1.a.x, true, true), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-14781i, 2147483647i), vec2<i32>(u_input.a, 48438i), firstLeadingBit(vec2<i32>(u_input.a, var_2.x))), abs(vec3<u32>(1u, u_input.b, u_input.b)) >> ((vec3<u32>(4294967295u, 0u, var_1.c.x) ^ var_1.c) % vec3<u32>(32u)), func_4(Struct_2(vec2<bool>(false, var_1.a.x), var_0.wyz, Struct_1(var_1.c.x)), ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, -423f, 815f) + vec3<f32>(623f, global0[_wgslsmith_index_u32(17708u, 22u)], 532f)), vec3<i32>(1i, 2147483647i, 0i)).a.yzy, Struct_2(select(vec2<bool>(var_1.a.x, true), vec2<bool>(true, var_1.a.x), var_1.a.wx), !var_0.yzx, Struct_1(u_input.b))), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b ^ 27107u, 22u)], -1213f), func_4(func_2(all(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, var_1.a.x, var_0.x), vec2<i32>(23679i, var_2.x), var_1.c, vec3<bool>(false, var_0.x, true), Struct_2(vec2<bool>(false, var_1.a.x), var_0.wzy, Struct_1(var_1.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-157f, global0[_wgslsmith_index_u32(1u, 22u)]))), Struct_4(vec4<bool>(var_0.x, false, true, true), 0u, var_1.c)), ~_wgslsmith_mod_u32(var_1.c.x, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.b, 22u)], 1601f, 232f) + vec3<f32>(1114f, 1397f, -151f)), ~vec3<i32>(u_input.a, var_2.x, var_2.x))).c.a);
}

