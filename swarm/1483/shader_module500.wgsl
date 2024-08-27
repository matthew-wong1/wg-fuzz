struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-1i, -12129i, 1372i, 54742i, 6530i, -31408i, 54364i, i32(-2147483648), 2147483647i, 25451i, -1i, 7513i, 36713i, -22581i, 8140i, 1i, -1i, 5178i, -3107i, -33456i, 2147483647i, 54596i, -1i, 26097i, -41209i, i32(-2147483648), -15009i, 1i, -42673i);

var<private> global1: Struct_1;

var<private> global2: array<f32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = select(vec3<bool>(true, !global1.b, 174f != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]), 738f))), vec3<bool>(-345f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1058f + global2[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_div_f32(-229f, -1103f), true)), all(select(select(vec2<bool>(global1.d, true), vec2<bool>(false, true), global1.d), select(vec2<bool>(global1.d, true), vec2<bool>(false, false), false), !vec2<bool>(global1.d, true))), true), vec3<bool>(false, global1.d, global1.d));
    global0 = array<i32, 29>();
    let var_1 = max(abs(vec4<i32>(~(global1.a.x | 0i), abs(u_input.b | global0[_wgslsmith_index_u32(global1.c, 29u)]), abs(-9334i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.a.x, u_input.a.x), vec3<i32>(-2147483647i, -14407i, global0[_wgslsmith_index_u32(29743u, 29u)])), vec3<i32>(1i, global1.a.x, u_input.b)))), vec4<i32>(-global1.a.x, ~global0[_wgslsmith_index_u32(global1.c, 29u)], countOneBits(26299i), u_input.c.x));
    let var_2 = !vec4<bool>(global1.b, (_wgslsmith_div_i32(u_input.a.x, 9965i) ^ _wgslsmith_mult_i32(global1.a.x, var_1.x)) != select(-26240i, 2147483647i, var_0.x), true, var_0.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-220f)))) + 1606f);
    return 11728u;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(abs(global1.a | global1.a), u_input.c), all(vec2<bool>(global1.d, global1.b)), max(func_3(-540f), firstLeadingBit(global1.c)), all(!(!vec4<bool>(global1.b, global1.b, false, false)))), _wgslsmith_div_u32(abs(1u), ~(~arg_2)) >= arg_2, global1.b);
    global0 = array<i32, 29>();
    global1 = var_0.a;
    let var_1 = -(~63811i);
    var var_2 = var_0.c;
    return var_0.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    global2 = array<f32, 6>();
    var var_0 = arg_1;
    global0 = array<i32, 29>();
    var var_1 = abs(~select(vec2<u32>(0u | arg_1.c, ~global1.c), abs(~vec2<u32>(arg_0, global1.c)), vec2<bool>(false, global1.d & false)));
    global0 = array<i32, 29>();
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(arg_0.c, func_4(_wgslsmith_sub_u32(~global1.c, ~arg_0.c), func_4(~_wgslsmith_mod_u32(43060u, arg_0.c), Struct_1(arg_0.a, !global1.b, max(3589u, arg_0.c), !global1.b), any(vec4<bool>(false, true, arg_0.b, false)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(global1.c, 36636u), 6u)] - _wgslsmith_f_op_f32(f32(-1f) * -194f))), all(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.d, true), vec2<bool>(global1.b, arg_0.d)), !vec2<bool>(true, global1.d), arg_0.d & global1.b)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(arg_0.c ^ 0u), 6u)])), _wgslsmith_f_op_f32(select(406f, 1237f, firstLeadingBit(u_input.b) >= _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))) < 237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~4294967295u, 6u)]))))).a.x;
    let var_1 = ~0u;
    let var_2 = Struct_2(arg_0, func_4(~global1.c & _wgslsmith_add_u32(1u, global1.c), arg_0, select(all(vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d)), !global1.d, true), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_1, 6u)] * -795f)).b & !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]) < -875f), false);
    var var_3 = arg_0;
    let var_4 = var_2.a;
    return func_2(-290f, var_2.a.a.x, 0u, max(-global1.a.x, func_2(1000f, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_3.a.x, 2147483647i), ~var_4.a.x), 0u, firstTrailingBit(var_2.a.a.x)).a.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    global1 = func_5(func_4(1u, func_2(-919f, ~2213i, _wgslsmith_div_u32(~arg_0, select(arg_1, 0u, false)), _wgslsmith_sub_i32(global1.a.x, select(-27194i, global0[_wgslsmith_index_u32(1u, 29u)], false))), any(!(!vec2<bool>(global1.d, global1.b))), -654f));
    var var_0 = global1.c;
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a.x, -abs(_wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(20025u, 29u)], reverseBits(global0[_wgslsmith_index_u32(global1.c, 29u)]))), global1.a.x >> (~abs(_wgslsmith_mult_u32(global1.c, global1.c)) % 32u), 2147483647i);
    var var_1 = true & !((global1.d || (-1000f == global2[_wgslsmith_index_u32(66778u, 6u)])) & !select(global1.d, true, false));
    global2 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1053f, -891f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(480f, -356f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], 849f) + vec2<f32>(-364f, -936f)))))), _wgslsmith_mult_u32(max(~(global1.c << (global1.c % 32u)), ~_wgslsmith_div_u32(62249u, global1.c)), func_1(min(global1.c, 0u), global1.c, _wgslsmith_div_i32(46583i, global0[_wgslsmith_index_u32(~global1.c, 29u)]), !global1.b || global1.d)));
}

