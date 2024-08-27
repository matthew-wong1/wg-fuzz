struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: f32 = 1000f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(17237u, arg_0.x), 43230u, _wgslsmith_div_i32(u_input.c.x, -1i), _wgslsmith_f_op_f32(-289f - -586f), u_input.a.yzz);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-585f, var_0.d), vec2<f32>(874f, var_0.d)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -168f)) * vec2<f32>(var_0.d, var_0.d))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(377f, _wgslsmith_f_op_f32(var_0.d * var_0.d)), 371f), vec2<f32>(477f, 1711f))));
    let var_2 = global0[_wgslsmith_index_u32(arg_1.x, 28u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-545f)) + 769f));
    var var_3 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec2<bool>(false, false))), vec2<bool>(true, select(true, true, true)), any(vec2<bool>(true, true)));
    return ~_wgslsmith_add_i32(~u_input.b, -(-arg_2 >> (4294967295u % 32u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(arg_2 * arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 741f, _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1922f + -1551f)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1542f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))))));
    var var_2 = Struct_1(~arg_1, ~_wgslsmith_div_u32(4294967295u, ~75994u), i32(-1i) * -u_input.b, _wgslsmith_f_op_f32(step(212f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(230f, arg_2)))), u_input.a.wzy);
    var var_3 = Struct_1(u_input.a.x, arg_1, _wgslsmith_add_i32(func_3(min(vec4<u32>(arg_3, var_2.e.x, 48444u, 1u), vec4<u32>(1u, arg_3, arg_3, 4294967295u)), u_input.a.wz, arg_0.x) >> (arg_3 % 32u), reverseBits(max(2147483647i, 0i)) ^ var_2.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2, var_2.d)), _wgslsmith_f_op_f32(var_1.x - var_2.d)))))), vec3<u32>(arg_1, ~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), ~2431u));
    return min(arg_0.zwx, vec3<i32>(countOneBits(_wgslsmith_add_i32(select(var_3.c, 12562i, false), var_3.c)), -2985i, -(~countOneBits(-1i))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    var var_0 = select(true, true, true);
    let var_1 = select(_wgslsmith_div_vec3_i32(arg_3.xzz, -(-arg_3.yzy << (_wgslsmith_add_vec3_u32(arg_0.e, arg_0.e) % vec3<u32>(32u)))), func_2(arg_3, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-435f, 1975f))), 1u), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    var var_2 = _wgslsmith_mod_i32(func_3(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, arg_1, 12002u, 4294967295u), vec4<u32>(arg_0.e.x, u_input.a.x, arg_0.b, 4294967295u), true), u_input.a), vec2<u32>(2078u, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 26035u, arg_2, u_input.a.x))), arg_3.x), u_input.b);
    var var_3 = true;
    let var_4 = ~(~(arg_1 ^ ~u_input.a.x)) ^ ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), 12308u), 15839u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a.x, 4294967295u, u_input.b | u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(1u, u_input.a.x, -2147483647i, 360f, u_input.a.xwx), u_input.a.x, u_input.a.x, vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b))) * _wgslsmith_f_op_f32(f32(-1f) * -938f)))))), ~(~vec3<u32>(81077u, 660u, _wgslsmith_add_u32(0u, u_input.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(12276u, 28u)];
    let var_2 = 1u;
    let var_3 = select(vec2<bool>(var_0.d <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(ceil(770f)))), false), !vec2<bool>(true, !any(vec3<bool>(false, false, true))), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var_0 = var_1.a;
    var var_4 = _wgslsmith_div_vec4_i32(select(~(~(vec4<i32>(-21391i, u_input.b, -78259i, var_0.c) & vec4<i32>(u_input.b, 0i, 0i, -2147483647i))), ~select(~vec4<i32>(u_input.b, u_input.b, 2147483647i, -2147483647i), vec4<i32>(var_0.c, var_0.c, 4527i, var_1.a.c), any(vec3<bool>(false, var_3.x, var_3.x))), !(!(!vec4<bool>(true, var_3.x, var_3.x, false)))), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(20462i, var_0.c, -16884i, var_0.c), vec4<i32>(var_1.a.c & -1i, var_1.a.c, -30342i, -15397i), any(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), ~vec4<i32>(52465i, abs(var_0.c), 1i, countOneBits(-2147483647i))));
    var var_5 = var_1.b;
    var var_6 = var_1.a.e;
    let var_7 = vec2<bool>(false, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

