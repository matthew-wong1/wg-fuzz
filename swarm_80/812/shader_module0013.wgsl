struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(12976i, vec3<u32>(95572u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 9264u), vec4<u32>(1u, 1u, 11014u, 5720u), Struct_1(vec3<bool>(false, true, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(3443i, global0.d.xxw ^ ~u_input.a.wwx, ~vec3<u32>(7175u, abs(~global0.b.x), select(66499u, u_input.a.x | 68090u, true)), vec4<u32>(u_input.a.x, 4520u, ~(~u_input.a.x), 28438u), Struct_1(select(!select(global0.e.a, global0.e.a, false), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, global0.e.a.x), global0.e.a.x), vec3<bool>(true, true, global0.e.a.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1013f, _wgslsmith_f_op_f32(491f * -1000f))), _wgslsmith_div_f32(-1677f, 170f)), 557f)), 645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1329f, 923f, var_0.e.a.x)))), 1347f)) * -1294f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -256f)))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    global0 = Struct_2(~(1i >> ((~1u | ~global0.b.x) % 32u)), firstLeadingBit(global0.b), global0.d.zxx, vec4<u32>(_wgslsmith_clamp_u32(18954u, firstLeadingBit(95879u), 1u), global0.c.x, ~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.d.xz, vec2<u32>(26373u, global0.d.x)), 4294967295u, 9389u) & 20198u), global0.e);
    global0 = Struct_2(_wgslsmith_mult_i32(12691i, 15682i), ~firstLeadingBit(select(abs(global0.d.wxw), ~vec3<u32>(u_input.a.x, u_input.a.x, 706u), global0.e.a)), firstTrailingBit(countOneBits(global0.c)), vec4<u32>(u_input.a.x, 24749u, select(27765u, ~u_input.a.x, global0.e.a.x), reverseBits(1u)), global0.e);
    let var_0 = Struct_2(global0.a, abs(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, 29780u), vec3<u32>(48998u, u_input.a.x, 0u)))), ~firstTrailingBit(u_input.a.yzx), _wgslsmith_add_vec4_u32(select(~select(vec4<u32>(33420u, u_input.a.x, global0.d.x, 107866u), vec4<u32>(4294967295u, global0.d.x, u_input.a.x, u_input.a.x), false), abs(u_input.a), !(!vec4<bool>(true, true, global0.e.a.x, global0.e.a.x))), vec4<u32>(~0u, u_input.a.x, ~(~53487u), global0.b.x)), global0.e);
    var var_1 = Struct_1(vec3<bool>(!(!var_0.e.a.x), any(vec4<bool>(var_0.e.a.x, all(vec4<bool>(false, false, global0.e.a.x, true)), true, var_0.e.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 82598u) & vec2<u32>(var_0.b.x, global0.d.x), ~u_input.a.wz) <= countOneBits(51582u)));
    let var_2 = global0.e.a.x;
    return var_0;
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    let var_1 = ~u_input.a.x;
    global0 = func_3(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) * 842f));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-289f, 2203f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1063f, -2132f, select(true, var_0, true)))))));
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(global0.a & _wgslsmith_mult_i32(~(-1i), ~10058i), -30406i), global0.a);
    return func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, 1000f, 1324f, -903f) * vec4<f32>(892f, 393f, 200f, -117f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1505f, -1543f, 1265f) + vec4<f32>(754f, 708f, 1000f, 1226f)))), !(!select(vec4<bool>(true, global0.e.a.x, true, true), vec4<bool>(true, var_0, true, global0.e.a.x), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -723f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_1();
    var var_1 = func_1().e;
    var var_2 = global0.a;
    var_1 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-311f, -1212f, -1000f, -1332f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, -204f, -1000f, 763f) * vec4<f32>(1000f, 157f, 945f, -427f))))), -1000f).e.a);
    var var_3 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-713f, 799f, 423f, -1706f), vec4<f32>(-1766f, -1225f, -138f, 782f), true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, 757f, 150f, 349f) + vec4<f32>(-1000f, 2147f, 924f, 563f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1114f, 122f, -918f, 493f), vec4<f32>(757f, 1236f, -482f, 100f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(441f, -1033f, 1292f, 1028f) + vec4<f32>(-1000f, -1775f, -161f, -348f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1601f, 1731f, -599f, 807f))))), _wgslsmith_f_op_f32(select(-1167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(631f + -158f))) + -548f), any(vec4<bool>(false, !var_0.e.a.x, true, global0.e.a.x))))).e.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~vec3<i32>(2147483647i, var_0.a, var_0.a))) | ((~vec3<i32>(1i, var_0.a, global0.a) << ((vec3<u32>(0u, 4294967295u, 0u) | var_0.b) % vec3<u32>(32u))) | -vec3<i32>(-1i, global0.a, 82074i)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, func_3(vec4<f32>(1082f, 431f, 867f, 987f), 242f).b.x), global0.b.yx), vec2<u32>(51952u, 69961u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1650f, -1556f, -1547f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-457f, 2374f, -269f), vec3<f32>(1144f, -1142f, 507f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, 689f, 1086f) * vec3<f32>(-1318f, -1232f, 1554f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2403f, 137f, -871f))) - vec3<f32>(939f, -1456f, -594f)))), select(abs(vec4<i32>(-1i) * -vec4<i32>(0i, 46617i, 28117i, 2264i)), ~firstTrailingBit(firstLeadingBit(vec4<i32>(-1i, var_0.a, var_0.a, global0.a))), global0.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-901f)), 1058f, var_3.x))));
}

