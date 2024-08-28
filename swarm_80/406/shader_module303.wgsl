struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1424f, -655f, -666f, 280f), vec4<f32>(1093f, 593f, -565f, 3170f), vec4<f32>(1434f, -1000f, -948f, -570f), vec4<f32>(1504f, 380f, -1057f, 360f), vec4<f32>(-757f, 841f, 402f, 936f), vec4<f32>(1709f, -573f, -111f, 2562f));

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, true));

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(1i & u_input.d.x, u_input.b), _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_div_i32(2147483647i, 1i))), u_input.d.x));
    let var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(47836u), 1u)];
    global2 = array<vec3<bool>, 16>();
    let var_2 = Struct_1(true, ~961u, global4.d, global4.c);
    let var_3 = Struct_1(!((true || (global4.b <= u_input.c)) && var_1.x), _wgslsmith_sub_u32(~_wgslsmith_div_u32(firstLeadingBit(4294967295u), ~53618u), 21237u), _wgslsmith_f_op_f32(select(global4.d, 975f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)) + global4.d));
    return ~(~(max(min(29082u, 0u), 0u) >> (0u % 32u)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec2<f32>(480f, global4.c);
    var var_1 = Struct_1(true, ~(~func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1871f) - global4.d));
    global0 = array<vec4<f32>, 6>();
    global0 = array<vec4<f32>, 6>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_1.d, var_1.d))))) + var_0) + var_0);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 110f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = global4.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.d), -171f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec2<bool>(global4.a, global4.a))), global4.c, global4.b > global4.b)))));
    global4 = Struct_1(all(global2[_wgslsmith_index_u32(51964u, 16u)]), global4.b, global4.c, _wgslsmith_f_op_f32(func_2(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global4.a, false)), vec2<bool>(any(vec4<bool>(true, global4.a, true, global4.a)), select(global4.a, global4.a, false)), select(true || global4.a, global4.a, any(global3[_wgslsmith_index_u32(global4.b, 1u)]))))));
    let var_2 = Struct_2(-21701i);
    var var_3 = vec4<f32>(-735f, -308f, _wgslsmith_f_op_f32(-169f - _wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(1273f - _wgslsmith_f_op_f32(204f + global4.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(var_1 - var_1))))))));
    return vec4<i32>(~var_2.a, ~abs(abs(-1i)), select(_wgslsmith_add_i32(-21789i, -firstLeadingBit(14994i)), -51085i, all(!select(vec2<bool>(true, false), vec2<bool>(false, global4.a), vec2<bool>(global4.a, global4.a)))), u_input.d.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_2(-abs(arg_2.x));
    global1 = array<vec3<i32>, 2>();
    var var_1 = vec3<i32>(select(-_wgslsmith_mod_i32(var_0.a, _wgslsmith_mult_i32(u_input.d.x, 1i)), var_0.a, true), _wgslsmith_dot_vec2_i32(abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(arg_1.x, 50212i))), -vec2<i32>(firstTrailingBit(-81160i), _wgslsmith_div_i32(arg_2.x, arg_1.x))), ~(_wgslsmith_mult_i32(var_0.a, var_0.a) >> (global4.b % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global4.d, global4.c)), vec3<f32>(_wgslsmith_f_op_f32(global4.d + -2779f), global4.c, _wgslsmith_f_op_f32(sign(arg_0.x))), ~u_input.c != 1u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(920f, arg_0.x, 1372f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(773f, -433f, global4.d) - vec3<f32>(arg_0.x, -429f, -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, -1970f, 768f)), vec3<f32>(1077f, 210f, global4.c), arg_3.x && global4.a)))))));
    var var_3 = 1233f;
    return ~vec4<u32>(global4.b, 34851u, 0u, global4.b);
}

fn func_5(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_1(true, select(func_3(), ~abs(arg_0.x) ^ 1u, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * -126f) - 499f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d) + _wgslsmith_f_op_f32(ceil(576f))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, u_input.d.x), abs(u_input.d.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, ~u_input.d.x, u_input.b, u_input.b), ~max(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d.x, 35431i, -24706i), vec4<i32>(36629i, 0i, u_input.b, -1i)))), _wgslsmith_sub_i32(u_input.b, u_input.d.x), u_input.d.x);
    let var_2 = vec4<u32>(u_input.c | 1u, 0u, var_0.b, ~func_3());
    var var_3 = vec4<i32>(-(i32(-1i) * -(u_input.d.x ^ var_1.x)), 1i, -36098i, (1i ^ var_1.x) | (var_1.x | ~(-31308i)));
    let var_4 = Struct_1(var_0.a, ~1u, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec2<bool>(var_0.a, var_0.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(trunc(global4.d))) - -170f), _wgslsmith_f_op_f32(-503f + _wgslsmith_f_op_f32(func_2(vec2<bool>(var_0.a, var_0.a))))));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 1>();
    var var_0 = min(66917i, 49306i);
    var var_1 = abs(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(5987u, global4.b, global4.b)), ~vec3<u32>(u_input.c, global4.b, 4373u))), (u_input.c & _wgslsmith_mod_u32(global4.b, 0u)) | min(1u, min(global4.b, u_input.a.x))));
    global1 = array<vec3<i32>, 2>();
    let var_2 = func_5(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4.c), 1f)), func_1(~select(global4.b, global4.b, global4.a)), vec2<i32>(u_input.d.x, _wgslsmith_div_i32(u_input.d.x, u_input.d.x) >> (~26194u % 32u)), vec2<bool>(global4.a == all(vec2<bool>(global4.a, global4.a)), global4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global4.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-584f - _wgslsmith_f_op_f32(func_2(vec2<bool>(global4.a, global4.a)))), 1268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f - global4.c)))), var_2);
}

