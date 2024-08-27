struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-49448i, vec3<f32>(-1095f, 1436f, -258f), 54400i);

var<private> global1: array<vec2<bool>, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = false;
    global0 = Struct_1(_wgslsmith_div_i32(u_input.a, ~44183i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))) * vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), ~(-(global0.c | 7030i)));
    var_0 = select(_wgslsmith_mult_i32(-9253i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 48922i, u_input.b, 7711i), vec4<i32>(0i, 2147483647i, global0.a, -40849i), vec4<i32>(-2395i, 2147483647i, -1i, 21753i)), vec4<i32>(u_input.b, 43035i, -96011i, -1i))), 19620i, (u_input.a > u_input.b) || !any(vec2<bool>(false, true))) < _wgslsmith_div_i32(u_input.b & ~2147483647i, -38656i);
    var var_1 = Struct_1(7919i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * 568f) - arg_0), arg_0, _wgslsmith_f_op_f32(round(-1639f))), _wgslsmith_mod_i32(5488i, ~(-2147483647i)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) + _wgslsmith_f_op_f32(-global0.b.x)))), -1146f, 135f);
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.b.xy);
    let var_1 = Struct_1(_wgslsmith_div_i32(max(~_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_0.wyw, vec3<i32>(global0.a, -1i, 2147483647i)), -1i)), min(arg_0.x, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x), -2147483647i);
    global0 = Struct_1(17968i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, u_input.d, 79033u), vec4<u32>(~u_input.c, 50537u, 0u, u_input.d ^ 1u)) % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1042f + var_1.b.x))))), _wgslsmith_mult_i32(select(global0.c, _wgslsmith_dot_vec3_i32(~arg_0.xww, firstTrailingBit(vec3<i32>(u_input.b, global0.a, -2147483647i))), false), _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 21030i), arg_0.yz)) << ((~u_input.d << (4294967295u % 32u)) % 32u)));
    var var_2 = max(_wgslsmith_mod_i32(-1i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(18645i, -1i, -35601i), vec3<i32>(-14363i, global0.c, -2147483647i)), u_input.a) << (55926u % 32u)), u_input.a);
    return select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true & all(vec4<bool>(false, true, false, true))), !vec3<bool>(true, -921f != _wgslsmith_f_op_f32(var_1.b.x * global0.b.x), false), vec3<bool>(false, !all(vec3<bool>(true, false, false)) & true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_sub_u32(66909u, _wgslsmith_div_u32(0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0.x), vec2<u32>(100693u, u_input.c))))) << (max(u_input.c, arg_0.x) % 32u);
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, _wgslsmith_sub_i32(-global0.c, ~5678i)), vec3<i32>(arg_3.a, u_input.a, firstTrailingBit(-61044i))), max(vec3<i32>(34236i, 1i, abs(u_input.b)), -countOneBits(vec3<i32>(u_input.a, 29848i, u_input.a) << (vec3<u32>(0u, arg_0.x, u_input.d) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mult_i32(arg_3.a, _wgslsmith_mod_i32(arg_2.c, var_0.a) ^ (-2147483647i ^ var_0.c)), -arg_2.c, ~(~(~u_input.b))));
    global1 = array<vec2<bool>, 24>();
    let var_3 = var_0.b.x;
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_div_i32(~(arg_0.c >> (56328u % 32u)), ~((arg_0.a | 1i) >> (arg_2 % 32u))), arg_0.b, ~(-(~arg_1.a ^ ~u_input.b)));
}

fn func_1() -> Struct_1 {
    return func_5(Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a, abs(global0.c)), global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1107f, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x))), global0.a), func_4(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 1u)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(61381u, u_input.c), vec2<u32>(46008u, u_input.c)), vec2<u32>(u_input.d, u_input.c), true)), !func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(13339i, u_input.b, global0.a, global0.c), vec4<i32>(global0.c, -1i, u_input.b, -2147483647i), vec4<i32>(0i, u_input.b, 18646i, -2147483647i))), Struct_1(min(global0.c, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(785f, global0.b.x, global0.b.x))), u_input.b), Struct_1(0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, 327f, -676f)) * vec3<f32>(-1208f, 298f, global0.b.x)), 1i)), _wgslsmith_div_u32(u_input.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.d), ~vec2<u32>(4294967295u, 0u)), u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 24>();
    let var_0 = !(!(!(_wgslsmith_f_op_f32(-global0.b.x) != global0.b.x)));
    let var_1 = Struct_1(global0.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(174f, _wgslsmith_f_op_f32(sign(-1114f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - global0.b.x)))))), -2147483647i);
    let var_2 = func_1();
    global0 = func_5(Struct_1(~_wgslsmith_div_i32(~var_2.a, var_2.a), var_2.b, -2147483647i), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(-var_2.b)), vec3<f32>(1884f, _wgslsmith_div_f32(887f, global0.b.x), -1430f), func_2(vec4<i32>(18017i, 1i, 56190i, var_2.c) >> (vec4<u32>(4294967295u, u_input.c, u_input.d, 38574u) % vec4<u32>(32u))))), -1i), ~(_wgslsmith_div_u32(~0u, u_input.c) >> (firstTrailingBit(u_input.d) % 32u)));
    global1 = array<vec2<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(41289u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 7182u), ~vec2<u32>(0u, u_input.d)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(68965u, 51467u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(4294967295u, 10343u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(84096u, u_input.d), ~vec2<u32>(4294967295u, u_input.c) ^ countOneBits(vec2<u32>(0u, u_input.c))), true | ((var_0 & var_0) && !var_0)), vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1052f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_f32(func_1().b.x + var_2.b.x), 1u, ~(-38322i));
}

