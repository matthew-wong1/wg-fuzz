struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<u32, 6>();
    global1 = Struct_1(1074f, 1f, 1u, global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.e))));
    var var_0 = -vec4<i32>(1i, abs(_wgslsmith_mult_i32(51398i, 1i)), ~firstLeadingBit(28792i), -2147483647i);
    var var_1 = select(select(vec2<bool>(_wgslsmith_f_op_f32(min(global1.a, global1.a)) < 293f, select(4294967295u < arg_0.d, true, any(vec4<bool>(false, false, false, false)))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(vec3<bool>(true, false, false))), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true))), firstTrailingBit(global1.c) >= 1u)), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), false), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec2<bool>(true, false))), !vec2<bool>(all(vec3<bool>(false, false, false)), true)));
    global0 = array<u32, 6>();
    return select(vec2<bool>(any(vec4<bool>(var_1.x | true, true, select(true, false, var_1.x), true)), any(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), false))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), vec2<bool>(true, false)), !vec2<bool>(var_1.x, true), !var_1.x), select(!vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(var_1.x, false)), true), !select(!(!vec2<bool>(var_1.x, true)), select(!vec2<bool>(false, var_1.x), !vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, false)), vec2<bool>(var_1.x, global1.d >= 0u)));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    var var_0 = vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(false, true))), true)), any(func_3(Struct_1(global1.a, 1467f, 1u, u_input.c, global1.e))) == true, true, all(vec4<bool>(all(vec2<bool>(false, false)), true, (-1i >= u_input.a) || (global1.c != global1.c), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1304f, global1.b)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -441f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.e.x, 1128f))), 905f, -116f)), ((1u & abs(global2.x)) <= max(4294967295u, select(36788u, global0[_wgslsmith_index_u32(13361u, 6u)], var_0.x))) & (true || any(!vec2<bool>(true, var_0.x))), Struct_1(-1416f, global1.e.x, 50257u, max(global2.x, global0[_wgslsmith_index_u32(firstTrailingBit(abs(0u)), 6u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e) - global1.e)));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(abs(~(1i & u_input.a)), -u_input.a), countOneBits(~max(_wgslsmith_clamp_i32(u_input.a, u_input.a, 34298i), -u_input.a)));
    var var_3 = _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.b, global2.x, min(arg_0, 105277u))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, var_1.c.d, 1u, arg_0) >> (~vec4<u32>(1u, global2.x, 37077u, var_1.c.d) % vec4<u32>(32u)), min(vec4<u32>(arg_0, 1u, 4294967295u, global0[_wgslsmith_index_u32(63654u, 6u)]), ~vec4<u32>(4294967295u, global1.d, global2.x, 4294967295u)))) | select(~abs(~vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b)), _wgslsmith_add_vec4_u32(~select(vec4<u32>(0u, 0u, 0u, global2.x), vec4<u32>(0u, var_1.c.d, 5911u, 38148u), vec4<bool>(var_1.b, true, true, var_1.b)), vec4<u32>(_wgslsmith_div_u32(global2.x, arg_0), ~12642u, 4294967295u, _wgslsmith_div_u32(35257u, arg_0))), select(vec4<bool>(false, var_1.a.x >= var_1.a.x, select(false, var_0.x, var_1.b), var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, var_1.b), false), vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, true, var_0.x, var_1.b)), vec4<bool>(arg_0 > 0u, all(vec4<bool>(true, var_1.b, true, var_0.x)), false, true)));
    let var_4 = countOneBits(var_3.wxy);
    return abs(_wgslsmith_add_vec4_i32(abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-5502i, var_2.x, u_input.a, u_input.a), vec4<i32>(var_2.x, u_input.a, u_input.a, u_input.a)))), _wgslsmith_add_vec4_i32(~min(vec4<i32>(0i, -8400i, var_2.x, u_input.a), vec4<i32>(-1i, 0i, u_input.a, 54474i)), ~min(vec4<i32>(0i, u_input.a, 1i, 0i), vec4<i32>(u_input.a, u_input.a, 40205i, 34034i)))));
}

fn func_1() -> vec2<i32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(349f + global1.b), _wgslsmith_f_op_f32(f32(-1f) * -905f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_div_f32(-900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(859f)) * global1.e.x)), 1u, _wgslsmith_clamp_u32(u_input.b, global1.c, ~1u), vec3<f32>(global1.e.x, global1.e.x, global1.b));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f - -720f), _wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(808f * _wgslsmith_f_op_f32(f32(-1f) * -314f)) + global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1287f, _wgslsmith_f_op_f32(floor(global1.a)), all(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(exp2(global1.b))));
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(func_2(~29737u), vec4<i32>(~u_input.a, u_input.a, u_input.a << (u_input.b % 32u), func_2(1u).x)) << (~_wgslsmith_dot_vec3_u32(global2.www, _wgslsmith_div_vec3_u32(vec3<u32>(0u, global2.x, u_input.c), vec3<u32>(global2.x, u_input.c, u_input.b))) % 32u));
    let var_2 = !select(vec4<bool>(40934i < _wgslsmith_clamp_i32(36684i, 0i, u_input.a), func_3(Struct_1(361f, var_0.x, 0u, 1897u, var_0.wyw)).x, false, true), !vec4<bool>(false, false, true, u_input.a != u_input.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), var_0.x == var_0.x), true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2272f)));
    return vec2<i32>(-_wgslsmith_sub_i32(u_input.a, func_2(_wgslsmith_sub_u32(u_input.b, 1u)).x), 36702i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<i32>(~u_input.a, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), max(u_input.a, u_input.a)), ~(-u_input.a), u_input.a & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 17329i, u_input.a), vec3<i32>(u_input.a, u_input.a, -49475i))), u_input.a), abs(func_1()), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), global1.a, _wgslsmith_f_op_f32(442f * -224f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(358f + global1.e.x))), global1.b)));
    global0 = array<u32, 6>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.b, -1368f)), global1.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.x)))), _wgslsmith_f_op_f32(ceil(global1.e.x)))), all(!vec2<bool>(global2.x > 83019u, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f - -738f)), global1.e.x, global1.d, 25390u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.c.wyx, global1.e)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, -379f, -495f), global1.e)))));
    var var_2 = Struct_1(var_0.c.x, _wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -669f)))), abs(25396u), ~71710u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.e.x, global1.e.x, var_0.c.x)))))));
    let var_3 = var_0.a.www;
    let var_4 = !select(vec3<bool>(_wgslsmith_f_op_f32(step(var_1.c.e.x, 1000f)) == _wgslsmith_f_op_f32(var_2.b * global1.e.x), true, func_3(var_1.c).x), vec3<bool>(any(vec3<bool>(var_1.b, false, true)) || (113i <= var_0.a.x), -var_0.a.x != (u_input.a >> (global1.d % 32u)), var_1.b), all(select(select(vec3<bool>(false, true, true), vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(true, false, var_1.b)), vec3<bool>(var_1.b, false, false), var_1.b || var_1.b)));
    let var_5 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.a.x, var_0.c.x)))), -466f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.c.x) + _wgslsmith_f_op_f32(abs(var_2.b))))));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) + _wgslsmith_f_op_f32(sign(var_2.b))))), -646f, var_1.c.c, select(u_input.b << (~u_input.c % 32u), select(4294967295u, 1u, true) << (1u % 32u), true) >> (~1u % 32u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_5.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.a))), var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(~(~var_2.c), var_2.c), _wgslsmith_mod_u32(var_2.c, global2.x << (0u % 32u)), global1.d), -247f);
}

