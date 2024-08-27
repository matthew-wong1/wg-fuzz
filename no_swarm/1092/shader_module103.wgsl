struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1211f, -1328f, -244f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = arg_2.b.xwx;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-1052f)), 108f, arg_0);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.b.yyw + vec3<f32>(arg_0, -989f, -965f)))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(969f + arg_2.d), _wgslsmith_f_op_f32(-193f + -723f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(arg_2.b.x, global0.x)), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(-453f - -124f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x))))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))))))));
    let var_0 = arg_2;
    var var_1 = arg_2;
    return select(max(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 1457u), firstLeadingBit(vec3<u32>(0u, 4294967295u, 81085u))), ~(~vec3<u32>(1u, 1u, 1u))), vec3<u32>(1u, ~42081u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37544u, 4294967295u), min(~vec3<u32>(0u, 59918u, 24321u), ~vec3<u32>(1u, 29786u, 38647u)))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(abs(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_sub_u32(24928u, 10194u), _wgslsmith_dot_vec3_u32(vec3<u32>(69849u, 37501u, 4294967295u), vec3<u32>(7144u, 57139u, 0u)), 0u))), ~(~func_3(_wgslsmith_f_op_f32(333f * global0.x), u_input.a, Struct_1(global0.x, vec4<f32>(1112f, -1438f, -1045f, 1023f), global0.x, 313f, -576f))));
    var var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(select(~u_input.a.x, -24046i, true), 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(18811i, u_input.e, -68343i), u_input.b.zwx), u_input.a.x), u_input.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-414f, 1375f, global0.x), vec3<f32>(global0.x, 448f, global0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 696f, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1197f, -310f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1814f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-109f, 151f, global0.x)))))), !(!all(vec3<bool>(false, false, true))))));
    var var_2 = !select(!vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, u_input.c.x > -1148i), vec4<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, global0.x == global0.x), any(vec2<bool>(true, true))));
    var var_3 = _wgslsmith_mult_vec3_i32(max(~(~var_1.wzy), _wgslsmith_sub_vec3_i32(vec3<i32>(-13867i, 26728i, var_1.x), _wgslsmith_div_vec3_i32(var_1.yyy, u_input.a))) << (countOneBits(abs(vec3<u32>(4294967295u, var_0.x, var_0.x) & vec3<u32>(30472u, 1u, var_0.x))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(max(u_input.b.xxx, min(var_1.xzy, vec3<i32>(var_1.x, 1i, 1i))), ~(-vec3<i32>(4564i, u_input.c.x, 2147483647i))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f))), var_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.b.xww;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 137f), _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2314f, global0.x, 233f), vec3<f32>(-282f, 789f, -871f), vec3<bool>(true, true, true))), vec3<f32>(-607f, global0.x, -237f))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-481f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(930f * -277f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, global0.x)))));
    global0 = vec3<f32>(2638f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.x)))) * global0.x)), _wgslsmith_f_op_f32(854f * -362f));
    var var_1 = ~firstLeadingBit(vec3<u32>(1u, _wgslsmith_add_u32(abs(70427u), 73656u), max(31025u, ~101219u)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -195f) - vec3<f32>(-1895f, global0.x, 765f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -193f, global0.x) - vec3<f32>(633f, -119f, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2606f, global0.x, 1008f) + vec3<f32>(-1000f, -2107f, global0.x))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(440f, global0.x) - _wgslsmith_f_op_f32(global0.x - global0.x)) * global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1296f - _wgslsmith_f_op_f32(global0.x * global0.x)), global0.x), 1000f));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f * global0.x) - _wgslsmith_div_f32(268f, global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1036f, 909f, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -227f)), global0.x, global0.x) * vec4<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(-520f))), 286f, _wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-819f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 846f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(845f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * 317f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - -2533f)))), 159f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, 116f, -177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(436f)) + _wgslsmith_f_op_f32(-global0.x)))), global0.x, _wgslsmith_f_op_f32(global0.x - 420f), global0.x);
    var var_1 = var_0;
    var_1 = func_1();
    var_1 = var_0;
    let var_2 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(33652u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(102168u, 0u, 27257u), vec3<u32>(74910u, 1813u, 46994u))), firstLeadingBit(~13406u), 1u), vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~1u), ~38268u, _wgslsmith_add_u32(reverseBits(1u), 1u), 60822u)), 1u, 14006u);
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_clamp_vec3_u32(var_2.wzz, ~vec3<u32>(~var_2.x, abs(0u), ~var_2.x), var_2.wwz << (~vec3<u32>(var_2.x, 0u, 17914u) % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.e, u_input.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(u_input.c.x, u_input.b.x))), 26572i, ~_wgslsmith_add_i32(u_input.c.x, u_input.d) ^ u_input.b.x));
}

