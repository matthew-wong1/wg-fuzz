struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1i, vec2<f32>(-1757f, 584f), 1i, 1054f, vec4<u32>(94974u, 1u, 0u, 0u)), 1704f);

var<private> global2: u32 = 1u;

var<private> global3: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global4: Struct_2 = Struct_2(Struct_1(-25289i, vec2<f32>(-158f, -352f), 0i, -764f, vec4<u32>(56020u, 1u, 19568u, 1u)), -365f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<bool>) -> bool {
    return select(all(vec2<bool>(true, all(global3[_wgslsmith_index_u32(global1.a.e.x, 14u)]))), false, !(any(vec2<bool>(arg_3.x, true)) && all(vec2<bool>(true, arg_3.x))));
}

fn func_2() -> Struct_2 {
    global3 = array<vec3<bool>, 14>();
    var var_0 = !(!vec2<bool>(func_3(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, -1000f))), global1.a.c, vec2<bool>(true, true)), true || any(vec4<bool>(true, false, false, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(947f + 103f), global1.b, global1.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b * 1247f), _wgslsmith_f_op_f32(floor(-728f)), _wgslsmith_f_op_f32(-global4.b))), global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(4294967295u, global4.a.e.x) >> ((global4.a.e.x ^ global1.a.e.x) % 32u)), 14u)]))));
    global1 = Struct_2(global1.a, 489f);
    var var_2 = vec3<bool>(all(vec4<bool>(all(global3[_wgslsmith_index_u32(global1.a.e.x >> (5415u % 32u), 14u)]), var_0.x, true, var_0.x)), var_0.x, false);
    return Struct_2(global4.a, var_1.x);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    global1 = func_2();
    global1 = Struct_2(Struct_1(-47561i, global1.a.b, arg_1.x, _wgslsmith_f_op_f32(step(global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) - _wgslsmith_f_op_f32(max(733f, global4.a.b.x))))), global1.a.e), -1000f);
    var var_0 = Struct_1(48043i & global4.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_f32(-global4.b))), _wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(arg_1.x, global1.a.c)), ~(~vec2<i32>(global1.a.c, 2006i))), arg_1.xy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1285f, global1.a.d, true)), _wgslsmith_f_op_f32(f32(-1f) * -1131f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(916f, -1435f), -471f)))), ~(vec4<u32>(15030u, ~global4.a.e.x, global4.a.e.x, 46973u) ^ (~vec4<u32>(51062u, 1u, u_input.a, 1u) & vec4<u32>(13081u, 21367u, global1.a.e.x, global4.a.e.x))));
    let var_1 = 36443u >> (min(1u, global1.a.e.x) % 32u);
    return Struct_2(func_2().a, _wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b.x)) + _wgslsmith_f_op_f32(sign(-639f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    global2 = ~abs(arg_0.a.e.x);
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_0 = vec3<i32>(-6819i, global1.a.a, global1.a.a);
    var var_1 = -1i;
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global1 = func_1(-18907i, vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(~(-2147483647i), 532i << (global4.a.e.x % 32u), 1i)), -abs(~arg_0.a), select(-28412i, 1i, true)));
    let var_0 = func_4(func_2(), func_2().a, true, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1026f, arg_0.d))))))));
    let var_1 = var_0.d;
    global4 = Struct_2(Struct_1(arg_1.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.a.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, var_0.d)))), -arg_0.c << (~_wgslsmith_clamp_u32(1u, 14170u, 1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1404f, global1.a.d)) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-global4.b)))), ~(~abs(arg_1.e))), _wgslsmith_div_f32(822f, -373f));
    global2 = _wgslsmith_dot_vec3_u32(~arg_0.e.zyx, _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(global1.a.e.wwz, vec3<u32>(arg_1.e.x, 0u, arg_1.e.x)) << (vec3<u32>(~0u, u_input.a, 0u) % vec3<u32>(32u)), firstTrailingBit(firstTrailingBit(~vec3<u32>(4812u, arg_0.e.x, 29651u)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1.a.a;
    global0 = array<vec4<f32>, 27>();
    var var_1 = func_5(Struct_1(var_0, global4.a.b, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.d * global1.a.d)), max(global4.a.e, global1.a.e)), func_4(func_1(min(global4.a.c, 4975i), -vec3<i32>(global1.a.c, global1.a.a, var_0)), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a.c, -2147483647i, -35634i), vec3<i32>(global4.a.a, 0i, 1i), vec3<i32>(1i, global4.a.c, 12064i)), -vec3<i32>(global1.a.c, 1i, global4.a.a)), _wgslsmith_f_op_vec2_f32(global1.a.b * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(101f, 1243f), global1.a.b, true))), var_0, 368f, global1.a.e << (~global1.a.e % vec4<u32>(32u))), _wgslsmith_f_op_f32(-func_1(-34167i, vec3<i32>(0i, global1.a.c, -1i)).b) > 601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1028f)))));
    global4 = func_2();
    let var_2 = global4.a.a;
    let var_3 = Struct_2(var_1.a, global4.a.b.x);
    let var_4 = func_5(var_3.a, func_4(func_5(var_3.a, func_5(func_4(Struct_2(var_3.a, global4.a.b.x), var_3.a, false, global4.b), Struct_1(-19299i, vec2<f32>(896f, var_1.a.b.x), global4.a.c, global4.b, var_3.a.e)).a), Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-445f, var_1.a.b.x)), ~(-2147483647i), -461f, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55987u, global1.a.e.x, 0u), var_3.a.e.xyx), 8131u >> (global1.a.e.x % 32u), _wgslsmith_mult_u32(global4.a.e.x, 0u), global1.a.e.x)), true, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-func_2().b)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-627f + global1.a.d), _wgslsmith_div_f32(var_1.a.b.x, var_4.b.x), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(624f, var_1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(20505u, 27u)] + global0[_wgslsmith_index_u32(var_3.a.e.x, 27u)]))))) + global0[_wgslsmith_index_u32(47491u, 27u)]), _wgslsmith_f_op_vec2_f32(select(global1.a.b, _wgslsmith_f_op_vec2_f32(-var_4.b), false)), var_3.a.e.yyy, vec2<i32>(_wgslsmith_sub_i32(var_1.a.c, func_2().a.a) >> ((1u << (global1.a.e.x % 32u)) % 32u), -39900i));
}

