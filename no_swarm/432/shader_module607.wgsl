struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(17335i, u_input.b.x) & _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, global0.a, u_input.b.x)), vec3<i32>(u_input.b.x, 16284i, global0.a) & vec3<i32>(u_input.b.x, global0.a, 0i)), -39508i));
    var_0 = Struct_1(_wgslsmith_sub_i32(countOneBits(select(u_input.b.x, var_0.a, arg_0)) ^ 39735i, u_input.b.x));
    let var_1 = select(select(select(vec4<bool>(arg_0 || true, false, true, true), select(!vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, true, true)), !select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, arg_0, false), arg_0)), select(vec4<bool>(select(false, arg_0, arg_0), arg_0, all(vec4<bool>(arg_0, false, arg_0, true)), true), vec4<bool>(true, false, arg_0, all(vec2<bool>(false, arg_0))), any(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, false), true))), arg_0), vec4<bool>(_wgslsmith_mod_u32(u_input.d, u_input.d) < firstLeadingBit(u_input.c.x), select(arg_0, true, any(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))) > 2483f, countOneBits(global0.a) <= abs(~0i)), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(963f, 271f) - -701f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1684f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(sign(-988f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1082f, 1683f)) * -783f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2362f), _wgslsmith_f_op_f32(f32(-1f) * -630f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(688f, 610f) + vec2<f32>(760f, 249f)))))), var_1.x | arg_0));
    var_0 = Struct_1(var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - 620f);
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(-1i);
    var var_2 = ~_wgslsmith_clamp_i32(~(-(u_input.b.x | 13533i)), global0.a, 2147483647i);
    var var_3 = !(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) & false);
    let var_4 = Struct_2(~0u, _wgslsmith_f_op_f32(func_3(true)), Struct_1(countOneBits(u_input.b.x) >> (1u % 32u)), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.a, global0.a) & vec3<i32>(20239i, var_1.a, 25062i), firstLeadingBit(vec3<i32>(global0.a, -18746i, 2147483647i)))), ~(~vec3<i32>(-50266i, 1i, global0.a)) | ~(-vec3<i32>(global0.a, global0.a, 2147483647i))), Struct_1(min(~u_input.b.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, global0.a, 1i, var_1.a)), vec4<i32>(u_input.b.x, var_1.a, 1981i, -1i)))));
    return select(vec3<bool>(true, true, false), !(!vec3<bool>(true, any(vec3<bool>(false, false, false)), true)), any(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true)), true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    global0 = Struct_1(436i);
    return -1000f;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = arg_0.e;
    var var_0 = arg_0;
    global0 = Struct_1(global0.a);
    return var_0.e;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = func_5(Struct_2(arg_1, _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(1989f + arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(558f + arg_3.x)), _wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(min(-1180f, -394f))), select(func_2(), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), arg_1 >= 0u))), arg_2, vec3<i32>(25011i, firstLeadingBit(global0.a), min(-12940i, arg_2.a)) & select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a, -78793i, 18042i), vec3<i32>(arg_0, 0i, -2147483647i)), vec3<i32>(global0.a, 1i, 21147i) ^ vec3<i32>(global0.a, global0.a, 0i), false), arg_2), -12150i, vec3<bool>(select(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), true, _wgslsmith_div_f32(-378f, arg_3.x) <= _wgslsmith_div_f32(arg_3.x, -1609f)), true, select(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.x, 623f, 640f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, -951f, 181f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-391f * var_1.x))) * _wgslsmith_f_op_f32(-199f + -103f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_div_f32(2042f, arg_3.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(-387f - -313f)), 2180f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-968f, 2062f, -1031f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1854f, 508f, var_1.x), vec3<f32>(var_1.x, arg_3.x, -1000f)))))))));
    global0 = Struct_1(_wgslsmith_mod_i32(-2147483647i, ~var_0.a));
    var_0 = arg_2;
    return reverseBits(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b.x, 2147483647i, -var_0.a), ~vec3<i32>(1i, arg_0, 1i), true), vec3<i32>(1i, global0.a, _wgslsmith_div_i32(var_0.a, -3989i)) << ((u_input.a.wxw >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, u_input.c.x, arg_1), u_input.a.zxw, vec3<u32>(arg_1, u_input.c.x, 135542u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.b.x);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f), -137f)))));
    let var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-1067f - var_0), Struct_1(212i), vec3<i32>(_wgslsmith_add_i32(0i, -30040i), u_input.b.x, i32(-1i) * -42957i) ^ (func_1(max(u_input.b.x, 61417i), ~0u, Struct_1(global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1253f))) | ~(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x) & vec3<i32>(global0.a, -2147483647i, global0.a))), func_5(Struct_2(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.d, u_input.d), var_0, Struct_1(_wgslsmith_mod_i32(-13715i, 1i)), firstTrailingBit(-vec3<i32>(global0.a, -24232i, global0.a)), Struct_1(abs(u_input.b.x))), -1i, vec3<bool>(u_input.b.x == (i32(-1i) * -49842i), !all(vec2<bool>(true, true)), true)));
    var var_2 = ~_wgslsmith_mult_u32(~countOneBits(abs(u_input.c.x)), firstLeadingBit(~(~var_1.a)));
    var var_3 = ~var_1.a;
    let var_4 = Struct_1(abs(2147483647i));
    let var_5 = Struct_2(reverseBits(_wgslsmith_div_u32(u_input.a.x, 129u | ~var_1.a)), -1000f, var_1.e, vec3<i32>(0i, ~1i | u_input.b.x, ~85965i), var_1.c);
    global0 = func_5(var_1, var_5.d.x, select(vec3<bool>(true, var_1.b == _wgslsmith_f_op_f32(f32(-1f) * -412f), var_5.e.a < _wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(u_input.b.x, 11749i, u_input.b.x))), func_2(), vec3<bool>(any(vec4<bool>(true, false, false, true)) || true, true, true | all(vec3<bool>(true, false, false)))));
    var var_6 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d));
}

