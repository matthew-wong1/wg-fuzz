struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: bool,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-477f, -963f, 667f, 1000f, 1329f, -533f, 135f, -2408f, 505f, -449f, 776f, 116f, -195f, 1116f, 353f, 1000f, -1083f, 1794f, 1561f, 691f, 1000f, 531f, 1664f, -1766f, 622f, 460f, -313f);

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(vec2<bool>(true, true));
    var var_1 = select(vec2<bool>(false, true), var_0.a, vec2<bool>(all(!vec3<bool>(true, var_0.a.x, false)), true && all(select(vec4<bool>(true, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(false, true, false, true)))));
    global0 = array<f32, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.x, 27u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f + global0[_wgslsmith_index_u32(21131u, 27u)]))), 443f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 626f, 1308f, global0[_wgslsmith_index_u32(u_input.b, 27u)])) * _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], -338f, 403f), vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 27u)], -1785f, -369f, -655f)))))), select(select(select(!vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_1.x, var_1.x, false, var_0.a.x), vec4<bool>(false, var_1.x, var_0.a.x, var_1.x)), select(!vec4<bool>(var_1.x, var_1.x, var_0.a.x, var_0.a.x), vec4<bool>(var_1.x, true, true, var_0.a.x), true), false), vec4<bool>(true, var_0.a.x, any(vec2<bool>(var_0.a.x, false)), var_1.x), !select(!vec4<bool>(true, var_1.x, true, false), !vec4<bool>(var_1.x, var_1.x, false, true), var_0.a.x))));
    let var_3 = 0i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 27u)], global0[_wgslsmith_index_u32(28552u, 27u)], var_2.x, global0[_wgslsmith_index_u32(global1.x, 27u)]), vec4<f32>(var_2.x, 1834f, -298f, var_2.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 708f, -453f, global0[_wgslsmith_index_u32(0u, 27u)]) + vec4<f32>(1391f, 1000f, var_2.x, 1866f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1015f, 1133f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(54621u, 27u)]))))), select(!vec4<bool>(false, true, var_0.a.x, false), select(!vec4<bool>(var_1.x, var_1.x, true, false), select(vec4<bool>(true, true, var_0.a.x, var_1.x), vec4<bool>(false, false, var_0.a.x, false), true), global1.x >= arg_0), !vec4<bool>(false, var_1.x, var_0.a.x, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<bool>) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1501f, -351f, 536f, 2661f) * vec4<f32>(arg_0.b, 256f, 442f, arg_0.b)) - vec4<f32>(1340f, -548f, global0[_wgslsmith_index_u32(global1.x, 27u)], arg_1.d.b)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1751f, arg_0.b, global0[_wgslsmith_index_u32(102804u, 27u)], arg_1.d.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-655f, arg_1.d.b, global0[_wgslsmith_index_u32(global1.x, 27u)], global0[_wgslsmith_index_u32(69556u, 27u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 27u)], -1159f, 434f, global0[_wgslsmith_index_u32(42168u, 27u)])))), _wgslsmith_f_op_vec4_f32(func_3(~31845u, _wgslsmith_mod_vec2_i32(u_input.c, -vec2<i32>(arg_1.d.c.x, -38594i))))));
    let var_2 = !select(vec2<bool>(any(!vec4<bool>(var_0, false, arg_2.x, arg_2.x)), false), select(select(vec2<bool>(var_0, false), select(vec2<bool>(false, false), vec2<bool>(var_0, true), arg_2), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true != var_0, true)), !(!(arg_0.c.x >= 1i)));
    var var_3 = Struct_4(true, Struct_1(!(!select(arg_2, arg_1.b.a, arg_2.x))), 1u, Struct_2(max(global1.x, global1.x), _wgslsmith_f_op_f32(1214f + arg_1.d.b), select(arg_1.d.c, vec2<i32>(u_input.a.x, arg_0.c.x), arg_2.x), max(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.e.xwy), abs(vec3<u32>(57958u, arg_1.c, u_input.b))), ~32089u << ((global1.x | 16991u) % 32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_1.e.xzw, vec3<u32>(arg_1.d.a, 24558u, 89812u)), 1u | ~u_input.b)), vec4<u32>(max(47739u, _wgslsmith_dot_vec2_u32(vec2<u32>(18106u, global1.x), vec2<u32>(arg_1.d.e.x, u_input.b) & arg_1.d.e)), global1.x, 1u, _wgslsmith_div_u32(firstLeadingBit(abs(arg_1.e.x)), global1.x << (select(u_input.b, 13064u, false) % 32u))));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, 635f))) + _wgslsmith_f_op_f32(floor(-268f)))), 867f, true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -1026f)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    global1 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, firstTrailingBit(4294967295u), global1.x), ~(vec3<u32>(0u, 4294967295u, 4294967295u) ^ vec3<u32>(0u, u_input.b, u_input.b))) & vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b))), abs(_wgslsmith_sub_u32(u_input.b, 4294967295u)), ~(~1u)));
    var var_0 = Struct_5(Struct_4(!(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7809u, 1u, 44316u), vec3<u32>(20231u, arg_2.a, 35643u)), 27u)] == _wgslsmith_f_op_f32(-327f - global0[_wgslsmith_index_u32(global1.x, 27u)])), Struct_1(select(arg_3.a, vec2<bool>(true, arg_3.a.x), !arg_3.a)), 60998u, arg_2, ~(max(vec4<u32>(arg_2.e.x, arg_2.d, global1.x, 68130u), vec4<u32>(0u, 11699u, 0u, 1u)) | vec4<u32>(arg_2.d, 1u, global1.x, u_input.b))), Struct_4(all(vec3<bool>(true, true, true)), arg_3, _wgslsmith_mod_u32(~(~24349u), 4294967295u | arg_2.a), arg_2, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, u_input.b, u_input.b), vec4<u32>(1u, arg_2.d, 1u, 6150u)), 4294967295u, u_input.b, ~arg_2.d)), !(!all(vec2<bool>(false, arg_3.a.x))), Struct_3(Struct_2(~global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) - arg_2.b), vec2<i32>(-40383i, _wgslsmith_dot_vec3_i32(arg_1.xxy, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x))), 4294967295u, firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_2.e, vec2<u32>(arg_2.a, 1u))))), (_wgslsmith_clamp_u32(17049u, _wgslsmith_mod_u32(global1.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e.x, 44630u, 43065u), vec3<u32>(global1.x, arg_2.a, 41860u))) ^ ~select(7073u, 1u, arg_3.a.x)) <= global1.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.b)));
    let var_2 = -_wgslsmith_div_vec2_i32(arg_2.c, vec2<i32>(-_wgslsmith_mult_i32(1i, 1i), arg_1.x));
    global0 = array<f32, 27>();
    return var_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>) -> bool {
    var var_0 = 2147483647i;
    var var_1 = func_4(arg_1.d.c, ~(-(vec4<i32>(arg_1.d.c.x, arg_1.d.c.x, 2147483647i, u_input.d) >> (vec4<u32>(global1.x, arg_1.d.e.x, 0u, 0u) % vec4<u32>(32u))) | -(vec4<i32>(-8988i, arg_1.d.c.x, 0i, arg_1.d.c.x) | vec4<i32>(u_input.d, u_input.c.x, arg_1.d.c.x, u_input.c.x))), func_4(arg_1.d.c, ~firstLeadingBit(max(vec4<i32>(-2147483647i, 2934i, u_input.a.x, -2147483647i), vec4<i32>(u_input.d, -15398i, arg_1.d.c.x, 47370i))), Struct_2(arg_1.d.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(854f, arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.d) | u_input.a, select(u_input.a, arg_1.d.c, arg_1.b.a)), _wgslsmith_clamp_u32(0u | arg_1.c, 1u | u_input.b, 69823u), countOneBits(~vec2<u32>(arg_1.d.d, u_input.b))), func_4(countOneBits(u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.d.c.x, -2224i, 1i, -13861i), vec4<i32>(0i, arg_1.d.c.x, 38233i, -1i)) >> (~arg_1.e % vec4<u32>(32u)), arg_1.d, arg_1.b).b).d, arg_1.b).b;
    var_1 = func_4(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, ~u_input.d), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.d.c.x, 72196i), arg_1.d.c))), select(-_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1.d.c.x, 0i, arg_1.d.c.x, arg_1.d.c.x)), countOneBits(vec4<i32>(20894i, -29459i, -13052i, u_input.d)), -vec4<i32>(-5980i, -2818i, -1i, -36357i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.d, -2147483647i, 2147483647i, u_input.c.x), vec4<i32>(0i, arg_1.d.c.x, -18335i, u_input.c.x)) >> (_wgslsmith_add_vec4_u32(arg_1.e, vec4<u32>(global1.x, arg_1.e.x, 17550u, 1u)) % vec4<u32>(32u)), (vec4<i32>(u_input.d, u_input.c.x, -53062i, u_input.a.x) >> (arg_1.e % vec4<u32>(32u))) | firstTrailingBit(vec4<i32>(arg_1.d.c.x, 29881i, u_input.d, 55994i))), var_1.a.x), func_4(firstLeadingBit(select(~arg_1.d.c, vec2<i32>(arg_1.d.c.x, 6738i), any(vec4<bool>(false, var_1.a.x, false, true)))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(arg_1.d.c.x, 2147483647i, 21752i, -73198i)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(30915i, arg_1.d.c.x, arg_1.d.c.x, u_input.c.x)), vec4<i32>(arg_1.d.c.x, 23092i, arg_1.d.c.x, u_input.a.x))), Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1.e, vec4<u32>(1u, global1.x, 0u, 114918u))), 962f, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.c.x, arg_1.d.c.x), vec2<i32>(38474i, u_input.c.x)), max(arg_1.d.c, arg_1.d.c), func_4(vec2<i32>(7602i, arg_1.d.c.x), vec4<i32>(arg_1.d.c.x, u_input.d, arg_1.d.c.x, -2147483647i), Struct_2(1u, 622f, arg_1.d.c, u_input.b, arg_2), arg_1.b).b.a), ~_wgslsmith_clamp_u32(arg_2.x, 17674u, 1u), vec2<u32>(~1u, ~44221u)), arg_1.b).d, func_4(max(u_input.c, u_input.a), _wgslsmith_sub_vec4_i32(select(~vec4<i32>(arg_1.d.c.x, 2147483647i, -42093i, arg_1.d.c.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, u_input.d), true), abs(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, u_input.a.x, 46226i)))), arg_1.d, arg_1.b).b).b;
    return !select(~min(arg_1.d.e.x, u_input.b) != func_4(arg_1.d.c, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 11517i, 39011i, u_input.d), vec4<i32>(14041i, 14995i, 0i, arg_1.d.c.x)), func_4(u_input.c, vec4<i32>(-2147483647i, 0i, arg_1.d.c.x, -1i), arg_1.d, arg_1.b).d, Struct_1(arg_1.b.a)).e.x, all(vec2<bool>(true, func_4(vec2<i32>(1i, arg_1.d.c.x), vec4<i32>(arg_1.d.c.x, u_input.c.x, 53322i, arg_1.d.c.x), Struct_2(27707u, arg_1.d.b, u_input.a, 785u, vec2<u32>(14088u, global1.x)), Struct_1(var_1.a)).a)), true);
}

