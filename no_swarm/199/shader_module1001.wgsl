struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-728f, -2237f, 902f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, arg_1.a.x, -2222f), vec3<f32>(global0.x, global0.x, arg_3.a.x)), global1.a))))));
    let var_1 = var_0;
    var var_2 = -1246f;
    var var_3 = select(max(~(~vec2<u32>(u_input.a, arg_2)), select(vec2<u32>(6295u, u_input.a), ~vec2<u32>(arg_2, u_input.a), vec2<bool>(true, true)) & vec2<u32>(arg_2, arg_2)), vec2<u32>(_wgslsmith_mult_u32(arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(0u, 18508u, arg_2))) >> ((~7339u ^ abs(arg_2)) % 32u), _wgslsmith_clamp_u32(16434u, _wgslsmith_mult_u32(0u, abs(0u)), u_input.a)), any(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), false))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.a.x, arg_3.a.x, var_1.a.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.a.x, -696f)));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(global1.a);
    let var_1 = vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(countOneBits(-64592i), Struct_1(global1.a), ~4294967295u, Struct_1(vec3<f32>(-466f, var_0.a.x, 782f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x)))) >= _wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, var_0.a.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_0.a)));
    var var_2 = Struct_1(var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + var_2.a));
    return _wgslsmith_f_op_vec2_f32(trunc(var_2.a.xz));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.a))), _wgslsmith_f_op_vec3_f32(-global1.a), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x * 1675f), _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec3_f32(-arg_1.a), select(!vec3<bool>(true, arg_2.x, false), vec3<bool>(false, arg_2.x, arg_2.x), !arg_2.x)))));
    let var_0 = Struct_1(vec3<f32>(1080f, arg_1.a.x, _wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - global1.a.x), -1517f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a) - vec3<f32>(1173f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), -300f)));
    let var_2 = vec4<i32>(-1i, _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(min(-15816i, 0i), max(50304i, 17192i)), 1i, true), ~(-min(-2147483647i, 0i))), 2147483647i, firstTrailingBit(countOneBits(-_wgslsmith_sub_i32(9234i, 31526i))));
    var var_3 = arg_3;
    return _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(614f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-4870i, Struct_1(var_3.a), u_input.a, arg_1)) - 869f)));
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    global0 = vec3<f32>(-151f, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_2()), Struct_1(global1.a), vec2<bool>(arg_0.x, false), Struct_1(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(383f, 478f, -1681f))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.a.x, global0.x))))));
    let var_0 = arg_0.x & any(select(select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, false), false), arg_0, arg_0.x), !arg_0, !select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, false, false), arg_0.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x))))))), global1.a.x, -1394f);
    global0 = global1.a;
    return ~abs(max(vec4<i32>(_wgslsmith_div_i32(81345i, -25650i), i32(-1i) * -15388i, _wgslsmith_mod_i32(2147483647i, 2147483647i), countOneBits(51511i)), vec4<i32>(13818i >> (1u % 32u), -1i, -1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(vec3<bool>(true, false, firstLeadingBit(u_input.a) != 4945u));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(select(-102f, global0.x, true))), 1022f));
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-var_0.x, -55134i, -33456i), ~var_0.x, -15475i, var_0.x), vec4<i32>(1i, firstTrailingBit(var_0.x), _wgslsmith_mult_i32(var_0.x, var_0.x ^ var_0.x), var_0.x)), firstLeadingBit(_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.x, var_0.x, 0i, 3241i), vec4<i32>(var_0.x, var_0.x, 1083i, var_0.x)), vec4<i32>(-1i, var_0.x, var_0.x, 0i)) | vec4<i32>(2147483647i, -2147483647i, firstTrailingBit(31489i), max(35784i, var_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(-106f, global1.a.x)), global1.a.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a + var_1.a));
    let var_3 = ~max(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.zyx << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(1u, 15707u, 4294967295u)), ~vec3<u32>(u_input.a, 7544u, u_input.a), true) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1915f), var_1.a.x, _wgslsmith_f_op_f32(1595f + _wgslsmith_f_op_vec2_f32(func_2()).x), -759f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_div_f32(global0.x, global1.a.x), global1.a.x, 599f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(max(global0.x, 1742f)), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(142f - global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1671f, global1.a.x, -2299f, -557f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, var_1.a.x, var_1.a.x, -166f)))))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, 314f, -753f) - var_4.xww), vec3<f32>(344f, global1.a.x, -1000f), vec3<bool>(true, false, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-400f, -166f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.a), vec3<f32>(_wgslsmith_f_op_f32(func_4(var_1.a.xx, var_5, vec2<bool>(false, false), var_5)), _wgslsmith_f_op_f32(sign(167f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.x, var_5.a.x)))))), _wgslsmith_mult_u32(min(abs(0u) | (u_input.a >> (4294967295u % 32u)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(33466u, 17197u, 12414u)), ~u_input.a, true)), u_input.a), var_0.x);
}

