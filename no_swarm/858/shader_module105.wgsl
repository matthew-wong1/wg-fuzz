struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    let var_0 = arg_1.b;
    let var_1 = 654f;
    var var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec2_i32(~(u_input.a.yx | ~vec2<i32>(arg_1.a, -73757i)), firstTrailingBit(countOneBits(~vec2<i32>(arg_3.c, arg_1.a))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.b)), _wgslsmith_f_op_f32(floor(1796f)), -1000f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + 1000f)))));
    return arg_1.d.x;
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(669f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, 550f, var_0, -465f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1966f, var_0, -395f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, var_0, 310f, 1563f)))) - vec4<f32>(-1215f, -669f, _wgslsmith_f_op_f32(var_0 + -643f), -1118f)));
    let var_2 = Struct_2(~(~(~(~vec3<u32>(0u, 48415u, 4294967295u)))), -1711f, i32(-1i) * -15096i);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b, -1562f, 329f, 808f), vec4<f32>(-184f, 964f, 300f, 120f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1447f, -1683f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1734f, var_2.b, var_1.x, 622f) * vec4<f32>(var_2.b, var_1.x, var_1.x, -594f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_2.b, var_1.x, var_2.b), vec4<f32>(442f, var_1.x, var_1.x, 170f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1072f, -258f, var_1.x, -474f), vec4<f32>(var_2.b, var_0, 1000f, var_0)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(768f))))), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -418f) + -2035f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f), -1399f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(367f - -180f), _wgslsmith_div_f32(-867f, -1600f))), 681f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-257f, -664f, var_1.x, 848f), vec4<f32>(890f, var_1.x, var_2.b, var_1.x), vec4<bool>(arg_1, arg_1, false, arg_1)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(926f, var_1.x, var_1.x, -514f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b, var_1.x, -675f, var_0), vec4<f32>(var_2.b, -165f, var_0, 836f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, -1479f, -1190f, var_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(168f * 846f), 449f, _wgslsmith_f_op_f32(exp2(var_1.x))))));
    return vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(var_1.x * 1053f)) * _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -362f)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = !vec4<bool>(true, true, (all(vec4<bool>(true, false, false, true)) && all(vec3<bool>(true, true, false))) | all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), false);
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1248f) - vec2<f32>(785f, 539f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-520f, _wgslsmith_f_op_f32(max(-987f, 784f))), _wgslsmith_f_op_vec2_f32(func_4(-1i, func_3(vec2<f32>(-1000f, 920f), Struct_3(arg_0, Struct_1(vec2<u32>(11413u, 4294967295u)), Struct_1(vec2<u32>(11577u, 7994u)), vec2<bool>(false, var_0.x), vec3<f32>(-1338f, -664f, 830f)), vec3<u32>(119384u, 4294967295u, 83546u), Struct_2(vec3<u32>(304u, 86318u, 0u), -113f, arg_0)))), vec2<bool>(!var_0.x, true))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = vec4<f32>(-1000f, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f * var_2.x) - -753f))) - var_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false))) - _wgslsmith_f_op_f32(1080f * _wgslsmith_f_op_f32(-118f - var_2.x))))));
    return Struct_2(vec3<u32>(firstLeadingBit(23910u), _wgslsmith_dot_vec2_u32(vec2<u32>(~3158u, 1u), select(vec2<u32>(4257u, 4294967295u), vec2<u32>(4294967295u, 35412u), var_0.x) | vec2<u32>(1u, 1u)), max(4294967295u, ~min(49016u, 13223u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f * _wgslsmith_f_op_f32(floor(var_4.x))))), 2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    var var_0 = -201f;
    var var_1 = arg_2;
    let var_2 = func_2(~u_input.c.x);
    var_1 = max(~min(arg_2, arg_2 | arg_2), vec4<u32>(44609u, ~arg_0.b.a.x, firstTrailingBit(~(~var_1.x)), ~_wgslsmith_dot_vec2_u32(abs(arg_0.c.a), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.x, arg_1.a.x), var_2.a.zx))));
    var var_3 = arg_2;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(select(1u, 4294967295u, _wgslsmith_f_op_f32(func_1(Struct_3(u_input.a.x, Struct_1(vec2<u32>(4294967295u, 3623u)), Struct_1(vec2<u32>(1u, 1u)), vec2<bool>(false, true), vec3<f32>(1164f, -778f, -1035f)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<u32>(0u, 0u, 16644u, 18338u), 126f)) != -211f), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(54044u, 34349u, 37354u)), ~vec3<u32>(17231u, 56827u, 6473u) << (select(vec3<u32>(10882u, 4294967295u, 59944u), vec3<u32>(1u, 31937u, 42259u), vec3<bool>(false, false, false)) % vec3<u32>(32u)))));
    var var_1 = !vec2<bool>(any(vec4<bool>(true, true, all(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)))), false);
    var_0 = Struct_1(vec2<u32>(var_0.a.x, 63964u << (_wgslsmith_dot_vec3_u32(func_2(u_input.c.x).a, ~vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)) % 32u)));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(~4294967295u, 4294967295u >> (var_0.a.x % 32u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, var_0.a.x), max(vec2<u32>(106438u, 4294967295u), var_0.a)), ~var_0.a.x, abs(~var_0.a.x)), ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, 24862u, var_0.a.x)), ~(~vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(u_input.a.x ^ 2147483647i, -u_input.c.x) ^ vec2<i32>(1i, u_input.a.x)), vec3<u32>(~(select(var_2.x, 82613u, var_1.x) & var_2.x), 70264u, 0u), u_input.c.x, vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_0.a), ~var_2.x, var_0.a.x), ~_wgslsmith_clamp_vec3_u32(var_2.zzx, var_2.wwz, vec3<u32>(4294967295u, var_2.x, var_0.a.x))), 52431u), _wgslsmith_f_op_f32(f32(-1f) * -452f));
}

