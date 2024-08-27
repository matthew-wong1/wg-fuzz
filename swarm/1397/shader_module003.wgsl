struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(i32(-2147483648), 35564i, 35599i), vec3<i32>(12601i, -46676i, -1i), vec3<i32>(0i, 2147483647i, 4090i), vec3<i32>(30469i, 2147483647i, 65058i), vec3<i32>(i32(-2147483648), -38291i, i32(-2147483648)), vec3<i32>(0i, 0i, -10400i), vec3<i32>(1i, 2147483647i, -20858i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-27086i, 0i, 17097i), vec3<i32>(-1i, 2248i, -21958i), vec3<i32>(9048i, 6078i, -11439i), vec3<i32>(35504i, -1i, 42010i), vec3<i32>(-51951i, 48232i, i32(-2147483648)), vec3<i32>(1i, 27776i, 2147483647i), vec3<i32>(183i, 16029i, -26309i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = Struct_2(Struct_1(arg_0.c.a | _wgslsmith_mod_vec4_i32(~arg_0.b.a, _wgslsmith_mult_vec4_i32(arg_0.c.a, vec4<i32>(-1i, -2031i, arg_2.b, arg_2.a.x))), arg_0.c.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2.c)) * vec3<f32>(arg_0.c.c.x, arg_0.a.c.x, arg_2.d)) - _wgslsmith_f_op_vec3_f32(-arg_2.c)), -298f), Struct_1(-reverseBits(_wgslsmith_sub_vec4_i32(arg_2.a, arg_2.a)), -2147483647i, arg_2.c, -400f), Struct_1(arg_0.b.a | arg_0.a.a, ~(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(arg_3, 15u)], arg_2.a.xyy) & 1i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d))), -830f), arg_0.a.c.x));
    global0 = ~(~_wgslsmith_clamp_u32(arg_3, _wgslsmith_mod_u32(32081u, 11349u), arg_3)) & 0u;
    global2 = array<vec3<i32>, 15>();
    global0 = arg_3;
    var var_1 = Struct_1(countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-32222i, arg_2.a.x, -12557i, -4748i), arg_0.c.a))), _wgslsmith_dot_vec2_i32(max(-(~arg_0.a.a.yw), vec2<i32>(_wgslsmith_mult_i32(2147483647i, var_0.a.b), _wgslsmith_mod_i32(-18903i, u_input.b.x))), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), -vec2<i32>(u_input.b.x, u_input.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1543f - _wgslsmith_f_op_f32(108f + var_0.b.d)), var_0.b.d)), _wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * arg_0.a.d))), _wgslsmith_f_op_f32(-426f - _wgslsmith_f_op_f32(arg_0.b.d - arg_2.d)), _wgslsmith_f_op_f32(select(var_0.c.d, 847f, true)) < var_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))) + 239f));
    return any(vec4<bool>((~4294967295u <= u_input.a.x) | (~u_input.d <= ~u_input.e), arg_1.x, arg_1.x, arg_1.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global2 = array<vec3<i32>, 15>();
    global0 = ~u_input.e;
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<i32>(19495i, 0i, arg_0.b, 2147483647i), abs(-15935i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(arg_0.d, -623f, arg_0.d)))), arg_0.c.x), Struct_1(arg_0.a, _wgslsmith_dot_vec3_i32(select(arg_0.a.yyy, vec3<i32>(arg_0.a.x, arg_0.b, arg_0.b), vec3<bool>(true, false, false)), vec3<i32>(2147483647i, -26944i, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, 310f)), 565f), arg_0));
    global1 = !any(!select(vec2<bool>(false, false), vec2<bool>(true, true), func_3(var_0.a, vec3<bool>(false, true, true), var_0.a.b, 1u)));
    global1 = all(!select(vec3<bool>(true, false, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1713f), var_0.a.a.c.x))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(-1i, -2147483647i, 23163i, arg_0), -2147483647i, vec3<f32>(849f, -1232f, 804f), 1000f))) * -1000f)));
    var var_1 = Struct_1(select(reverseBits(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-11203i, arg_0, 22528i, -35975i)), _wgslsmith_mult_vec4_i32(vec4<i32>(7516i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(arg_0, 3778i, 0i, 18302i)))), firstLeadingBit(vec4<i32>(26561i, 1i, 33214i, arg_0) | vec4<i32>(2147483647i, 2560i, arg_0, -11428i)), true), arg_0 ^ _wgslsmith_clamp_i32(-(u_input.b.x << (0u % 32u)), _wgslsmith_sub_i32(u_input.b.x, ~u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, 28196i)), vec3<f32>(526f, _wgslsmith_f_op_f32(exp2(var_0)), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    var var_2 = Struct_1(vec4<i32>(-_wgslsmith_sub_i32(2147483647i, 1i), firstLeadingBit(arg_0 >> ((u_input.d >> (1u % 32u)) % 32u)), _wgslsmith_mult_i32(i32(-1i) * -u_input.b.x, reverseBits(max(u_input.b.x, -59455i))), arg_0), ~(-1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(124f, var_1.c.x, _wgslsmith_f_op_f32(max(var_0, var_1.c.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-var_0)))));
    let var_3 = Struct_3(Struct_2(Struct_1(min(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(25318i, var_2.b, var_2.b, 33447i)), max(var_1.a, var_1.a)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-25976i, 0i), var_2.a.yx), abs(21757i), true), vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x * 1000f), var_0, -172f), -1608f), Struct_1(-(~vec4<i32>(2147483647i, -8515i, var_1.b, var_1.a.x)), max(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1880f, var_1.c.x, -312f), vec3<f32>(631f, 156f, var_0))) * _wgslsmith_div_vec3_f32(var_2.c, var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_2.c.x))), Struct_1(max(var_1.a, vec4<i32>(0i, var_2.a.x, -17990i, 13211i)) << (reverseBits(u_input.a) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b), ~vec2<i32>(367i, var_2.a.x)), _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, 757f), vec3<f32>(var_1.d, var_2.d, var_0))), var_1.c.x)));
    let var_4 = vec3<i32>(2147483647i | -_wgslsmith_add_i32(~u_input.b.x, i32(-1i) * -11695i), firstLeadingBit(firstTrailingBit(arg_0)), min(var_1.b, var_2.b));
    return var_3.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(any(vec3<bool>(false, true, true)) && false, !any(vec4<bool>(true, true, true, true))), vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(false, true, false))))));
    let var_1 = _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1112f)), _wgslsmith_f_op_f32(-arg_0.c.x)))));
    let var_2 = true;
    var_0 = !(!(!vec2<bool>(all(vec3<bool>(var_2, false, true)), true)));
    global2 = array<vec3<i32>, 15>();
    return select(any(vec3<bool>(any(vec3<bool>(var_0.x, true, false)), false, any(!vec3<bool>(var_0.x, true, var_0.x)))), arg_3 != _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_3, u_input.d), ~u_input.a.x), all(select(select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_2, var_2), vec3<bool>(false, var_2, var_0.x)), !vec3<bool>(var_0.x, true, var_0.x), func_3(arg_2.a, vec3<bool>(var_0.x, false, var_0.x), arg_0, 8908u)), vec3<bool>(all(vec4<bool>(var_0.x, var_2, false, false)), -1563i <= u_input.b.x, var_0.x), select(vec3<bool>(false, var_0.x, var_2), vec3<bool>(var_2, var_2, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec3<u32>(~1u, 4294967295u, u_input.c.x);
    global1 = !func_4(func_1(2147483647i), _wgslsmith_mult_vec2_i32(-firstLeadingBit(vec2<i32>(1i, 11988i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -38967i), u_input.b), firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), min(vec2<i32>(-42123i, 8558i), vec2<i32>(29951i, -19123i)))), Struct_3(Struct_2(func_1(u_input.b.x), Struct_1(vec4<i32>(-1i, -2386i, 17125i, -1i), u_input.b.x, vec3<f32>(-346f, 2164f, -247f), 1000f), func_1(-1i))), 18046u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(149f, 453f, var_0)), 947f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(u_input.b.x, 2147483647i, 12064i, 2147483647i), u_input.b.x, vec3<f32>(-2358f, -1627f, -143f), 1758f))))));
    global0 = ~var_1.x;
    var var_3 = vec3<u32>(u_input.a.x << (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.c.x, var_1.x)), select(1u, u_input.c.x, false) << ((19091u << (u_input.e % 32u)) % 32u)) % 32u), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.d, var_1.x), vec4<u32>(var_1.x, 6962u, 14925u, u_input.a.x)) | u_input.a), ~(~max(u_input.a, u_input.a))), var_1.x);
    var_3 = vec3<u32>(_wgslsmith_mult_u32(~(~firstTrailingBit(u_input.c.x)), u_input.c.x), 437u, reverseBits(_wgslsmith_sub_u32(abs(var_1.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(41730u, 25151u, var_1.x, var_1.x)) << (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(u_input.d)) << (81468u % 32u), 40338i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-241f, var_2), vec2<f32>(-1058f, 1581f), var_0)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(511f, var_2))))), func_1(0i).c.xx)), ~u_input.a);
}

