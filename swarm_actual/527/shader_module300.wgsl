struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, 4378i, 1i, true);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    global2 = Struct_1(reverseBits(_wgslsmith_div_i32(1i, -7429i)), -930i, 1i, true | !(!global0.d));
    global1 = Struct_1(-global1.a, global2.c >> (~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(94573u, 7860u, 0u), vec3<u32>(0u, 0u, 1u))) % 32u), u_input.b, false);
    var var_0 = -(~_wgslsmith_add_vec3_i32(vec3<i32>(-global2.c, -8049i, ~global2.b), vec3<i32>(0i, 1i, -u_input.b)));
    let var_1 = false;
    global2 = Struct_1(global2.b, firstLeadingBit(-1i), firstTrailingBit(select(global0.c | u_input.b, var_0.x, true) & 1i), var_1);
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> i32 {
    var var_0 = vec3<u32>(reverseBits(~reverseBits(54702u)), arg_0, 4294967295u);
    let var_1 = arg_1;
    var var_2 = -2019f;
    let var_3 = ~(~select(abs(var_0.x), arg_0 ^ _wgslsmith_mult_u32(arg_0, arg_0), true));
    let var_4 = var_1;
    return arg_1.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(global1.a, -13955i, global1.a & u_input.b, true);
    global1 = Struct_1(func_4(min(1u, 1u) << (~(~0u) % 32u), Struct_1(41659i, _wgslsmith_div_i32(min(-1i, global1.a), _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.xx)), _wgslsmith_sub_i32(min(-1i, 17870i), func_3()), true), arg_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-100f, arg_0, arg_0))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 646f, arg_0), vec3<f32>(1519f, arg_0, arg_0))))))), global1.c, ~(-(~(-2147483647i))), true);
    let var_0 = select(vec3<bool>(!(true && global1.d) & true, !any(select(vec3<bool>(false, true, global2.d), vec3<bool>(false, false, false), true)), false), select(select(!(!vec3<bool>(global0.d, true, true)), vec3<bool>(true, global0.d, true), select(vec3<bool>(true, true, global0.d), !vec3<bool>(global0.d, false, true), true)), vec3<bool>(select(global1.d, true, false) | !global1.d, global1.b < -global2.a, false), !vec3<bool>(any(vec4<bool>(true, global1.d, global0.d, global1.d)), global2.d, global1.d)), select(vec3<bool>(true | all(vec4<bool>(true, true, global2.d, global0.d)), !global1.d & true, any(!vec3<bool>(global2.d, true, false))), !(!(!vec3<bool>(global1.d, global0.d, true))), !(-47619i != _wgslsmith_mod_i32(global2.c, 15494i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, -1246f, 361f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0)))));
    global0 = Struct_1(1i, u_input.b, 2147483647i, all(!(!vec4<bool>(global0.d, true, global2.d, global0.d))));
    return Struct_1(global2.c, abs(_wgslsmith_div_i32(-51976i, -7460i ^ global2.c)), global2.b, var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = !(!vec4<bool>(global0.d, select(arg_0.a >= arg_1.a, -2147483647i <= arg_0.a, !arg_1.d), true, select(arg_1.d, false, true)));
    global2 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1499f + 610f), 1242f)))));
    global0 = func_2(1159f);
    var var_1 = arg_1;
    var_0 = select(vec4<bool>(true, false, true, global2.d), vec4<bool>(true, all(vec3<bool>(any(vec4<bool>(global1.d, false, arg_0.d, global2.d)), true, true)), any(!(!vec4<bool>(false, var_0.x, arg_0.d, arg_0.d))), true), true);
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = func_5(func_2(-1000f), Struct_1(_wgslsmith_div_i32(global2.b, _wgslsmith_clamp_i32(global1.c, global2.c, -2147483647i)) | ~_wgslsmith_mod_i32(global1.c, 8758i), -15500i, _wgslsmith_dot_vec4_i32(vec4<i32>(-49821i, 2147483647i, global1.a, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c, -2147483647i, u_input.b, global1.b), vec4<i32>(arg_3.c, arg_3.b, 30780i, 1i))) | (i32(-1i) * -u_input.b), global2.d), select(vec3<bool>(all(vec4<bool>(arg_1.d, arg_1.d, arg_3.d, true)) || arg_1.d, global1.d, _wgslsmith_f_op_f32(-arg_0) >= arg_0), vec3<bool>(arg_1.d, all(!vec3<bool>(true, true, global1.d)), true), !(_wgslsmith_f_op_f32(1000f - 1187f) <= _wgslsmith_f_op_f32(ceil(arg_0)))), arg_2.x);
    return func_5(Struct_1(min(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-43345i, -31801i, -5045i, 2147483647i), vec4<i32>(arg_3.c, 63160i, global1.a, 2147483647i)), select(vec4<i32>(arg_3.a, -74640i, 1i, -33066i), vec4<i32>(arg_1.a, 2147483647i, global1.a, 2147483647i), arg_3.d)), -32959i), countOneBits(_wgslsmith_sub_i32(func_5(Struct_1(global1.b, global2.b, arg_1.b, true), arg_3, vec3<bool>(arg_3.d, global2.d, arg_3.d), 57471u).c, arg_1.c)), u_input.a.x, true), Struct_1(arg_1.c, 4379i, _wgslsmith_dot_vec4_i32((vec4<i32>(arg_1.b, global1.a, 22688i, 3999i) << (vec4<u32>(4294967295u, 13475u, 1u, 4294967295u) % vec4<u32>(32u))) ^ (vec4<i32>(u_input.a.x, 1i, 928i, -21604i) ^ vec4<i32>(global2.c, -61638i, global2.c, u_input.b)), ~(~vec4<i32>(arg_1.a, arg_1.b, -3259i, -1i))), arg_1.d), !vec3<bool>(!(-1i >= arg_3.a), any(vec3<bool>(global2.d, arg_3.d, false)) != arg_3.d, false), ~(~17058u));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(u_input.b >> (countOneBits(4294967295u) % 32u), -1i, _wgslsmith_dot_vec2_i32(u_input.a.zx, countOneBits(~vec2<i32>(1i, u_input.a.x))), false);
    let var_0 = select(!(!vec3<bool>(arg_1.d, true, false)), select(select(!(!vec3<bool>(true, global1.d, false)), select(vec3<bool>(global2.d, true, global0.d), vec3<bool>(true, true, true), true), true), select(select(!vec3<bool>(global1.d, global0.d, true), !vec3<bool>(global2.d, arg_1.d, false), true), vec3<bool>(!global0.d, any(vec3<bool>(false, global0.d, true)), true), select(select(vec3<bool>(global0.d, false, false), vec3<bool>(arg_1.d, true, global0.d), true), !vec3<bool>(false, global2.d, global0.d), true)), func_2(736f).d), vec3<bool>(true, true, all(!select(vec3<bool>(false, true, global0.d), vec3<bool>(global2.d, arg_1.d, arg_0.d), vec3<bool>(global1.d, global0.d, arg_1.d)))));
    global2 = arg_1;
    var var_1 = -1105f;
    var var_2 = -1i;
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = false;
    let var_1 = select(!vec2<bool>(!var_0, var_0), select(vec2<bool>(_wgslsmith_f_op_f32(max(718f, -117f)) > _wgslsmith_f_op_f32(sign(-1339f)), select(!var_0, true, false)), select(select(!vec2<bool>(global2.d, false), vec2<bool>(var_0, global0.d), true), !vec2<bool>(global0.d, global1.d), vec2<bool>(false, global0.d)), true), all(select(vec3<bool>(global0.d, false, true), vec3<bool>(true, global1.a > -1i, global2.d), select(select(vec3<bool>(global1.d, var_0, false), vec3<bool>(global0.d, true, global0.d), true), !vec3<bool>(global2.d, false, global0.d), select(vec3<bool>(global2.d, false, true), vec3<bool>(var_0, false, false), arg_0.d)))));
    let var_2 = func_7(arg_0, func_6(-688f, func_5(func_2(_wgslsmith_div_f32(383f, -194f)), Struct_1(-global1.a, _wgslsmith_sub_i32(45581i, 1i), 0i, true), vec3<bool>(any(var_1), var_1.x, any(vec4<bool>(true, false, true, false))), 1u), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60891u, 1u), vec3<u32>(6208u, 0u, 4294967295u)), ~32076u, ~23636u, 1u)), arg_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-180f, -948f, false)), 1526f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global1.b, global2.b, global1.a, global1.d);
    var var_0 = ~vec2<i32>(-33821i, countOneBits(global1.c));
    global0 = Struct_1(-1i, reverseBits(global0.a), 0i, all(vec3<bool>(!func_1(Struct_1(1i, var_0.x, 1i, false)), any(select(vec4<bool>(false, global0.d, global1.d, global0.d), vec4<bool>(true, true, global2.d, global1.d), vec4<bool>(global2.d, global0.d, global2.d, false))), any(vec3<bool>(true, false, global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(2001u), 1u), firstTrailingBit(1u), ~(~0u), max(~1u, 1u)), 51200u);
}

