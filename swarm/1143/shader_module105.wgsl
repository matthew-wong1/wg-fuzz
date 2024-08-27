struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1450f));
    let var_1 = Struct_2(~u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, 1144f)), vec2<f32>(286f, arg_1), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true)))), vec2<f32>(-463f, 433f))));
    let var_2 = u_input.c.x;
    var var_3 = 0i;
    let var_4 = arg_1;
    return _wgslsmith_dot_vec2_u32(u_input.a, u_input.a);
}

fn func_2() -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_5(Struct_2(~(-select(vec4<i32>(21221i, -40177i, -1i, u_input.c.x), u_input.e, vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(206f, -164f))) + vec2<f32>(_wgslsmith_f_op_f32(-338f * -296f), _wgslsmith_f_op_f32(max(1786f, 599f))))));
    let var_2 = vec4<u32>(6543u, 28441u, u_input.d >> (~u_input.b % 32u), 90047u << (func_3(false, var_1.a.b.x) % 32u)) | _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b)) & vec4<u32>(0u, u_input.b | 4294967295u, 1u & u_input.a.x, 1961u >> (u_input.a.x % 32u)), abs(vec4<u32>(~u_input.a.x, u_input.d, u_input.b, 4294967295u)));
    var_1 = Struct_5(var_1.a);
    var var_3 = Struct_3(select(!(all(vec4<bool>(true, true, false, false)) == false), true, any(vec2<bool>(19523u != var_2.x, true))), Struct_1(vec3<bool>(true, -355f >= _wgslsmith_f_op_f32(-var_1.a.b.x), false), 10848i), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.b.x, var_1.a.b.x))) >= 2310f, var_1.a.b.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1916f, var_1.a.b.x)), true, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(169f + 1596f);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = !all(arg_0);
    let var_1 = u_input.c.x;
    let var_2 = u_input.c;
    let var_3 = u_input.b;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), -400f), 162f);
    return arg_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), vec3<bool>(true, false, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, -1322f, 2230f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(step(-1313f, 1026f)), -914f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, 1890f, 1445f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1707f, 2214f, -627f), vec3<f32>(-1013f, -560f, -325f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, -1248f, 1118f))))));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, (u_input.e.x | u_input.c.x) | ~14911i), ~(-u_input.e.zy ^ vec2<i32>(-48965i, u_input.c.x))) | (-(select(vec2<i32>(0i, -1i), vec2<i32>(u_input.e.x, u_input.c.x), vec2<bool>(true, var_0.x)) << (vec2<u32>(u_input.d, u_input.a.x) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(-u_input.c.xy, u_input.e.zw, u_input.c.zz));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + var_1.x) * _wgslsmith_div_f32(-382f, -455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1520f)))) * vec3<f32>(256f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-355f, var_1.x, var_0.x)), -1394f)))));
    let var_4 = Struct_4(vec3<u32>(~(~u_input.a.x), firstTrailingBit(_wgslsmith_clamp_u32(23015u, u_input.b, u_input.d)) >> (u_input.b % 32u), 54085u), vec2<bool>(_wgslsmith_f_op_f32(-var_3.x) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(min(-2382f, var_1.x)))), abs(i32(-1i) * -40310i) > var_2.x), select(!vec4<bool>(select(true, var_0.x, true), all(vec3<bool>(true, true, var_0.x)), any(vec3<bool>(true, var_0.x, true)), true), vec4<bool>(!any(vec3<bool>(false, var_0.x, var_0.x)), any(vec2<bool>(true, true)), any(func_1(vec4<bool>(false, true, false, var_0.x), u_input.a.x, vec3<u32>(1u, 1u, 1u), vec3<bool>(var_0.x, true, var_0.x))), !var_0.x | true), select(select(!vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(false, true, var_0.x, false), var_0.x), var_0.x), vec4<bool>(var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), any(vec3<bool>(var_0.x, var_0.x, true)), -530i < var_2.x), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zy, vec2<u32>(func_3(false, var_3.x) | 37697u, firstTrailingBit(~var_4.a.x)) & vec2<u32>(u_input.d, 1u));
}

