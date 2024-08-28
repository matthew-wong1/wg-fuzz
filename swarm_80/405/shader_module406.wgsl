struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, false, true, false, true, false, true, false, true, false, true, false, true, false, false);

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false));

var<private> global3: vec3<i32> = vec3<i32>(-48763i, 14397i, 15943i);

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> f32 {
    return 1314f;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b, ~(-2147483647i & global4.x), max(_wgslsmith_add_i32(-1i, arg_1.b), ~(-26162i))), vec3<i32>(global3.x, -(arg_1.b | 35652i), -abs(-14850i))) << (~(~(reverseBits(vec3<u32>(1u, arg_1.a, arg_2.a)) & ~vec3<u32>(u_input.c, arg_1.a, u_input.c))) % vec3<u32>(32u));
    let var_0 = arg_2;
    var var_1 = false;
    let var_2 = select(select(vec2<bool>(arg_3.c, !(!arg_1.c)), select(vec2<bool>(false, true), vec2<bool>(false, any(vec3<bool>(true, arg_1.c, false))), var_0.c), any(vec3<bool>(!global0[_wgslsmith_index_u32(var_0.a, 16u)], true, !arg_0))), vec2<bool>(true, arg_2.c), select(vec2<bool>(true, !(!arg_0)), select(vec2<bool>(arg_2.c, true), select(vec2<bool>(true, arg_1.c), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a, 16u)]), vec2<bool>(false, false)), vec2<bool>(all(vec3<bool>(false, arg_0, arg_3.c)), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c, arg_3.c), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 16u)], arg_3.c), true), !vec2<bool>(arg_3.c, true)), !(!vec2<bool>(true, arg_1.c)), select(!vec2<bool>(arg_0, true), select(vec2<bool>(arg_1.c, true), vec2<bool>(arg_3.c, arg_2.c), true), true))));
    var var_3 = firstLeadingBit(vec4<i32>(var_0.b, _wgslsmith_add_i32(-41075i, 38072i) & _wgslsmith_sub_i32(global3.x, -1i), _wgslsmith_sub_i32(arg_2.b ^ arg_1.b, select(0i, global4.x, arg_0)), arg_3.b & firstLeadingBit(-55444i)) & vec4<i32>(~(arg_2.b ^ u_input.e), global4.x, i32(-1i) * -1i, 0i));
    return ~1u;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(u_input.c, ~1u);
    let var_1 = Struct_1(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 35397u, 0u) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, arg_2.a), vec3<u32>(1u, 4294967295u, u_input.c)), ~(~vec3<u32>(22991u, arg_2.a, u_input.c)))), ~(~(~0i)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 1u, 57600u, var_0.x), vec4<u32>(59165u, u_input.c, 1u, u_input.c))) == ~var_0.x);
    var var_2 = global0[_wgslsmith_index_u32(func_3(false, var_1, arg_2, var_1), 16u)];
    var var_3 = select(~global3.zz, firstLeadingBit(_wgslsmith_mod_vec2_i32(max(~vec2<i32>(0i, global4.x), vec2<i32>(u_input.a, 41082i)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(27556i, global3.x), vec2<i32>(global4.x, -1i), true), vec2<i32>(-1i, global4.x) ^ vec2<i32>(-45630i, 2147483647i)))), select(!(!vec2<bool>(var_1.c, global0[_wgslsmith_index_u32(u_input.c, 16u)])), select(!(!vec2<bool>(true, var_1.c)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(abs(19623u), 16u)]), false));
    let var_4 = arg_2;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 10>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(any(!vec2<bool>(global0[_wgslsmith_index_u32(33214u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)])), _wgslsmith_f_op_f32(-1f), _wgslsmith_add_u32(~4294967295u, 34047u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, -141f, -1540f, 233f)), vec4<f32>(-863f, 256f, -596f, 715f))))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34992u, 0u, 0u) | vec3<u32>(23862u, 4294967295u, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, 43150u), vec3<u32>(u_input.c, u_input.c, u_input.c))), abs(u_input.c) >> (u_input.c % 32u)), abs(24480i), false));
    let var_1 = vec3<u32>(23135u, 0u, _wgslsmith_dot_vec3_u32(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(40466u, var_0.a, u_input.c), vec3<u32>(u_input.c, var_0.a, 1u))), vec3<u32>(10063u, 0u, ~(4294967295u << (var_0.a % 32u)))));
    global0 = array<bool, 16>();
    var var_2 = func_2(_wgslsmith_f_op_f32(step(-348f, 671f)), vec4<f32>(_wgslsmith_f_op_f32(635f + -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(step(-340f, -134f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-272f * _wgslsmith_f_op_f32(func_1(var_0.c, -594f, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-638f * -151f)))), Struct_1(~25632u, global4.x, global4.x == -26689i));
    var var_3 = func_2(_wgslsmith_f_op_f32(-136f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-603f)))))), vec4<f32>(-573f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f + -425f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1354f, -944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)))), 1000f), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(842f)), _wgslsmith_f_op_f32(-103f + -573f))) - _wgslsmith_f_op_f32(select(-368f, _wgslsmith_f_op_f32(786f * 198f), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1294f, 1000f, -380f, 1246f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-943f, 559f, -595f, 1294f)))), func_2(1000f, vec4<f32>(-771f, -369f, _wgslsmith_f_op_f32(179f * 1003f), _wgslsmith_f_op_f32(f32(-1f) * -1603f)), func_2(_wgslsmith_f_op_f32(1793f * 1061f), vec4<f32>(861f, 750f, -573f, -281f), Struct_1(0u, -12259i, false)))));
    let var_4 = global3.yy;
    let var_5 = Struct_1(~var_0.a, var_2.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f - _wgslsmith_f_op_f32(floor(543f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(abs(-1924f)), -1049f, 1f)), Struct_1(var_0.a, _wgslsmith_sub_i32(firstLeadingBit(var_2.b), var_2.b), !(var_0.a != 1u))).c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) - _wgslsmith_f_op_f32(abs(134f))))));
}

