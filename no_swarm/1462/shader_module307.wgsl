struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<u32>, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1533f, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(max(-903f, global1.x)), _wgslsmith_f_op_f32(floor(-231f)))) * vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), global1.x, _wgslsmith_f_op_f32(global1.x * 195f), _wgslsmith_f_op_f32(floor(635f))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.x)))), _wgslsmith_f_op_f32(var_0.x * -1663f));
    var var_1 = Struct_1(any(vec4<bool>(true, true, !select(true, arg_2.a, arg_1), !any(vec4<bool>(arg_1, arg_2.b, arg_1, arg_2.b)))), !any(vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(65391i, global0.x, 1i, arg_0), vec4<i32>(1i, 62799i, global0.x, arg_3.c) & vec4<i32>(-37787i, 2147483647i, -2147483647i, arg_3.c)), vec4<i32>(arg_2.c & arg_2.c, ~arg_3.d, 1i, select(1i, 1i, false)), select(abs(vec4<i32>(0i, arg_3.d, arg_0, -2147483647i)), -vec4<i32>(arg_2.c, global0.x, 1i, -2147483647i), !vec4<bool>(arg_1, arg_1, false, arg_1))), _wgslsmith_mult_vec4_i32(vec4<i32>(-29768i, 67652i, -42504i, 0i) | vec4<i32>(0i, arg_3.c, 23220i, arg_2.c), firstLeadingBit(vec4<i32>(arg_3.c, arg_3.d, arg_0, -19945i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i & min(-1i, global0.x), _wgslsmith_add_i32(~30828i, global0.x), ~_wgslsmith_mod_i32(1i, global0.x)), vec3<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-44556i, arg_0), ~11690i), arg_2.c)));
    let var_2 = !(!select(select(select(vec4<bool>(false, arg_1, true, arg_3.b), vec4<bool>(var_1.b, true, arg_2.a, arg_3.a), vec4<bool>(arg_1, arg_2.b, false, arg_2.a)), vec4<bool>(var_1.b, false, false, false), !vec4<bool>(arg_3.a, true, true, arg_2.b)), select(!vec4<bool>(arg_3.b, var_1.b, arg_1, false), vec4<bool>(false, arg_3.b, false, arg_3.a), global1.x < var_0.x), !vec4<bool>(arg_2.b, arg_3.b, false, arg_1)));
    var var_3 = select(var_2, vec4<bool>(true, any(var_2.yxy), var_2.x && arg_2.a, false), any(vec3<bool>(_wgslsmith_f_op_f32(-var_0.x) != 320f, any(select(var_2, var_2, var_2)), all(select(vec4<bool>(arg_1, false, true, arg_2.b), vec4<bool>(arg_3.a, false, var_1.a, true), vec4<bool>(false, false, false, false))))));
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 76611u), _wgslsmith_mod_u32(u_input.a.x, 1u)), abs(_wgslsmith_mod_u32(u_input.a.x, 79081u)))), ~u_input.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    global2 = array<vec2<u32>, 1>();
    var var_0 = Struct_1(arg_1.b, select(_wgslsmith_f_op_f32(trunc(global1.x)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x - 181f), -1000f)), true, arg_3.a), arg_3.d, -20724i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -2860f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f))), false, global0.x, -arg_1.d);
    let var_2 = arg_3;
    let var_3 = -vec4<i32>(_wgslsmith_mult_i32(var_2.d, var_1.c), -_wgslsmith_mod_i32(~global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-27515i, -43443i, var_0.c, -1i), vec4<i32>(arg_3.c, arg_3.c, 1i, var_1.c))), var_2.c, -_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(-24019i, arg_3.d, -3619i), arg_3.d));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~25281u, ~select(_wgslsmith_mult_u32(4294967295u, 0u), 21990u, var_2.b), arg_0.x, _wgslsmith_clamp_u32(35319u, 1u, abs(~55991u))), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(arg_2.x), _wgslsmith_div_u32(41575u, 28216u)), countOneBits(_wgslsmith_add_u32(4294967295u, u_input.a.x)), 15640u, 1u)), ~(~arg_2));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(6183u, 4294967295u, 54635u, u_input.a.x), false), ~vec4<u32>(u_input.a.x, 28918u, 40234u, 1u))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 0u, 1u)), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4356u) & u_input.a), u_input.a) % vec4<u32>(32u)), func_4(u_input.a.xww, arg_1, vec4<u32>(1u, u_input.a.x, select(func_3(34105i, arg_1.b, Struct_1(arg_1.a, false, arg_2, arg_2), arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(71618u, u_input.a.x, u_input.a.x), u_input.a.yyw), !arg_1.a), ~_wgslsmith_mod_u32(8284u, u_input.a.x)), arg_1));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(-746f - _wgslsmith_f_op_f32(-435f - global1.x)))), _wgslsmith_f_op_f32(trunc(global1.x)), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1178f));
    var_0 = u_input.a.x;
    var var_2 = Struct_1(arg_1.b, !(arg_2 == 1i), arg_2, abs(countOneBits(~firstLeadingBit(arg_1.d))));
    var_2 = arg_1;
    return Struct_1(!any(!vec4<bool>(true, true, true, var_2.a)), arg_1.b == !all(!vec3<bool>(false, false, arg_1.b)), global0.x, -21143i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = -_wgslsmith_add_vec2_i32(vec2<i32>(max(_wgslsmith_add_i32(0i, global0.x), arg_0.c & -18876i), arg_3.c), vec2<i32>(arg_2.c, abs(1i)));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(676f, global1.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(563f, 245f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(702f, global1.x) + vec2<f32>(global1.x, 755f))))))));
    var var_0 = Struct_1(!(!any(select(vec2<bool>(true, false), vec2<bool>(arg_3.a, arg_2.a), true))), !all(vec2<bool>(false, !arg_3.b)), select(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -24204i), vec2<i32>(1i, arg_2.d)), min(-(~(-39642i)), select(arg_1.d, arg_1.c, !arg_3.a)), any(select(!vec4<bool>(false, arg_1.b, true, false), select(vec4<bool>(false, true, arg_1.a, false), vec4<bool>(arg_2.a, false, arg_3.a, arg_1.a), arg_0.b), arg_2.b))), ~(-(arg_1.c >> (_wgslsmith_sub_u32(u_input.a.x, 28848u) % 32u))));
    var_0 = func_2(-vec2<i32>(i32(-1i) * -43646i, arg_0.c) >> (global2[_wgslsmith_index_u32(~(~u_input.a.x) << (countOneBits(~u_input.a.x) % 32u), 1u)] % vec2<u32>(32u)), arg_3, -abs(countOneBits(-arg_2.d)));
    let var_1 = !(any(select(!vec4<bool>(var_0.a, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.a, true, true, arg_0.a), vec4<bool>(false, true, true, false)), all(vec4<bool>(arg_1.b, arg_2.a, arg_2.a, var_0.a)))) || arg_2.b);
    return vec2<bool>(false, any(select(select(!vec2<bool>(false, arg_2.a), select(vec2<bool>(false, true), vec2<bool>(var_0.b, true), false), select(var_1, true, false)), !(!vec2<bool>(var_1, true)), _wgslsmith_f_op_f32(684f - global1.x) >= _wgslsmith_f_op_f32(-global1.x))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global2 = array<vec2<u32>, 1>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 93928u, ~15184u), firstTrailingBit(~(vec3<u32>(6393u, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, arg_0.x, arg_0.x) % vec3<u32>(32u))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-518f)), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1595f)))));
    var var_1 = Struct_1(false, arg_1.x, abs(global0.x), -(1i >> (func_3(global0.x, arg_3.x, func_2(vec2<i32>(-2147483647i, 0i), arg_2, arg_2.d), arg_2) % 32u)));
    var var_2 = Struct_1(any(vec2<bool>((var_1.d < arg_2.c) & true, arg_1.x)), arg_1.x, -35966i, 28492i);
    return global0.x;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = vec2<bool>(arg_0.x & !(!(!arg_0.x)), arg_0.x);
    global2 = array<vec2<u32>, 1>();
    global0 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, -(i32(-1i) * -3165i)), vec2<i32>(global0.x, 0i), ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, global0.x)))));
    let var_1 = Struct_1(true, false, -(~global0.x), i32(-1i) * -2147483647i);
    global2 = array<vec2<u32>, 1>();
    return func_6(vec3<u32>(~(~u_input.a.x), ~40149u, ~u_input.a.x), !select(vec2<bool>(false, any(vec3<bool>(true, false, false))), func_5(var_1, Struct_1(var_1.b, false, -2147483647i, global0.x), var_1, func_2(vec2<i32>(-54823i, 0i), Struct_1(arg_0.x, var_0.x, -2147483647i, global0.x), -26461i)), _wgslsmith_add_i32(var_1.d, var_1.c) <= var_1.c), Struct_1(global1.x >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(2716f)))), ~(~u_input.a.x) > ~(100007u & u_input.a.x), -20358i, var_1.d), select(select(select(select(vec3<bool>(false, var_1.b, false), vec3<bool>(var_0.x, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(var_1.a, var_0.x, true), false), select(vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, false, true), vec3<bool>(var_1.a, false, var_1.a))), vec3<bool>(u_input.a.x < u_input.a.x, var_0.x, true), false), !select(!vec3<bool>(arg_0.x, true, var_1.a), select(vec3<bool>(var_1.b, var_1.a, true), vec3<bool>(false, false, false), var_0.x), vec3<bool>(true, true, true)), all(!(!vec4<bool>(var_1.a, arg_0.x, false, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), 1239f);
    let var_1 = Struct_1(false | !any(vec2<bool>(false, true)), -global0.x < _wgslsmith_mod_i32(-min(-29695i, global0.x), func_1(vec2<bool>(true, true))), ~(global0.x << (0u % 32u)), reverseBits(~global0.x));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1057f), -171f)), 1103f);
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, -711f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0.x & global0.x), _wgslsmith_f_op_f32(max(-911f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(317f + 1251f), _wgslsmith_f_op_f32(-779f + var_0.x))), var_0.x))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, var_1.d, var_1.c, -1i), vec4<i32>(abs(var_1.d), _wgslsmith_add_i32(var_1.c, var_1.c), global0.x, global0.x & global0.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, firstLeadingBit(37233u)), abs(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)))), -(~reverseBits(~vec3<i32>(-5347i, -1i, 10609i))));
}

