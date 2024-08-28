struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-732f, -515f), vec2<f32>(1062f, global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, -544f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-218f - global0.x)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-872f, global0.x), global0.x), -1080f)));
    var var_1 = vec2<bool>(true, true);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = Struct_1(true, 789f);
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -15711i, _wgslsmith_mult_i32(-21326i, select(9080i, 31258i, var_2.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0.x))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec3<i32>(-1i, 32607i, 35893i);
    var var_2 = !vec2<bool>((_wgslsmith_mult_i32(0i, 9391i) <= ~var_1.x) && (~u_input.a >= _wgslsmith_div_u32(4294967295u, 1u)), false);
    var var_3 = Struct_1(!var_2.x == true, _wgslsmith_f_op_f32(abs(arg_1)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, arg_1) - vec2<f32>(623f, arg_1))), vec2<f32>(-565f, _wgslsmith_f_op_f32(func_3())), !(!vec2<bool>(var_2.x, var_3.a)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(545f, var_3.b) * vec2<f32>(var_3.b, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, -809f))))));
    return Struct_1(true, _wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(arg_1 * 618f)));
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * _wgslsmith_f_op_f32(-270f * arg_0.b))), _wgslsmith_f_op_f32(arg_0.b * arg_0.b)));
    var var_0 = func_2(firstLeadingBit(8153u), _wgslsmith_f_op_f32(1301f - global0.x));
    let var_1 = select(vec2<bool>(u_input.c >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(u_input.c, 32818u), ~vec2<u32>(u_input.b, u_input.c)), var_0.a), vec2<bool>(arg_0.a, false), var_0.a);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(52342u & u_input.c, firstTrailingBit(u_input.a ^ 27868u)), _wgslsmith_sub_vec2_u32(~countOneBits(~vec2<u32>(u_input.b, 90429u)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(111862u, u_input.b), vec2<u32>(u_input.c, 62898u)), vec2<u32>(0u, 1u)), ~(~vec2<u32>(0u, 4294967295u)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = func_4(func_2(1u, _wgslsmith_f_op_f32(abs(967f))));
    let var_1 = _wgslsmith_f_op_f32(796f - -1460f);
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, 0u), abs(vec3<u32>(36425u, var_0.x, 0u) | abs(vec3<u32>(u_input.a, 65117u, u_input.c)))), 0u);
    var var_2 = _wgslsmith_mult_u32(~(~(~1u)), 0u) > var_0.x;
    var_2 = true;
    return Struct_1((~countOneBits(u_input.c) ^ ~(~u_input.c)) != reverseBits(abs(~1774u)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1574f)) * _wgslsmith_f_op_f32(step(var_1, -505f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(2147483647i, -22213i), true, -404i);
    global0 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1293f, _wgslsmith_div_f32(global0.x, 1420f))) - _wgslsmith_div_f32(-1000f, -1101f)))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(495f, global0.x))))));
    var var_2 = func_2(37688u, 390f);
    var_2 = func_1(vec2<i32>(1i, 1i), true, abs(-1i));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, -678f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1006f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, var_2.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(961f, var_2.b) + vec2<f32>(var_0.b, 1378f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1004f) - vec2<f32>(-633f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 862f) + _wgslsmith_f_op_f32(select(var_0.b, 439f, false)))))), _wgslsmith_f_op_f32(floor(var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-183f * 111f)))))), vec4<i32>(1i, 1i, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2942i, -2147483647i) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u)), -vec2<i32>(-3136i, -20042i)), select(vec2<i32>(1i, 6400i), ~vec2<i32>(-2147483647i, 37319i), !var_0.a))), countOneBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(-3323i, 37707i, 1i), vec3<i32>(41282i, -1i, -23407i))) & max(select(vec3<i32>(0i, 1i, -1i), vec3<i32>(4767i, 0i, -17650i), true) >> (vec3<u32>(31883u, 0u, 1u) % vec3<u32>(32u)), ~min(vec3<i32>(-14507i, 2147483647i, -1213i), vec3<i32>(-22908i, 17634i, -9281i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(553f, global0.x, var_1.b, 854f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1330f, var_2.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, var_1.b, var_0.b, -261f), vec4<f32>(var_1.b, -1179f, -2052f, -1664f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, var_2.b, 110f, var_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_2.b, -1427f, var_1.b) * vec4<f32>(869f, var_1.b, var_0.b, var_0.b)))))));
}

