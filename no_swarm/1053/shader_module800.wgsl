struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(1549f, 1298f), 37908u, vec4<bool>(true, false, false, true), true, vec2<f32>(-258f, -1000f)), Struct_1(vec2<f32>(-1000f, 1306f), 1u, vec4<bool>(false, false, false, true), false, vec2<f32>(800f, -638f)), Struct_1(vec2<f32>(-106f, 650f), 51081u, vec4<bool>(false, false, false, true), true, vec2<f32>(-805f, 704f)), Struct_1(vec2<f32>(309f, 1000f), 1u, vec4<bool>(true, false, true, true), true, vec2<f32>(777f, 289f)), Struct_1(vec2<f32>(1998f, -2285f), 4294967295u, vec4<bool>(true, false, false, false), false, vec2<f32>(-811f, 908f)), Struct_1(vec2<f32>(1045f, -128f), 47176u, vec4<bool>(true, true, false, false), false, vec2<f32>(1000f, 1153f)), Struct_1(vec2<f32>(279f, -1254f), 0u, vec4<bool>(false, true, false, true), true, vec2<f32>(734f, 795f)), Struct_1(vec2<f32>(501f, -363f), 18899u, vec4<bool>(true, true, true, false), true, vec2<f32>(-1441f, 2284f)), Struct_1(vec2<f32>(310f, 2065f), 0u, vec4<bool>(false, false, false, true), false, vec2<f32>(-185f, -692f)), Struct_1(vec2<f32>(2270f, -1017f), 0u, vec4<bool>(true, true, true, false), false, vec2<f32>(-245f, 1246f)), Struct_1(vec2<f32>(298f, 982f), 7264u, vec4<bool>(true, true, false, false), true, vec2<f32>(1785f, 803f)), Struct_1(vec2<f32>(628f, -1000f), 11113u, vec4<bool>(true, false, true, false), true, vec2<f32>(-660f, 881f)), Struct_1(vec2<f32>(1718f, -1342f), 1u, vec4<bool>(true, false, true, true), false, vec2<f32>(737f, 732f)));

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~arg_2.x;
    var_0 = 49551u;
    let var_1 = global2[_wgslsmith_index_u32(min(1557u, arg_2.x), 27u)];
    var_0 = 92376u;
    var var_2 = ~vec4<u32>(~(~_wgslsmith_sub_u32(arg_2.x, 4294967295u)), 4294967295u, reverseBits(u_input.b), u_input.b);
    return ~countOneBits(max(4294967295u, ~1u | (var_2.x ^ 76058u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -5166i, u_input.a), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(arg_0, arg_0)) & vec2<i32>(-u_input.a, -2147483647i));
    let var_1 = firstTrailingBit(~(firstTrailingBit(vec3<u32>(0u, 30425u, u_input.b)) >> (select(vec3<u32>(1u, 1u, 4294967295u), ~vec3<u32>(arg_1.b, arg_1.b, u_input.b), true) % vec3<u32>(32u))));
    let var_2 = arg_2.d;
    let var_3 = global3[_wgslsmith_index_u32(43227u, 13u)];
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(45635u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(2030u, 2686u, var_3.b, arg_1.b) | vec4<u32>(arg_1.b, 24872u, 4294967295u, 1u)), select(vec4<u32>(arg_1.b, var_3.b, 1u, 61008u) ^ vec4<u32>(u_input.b, arg_2.b, arg_2.b, var_3.b), select(vec4<u32>(var_3.b, 0u, var_1.x, var_1.x) >> (vec4<u32>(u_input.b, var_3.b, var_3.b, 1u) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.b, arg_2.b, 4294967295u, 88093u)), any(var_3.c.xw)), _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_1.x, 4294967295u, arg_2.b)) > firstLeadingBit(arg_1.b)))), 27u)];
    return select(!vec4<bool>(all(var_3.c.zzy), arg_2.d, true, -2147483647i >= _wgslsmith_div_i32(arg_0, -1i)), !(!arg_2.c), var_3.c);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.a;
    global0 = array<vec3<i32>, 16>();
    var var_1 = func_3(abs((reverseBits(u_input.a) | -var_0) << (abs(u_input.b) % 32u)), global3[_wgslsmith_index_u32((u_input.b ^ countOneBits(_wgslsmith_div_u32(10595u, 4294967295u))) << (~u_input.b % 32u), 13u)], Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.e)))), max(func_2(arg_0.e.x, vec2<f32>(arg_0.e.x, arg_0.e.x), vec3<u32>(u_input.b, 4294967295u, 0u)), 15870u) & 0u, select(arg_0.c, select(arg_0.c, !vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.d), !vec4<bool>(false, arg_0.d, arg_0.c.x, false)), true), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e * arg_0.a) * vec2<f32>(arg_0.a.x, arg_0.e.x)))), arg_0.e.x);
    var var_2 = firstLeadingBit(arg_0.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_0.b) | ~vec2<u32>(4294967295u, u_input.b), (vec2<u32>(1u, 54307u) << (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u))) ^ (vec2<u32>(68810u, arg_0.b) & vec2<u32>(u_input.b, 14803u))));
    global3 = array<Struct_1, 13>();
    return global1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    global2 = array<Struct_1, 27>();
    var var_0 = u_input.a;
    global4 = arg_1.d;
    global4 = u_input.a >= u_input.a;
    let var_1 = -2147483647i;
    return true & arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2073f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-895f * -675f), -1911f))), 1000f);
    global4 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(global1.x, global1.x), 4294967295u, vec4<bool>(true, false, false, false), false, vec2<f32>(226f, global1.x)))), -1981f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, -404f, global1.x, 1447f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1078f) + vec4<f32>(-1000f, global1.x, global1.x, -282f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, global1.x, -118f, global1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1530f, -166f, global1.x, 1144f), vec4<f32>(1353f, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, -1321f))), u_input.b, func_3(0i, global3[_wgslsmith_index_u32(46511u, 13u)], Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 459f)), u_input.b, func_3(u_input.a, global3[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(vec2<f32>(-3010f, global1.x), u_input.b, vec4<bool>(false, false, true, false), false, vec2<f32>(-964f, global1.x)), global1.x), u_input.b < u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(121f, global1.x) - vec2<f32>(845f, global1.x))), _wgslsmith_f_op_f32(-global1.x)), !func_3(u_input.a, Struct_1(vec2<f32>(global1.x, -772f), u_input.b, vec4<bool>(true, false, false, true), false, vec2<f32>(global1.x, 115f)), global3[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(global1.x * 169f)).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-254f, global1.x))))), abs(vec2<u32>(0u, ~8447u >> (u_input.b % 32u))));
    var var_0 = 66594i < _wgslsmith_mult_i32(-25690i, ~(~u_input.a));
    var var_1 = global2[_wgslsmith_index_u32((4294967295u >> ((_wgslsmith_mod_u32(u_input.b & u_input.b, 1u) << (4294967295u % 32u)) % 32u)) & u_input.b, 27u)];
    let var_2 = global2[_wgslsmith_index_u32(var_1.b, 27u)];
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(_wgslsmith_add_i32(-1i, -u_input.a)), global0[_wgslsmith_index_u32(u_input.b, 16u)] << (vec3<u32>(min(func_2(-631f, vec2<f32>(var_2.a.x, var_1.e.x), vec3<u32>(var_2.b, 38049u, 59932u)), select(u_input.b, var_1.b, var_1.c.x)), ~select(1u, var_2.b, false), ~10306u | _wgslsmith_div_u32(1u, var_1.b)) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(55831u, u_input.b, var_1.b)), vec3<u32>(_wgslsmith_div_u32(1u, var_1.b), var_1.b, _wgslsmith_div_u32(26948u, 23653u)))));
}

