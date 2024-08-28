struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(41970u, min(~arg_1.x, 65996u)), arg_1.x, abs(_wgslsmith_mult_u32(57414u, 0u)), 0u) | ~max(vec4<u32>(arg_1.x, 0u, arg_0, 16427u) >> (min(vec4<u32>(u_input.b, 0u, 11554u, arg_1.x), vec4<u32>(1u, arg_0, 4209u, arg_0)) % vec4<u32>(32u)), ~(~vec4<u32>(1u, arg_1.x, arg_1.x, 19890u)));
    var var_3 = arg_3.a;
    return ~_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -arg_3.d.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.a, -2147483647i), ~1i)), var_0.a);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_1((min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1883i, -1459i, 89653i, 8504i), vec4<i32>(1i, -30800i, 2147483647i, 5893i))) & _wgslsmith_sub_i32(i32(-1i) * -1i, countOneBits(2147483647i))) << (_wgslsmith_add_u32(1u ^ u_input.b, abs(38833u)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))))), _wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, -717f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1106f, arg_0, arg_0) - vec4<f32>(-735f, 459f, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, 1235f, arg_0, 209f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -766f, 2170f, arg_0))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -1228f) + vec4<f32>(443f, arg_0, 178f, 1751f)))), any(arg_1) & false)))), (vec2<i32>(~1i, _wgslsmith_sub_i32(-734i, -16877i)) ^ min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 26810i), vec2<i32>(85923i, -2147483647i), vec2<i32>(-7189i, 2147483647i)), firstTrailingBit(vec2<i32>(-2147483647i, 18145i)))) >> (_wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(1u, 0u)), ~vec2<u32>(59601u, 3488u) << (~vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, arg_0) + 102f)), var_1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), -1312f)));
    var_0 = -2710f;
    global0 = arg_1.yzw;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1000f)), var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(-var_2.x), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
}

fn func_1() -> vec4<bool> {
    global0 = select(vec3<bool>(!any(!vec4<bool>(true, true, global0.x, true)), -reverseBits(-11071i) < -func_2(50720u, vec3<u32>(4294967295u, u_input.c, u_input.b), vec4<f32>(-1000f, -443f, -902f, 1192f), Struct_1(-27460i, vec2<f32>(181f, -888f), vec4<f32>(1126f, 853f, 290f, -465f), vec2<i32>(0i, 0i))), any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, false), any(vec4<bool>(false, global0.x, true, global0.x))))), !(!vec3<bool>(!global0.x, global0.x, true)), select(!select(vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true)), global0.x), select(select(vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, false, global0.x), global0.x), select(!vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x && global0.x), true && (true & global0.x)), vec3<bool>(global0.x, any(vec3<bool>(false, true, global0.x)), all(vec2<bool>(true, true)))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-823f + 533f)), vec4<bool>(true, true, global0.x, !global0.x), select(!global0.yx, !vec2<bool>(global0.x, true), false)))));
    let var_1 = Struct_1(~2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(341f - var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0)) + var_0), var_0))), vec4<f32>(-814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -288f)), ~vec2<i32>(~(2147483647i << (u_input.a % 32u)), 1i));
    global0 = !select(vec3<bool>(true, global0.x, true), !select(vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, false), !vec3<bool>(false, true, global0.x)), true);
    let var_2 = var_1;
    return select(vec4<bool>(false, false, any(vec3<bool>(all(vec4<bool>(true, global0.x, global0.x, global0.x)), true && global0.x, var_0.x >= 326f)), all(vec3<bool>(global0.x, global0.x, true)) & !all(vec3<bool>(global0.x, true, false))), vec4<bool>(!global0.x, select(true, global0.x, true), !(var_1.b.x >= var_2.c.x), 1505f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) + var_0.x)), select(select(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(false, true, global0.x, global0.x)), vec4<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, any(global0.xy), all(vec2<bool>(false, false))), global0.x != all(vec3<bool>(false, true, global0.x))), vec4<bool>(false, false, true, all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), false))), all(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x), vec4<bool>(false, true, true, false), vec4<bool>(global0.x, global0.x, global0.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(func_1(), select(!vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(false, global0.x, false, global0.x), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, true))), any(func_1().xyy)), vec4<bool>(false, true, global0.x, func_1().x), false), !vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, global0.x), vec2<bool>(false, true))), ~1u >= u_input.a, true), select(!vec4<bool>(global0.x && true, true, !global0.x, all(vec3<bool>(true, false, global0.x))), select(vec4<bool>(true, false, any(vec3<bool>(true, true, global0.x)), false), func_1(), any(vec3<bool>(false, true, global0.x)) & !global0.x), !vec4<bool>(global0.x, false, true, global0.x & global0.x)));
    var var_1 = Struct_1(_wgslsmith_div_i32(-2147483647i, -49049i), vec2<f32>(-103f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)), vec4<bool>(u_input.a > 0u, true, true, true), var_0.xx))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1805f, -329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2275f - -286f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~vec2<i32>(-_wgslsmith_add_i32(34805i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -2147483647i), ~vec3<i32>(-45361i, 2147483647i, 16492i))));
    let var_2 = Struct_1(2147483647i >> (_wgslsmith_sub_u32(~(u_input.c & u_input.c), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4036u, 4294967295u)), vec2<u32>(15008u, u_input.a))) % 32u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, 826f) * var_1.c.xw) + _wgslsmith_f_op_vec2_f32(round(var_1.b)))), _wgslsmith_f_op_vec2_f32(var_1.c.wx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1350f, 1000f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -188f, var_1.b.x, -1372f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-401f, 1000f, -1000f, var_1.b.x))))))), ~vec2<i32>(5684i, 2147483647i));
    var_0 = !func_1();
    var_0 = select(func_1(), !vec4<bool>(var_1.c.x <= _wgslsmith_f_op_f32(step(274f, var_2.c.x)), true | (777f <= var_1.b.x), true, func_1().x), select(func_1(), !select(!vec4<bool>(var_0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, false, true)), !vec4<bool>(all(var_0.wwz), global0.x, false == global0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, var_2.a, 2147483647i, 1i), vec4<i32>(var_1.a, -1i, var_1.a, var_2.d.x)), var_2.d.x), firstLeadingBit(_wgslsmith_mult_vec2_i32(-var_2.d, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a, var_2.d.x), var_2.d))), !var_0.wy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f - -168f)));
}

