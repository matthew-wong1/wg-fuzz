struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23396i;

var<private> global1: array<i32, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> vec3<f32> {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -122f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -914f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1243f, -1000f))))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-671f))))), -1358f));
    global0 = i32(-1i) * -7626i;
    let var_2 = Struct_4(abs(var_0.wxx), ~(~82991u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f - -996f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1539f + -2598f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, -1494f, -971f, -994f)))))));
    var var_3 = _wgslsmith_div_vec4_u32(firstTrailingBit(~u_input.c), vec4<u32>(abs(u_input.c.x) >> (_wgslsmith_add_u32(var_2.b, 4294967295u) % 32u), u_input.b, abs(4294967295u ^ var_0.x), _wgslsmith_add_u32(28103u | _wgslsmith_add_u32(var_0.x, 4294967295u), ~var_0.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.d.b.zww))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_1.c.x;
    global0 = u_input.d;
    return arg_2.x;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(~select(u_input.c.xzw, reverseBits(u_input.c.zxx | vec3<u32>(0u, u_input.c.x, u_input.c.x)), !(!vec3<bool>(arg_0, false, false))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2581f, 1181f, 264f, 245f) - vec4<f32>(-505f, -1784f, -689f, 1000f))), select(!vec4<bool>(false, true, arg_0, arg_0), select(!vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, true, true), vec4<bool>(arg_0, true, false, arg_0)), vec4<bool>(true, arg_0, arg_0, all(vec2<bool>(false, arg_0)))), select(vec3<bool>(arg_0 | arg_0, arg_0, false), vec3<bool>(all(vec2<bool>(arg_0, true)), all(vec2<bool>(false, arg_0)), false), select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), !arg_0))), _wgslsmith_f_op_vec3_f32(func_3(select(-(~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-3915i, u_input.a, 34036i), reverseBits(vec3<i32>(0i, global1[_wgslsmith_index_u32(5657u, 27u)], 0i))), false), any(vec3<bool>(all(vec3<bool>(arg_0, true, false)), true, arg_0 || arg_0)), _wgslsmith_div_vec3_i32(-min(vec3<i32>(u_input.d, u_input.a, 1079i), vec3<i32>(33880i, global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)])), vec3<i32>(global1[_wgslsmith_index_u32(min(4294967295u, 1u), 27u)], countOneBits(u_input.a), 76171i)), _wgslsmith_div_i32(u_input.a, -global1[_wgslsmith_index_u32(0u, 27u)]))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(~(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], -46035i, global1[_wgslsmith_index_u32(5589u, 27u)])), arg_0, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.a, -1i), vec3<i32>(1212i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a, -42798i) | vec3<i32>(-2147483647i, 22829i, 2147483647i)), _wgslsmith_div_i32(max(u_input.d, 1i), u_input.d & 7511i))).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(338f)), 1634f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1686f)) - _wgslsmith_div_f32(-717f, 340f))))));
    global1 = array<i32, 27>();
    let var_1 = vec3<i32>(max(17379i, -74074i), abs(u_input.d), _wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xx), 27u)], -1i));
    global1 = array<i32, 27>();
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-var_1.x, _wgslsmith_mod_i32(var_1.x, u_input.d), _wgslsmith_clamp_i32(-29990i, global1[_wgslsmith_index_u32(u_input.b, 27u)], -2147483647i)), _wgslsmith_div_vec3_i32(var_1, var_1), vec3<i32>(-20642i, -71795i, _wgslsmith_clamp_i32(u_input.d, _wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 27u)], firstTrailingBit(-8456i)), -abs(global1[_wgslsmith_index_u32(u_input.c.x, 27u)]))));
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global1 = array<i32, 27>();
    return true & any(select(select(select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec3<bool>(false, arg_0.x, true), select(arg_0, vec3<bool>(false, false, arg_0.x), arg_0)), !select(arg_0, vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), vec3<bool>(true, true, true)));
}

fn func_1() -> i32 {
    global1 = array<i32, 27>();
    global0 = u_input.d;
    global1 = array<i32, 27>();
    var var_0 = func_5(!select(vec3<bool>(true, any(vec3<bool>(true, true, false)), 1u == u_input.c.x), vec3<bool>(true, func_2(false), all(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(abs(691f)) <= _wgslsmith_f_op_f32(round(535f))), u_input.b);
    var var_1 = ~_wgslsmith_sub_i32(18855i, 1i);
    return ~(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], _wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(1u, 27u)], -2147483647i)) & _wgslsmith_sub_i32(15221i, ~(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-4317i, -23275i);
    global1 = array<i32, 27>();
    global1 = array<i32, 27>();
    var_0 = firstLeadingBit(vec2<i32>(abs(-1i) | u_input.d, func_1())) << (reverseBits(reverseBits(~vec2<u32>(u_input.c.x, u_input.c.x))) % vec2<u32>(32u));
    let var_1 = Struct_5(u_input.a, u_input.c, -208f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1730f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -756f), any(vec2<bool>(true, false)))) - 304f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(1291f, -1000f)), -1847f, _wgslsmith_f_op_f32(trunc(-704f)), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1491f, 754f, 982f, 475f) - vec4<f32>(381f, 234f, -437f, -887f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1536f, 300f, -327f), vec4<f32>(1451f, -654f, -928f, -1092f))))))), ~u_input.c);
    var var_2 = -firstLeadingBit(~(~abs(vec2<i32>(var_1.a, global1[_wgslsmith_index_u32(var_1.e.x, 27u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(2309u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(sign(-1003f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), var_1.d.a))), vec4<i32>(28601i, select(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(118601u, u_input.b), 27u)], global1[_wgslsmith_index_u32(var_1.e.x, 27u)] >> (var_1.e.x % 32u), true), 0i, func_1()), vec3<i32>(i32(-1i) * -64989i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, var_2.x, u_input.a), reverseBits(vec3<i32>(-6216i, u_input.a, 0i))), _wgslsmith_div_i32(var_2.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(8685i, 0i, -1i), vec3<i32>(var_2.x, 60181i, var_0.x))))), var_1.c);
}

