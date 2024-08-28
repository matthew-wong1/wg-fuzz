struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    global1 = vec2<f32>(global1.x, global1.x);
    var var_0 = vec3<i32>(0i, countOneBits(11601i & _wgslsmith_dot_vec2_i32(global0.b.xx, u_input.d)), _wgslsmith_mult_i32(1i, 0i));
    global2 = array<Struct_1, 15>();
    var_0 = ~(-((-vec3<i32>(0i, u_input.a, -1i) << (arg_0.yzy % vec3<u32>(32u))) ^ ~(-global0.b.wxz)));
    var var_1 = select(!vec4<bool>(global0.a || global0.a, any(!vec3<bool>(global0.a, true, true)), !(!global0.a), global0.a), !(!select(vec4<bool>(true, false, true, global0.a), select(vec4<bool>(global0.a, true, true, false), vec4<bool>(false, global0.a, global0.a, global0.a), global0.a), !vec4<bool>(true, true, global0.a, true))), global0.a);
    return abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_0, arg_0), 0u)) <= _wgslsmith_clamp_u32(arg_0.x, 67860u, ~global0.c);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    global2 = array<Struct_1, 15>();
    let var_0 = ~min(~4294967295u, min(~arg_1.c, ~(arg_0 >> (4294967295u % 32u))));
    let var_1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 64335u, arg_2.x), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, arg_0, arg_1.c), vec3<u32>(var_0, 1u, 0u)), vec3<u32>(1u, 56289u, 0u) ^ vec3<u32>(var_0, 0u, arg_1.c)) ^ vec3<u32>(~arg_0, 4294967295u, 1u));
    var var_2 = select(arg_3.zw, arg_3.zw, !select(select(!vec2<bool>(arg_3.x, false), vec2<bool>(true, arg_1.a), func_1(vec4<u32>(arg_1.c, 75854u, arg_2.x, 4294967295u))), vec2<bool>(true, true), !arg_3.x));
    var var_3 = abs(~vec3<u32>(global0.c, ~1u, arg_1.c)) | ~min(abs(vec3<u32>(arg_2.x, 11459u, global0.c)), vec3<u32>(var_1.x, arg_0, 1u) >> (_wgslsmith_mult_vec3_u32(var_1, vec3<u32>(22580u, global0.c, 0u)) % vec3<u32>(32u)));
    return vec2<u32>(~_wgslsmith_add_u32(~4294967295u, var_0), reverseBits(1u));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(global0.c, 1u);
    var var_1 = vec4<u32>(var_0, _wgslsmith_dot_vec2_u32(func_3(26083u, Struct_1(true, select(global0.b, vec4<i32>(u_input.b.x, 1i, global0.d, global0.d), vec4<bool>(global0.a, true, global0.a, true)), global0.c, 1i), ~vec2<u32>(global0.c, 12718u) << (~vec2<u32>(47594u, global0.c) % vec2<u32>(32u)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(global0.a, false, false, global0.a), true), !vec4<bool>(false, global0.a, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.a, false, false, true), global0.a))), ~vec2<u32>(~global0.c, global0.c)), ~var_0, 0u);
    var var_2 = var_1.x;
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1486f, 372f))) * vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(231f, -1414f) + vec2<f32>(846f, 1020f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-801f, 2181f), vec2<f32>(-695f, global1.x)))))));
    var var_3 = func_3(var_1.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, _wgslsmith_dot_vec2_u32(abs(countOneBits(var_1.zw)), vec2<u32>(1u, 4294967295u))), 15u)], func_3(28433u, Struct_1(~var_0 > 1u, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.e, 1130i, 43142i), global0.b), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(1u)), u_input.c.x | global0.d), vec2<u32>(countOneBits(firstLeadingBit(4294967295u)), countOneBits(global0.c) & global0.c), vec4<bool>(any(vec4<bool>(global0.a, true, global0.a, global0.a)), -global0.b.x == 2147483647i, !global0.a || global0.a, _wgslsmith_div_f32(2004f, 788f) >= _wgslsmith_f_op_f32(exp2(global1.x)))), vec4<bool>(true, true, true, true)).x;
    return vec2<bool>(global0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1024f)) + -1273f))));
    var var_0 = select(!vec2<bool>(true, func_1(~vec4<u32>(global0.c, 10647u, global0.c, 8501u))), func_2(), func_1(~(~(~vec4<u32>(21970u, 0u, global0.c, global0.c)))));
    let var_1 = global2[_wgslsmith_index_u32(6299u, 15u)];
    var var_2 = _wgslsmith_mod_i32(~(~(i32(-1i) * -52222i)), select(u_input.d.x, min(_wgslsmith_add_i32(abs(17213i), -2147483647i ^ global0.d), i32(-1i) * -var_1.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(8091u, var_1.c, 4294967295u), vec3<u32>(1742u, var_1.c, global0.c)) == (~var_1.c | 0u)));
    var_0 = vec2<bool>(var_1.a, any(vec4<bool>(var_0.x, false, all(vec4<bool>(var_0.x, var_0.x, true, true)), all(vec4<bool>(false, true, false, false)) || (11494i != var_1.d))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-210f, 320f, -2323f, 1000f), vec4<f32>(-941f, global1.x, global1.x, -422f)) * vec4<f32>(1076f, -341f, global1.x, 2210f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1975f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-290f, -1146f, global1.x, 251f))))))))));
    var var_4 = min(firstLeadingBit(global0.c), 44904u) << (0u % 32u);
    var_0 = select(select(vec2<bool>(true != (var_0.x == false), !any(vec3<bool>(false, true, false))), func_2(), select(vec2<bool>(true, true), !vec2<bool>(global0.a, global0.a), false)), select(vec2<bool>(all(select(vec2<bool>(var_1.a, global0.a), vec2<bool>(var_0.x, var_1.a), var_1.a)), false), vec2<bool>(true, true), vec2<bool>(global0.a && true, var_0.x)), vec2<bool>(true, true));
    var var_5 = _wgslsmith_dot_vec4_i32(max(min(-(~global0.b), u_input.c), countOneBits(-var_1.b)), _wgslsmith_add_vec4_i32(select(firstLeadingBit(max(global0.b, global0.b)), firstLeadingBit(reverseBits(global0.b)), select(!vec4<bool>(var_0.x, false, global0.a, var_1.a), !vec4<bool>(var_1.a, var_1.a, var_0.x, var_0.x), func_2().x)), ((vec4<i32>(global0.d, u_input.d.x, u_input.a, -1i) | vec4<i32>(9362i, 23573i, global0.b.x, 2370i)) | min(vec4<i32>(36006i, global0.b.x, var_1.d, u_input.b.x), vec4<i32>(global0.b.x, u_input.c.x, u_input.e, -2147483647i))) | _wgslsmith_div_vec4_i32(global0.b, vec4<i32>(-1i, -43402i, global0.b.x, -17435i))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(min(var_1.c, var_1.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 18677u), vec2<u32>(global0.c, 4294967295u)), var_1.c & global0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, global0.c, global0.c), vec3<u32>(var_1.c, var_1.c, 12104u))) << (~(~(vec4<u32>(var_1.c, 11506u, var_1.c, var_1.c) | vec4<u32>(var_1.c, 62738u, var_1.c, global0.c))) % vec4<u32>(32u)), u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(20897u), ~var_1.c, ~3776u), ~vec3<u32>(87617u >> (var_1.c % 32u), ~45627u, max(4294967295u, 1u))));
}

