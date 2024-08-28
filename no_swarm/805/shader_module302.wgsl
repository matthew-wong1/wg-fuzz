struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(52444u, vec2<f32>(-1757f, 1728f), vec3<bool>(true, true, false), true, vec4<bool>(true, false, true, false));

var<private> global1: vec3<f32> = vec3<f32>(1025f, -2179f, -927f);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1u, vec2<f32>(-1318f, 1294f), vec3<bool>(false, false, false), false, vec4<bool>(true, false, true, false)), Struct_1(1u, vec2<f32>(-980f, 958f), vec3<bool>(false, false, true), true, vec4<bool>(true, false, true, false)), Struct_1(1u, vec2<f32>(621f, 988f), vec3<bool>(false, false, true), true, vec4<bool>(false, true, true, false)), Struct_1(33276u, vec2<f32>(-275f, -379f), vec3<bool>(true, true, false), false, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec2<f32>(-1000f, -985f), vec3<bool>(true, true, true), true, vec4<bool>(true, false, false, false)), Struct_1(0u, vec2<f32>(233f, -1456f), vec3<bool>(true, false, true), false, vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec2<f32>(-985f, -2787f), vec3<bool>(true, true, false), true, vec4<bool>(true, true, true, false)), Struct_1(417u, vec2<f32>(305f, -1000f), vec3<bool>(true, false, false), false, vec4<bool>(false, true, false, true)), Struct_1(113u, vec2<f32>(1000f, -461f), vec3<bool>(false, true, false), false, vec4<bool>(false, false, true, false)));

var<private> global3: vec4<f32> = vec4<f32>(1164f, 1768f, 1183f, 406f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, arg_0.x), u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1644f - global0.b.x) * _wgslsmith_f_op_f32(floor(global0.b.x))), -160f)), vec3<bool>(true, true, false & !arg_2.e.x), all(vec4<bool>(global0.c.x, arg_2.a == _wgslsmith_mult_u32(0u, 4294967295u), !(4294967295u <= arg_2.a), false)), select(vec4<bool>(!arg_2.e.x, true, !(!arg_1), arg_1), vec4<bool>(true, false, arg_1, countOneBits(global0.a) < min(u_input.b, arg_0.x)), select(arg_2.e, vec4<bool>(arg_2.c.x, false, true, global0.e.x), true)));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1085f, global0.b.x))))), -441f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 598f) * global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -886f), 751f));
    let var_1 = 4294967295u;
    var var_2 = arg_2;
    var var_3 = var_0;
    return ~1u;
}

fn func_2() -> vec3<i32> {
    var var_0 = 150f;
    var var_1 = 1546f;
    global0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(global0.a, 74230u)), ~select(global0.a, 0u, false)), abs(~(u_input.a.x << (1u % 32u)))), vec2<f32>(-1042f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), global0.e.zwy, !all(vec3<bool>(true, true, true)), vec4<bool>(!global0.e.x, false, any(global0.c.xz), global0.d));
    let var_2 = Struct_1(firstTrailingBit(func_3(u_input.a.wzz, global0.c.x, global2[_wgslsmith_index_u32(52060u, 9u)])), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-225f)) * _wgslsmith_f_op_f32(global0.b.x - global1.x))), _wgslsmith_f_op_f32(-global1.x)), !select(vec3<bool>(global0.d, any(vec2<bool>(global0.e.x, false)), true), global0.c, vec3<bool>(!global0.c.x, global0.e.x && true, any(global0.c))), global0.d, vec4<bool>(true, true, false, !(global0.c.x | global0.e.x) && any(!vec3<bool>(global0.d, global0.e.x, global0.c.x))));
    let var_3 = Struct_1(~u_input.c, global3.xz, vec3<bool>(!any(!global0.c), _wgslsmith_div_u32(abs(0u), _wgslsmith_div_u32(40179u, var_2.a)) < 4294967295u, !(var_2.d & false)), true, vec4<bool>(false, any(global0.e), var_2.e.x, false));
    return countOneBits(min(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-20604i, -31547i, 1i), vec3<i32>(-24562i, 92627i, -2147483647i), var_3.d)), vec3<i32>(-1i) * -vec3<i32>(20599i, 1i, -29051i)) & ~vec3<i32>(1i, 1i, 1i));
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(41015i, ~(~(-6006i))), -2147483647i, abs(-2147483647i)), _wgslsmith_dot_vec3_i32(func_2(), vec3<i32>(-3223i, select(1i, 2147483647i << (u_input.a.x % 32u), true), 1i)), countOneBits(1i), _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(2147483647i, -1i, 25333i), vec3<i32>(-2147483647i, -2147483647i, -22607i)), vec3<i32>(-44935i, -12339i, -5225i), !global0.c), ~min(vec3<i32>(-27999i, -1i, 0i), vec3<i32>(0i, 38618i, -75607i))) ^ firstLeadingBit(-_wgslsmith_clamp_i32(0i, -2147483647i, -1i)));
    let var_1 = var_0.x;
    let var_2 = global0.c.x;
    let var_3 = !(!global0.c);
    let var_4 = u_input.b;
    return _wgslsmith_sub_i32(-3865i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(1u, 9u)];
    let var_0 = max(u_input.a.x, ~(~u_input.c));
    var var_1 = vec3<i32>(-_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(-2147483647i, -2147483647i) << (var_0 % 32u)), ~_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(2368i, -7909i, -2147483647i))), vec3<i32>(15581i, func_1(), func_2().x)), i32(-1i) * -2147483647i);
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(-1041f, global3.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, global1.x, 735f, 1000f)))) - vec4<f32>(1193f, 321f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-977f, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(-365f + global0.b.x)))), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2669f), _wgslsmith_f_op_f32(f32(-1f) * -2118f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, global0.b.x, global0.e.x)) - 472f), false && (_wgslsmith_f_op_f32(step(267f, global3.x)) >= _wgslsmith_f_op_f32(abs(global1.x))), true, var_0 <= _wgslsmith_dot_vec2_u32(~vec2<u32>(23148u, var_0), vec2<u32>(u_input.c, 0u)))));
    var_1 = -vec3<i32>(var_1.x, ~var_1.x, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x, 28863i), min(-1i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(1395f * 1529f)), global3.x, global1.x)));
}

