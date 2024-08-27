struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -1167f, 1627f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.b.a.x, global0.x, true)) - _wgslsmith_f_op_f32(arg_0.a.b.a.x * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.a.x - arg_0.a.b.a.x) * _wgslsmith_f_op_f32(sign(365f))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))))), 1000f, global0.x);
    var var_0 = Struct_3(~arg_0.a.a);
    let var_1 = Struct_4(arg_0.a);
    var_0 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, ~var_1.a.a.x, var_0.a.x), var_0.a, ~var_1.a.a));
    var var_2 = Struct_2(var_1.a.a, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * var_1.a.b.a.x), _wgslsmith_f_op_f32(global0.x + 1000f), _wgslsmith_f_op_f32(var_1.a.b.a.x - global0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1381f, 593f, arg_0.a.b.a.x)))), _wgslsmith_sub_vec4_i32(abs(firstLeadingBit(vec4<i32>(var_1.a.b.b.x, var_1.a.b.b.x, arg_0.a.b.b.x, arg_0.a.b.b.x))), vec4<i32>(min(44757i, 1i), 27966i, countOneBits(u_input.c.x), u_input.c.x)), _wgslsmith_add_u32(~firstTrailingBit(10483u), firstLeadingBit(4294967295u))));
    return arg_0.a.b.a;
}

fn func_2(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = -1i;
    global0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17152u, u_input.a, u_input.b), vec3<u32>(1u, 19863u, u_input.a)), 1u, 40430u), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-881f, -235f, global0.x), vec3<f32>(global0.x, -1000f, global0.x)), -u_input.c, 20023u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_1(vec3<f32>(global0.x, 1000f, global0.x), u_input.c, u_input.b))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x + global0.x)), true)), global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(633f * global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f - var_1.x))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, global0.x)), _wgslsmith_f_op_f32(select(-1152f, 227f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(663f)))));
    var var_2 = Struct_2(vec3<u32>(u_input.a, ~(~_wgslsmith_mult_u32(16100u, 1u)), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.yxx), firstTrailingBit(vec4<i32>(0i, u_input.c.x, _wgslsmith_mult_i32(1i, 0i), _wgslsmith_mod_i32(52049i, var_0))), ~u_input.a));
    return _wgslsmith_div_vec3_f32(var_1.zxw, var_2.b.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - 544f), -1401f), _wgslsmith_div_vec3_f32(vec3<f32>(-108f, _wgslsmith_f_op_f32(exp2(global0.x)), global0.x), arg_0.a.b.a), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true)))));
    let var_0 = !vec4<bool>(-161f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))), true, ~(arg_1.c & 5480u) >= 1u, true);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.a.b.a)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.x)), 1f, arg_0.a.b.a.x), _wgslsmith_f_op_vec3_f32(-arg_0.a.b.a))) - _wgslsmith_f_op_vec3_f32(func_2(select(var_0, var_0, var_0.x))));
    let var_1 = select(!vec4<bool>(true, !(!var_0.x), false, true), var_0, all(var_0.zxz));
    var var_2 = ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_i32(arg_0.a.b.b.wwx, vec3<i32>(u_input.c.x, u_input.c.x, arg_0.a.b.b.x)), arg_1.b.x), arg_0.a.b.b.zww, !(!vec3<bool>(var_0.x, var_0.x, var_1.x))), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.c.ww), arg_0.a.b.b.x, _wgslsmith_add_i32(arg_0.a.b.b.x, 56145i)));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(arg_1.c, arg_1.c, 25746u, arg_0.a.b.c))), ~vec4<u32>(u_input.b ^ 53219u, 0u, _wgslsmith_mult_u32(arg_0.a.a.x, 4294967295u), arg_1.c)), ~(~_wgslsmith_sub_u32(34915u, u_input.b)));
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-778f, -1038f, -348f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(819f, -334f, global0.x))))));
    let var_0 = Struct_4(Struct_2(~arg_0.xzz, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(181f, global0.x, 1440f) * vec3<f32>(-1091f, global0.x, global0.x)))), max(vec4<i32>(-15048i, -33601i, -1508i, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -2109i, 1i, u_input.c.x), u_input.c)), arg_0.x ^ 52456u)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(var_0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0)).x), var_0.a.b.a.x, _wgslsmith_f_op_f32(886f + 1362f)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), any(vec4<bool>(true, true, true, true)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1157f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-580f, var_0.a.b.a.x)), _wgslsmith_f_op_f32(sign(var_0.a.b.a.x)))), -461f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.b.a.x, -2175f, global0.x, 1451f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1234f, var_0.a.b.a.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(424f, var_0.a.b.a.x, var_0.a.b.a.x, var_0.a.b.a.x))))))));
    var var_2 = _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 44512i));
    return Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(7705u, ~(~var_0.a.a.x), var_0.a.a.x), var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, global0.x, 689f)) + vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1000f * global0.x), -446f))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-414f, global0.x, true))));
    let var_2 = u_input.c.x;
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_0.x), var_0), u_input.c, u_input.b);
    let var_4 = firstLeadingBit(u_input.c.x | reverseBits(firstLeadingBit(-19955i)));
    var var_5 = _wgslsmith_mod_vec3_i32(var_3.b.zxy, u_input.c.wxx);
    var var_6 = func_4(vec4<u32>(106233u, u_input.a, 64878u, max(_wgslsmith_sub_u32(6831u, ~u_input.b), ~func_1(Struct_4(Struct_2(vec3<u32>(63557u, 4294967295u, var_3.c), Struct_1(var_3.a, u_input.c, u_input.a))), Struct_1(vec3<f32>(global0.x, var_3.a.x, global0.x), var_3.b, var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-259f, -223f, -226f, 303f), vec4<f32>(var_0.x, -1000f, -2812f, var_3.a.x), vec4<bool>(false, false, true, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_3.a.x, -616f, var_1) * vec4<f32>(-593f, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1155f, global0.x, global0.x, var_0.x), vec4<f32>(849f, var_1, var_0.x, var_0.x))))), var_5.x, vec3<u32>(~1u, ~1u, func_4(select(vec4<u32>(4294967295u, u_input.b, 78039u, var_6.a.x), vec4<u32>(4567u, var_3.c, 30686u, var_3.c), vec4<bool>(true, true, false, true)) ^ vec4<u32>(u_input.a, var_3.c, 4294967295u, 51697u)).a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(global0.x + var_3.a.x), true)) + 985f), _wgslsmith_f_op_f32(-var_1))));
}

