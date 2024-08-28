struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-1i, 33393i, 9644i), vec3<i32>(628i, -17788i, 0i), vec3<i32>(2147483647i, -24280i, -744i), vec3<i32>(2147483647i, -1i, -16599i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> bool {
    global0 = Struct_1(~_wgslsmith_mult_u32(global0.a, select(u_input.a.x, u_input.a.x, arg_3.x)) ^ ~global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1)))), arg_1);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, global0.c, global0.b)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 303f, _wgslsmith_f_op_f32(348f * -3179f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1058f, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, 335f, arg_1))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, -784f, arg_1) - vec3<f32>(global0.c, global0.c, global0.b)))))), select(!vec3<bool>(arg_3.x, false, true), !arg_3.zxx, select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(true, false, true), any(arg_3))))));
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))));
    global1 = array<vec3<i32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1121f)), var_0.x)));
    return all(!arg_3.wyz);
}

fn func_2() -> vec4<u32> {
    global0 = Struct_1(~u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(-global0.c)), global0.b);
    var var_0 = -1865f;
    let var_1 = ~_wgslsmith_mod_i32(reverseBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(~19016i, _wgslsmith_mod_i32(26206i, -2147483647i)), max(select(vec2<i32>(-33889i, 28438i), vec2<i32>(-24029i, -48031i), true), -vec2<i32>(-2147483647i, 1i))));
    var var_2 = !func_3(-_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-6399i, var_1)), -vec2<i32>(var_1, 17539i)), _wgslsmith_f_op_f32(951f - -3034f), _wgslsmith_sub_i32(var_1, -1i) & -_wgslsmith_div_i32(var_1, -1i), vec4<bool>(true, true, true, true));
    let var_3 = Struct_1(~global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.c)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-504f, global0.b), _wgslsmith_f_op_f32(-746f + global0.b)))))), global0.b);
    return select(firstTrailingBit(max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, 4294967295u, var_3.a, u_input.a.x), vec4<u32>(u_input.a.x, var_3.a, u_input.a.x, 1u)), vec4<u32>(var_3.a, 1u, 4294967295u, var_3.a)), ~vec4<u32>(4294967295u, 1313u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(4294967295u, u_input.a.x, 9623u, 0u) % vec4<u32>(32u)))), vec4<u32>(u_input.a.x, u_input.a.x, 21489u, ~1u), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, max(-19478i, var_1) < abs(var_1)), vec4<bool>(true, true, true, true), false));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global1 = array<vec3<i32>, 5>();
    global0 = arg_3;
    global1 = array<vec3<i32>, 5>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~func_2(), vec4<u32>(_wgslsmith_sub_u32(~18662u, u_input.a.x), 64279u, 4294967295u, 1u)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = firstTrailingBit(u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1138f, 1169f)) - var_0.b)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(~9595u, arg_1.x, -1000f);
    let var_1 = Struct_1(_wgslsmith_sub_u32(~u_input.a.x, global0.a), -1000f, -1119f);
    var var_2 = var_0;
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_mod_i32(reverseBits(-68022i), countOneBits(-20163i)), 0i), -firstTrailingBit(~(~vec2<i32>(-29602i, 2147483647i))));
    var var_4 = Struct_1(~1u, _wgslsmith_f_op_f32(exp2(global0.c)), 257f);
    return Struct_1(var_2.a, _wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) - _wgslsmith_f_op_f32(select(-1368f, var_4.b, false))))), _wgslsmith_f_op_f32(-var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x, -210f, _wgslsmith_f_op_f32(max(-1038f, _wgslsmith_f_op_f32(f32(-1f) * -190f))));
    var var_1 = func_4(vec2<f32>(644f, _wgslsmith_f_op_f32(f32(-1f) * -1553f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - _wgslsmith_f_op_f32(961f * 680f)) + -1798f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, -405f, var_0.c), -43514i, false, Struct_1(31628u, global0.c, 803f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1318f + -423f) * _wgslsmith_f_op_f32(trunc(global0.b))))));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f * -1381f)), var_0.b), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -184f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-631f, 229f, -1000f))) + vec3<f32>(104f, var_1.c, var_2.b))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(781f, var_2.b, -433f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec4<bool>(true, true, true, true))));
}

