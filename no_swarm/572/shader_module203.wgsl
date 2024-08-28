struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(46900u, 1991u);

var<private> global1: Struct_2;

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(217f, 0u, vec3<i32>(-40836i, -59361i, 2155i), false);

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(-(vec3<i32>(-1i) * -reverseBits(global1.a)));
    global1 = Struct_2(~(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, arg_0, var_0.a.x) | vec3<i32>(arg_0, -1i, 1i), _wgslsmith_div_vec3_i32(global1.a, var_0.a))));
    var_0 = Struct_2(~vec3<i32>(_wgslsmith_div_i32(abs(global1.a.x), ~global3.c.x), _wgslsmith_div_i32(9163i, 2147483647i), countOneBits(~(-1i))));
    return firstTrailingBit(countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17956i, var_0.a.x, global3.c.x), global3.c), _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.a.x, global1.a.x), global1.a.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> vec3<i32> {
    global4 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(floor(global3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-283f))) - _wgslsmith_f_op_f32(f32(-1f) * -114f))));
    let var_0 = Struct_1(global3.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, global0.x, 0u), global3.b, ~57152u), u_input.a), _wgslsmith_dot_vec3_u32(max(~u_input.a, ~vec3<u32>(global3.b, global3.b, u_input.a.x)), vec3<u32>(u_input.a.x, 86803u, 4294967295u))), ~(~(-abs(global3.c))), !arg_1.x);
    global3 = var_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - -589f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(218f)) - -937f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.a)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.xy), vec2<f32>(global3.a, -366f)))) + _wgslsmith_f_op_vec2_f32(-arg_0.xy)));
    global4 = arg_0.zx;
    return ~global1.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<u32>(4294967295u, global0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.x, -685f, _wgslsmith_f_op_f32(global4.x * global3.a)), vec3<f32>(-417f, global3.a, _wgslsmith_f_op_f32(-1541f - -840f))))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(62242i, global3.c.x, 1i, arg_0.a.x), ~(~vec4<i32>(-1i, -9529i, 2147483647i, -1i)) ^ (vec4<i32>(0i, -3892i, 2147483647i, global3.c.x) << (firstLeadingBit(vec4<u32>(37489u, 0u, 0u, global3.b)) % vec4<u32>(32u)))), _wgslsmith_clamp_i32(((2147483647i << (global3.b % 32u)) >> (_wgslsmith_mod_u32(4294967295u, 5843u) % 32u)) ^ ~arg_1.x, reverseBits(abs(35762i)), firstTrailingBit(-1i)));
    global1 = arg_0;
    var var_3 = select(countOneBits(~u_input.a | reverseBits(u_input.a ^ u_input.a)), reverseBits(u_input.a), vec3<bool>(true, true, (arg_1.x <= _wgslsmith_dot_vec2_i32(arg_1.zy, vec2<i32>(2147483647i, -2147483647i))) || (firstLeadingBit(global3.c.x) != arg_1.x)));
    return Struct_1(-2153f, (4294967295u ^ _wgslsmith_clamp_u32(var_0.x, 1u, global3.b)) >> (~reverseBits(49550u) % 32u), firstLeadingBit(func_4(var_1, !(!vec4<bool>(true, global3.d, true, arg_2)), func_3(1i, vec4<u32>(33535u, 72456u, 12180u, global3.b) | vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x)), global3.b)), any(!select(vec4<bool>(global3.d, true, global3.d, false), select(vec4<bool>(arg_2, arg_2, global3.d, global3.d), vec4<bool>(true, global3.d, global3.d, arg_2), global3.d), false)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = func_2(Struct_2(firstTrailingBit(firstTrailingBit(vec3<i32>(2147483647i, global1.a.x, global3.c.x)) << ((vec3<u32>(1u, global0.x, global0.x) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)))), ~global1.a, firstLeadingBit(~30912u) != ~_wgslsmith_dot_vec3_u32(vec3<u32>(38154u, u_input.a.x, global3.b) & vec3<u32>(0u, 28096u, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, global3.b), u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f - var_0.a) - _wgslsmith_f_op_f32(exp2(global3.a)))), global4.x))));
    global0 = vec2<u32>(global0.x, global3.b);
    global0 = abs(max(abs(u_input.a.xy), u_input.a.xz));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -714f);
    return Struct_2(vec3<i32>(~(-global1.a.x), select(global3.c.x, abs(2147483647i), select(global3.d, true, true)), 29745i));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1174f, arg_2.x, global3.a, -1481f), vec4<f32>(1151f, -249f, global4.x, -682f), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, global3.d, arg_0.x, false)))), vec4<f32>(func_2(Struct_2(global3.c), vec3<i32>(global3.c.x, 6650i, -2147483647i), true).a, global3.a, _wgslsmith_f_op_f32(sign(arg_2.x)), -166f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, global4.x, 934f, 136f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f * arg_2.x)), _wgslsmith_f_op_f32(step(-595f, _wgslsmith_f_op_f32(global4.x - global3.a))), _wgslsmith_f_op_f32(-475f * global4.x))));
    var var_1 = u_input.a;
    global4 = vec2<f32>(_wgslsmith_f_op_f32(150f + 1556f), _wgslsmith_f_op_f32(step(var_0.x, global3.a)));
    let var_2 = vec3<i32>(abs(-63849i), i32(-1i) * -arg_1.a.x, func_3(arg_1.a.x, ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global3.b, u_input.a.x, global3.b), select(vec4<u32>(0u, global0.x, var_1.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 60473u, global3.b), vec4<bool>(false, false, false, false)))));
    var var_3 = Struct_1(-127f, 1u, firstLeadingBit(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global3.c.x), global3.c.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(29760i, var_2.x, var_2.x, arg_1.a.x), min(vec4<i32>(global1.a.x, 19121i, 2147483647i, var_2.x), vec4<i32>(global3.c.x, 20582i, var_2.x, arg_1.a.x))), -81136i)), _wgslsmith_div_f32(-937f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(1131f)))) <= _wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + -612f))))));
    return any(arg_0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = global3.d;
    global0 = _wgslsmith_add_vec2_u32(~((vec2<u32>(u_input.a.x, global0.x) >> (vec2<u32>(7415u, global0.x) % vec2<u32>(32u))) >> (~u_input.a.xx % vec2<u32>(32u))), ~(~vec2<u32>(30113u, 51686u))) | ~(~u_input.a.yy);
    var var_1 = global0.x;
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(global3.a, u_input.a.x, global3.c, global3.d & (-411f > global3.a));
    global2 = !(!func_5(vec3<bool>(all(vec4<bool>(true, false, global3.d, true)), any(vec4<bool>(false, global3.d, var_3.d, true)), false), func_1(!vec2<bool>(var_3.d, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(global3.a, _wgslsmith_f_op_f32(max(var_3.a, 992f)))));
    var var_4 = all(select(vec2<bool>(true, true), vec2<bool>(var_3.d, var_3.d), true));
    let var_5 = select(~global1.a.x, global1.a.x, var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1726f, _wgslsmith_f_op_f32(sign(-208f)), _wgslsmith_f_op_f32(-var_3.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -122f, 499f, global3.a), vec4<f32>(-602f, global3.a, var_3.a, global4.x)))))), ~(-max(global3.c.x, 46669i) | -1719i), global1.a.xx, min(~_wgslsmith_div_u32(62213u, var_2 & global3.b), abs(_wgslsmith_add_u32(global3.b, global3.b)) >> (22800u % 32u)));
}

