struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
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

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(28181i, -1i), vec2<i32>(0i, -7517i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-24654i, 25105i), vec2<i32>(-23264i, 2147483647i), vec2<i32>(i32(-2147483648), 36637i), vec2<i32>(-15855i, 0i), vec2<i32>(2147483647i, 43266i), vec2<i32>(1i, 0i), vec2<i32>(33418i, 2147483647i), vec2<i32>(59534i, 0i), vec2<i32>(57428i, -7712i), vec2<i32>(24856i, -30838i), vec2<i32>(11202i, -1i), vec2<i32>(i32(-2147483648), -60796i), vec2<i32>(10932i, -16635i), vec2<i32>(31134i, -31995i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(33650i, 53456i), vec2<i32>(1i, 1i), vec2<i32>(25747i, -1i), vec2<i32>(58698i, i32(-2147483648)), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn func_3() -> u32 {
    let var_0 = Struct_1(min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(41816u, 4294967295u), vec2<u32>(1u, 1u)), vec2<u32>(~4294967295u, 65819u)), ~4452u), vec2<f32>(_wgslsmith_f_op_f32(-1f), -1814f));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-694f - var_0.b.x), _wgslsmith_div_f32(var_0.b.x, -854f))) - _wgslsmith_f_op_vec2_f32(exp2(var_0.b))));
    var var_2 = Struct_1(_wgslsmith_add_u32(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(abs(var_0.b.x))))));
    var var_3 = !(_wgslsmith_f_op_f32(f32(-1f) * -1218f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-589f, 1074f)) - _wgslsmith_f_op_f32(-278f - var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))));
    var var_4 = ~_wgslsmith_dot_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.a) & vec2<u32>(0u, 1u), select(vec2<u32>(4294967295u, var_1.a), vec2<u32>(18486u, 33464u), vec2<bool>(true, true)), vec2<u32>(var_2.a, var_0.a)), ~(~vec2<u32>(9391u, var_0.a))), vec2<u32>(~29389u, abs(~59902u)));
    return _wgslsmith_mult_u32(var_2.a, ~var_2.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(-478f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.b.x, -844f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + 771f))))));
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x * 1000f), _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.b.x, arg_2.b.x))))))));
    let var_1 = arg_2;
    let var_2 = vec4<i32>(~arg_1 ^ -arg_1, u_input.c.x, ~(-5522i), -(~firstTrailingBit(44924i)));
    global0 = _wgslsmith_f_op_f32(step(-1093f, var_0.b.x));
    return (func_3() >> (arg_2.a % 32u)) > 18293u;
}

fn func_1() -> f32 {
    var var_0 = select(vec4<bool>(!(func_2(vec2<bool>(true, false), -26071i, Struct_1(4294967295u, vec2<f32>(525f, -2119f))) && true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true, true && func_2(vec2<bool>(true, true), u_input.c.x, Struct_1(0u, vec2<f32>(317f, 441f)))), !select(vec4<bool>(true, true, func_2(vec2<bool>(false, false), 2147483647i, Struct_1(6180u, vec2<f32>(-842f, 227f))), true), vec4<bool>(false, true, select(false, true, false), any(vec3<bool>(true, false, true))), true && any(vec2<bool>(false, false))), true);
    let var_1 = ~reverseBits(u_input.b.x);
    let var_2 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, _wgslsmith_f_op_f32(step(-808f, -180f))) - vec2<f32>(_wgslsmith_f_op_f32(1000f + -1545f), _wgslsmith_f_op_f32(-411f + -652f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-224f, 1120f), vec2<f32>(-815f, 364f), var_0.x)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-578f, -1339f), vec2<f32>(180f, 1457f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-609f, -2800f)))))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + 296f) - -804f), 2191f)));
    let var_4 = var_0.xzz;
    return 1f;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(min(1482f, -851f)), arg_3, 1155f) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 724f, 1543f, arg_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_0, 1490f, -720f))))))));
    var var_1 = u_input.a;
    var var_2 = Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_div_f32(-359f, var_0.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.yw)), vec2<f32>(1000f, 455f))))));
    var var_3 = func_3();
    let var_4 = -2780i;
    return Struct_1(~(~6793u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(215f)), _wgslsmith_f_op_f32(245f * -564f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = arg_2.x;
    global1 = array<vec2<i32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2208f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, arg_1.b.x)))) + arg_2.x) * -365f);
    global1 = array<vec2<i32>, 23>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -104f);
    return Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = array<vec2<i32>, 23>();
    let var_0 = true;
    global1 = array<vec2<i32>, 23>();
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(155f - -189f), firstTrailingBit(vec2<u32>(abs(5475u), 1u)), u_input.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1419f, -1214f)))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, 197f)), ~(~(~vec2<u32>(1u, 0u))), u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1550f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(910f, 832f, 597f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-112f, 431f, 283f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, -849f, -909f) * vec3<f32>(-157f, 483f, -452f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(542f, -545f, 1857f) + vec3<f32>(1610f, -1270f, 371f))) * vec3<f32>(1f, 1f, 1f))), vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 0u, 59730u), ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(33719u, 4294967295u, 17811u, 42141u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), 1u) ^ ~(~vec4<u32>(4294967295u, 4294967295u, 23784u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.a, 39061u, 50666u, 1u)), firstLeadingBit(vec4<u32>(4294967295u, 0u, 4294967295u, var_1.a))), max(countOneBits(1u), ~var_1.a)));
}

