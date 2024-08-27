struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(1168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f - global0.x))), _wgslsmith_clamp_vec2_u32(~u_input.a.yw | vec2<u32>(4294967295u, u_input.a.x), u_input.a.xw, _wgslsmith_mult_vec2_u32(u_input.a.xw, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xy))) | ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 13672u, u_input.a.x, 9578u), vec4<u32>(1u, 1u, 40552u, 66810u)), 13316u), all(vec2<bool>(true, true)), !(true && all(vec4<bool>(true, true, true, true))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1457f) * global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * -179f))));
    let var_2 = !var_0.d;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(834f * -293f), 469f))), var_0.b, !var_0.c, all(vec2<bool>(!var_0.e, true)), 4294967295u != ~(~u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), global0.x, global0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -268f, -906f)))))), vec3<f32>(1351f, _wgslsmith_f_op_f32(-global0.x), var_0.a)));
    return _wgslsmith_sub_u32(21499u, ~var_0.b.x);
}

fn func_2(arg_0: u32) -> Struct_2 {
    return Struct_2(vec3<u32>(_wgslsmith_div_u32(~(~27907u), u_input.b), func_3(), 4578u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(arg_1.xwz, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(arg_1.yzx)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-496f, global0.x, 2033f))))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.yyz, vec3<f32>(arg_1.x, 106f, -1090f)))))))), vec3<f32>(1593f, -1792f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))))));
    let var_0 = any(vec4<bool>(true, true, !all(vec2<bool>(false, false)), true));
    var var_1 = arg_1.yz;
    let var_2 = 1316f;
    var var_3 = firstLeadingBit(~(-vec3<i32>(0i, 1i, ~21085i)));
    return _wgslsmith_f_op_f32(-361f * global0.x);
}

fn func_1() -> vec3<u32> {
    let var_0 = ~2147483647i;
    var var_1 = firstLeadingBit(vec3<u32>(u_input.a.x, firstTrailingBit(0u), 4294967295u));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))), global0.x, _wgslsmith_f_op_f32(global0.x - 656f))), vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - 221f), 1f))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(~vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-458f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 1000f, global0.x, -138f))), func_2(1u), func_2(7941u))), _wgslsmith_f_op_f32(-1193f * _wgslsmith_f_op_f32(-global0.x)))));
    var_1 = u_input.a.zyx;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(~(-vec3<i32>(-21415i, var_0, var_0))), -vec3<i32>(firstTrailingBit(20170i), ~reverseBits(var_0), -1i | _wgslsmith_div_i32(1i, var_0)));
    return u_input.a.zxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(func_1(), vec3<u32>(_wgslsmith_mod_u32(~14643u, u_input.b) | u_input.a.x, u_input.c, countOneBits(abs(_wgslsmith_clamp_u32(102642u, 55172u, 119363u)))));
    global0 = vec3<f32>(627f, global0.x, _wgslsmith_f_op_f32(func_4(~(~(~vec4<u32>(u_input.a.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1825f)), _wgslsmith_f_op_f32(select(global0.x, 1000f, true)), -611f, _wgslsmith_f_op_f32(max(155f, -2246f))) * vec4<f32>(-486f, -1000f, global0.x, global0.x)), Struct_2(firstLeadingBit(u_input.a.zww) | ~u_input.a.xzy), func_2(firstLeadingBit(4294967295u)))));
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(min(0u, var_0.x), abs(var_0.x)), func_1().xy), func_2(abs(var_0.x)).a.xx), firstLeadingBit(var_0.yx));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + _wgslsmith_f_op_f32(-global0.x))) - -1773f) * -1382f);
    var var_3 = 1u;
    var var_4 = !(!vec3<bool>((u_input.c != 10977u) || false, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global0.zz - vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -272f))), ~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, -1174f, -295f), vec3<f32>(global0.x, 1196f, 991f))), vec3<f32>(1211f, var_2, global0.x)))) * vec3<f32>(var_2, -447f, _wgslsmith_f_op_f32(-global0.x))), ~vec2<u32>(_wgslsmith_mult_u32(~var_1.x, u_input.c), firstLeadingBit(var_0.x | 86157u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(754f, -882f, var_2, -432f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2, 411f, 1234f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, var_2, global0.x, var_2) * vec4<f32>(global0.x, 1716f, 436f, 2181f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(270f, var_2, 102f, var_2) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -160f, 1289f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1000f, global0.x, -1186f))))))));
}

