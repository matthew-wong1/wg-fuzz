struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = vec2<bool>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 5989u), false), ~vec2<u32>(1u, 0u)) > (_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 26073u), vec2<u32>(11816u, 94250u), vec2<bool>(arg_0.a, arg_0.a)), ~vec2<u32>(4294967295u, 1u)) | ~(~4294967295u)), arg_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1700f, 665f, 210f))))) - vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(f32(-1f) * -1365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) + -427f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f - 856f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(283f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1035f, -1507f)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1754f, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(909f + -479f)), _wgslsmith_f_op_f32(f32(-1f) * -196f)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(342f * var_1.x))) * _wgslsmith_f_op_f32(-var_1.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(-822f, _wgslsmith_f_op_f32(select(-523f, var_1.x, false)))), -217f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(999f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, -112f), vec3<f32>(-1000f, -341f, -941f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1609f, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_1.x, 1128f))), !vec3<bool>(arg_0.a, arg_0.a, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, 538f, -1684f) - vec3<f32>(1299f, 270f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1805f, var_1.x) + vec3<f32>(var_1.x, -994f, var_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -644f, _wgslsmith_f_op_f32(max(101f, 851f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-649f, var_1.x, -672f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1929f, 1457f, var_1.x) + vec3<f32>(var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -723f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_1.x, 897f), vec3<f32>(-2280f, 756f, var_1.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, _wgslsmith_f_op_f32(-981f - _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1794f)) + _wgslsmith_f_op_f32(exp2(var_1.x))))));
    return -(~vec2<i32>(i32(-1i) * -19644i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27302i, 1i, u_input.a, -29722i), vec4<i32>(1i, 2147483647i, u_input.a, u_input.a))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_4 {
    let var_0 = countOneBits(~_wgslsmith_add_u32(1u, 85614u)) <= (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 25707u, 0u, 13329u), firstTrailingBit(vec4<u32>(5338u, 4294967295u, 80593u, 40629u))), 23771u) & 1u);
    var var_1 = arg_0 & true;
    var var_2 = _wgslsmith_sub_vec2_i32(~((max(vec2<i32>(17285i, 0i), vec2<i32>(u_input.a, u_input.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & -reverseBits(vec2<i32>(-1i, 0i))), select(-func_3(Struct_2(var_0)), vec2<i32>(u_input.a, max(u_input.a, u_input.a)), select(vec2<bool>(var_0, true), !(!vec2<bool>(false, arg_1)), vec2<bool>(false, var_0))));
    var_2 = ~(~firstTrailingBit(~countOneBits(vec2<i32>(var_2.x, -28413i))));
    var_1 = any(vec2<bool>(false, select(true, false, !var_0))) || false;
    return Struct_4(Struct_3(Struct_1(~abs(-2147483647i), firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 46493u, 21515u))), 0i, select(vec2<bool>(true, select(true, true, arg_1)), vec2<bool>(any(vec3<bool>(var_0, arg_1, arg_0)), all(vec3<bool>(var_0, var_0, true))), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), !vec2<bool>(select(var_0, arg_0, true), true)), ~(~(~27793u)));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(385f * 189f))))), -631f, arg_1.b >= 14399u));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -578f), vec2<f32>(979f, var_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1255f) * vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, 612f))), vec2<f32>(-335f, var_0))))))));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(arg_1.b, 0u)), vec2<u32>(_wgslsmith_mult_u32(arg_1.b, arg_1.a.a.b), countOneBits(arg_1.a.a.b))), ~firstLeadingBit(abs(vec2<u32>(arg_1.b, 30462u)))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_1.a.a.b, abs(4294967295u)), ~vec2<u32>(1u, arg_1.a.a.b))));
    let var_3 = ~select(select(~vec2<u32>(var_2, 9161u), ~vec2<u32>(var_2, var_2), vec2<bool>(true, true)), vec2<u32>(~var_2, var_2 >> (1u % 32u)), arg_1.a.d) & min(~max(reverseBits(vec2<u32>(var_2, 1u)), select(vec2<u32>(arg_1.b, 0u), vec2<u32>(0u, 1u), vec2<bool>(arg_1.a.d.x, arg_0))), abs(min(vec2<u32>(arg_1.a.a.b, arg_1.a.a.b), vec2<u32>(arg_1.a.a.b, arg_1.a.a.b))));
    return func_2(any(select(vec2<bool>(true, arg_1.a.d.x), vec2<bool>(arg_0, arg_1.a.d.x), any(vec4<bool>(arg_1.a.c.x, arg_0, arg_1.a.d.x, true)))) || !(true | arg_1.a.d.x), false, -276f).a.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    var var_0 = arg_1.a;
    let var_1 = ~min(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 28122i, arg_1.b), vec3<i32>(var_0.a, u_input.a, arg_1.b))), -6313i);
    var_0 = arg_1.a;
    var_0 = func_4(true, func_2(false, !all(select(arg_1.d, vec2<bool>(false, arg_1.d.x), arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1407f + 1058f))))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)))))));
    return ~(~(max(102334u, _wgslsmith_sub_u32(arg_1.a.b, var_0.b)) >> (abs(58827u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~(~vec4<u32>(4294967295u, 1u, 2100u, 62331u))), ~vec4<u32>(1u, 1u, 1u, 1u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_clamp_u32(0u, 1201u, 0u), ~28276u, ~4294967295u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~55272u, max(49435u, 1u), func_1(vec3<bool>(false, true, false), Struct_3(Struct_1(25771i, 0u), 29097i, vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 60778u, 1u), select(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(12712u, 1u, 9887u, 882u), true), abs(vec4<u32>(4294967295u, 34539u, 19423u, 1u))))) % vec4<u32>(32u));
    var var_1 = 1463f;
    var var_2 = true;
    var_2 = ~var_0.x >= var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(29622u, 0u, var_0.x, 0u));
}

