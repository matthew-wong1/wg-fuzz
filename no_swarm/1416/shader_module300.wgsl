struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(204f, -1571f, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a + -1301f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), global0.a))), -2107f, all(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), !vec2<bool>(true, arg_1))));
    return select(select(!select(select(vec4<bool>(arg_1, arg_1, global0.c, global0.c), vec4<bool>(false, true, global0.c, arg_1), arg_1), vec4<bool>(arg_1, arg_1, false, false), false), select(select(!vec4<bool>(global0.c, true, global0.c, false), select(vec4<bool>(false, false, true, true), vec4<bool>(global0.c, arg_1, true, false), arg_1), false), !vec4<bool>(true, false, global0.c, false), select(!vec4<bool>(true, true, false, global0.c), select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, global0.c, false, false), vec4<bool>(arg_1, arg_1, global0.c, global0.c)), !vec4<bool>(global0.c, global0.c, true, true))), false && (_wgslsmith_f_op_f32(step(global0.a, global0.b)) <= -811f)), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 967f), global0.a) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) * -371f), select(false, any(vec3<bool>(arg_1, false, global0.c)), true) | select(global0.c, true, arg_1), any(!vec4<bool>(false, global0.c, true, false)), global0.c), !(!(!(!vec4<bool>(arg_1, true, global0.c, arg_1)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global0 = Struct_1(-1322f, -849f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u)) <= _wgslsmith_sub_u32(~max(24888u, 36915u), ~(~1u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) * _wgslsmith_f_op_f32(trunc(-1143f))) * -735f), global0.b, global0.c);
    global0 = Struct_1(373f, _wgslsmith_f_op_f32(f32(-1f) * -736f), all(!select(vec4<bool>(global0.c, arg_1, false, arg_1), func_3(4294967295u, global0.c), vec4<bool>(arg_1, false, arg_1, arg_1))));
    let var_0 = all(!(!vec2<bool>(arg_1, true != arg_1)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(-981f, global0.b)), _wgslsmith_f_op_f32(trunc(545f)), all(!(!select(vec4<bool>(var_0, var_0, arg_1, var_0), vec4<bool>(arg_1, false, global0.c, true), arg_1))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(var_1.b)), global0.b, var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = func_2(-select(firstLeadingBit(vec2<i32>(u_input.a, 0i) & vec2<i32>(-19356i, 0i)), -min(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, 1i)), (-44668i ^ u_input.a) >= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -4052i))), all(vec3<bool>(arg_2.c, true, false)) || false);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(select(-1238f, _wgslsmith_div_f32(arg_0.a, 1917f), true)), any(vec3<bool>(false, true, true)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.a))));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2273f, -554f))))), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 36338i), vec2<i32>(0i, u_input.a)), select(global0.c, false, global0.c) && global0.c), Struct_1(-1997f, global0.b, !func_2(vec2<i32>(u_input.a, u_input.a), global0.c).c), func_2(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-9221i, u_input.a)), -vec2<i32>(u_input.a, 1i)), (u_input.a & u_input.a) == _wgslsmith_mod_i32(u_input.a, u_input.a)))), global0.a, -1522f);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33611u, 21710u, 0u), vec4<u32>(0u, 2411u, 49228u, 4294967295u)), _wgslsmith_div_u32(10825u << (0u % 32u), ~1u), ~1u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(12924u, 27088u, 1u, 36096u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(~4294967295u, min(4294967295u, 3364u))), 20231u));
    global0 = func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(~u_input.a), _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(9431i, u_input.a))), min(-max(vec2<i32>(-41507i, 0i), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.a, ~u_input.a)), select(-select(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a), false), vec2<i32>(u_input.a & 1i, ~u_input.a), func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, var_1), vec4<u32>(0u, var_1, var_1, var_1)), global0.c).yx)), global0.c);
    global0 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0.c)), _wgslsmith_f_op_f32(global0.b * var_0.x)), _wgslsmith_f_op_f32(round(1744f))))), true);
    global0 = func_2(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(u_input.a, 52041i)), select(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(25018i, u_input.a), -vec2<i32>(u_input.a, -29645i), vec2<bool>(false, global0.c)) << (_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(0u, var_1)), vec2<u32>(var_1, var_1) >> (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), true);
    return vec4<i32>(~1i, 2571i, -9458i, u_input.a);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(~1u);
    var var_1 = arg_3;
    var_0 = 18840u;
    var_0 = 37827u;
    var var_2 = func_2(abs(abs(firstLeadingBit(vec2<i32>(-2147483647i, 1i)))), arg_0);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(true, _wgslsmith_sub_vec4_i32(func_1(), -_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 0i, -45608i, -5467i)), min(vec4<i32>(u_input.a, -1i, 21199i, 29442i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))), -(reverseBits(-vec3<i32>(-54917i, -15271i, u_input.a)) | (~vec3<i32>(17799i, 0i, u_input.a) >> (~vec3<u32>(0u, 1u, 100503u) % vec3<u32>(32u)))), func_2(~_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, u_input.a), vec2<i32>(1i, 1i)), true));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -347f)), !func_2(~reverseBits(vec2<i32>(u_input.a, u_input.a)), global0.c).c);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, -8673i)), true).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, global0.b, true))), global0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), -1000f)), _wgslsmith_f_op_f32(global0.b * global0.a), (global0.b > -810f) && func_3(1u, 0i <= countOneBits(u_input.a)).x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, vec3<f32>(-727f, 814f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.b))))));
}