fn func_1() -> bool {
    global0 = array<f32, 27>();
    var var_0 = vec2<u32>(4294967295u, ~_wgslsmith_sub_u32((global1.x | global1.x) >> (1u % 32u), ~51444u));
    var var_1 = vec2<f32>(global0[_wgslsmith_index_u32((~var_0.x << (4294967295u % 32u)) & 28478u, 27u)], -551f);
    var var_2 = !(!(!any(vec4<bool>(true, true, false, false))));
    var_2 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 27u)], var_1.x))))))), func_4(~u_input.a ^ max(~vec2<i32>(2147483647i, 48238i), select(u_input.c, u_input.a, vec2<bool>(true, false))), vec4<i32>(1i, countOneBits(_wgslsmith_add_i32(u_input.a.x, -31049i)), -u_input.a.x, u_input.d), Struct_2(~(~76552u), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_2(Struct_2(var_0.x, var_1.x, vec2<i32>(3321i, u_input.a.x), 32239u, vec2<u32>(40795u, 4294967295u)), Struct_4(false, Struct_1(vec2<bool>(true, false)), 1u, Struct_2(67751u, global0[_wgslsmith_index_u32(global1.x, 27u)], vec2<i32>(-2147483647i, u_input.c.x), var_0.x, global1.xy), vec4<u32>(50872u, var_0.x, 4294967295u, global1.x)), vec2<bool>(true, false)))), u_input.c, ~firstTrailingBit(u_input.b), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 0u), ~global1.yx)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))), ~_wgslsmith_clamp_vec2_u32(select(~global1.yz, global1.yy, vec2<bool>(true, false)), func_4(u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -21415i, 7806i, 2112i), vec4<i32>(11783i, -27371i, u_input.a.x, 24429i)), func_4(u_input.a, vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.c.x), Struct_2(var_0.x, var_1.x, u_input.c, var_0.x, global1.zz), Struct_1(vec2<bool>(true, false))).d, func_4(u_input.a, vec4<i32>(u_input.d, u_input.d, -32263i, -1i), Struct_2(global1.x, var_1.x, u_input.c, global1.x, vec2<u32>(global1.x, global1.x)), Struct_1(vec2<bool>(false, true))).b).d.e, vec2<u32>(~3195u, reverseBits(6005u))));
    return true || (_wgslsmith_f_op_f32(min(-378f, 1000f)) == _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(942f - 1093f) + var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), func_1()), any(vec4<bool>(true, true, true, true)))), true, true);
    var var_1 = select(countOneBits(abs(-(vec4<i32>(u_input.d, -67747i, u_input.c.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.a.x)))), -abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(-30453i, 29871i, u_input.d, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, 18882i, -24607i), vec4<i32>(u_input.a.x, u_input.d, u_input.c.x, u_input.a.x)))), true);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global1.x, 27u)], 516f, true)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b), 27u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global1.x, 27u)] - _wgslsmith_f_op_f32(805f - global0[_wgslsmith_index_u32(0u, 27u)])))) == _wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(1u), select(max(u_input.c, _wgslsmith_sub_vec2_i32(var_1.xy, vec2<i32>(-36363i, 0i))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 1i), reverseBits(vec2<i32>(-41439i, u_input.c.x))), !func_4(vec2<i32>(0i, var_1.x), vec4<i32>(-2147483647i, -45650i, u_input.c.x, u_input.c.x), Struct_2(48164u, global0[_wgslsmith_index_u32(0u, 27u)], var_1.wy, 0u, vec2<u32>(u_input.b, 1048u)), Struct_1(vec2<bool>(false, true))).b.a))).x;
    global1 = ~vec3<u32>(global1.x, min(firstTrailingBit(u_input.b ^ u_input.b), abs(_wgslsmith_mult_u32(global1.x, u_input.b))), min(~1203u << (global1.x % 32u), 122574u));
    global1 = func_4(vec2<i32>(~_wgslsmith_sub_i32(-46694i | var_1.x, 1i), _wgslsmith_sub_i32(var_1.x, -1i) << (func_4(abs(u_input.c), vec4<i32>(1i, u_input.c.x, -1i, -2147483647i) | vec4<i32>(-17095i, -9905i, -84198i, -15498i), Struct_2(u_input.b, global0[_wgslsmith_index_u32(52940u, 27u)], vec2<i32>(-4886i, 0i), 4294967295u, vec2<u32>(global1.x, global1.x)), Struct_1(vec2<bool>(var_2, true))).e.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>((u_input.a.x >> (59828u % 32u)) | u_input.c.x, abs(var_1.x), -45074i, ~max(u_input.c.x, 46070i)), vec4<i32>(1i, -36450i, u_input.d, min(~var_1.x, -53153i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, u_input.d, 2147483647i, -2911i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, 1i, var_1.x), vec4<i32>(-1i, -2147483647i, -3209i, 5082i)), max(vec4<i32>(var_1.x, -1i, -8484i, 44542i), ~vec4<i32>(9328i, -487i, 7514i, u_input.a.x)))), func_4(vec2<i32>(1i ^ _wgslsmith_add_i32(var_1.x, var_1.x), -1i), vec4<i32>(_wgslsmith_add_i32(13333i, -1i), i32(-1i) * -1i, ~1i, var_1.x), Struct_2(48586u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0[_wgslsmith_index_u32(u_input.b, 27u)])) + -1513f), vec2<i32>(max(u_input.c.x, -6420i), i32(-1i) * -6302i), 67288u, firstLeadingBit(func_4(vec2<i32>(var_1.x, u_input.c.x), vec4<i32>(55989i, 1i, -17634i, -2147483647i), Struct_2(global1.x, -602f, u_input.a, 1u, vec2<u32>(12860u, 4294967295u)), Struct_1(vec2<bool>(true, true))).e.wz)), func_4(~var_1.xy, ~(-vec4<i32>(u_input.a.x, u_input.c.x, -10045i, u_input.d)), func_4(var_1.xy, abs(vec4<i32>(-32396i, -1i, -13588i, var_1.x)), func_4(vec2<i32>(-1i, -1i), vec4<i32>(-15311i, u_input.d, -1340i, u_input.d), Struct_2(1859u, global0[_wgslsmith_index_u32(global1.x, 27u)], vec2<i32>(17003i, var_1.x), global1.x, vec2<u32>(u_input.b, u_input.b)), Struct_1(var_0.wx)).d, func_4(var_1.xz, vec4<i32>(3484i, u_input.c.x, 0i, -9535i), Struct_2(1u, global0[_wgslsmith_index_u32(1u, 27u)], vec2<i32>(var_1.x, -1i), u_input.b, global1.xz), Struct_1(var_0.yw)).b).d, Struct_1(!vec2<bool>(true, var_0.x))).b).d, Struct_1(!vec2<bool>(var_2, true && var_2))).e.wwy;
    let var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(1130f, ~vec2<u32>(global1.x, var_3) ^ vec2<u32>(global1.x, _wgslsmith_add_u32(~2076u, ~global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1434f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_3, 27u)], global0[_wgslsmith_index_u32(var_3, 27u)], true)))), -1235f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(u_input.b, global0[_wgslsmith_index_u32(0u, 27u)], var_1.wz, global1.x, global1.yz), Struct_4(true, Struct_1(vec2<bool>(true, var_2)), 0u, Struct_2(18634u, global0[_wgslsmith_index_u32(var_3, 27u)], vec2<i32>(1i, u_input.c.x), 1u, global1.zy), vec4<u32>(1u, global1.x, var_3, 0u)), !vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3, 27u)] * -1000f)), _wgslsmith_f_op_vec4_f32(func_3(u_input.b ^ global1.x, var_1.yz)).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(223f, -629f, 1000f), vec3<f32>(global0[_wgslsmith_index_u32(var_3, 27u)], 217f, global0[_wgslsmith_index_u32(27071u, 27u)]), false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-921f, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(var_3, 27u)]), vec3<f32>(-560f, 368f, -177f))))))));
}

