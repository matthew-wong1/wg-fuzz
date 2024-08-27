struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(38280i, -97284i, 1i, 0i, 0i, i32(-2147483648), -6408i, -40436i, 2147483647i, 2147483647i, -12626i, 2147483647i, 74869i, 1i, -16420i, i32(-2147483648), 2147483647i, 1i, -9293i, -8319i, i32(-2147483648), 21828i, 0i, -1i, -9486i, -1i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    var var_0 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-12123i, _wgslsmith_dot_vec3_i32(vec3<i32>(41415i, arg_0, 2147483647i), vec3<i32>(-243i, -27801i, arg_0)), ~21592i, 0i), max(-vec4<i32>(-11328i, -1i, arg_0, -16190i), vec4<i32>(u_input.a.x, -1i, arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) | vec4<i32>(1i, -14903i, 29826i, u_input.a.x))));
    let var_1 = -firstTrailingBit(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~u_input.c.x, 27u)], u_input.a.x)) << (u_input.b.x % 32u);
    var_0 = ~14212i;
    var_0 = firstTrailingBit(u_input.a.x);
    var var_2 = Struct_1(u_input.b.x, u_input.b << (_wgslsmith_add_vec4_u32(u_input.c, reverseBits(min(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(11380u, 24487u, u_input.c.x, u_input.b.x)))) % vec4<u32>(32u)), u_input.c.yw, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1031f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-716f * -921f))), -1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(986f, -1000f)) * _wgslsmith_f_op_f32(select(-2118f, -542f, true)))))));
    return _wgslsmith_f_op_vec3_f32(select(var_2.d.zwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-951f, var_2.d.x)) + -595f), _wgslsmith_f_op_f32(var_2.d.x + _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1852f))) - vec3<f32>(var_2.d.x, var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f * -704f)))), all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-776f * -1114f), 1263f, arg_2.x, 1155f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(734f - _wgslsmith_f_op_f32(step(-1407f, -804f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -510f, arg_2.x, -440f), vec4<f32>(arg_2.x, 258f, arg_2.x, 1139f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -699f, arg_2.x))), vec4<f32>(2459f, -2037f, _wgslsmith_f_op_f32(trunc(arg_2.x)), -1653f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_2.x, var_0.x, 1683f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(583f, arg_2.x, var_0.x, var_0.x))), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1043f, arg_2.x, var_0.x, arg_2.x), vec4<f32>(arg_2.x, 123f, var_0.x, arg_2.x), vec4<bool>(true, true, false, arg_0))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, arg_2.x, arg_2.x, 1387f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -495f, var_0.x, 203f))))) * vec4<f32>(_wgslsmith_f_op_f32(min(-1420f, -1996f)), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(1000f * 642f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1361f, arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 1195f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, 269f, 1275f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_0.x, 681f, 405f)))))));
    var var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(arg_2.x + var_0.x) >= 978f) & select(all(!vec2<bool>(arg_0, arg_0)), all(vec2<bool>(true, arg_0)), arg_0), var_0.x == var_0.x, !arg_0);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1215f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1779f) - -1588f)) + _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * arg_2.x), _wgslsmith_f_op_f32(-363f - var_0.x))))), abs(u_input.c.x) << (_wgslsmith_div_u32(u_input.b.x, 1u) % 32u));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1276f, var_0.x, 550f, -1936f), vec4<f32>(var_2.b, arg_2.x, 666f, -1239f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-610f + -1000f), var_2.b, _wgslsmith_f_op_vec3_f32(func_3(-14835i)).x))))));
    return _wgslsmith_sub_u32(u_input.b.x, 69959u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = abs(vec2<u32>(func_4(any(vec2<bool>(false, true)) && true, arg_0.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(392f, 450f, 1914f))))), _wgslsmith_div_u32(1u, u_input.b.x)));
    global0 = array<i32, 27>();
    var var_1 = Struct_2(598f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-794f + -1249f) - _wgslsmith_f_op_f32(sign(-1000f)))), abs(arg_1.x));
    var var_2 = ~(-select(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_1.c, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], 8379i), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, global0[_wgslsmith_index_u32(43164u, 27u)]), arg_0.yx), u_input.a.x, _wgslsmith_mod_i32(-28825i, -71480i)), vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(3107f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1040f, var_1.b, var_1.b >= var_1.b)), _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-1000f * var_1.b)))), 271f));
    return Struct_1(0u, u_input.b, countOneBits(min(u_input.c.xx, vec2<u32>(var_1.c, var_0.x) | var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1105f, 112f, -172f, var_1.a), vec4<f32>(var_3, var_1.a, var_3, var_3))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, -248f, var_3) + vec4<f32>(var_3, -256f, var_3, var_3))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1456f, var_1.a, var_3, 1374f), vec4<f32>(var_1.a, -640f, var_1.a, -1882f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_3, -1000f, 720f)) - vec4<f32>(258f, var_1.b, 886f, -175f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = func_2(-vec3<i32>(u_input.a.x, 1i, ~49926i), vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(1u, 3739u), countOneBits(46931u << (u_input.b.x % 32u))), u_input.c.x, abs(14755u)));
    let var_1 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~77211u, var_0.c.x), ~func_2(vec3<i32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec3<u32>(26747u, u_input.b.x, var_0.c.x)).b.x), var_0.b, firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, 75616u), vec2<u32>(var_0.c.x, u_input.c.x)) << (~u_input.c.ww % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(func_2(vec3<i32>(-1i) * -vec3<i32>(arg_0.x, 2147483647i, 0i), abs(var_0.b.www) ^ firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, var_0.c.x))).d)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -721f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec4<bool>(any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(37355u, 27u)] <= global0[_wgslsmith_index_u32(96050u, 27u)], true, all(vec2<bool>(true, false))), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))), ~0u <= ~u_input.c.x));
    var var_1 = func_1(vec2<i32>(i32(-1i) * -1i, i32(-1i) * -u_input.a.x), false);
    var_1 = Struct_1(~select(var_1.b.x, var_1.a, false), u_input.b >> (_wgslsmith_add_vec4_u32(u_input.c, var_1.b) % vec4<u32>(32u)), _wgslsmith_div_vec2_u32(max(vec2<u32>(_wgslsmith_div_u32(var_1.a, u_input.c.x), u_input.b.x), vec2<u32>(43450u, 722u) << (abs(vec2<u32>(0u, var_1.c.x)) % vec2<u32>(32u))), ~min(vec2<u32>(1u, u_input.c.x), _wgslsmith_mod_vec2_u32(u_input.c.wy, var_1.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1196f)), var_1.d.x, _wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, var_0)), _wgslsmith_f_op_f32(round(var_1.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.d)))))));
    let var_2 = ~(~var_1.b.x);
    var var_3 = !any(!(!(!vec3<bool>(var_0, var_0, var_0))));
    var var_4 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, countOneBits(var_1.a), 1u), ~10639u);
    let var_5 = Struct_2(_wgslsmith_f_op_f32(select(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0)), 1f, u_input.b.x);
    let var_6 = Struct_1(~_wgslsmith_mod_u32(countOneBits(1u), 1u), var_1.b, u_input.b.zy, _wgslsmith_f_op_vec4_f32(-func_1(_wgslsmith_clamp_vec2_i32(u_input.a, abs(vec2<i32>(global0[_wgslsmith_index_u32(var_1.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), u_input.a), true).d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~var_5.c), 42324u | firstTrailingBit(var_6.c.x)) | ~func_2(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 7962i, -2147483647i)), var_6.b.zzw & vec3<u32>(var_1.b.x, 36504u, var_6.c.x)).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_6.d.xyy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, var_1.d.x, var_6.d.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, var_1.d.x, var_5.a))))), ~22415u, var_1.d.wz, firstTrailingBit(0i));
}

