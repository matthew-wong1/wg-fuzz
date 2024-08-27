struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -29533i, vec4<u32>(4294967295u, 1u, 4294967295u, 116318u), false, 29187i);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global3: array<Struct_1, 23>;

var<private> global4: u32 = 70048u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = ~abs(~(-vec2<i32>(global0.e, global0.e) >> ((vec2<u32>(0u, u_input.a) >> (global0.c.yx % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = _wgslsmith_add_vec2_i32(min(select(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, var_0.x), vec2<i32>(u_input.b, var_0.x)), ~vec2<i32>(16888i, var_0.x), !vec2<bool>(global0.d, false)), countOneBits(vec2<i32>(arg_0.e, 2072i)) ^ vec2<i32>(global0.b, 2147483647i)) << (select(vec2<u32>(1u, abs(global0.c.x)), vec2<u32>(reverseBits(102103u), _wgslsmith_sub_u32(arg_0.c.x, 1542u)), !(!arg_1.zz)) % vec2<u32>(32u)), select(vec2<i32>(u_input.b << (global0.c.x % 32u), 1i), vec2<i32>(_wgslsmith_div_i32(u_input.b, var_0.x), _wgslsmith_clamp_i32(-27651i, -2147483647i, arg_0.e)), global0.d) & vec2<i32>(abs(-28899i), ~var_0.x));
    let var_1 = ~min(global0.c.zzy, firstLeadingBit(abs(~vec3<u32>(4294967295u, 59311u, global0.c.x))));
    global3 = array<Struct_1, 23>();
    global0 = Struct_1(false, 0i >> (global0.c.x % 32u), global0.c, arg_1.x, 0i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-165f * _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(round(-1413f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, global1.x, global1.x, 448f)))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(~u_input.a, 23u)], vec4<bool>(any(!select(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec3<bool>(global0.d, false, true), global0.a)), !global0.a, global0.d, !global0.a)));
    let var_0 = !(select(1u, _wgslsmith_mod_u32(arg_0, u_input.a), !global0.d) > 20838u) & true;
    let var_1 = global3[_wgslsmith_index_u32(31543u, 23u)];
    global3 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_1));
    return ~vec4<i32>(global0.e, -25524i, -2147483647i, global0.e);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b, -2147483647i, -1i, arg_0), vec4<i32>(16249i, 1i, 1i, 38011i), vec4<i32>(global0.e, -6457i, global0.e, arg_1.e)), abs(vec4<i32>(arg_1.b, arg_1.e, -50508i, u_input.b))) << (~select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u), vec4<bool>(false, true, global0.d, false)) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_sub_i32(u_input.b, arg_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, arg_3.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b, -19697i, arg_3.x), vec3<i32>(0i, 30406i, u_input.b), arg_3)), -(2147483647i | u_input.b), ~(-arg_0))), ~_wgslsmith_div_vec4_i32(func_2(u_input.a ^ 0u, -1233f, firstTrailingBit(vec3<u32>(u_input.a, 19772u, 58095u))), -vec4<i32>(-7398i, 1i, global0.b, 2147483647i)));
    var var_1 = ~_wgslsmith_div_vec3_u32(global0.c.zwx, global0.c.zyw);
    var var_2 = Struct_1(true, 24613i, (arg_1.c & vec4<u32>(0u, 4294967295u, _wgslsmith_clamp_u32(global0.c.x, var_1.x, u_input.a), _wgslsmith_clamp_u32(arg_1.c.x, var_1.x, arg_1.c.x))) ^ _wgslsmith_div_vec4_u32(global0.c, _wgslsmith_add_vec4_u32(~vec4<u32>(27709u, var_1.x, u_input.a, global0.c.x), min(vec4<u32>(1u, global0.c.x, var_1.x, arg_1.c.x), vec4<u32>(1u, u_input.a, arg_1.c.x, arg_1.c.x)))), global0.a, 43373i);
    var var_3 = -194f;
    global4 = ~(55839u | select(arg_1.c.x, global0.c.x, global0.a));
    return _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.b >> (81350u % 32u), _wgslsmith_clamp_i32(global0.b, var_2.e, -1i)), vec3<i32>(~u_input.b, i32(-1i) * -arg_1.b, min(~2147483647i, 636i))) | ~abs(arg_3);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<u32>(1u, min(u_input.a, ~21274u), u_input.a, ~(~_wgslsmith_div_u32(~u_input.a, firstLeadingBit(u_input.a))));
    global0 = Struct_1(!((global0.e >= arg_0.x) || global0.a) == global0.d, _wgslsmith_add_i32(2147483647i, ~(-19049i) ^ arg_0.x), countOneBits(~vec4<u32>(_wgslsmith_add_u32(global0.c.x, u_input.a), ~15333u, ~52534u, 4294967295u)), ~_wgslsmith_sub_i32(arg_0.x ^ global0.b, u_input.b << (0u % 32u)) != 1i, global0.e);
    var var_1 = 1u;
    var_1 = u_input.a;
    global3 = array<Struct_1, 23>();
    return Struct_1(!global0.a, 0i, countOneBits(select(vec4<u32>(_wgslsmith_clamp_u32(global0.c.x, global0.c.x, global0.c.x), u_input.a, u_input.a, var_0.x << (global0.c.x % 32u)), global0.c, true)), global0.d, ~arg_0.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-309f)))));
    global3 = array<Struct_1, 23>();
    let var_1 = arg_0;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~select(var_1.c.x, global0.c.x, true), arg_0.c.x), 23u)];
    global4 = global0.c.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, 1033i, 15436i) ^ vec3<i32>(global0.e, u_input.b, global0.b), func_1(global0.b, Struct_1(true, u_input.b, vec4<u32>(u_input.a, 79906u, 0u, u_input.a), true, -1i), _wgslsmith_f_op_f32(global1.x - global1.x), vec3<i32>(10705i, u_input.b, global0.e)))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~55113u), 23u)];
    var_0 = func_4(vec3<i32>(_wgslsmith_mod_i32(var_0.e, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, -2147483647i), vec2<i32>(-1i, -6365i), global0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_0.e), vec2<i32>(-4322i, -1i), vec2<i32>(var_2.b, var_1.e)))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 2147483647i) | vec2<i32>(-1i, u_input.b), ~vec2<i32>(-2147483647i, 0i), global0.a), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 25502i), vec2<i32>(var_1.b, 1i), vec2<i32>(global0.e, -1i))), _wgslsmith_mod_i32(i32(-1i) * -u_input.b, _wgslsmith_div_i32(~11835i, func_4(vec3<i32>(-2147483647i, 34880i, -2147483647i)).e))));
    var var_3 = ~_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(~var_0.c.x, ~global0.c.x, u_input.a, func_5(Struct_1(false, 1i, vec4<u32>(43166u, 1u, 4294967295u, 1u), var_0.d, 2147483647i)).c.x));
    var var_4 = func_5(Struct_1(true, u_input.b, var_2.c, !any(!vec3<bool>(true, true, var_0.a)), _wgslsmith_mod_i32(global0.b & u_input.b, _wgslsmith_mod_i32(17271i, 15238i)) & var_1.b));
    global4 = 0u;
    global1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.d, 2147483647i, vec4<u32>(_wgslsmith_dot_vec4_u32(global0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 24889u, var_1.c.x, var_0.c.x), var_2.c)), ~1u, ~21546u, var_4.c.x), all(!vec4<bool>(var_1.d, false, false, global0.d)), u_input.b), !select(select(vec4<bool>(var_2.d, true, var_0.d, var_1.a), !vec4<bool>(var_2.d, var_1.a, true, var_4.d), !vec4<bool>(true, var_4.a, global0.a, var_4.d)), select(!vec4<bool>(false, var_1.a, false, true), !vec4<bool>(true, global0.a, var_4.a, false), false), func_5(func_5(global3[_wgslsmith_index_u32(var_0.c.x, 23u)])).a)));
    let var_5 = global3[_wgslsmith_index_u32(select(select(~var_4.c.x, ~_wgslsmith_mod_u32(global0.c.x, global0.c.x), var_4.d | false), ~45197u, (-27612i > ~var_2.b) || any(!vec4<bool>(var_2.d, false, global0.d, var_0.d))) | ~(~(~countOneBits(85684u))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1.zw, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)))), ~(-func_2(max(53623u, u_input.a), -1000f, _wgslsmith_add_vec3_u32(global0.c.zwz, var_0.c.xzx)).xz));
}

