struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.a.yx + vec2<f32>(1025f, _wgslsmith_f_op_f32(f32(-1f) * -342f)));
    let var_1 = !vec4<bool>(true, !all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(floor(arg_3.a.x)) <= arg_3.a.x, true);
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-147f + 891f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_2.a.x) * 1189f)))), arg_3.a.x);
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 8964i, 0i, -2147483647i), vec4<i32>(-32127i, -56305i, 41819i, -24760i)), vec4<i32>(2147483647i, 2147483647i, -9459i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -33022i, u_input.a, u_input.a), vec4<i32>(u_input.a, 30393i, -11530i, u_input.a), vec4<i32>(20168i, u_input.a, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_add_i32(-17420i, u_input.a), -2147483647i, 1i, u_input.a) & vec4<i32>(-1371i, 1i, u_input.a, u_input.a)), vec4<i32>((_wgslsmith_add_i32(u_input.a, 8697i) ^ 2147483647i) ^ 31673i, -1i, max(-23651i, u_input.a), 0i));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.a.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_1.a.x))));
    return _wgslsmith_f_op_vec3_f32(arg_3.a - _wgslsmith_f_op_vec3_f32(trunc(arg_3.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, 359f, -243f)))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, -1587f, 1199f))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-197f, -805f, 239f)))), Struct_1(vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1558f, 1000f, 276f) + vec3<f32>(741f, -1498f, 938f)))))));
    let var_1 = any(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), true));
    var var_2 = u_input.a;
    let var_3 = Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_0.a), Struct_1(vec3<f32>(1666f, 493f, var_0.a.x)), Struct_1(var_0.a), var_0)).x - _wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1582f - -2318f) - _wgslsmith_f_op_f32(step(-288f, _wgslsmith_f_op_f32(-1743f * var_0.a.x))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(var_3.a.xy));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(arg_2.a.x, -176f))))) + vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - 683f), arg_2.a.x)));
    var_0 = func_2();
    var_0 = var_1;
    return 1716f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_add_vec2_u32(~max(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1u)), vec2<u32>(u_input.b, 83776u)), ~vec2<u32>(u_input.b, u_input.b)));
    let var_1 = select(!vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(func_1(435f, true, Struct_1(vec3<f32>(-690f, -1000f, -800f)))) > _wgslsmith_f_op_f32(trunc(-1296f))), select(select(vec2<bool>(true, select(false, true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), 2147483647i != u_input.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1007f + -560f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-298f, 851f)) * 1f));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), -(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a))) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -3591i, -57221i, -24930i), vec4<i32>(u_input.a, 1535i, u_input.a, -2147483647i)), countOneBits(u_input.a))));
    let var_4 = func_2();
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) + _wgslsmith_div_f32(var_4.a.x, 125f)))))), -1000f, -vec3<i32>(u_input.a, 2147483647i, ~(-var_5)), -434f, ~(vec2<u32>(1u, ~11493u) << ((min(vec2<u32>(29310u, u_input.b), vec2<u32>(u_input.b, var_0.x)) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(25874u, 4294967295u))) % vec2<u32>(32u))));
}

