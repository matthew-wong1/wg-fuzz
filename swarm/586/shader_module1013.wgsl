struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2193f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-360f)) + -640f))));
    let var_0 = vec4<i32>(~(-1i), arg_1.b, _wgslsmith_mod_i32(0i, arg_1.b), -1i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))));
    var var_1 = firstTrailingBit(var_0.xz);
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-264f)), _wgslsmith_f_op_f32(f32(-1f) * -1650f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1213f, 961f, true)) + 1296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f)))), select(vec4<bool>(true, !any(vec2<bool>(true, true)), true, any(vec2<bool>(false, false))), !vec4<bool>(true, true, any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false))), true), 7443i, -967f);
    return var_2.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.a.yx);
    var var_1 = Struct_2(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(56400u), _wgslsmith_add_u32(u_input.a, 37525u)), _wgslsmith_div_vec2_u32(vec2<u32>(30576u, 20812u), abs(vec2<u32>(u_input.b, 46894u)))), Struct_1(~(~0u), arg_3.c ^ -arg_3.c)));
    var_0 = vec2<f32>(952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-480f - var_0.x), _wgslsmith_f_op_f32(-arg_3.a.x)))) + _wgslsmith_f_op_f32(1265f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_3.d)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.x))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_3.a.yy - arg_3.a.zz), _wgslsmith_f_op_vec2_f32(arg_3.a.yx * vec2<f32>(var_0.x, -1070f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_3.a.xy + arg_3.a.xz)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1672f * -197f)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f - _wgslsmith_f_op_f32(var_0.x - arg_3.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, -135f))))));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, arg_0), vec3<i32>(1i, 78233i, -1i), vec3<u32>(u_input.a, 1u, 1u), Struct_4(vec3<f32>(387f, -1253f, -1249f), vec4<bool>(false, true, true, arg_0), 21322i, -471f)))) - _wgslsmith_f_op_f32(-1837f * -1846f))))));
    var var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, 53183u), vec2<u32>(78654u, 4294967295u)), vec2<u32>(u_input.c, 63981u)), countOneBits(~vec2<u32>(4294967295u, 41164u)))), min(vec2<u32>(~(~u_input.b), 4294967295u), ~vec2<u32>(16793u, u_input.c | u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-975f, _wgslsmith_f_op_f32(-1780f * 628f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1134f)) + _wgslsmith_f_op_f32(196f * 1000f)), _wgslsmith_f_op_f32(min(782f, _wgslsmith_f_op_f32(1000f + -523f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(568f, -772f) - vec2<f32>(-227f, 579f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(502f, -1000f), vec2<f32>(-953f, -276f), vec2<bool>(false, true))), any(vec2<bool>(arg_0, arg_0)))))));
    let var_2 = i32(-1i) * -1i;
    let var_3 = Struct_3(var_2, Struct_1(select(var_0.x, firstTrailingBit(48164u), arg_0) ^ var_0.x, 0i), -624f, ~(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_2, 21546i))), Struct_2(select(!(!arg_0), any(!vec4<bool>(true, true, arg_0, arg_0)), _wgslsmith_clamp_i32(var_2, -15888i, -2147483647i) >= 1i)));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(false)), -1639f)), _wgslsmith_f_op_f32(func_2(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), select(true, true, true)), firstLeadingBit(max(vec3<i32>(59143i, 4298i, 1i), vec3<i32>(-1i, -25042i, -14482i))), ~vec3<u32>(38972u, u_input.b, u_input.b), Struct_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1156f, 423f, 577f))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), i32(-1i) * -22890i, _wgslsmith_f_op_f32(min(-107f, -715f))))), _wgslsmith_f_op_f32(select(1745f, _wgslsmith_f_op_f32(f32(-1f) * -549f), true))), vec4<bool>(true, true, all(vec4<bool>(true, true, false, all(vec2<bool>(false, true)))), func_3(vec2<u32>(~51189u, ~u_input.b), Struct_1(_wgslsmith_mod_u32(8494u, 58801u), ~2147483647i))), -(~(-1i)), 1f);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(156f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + 1000f))))), var_0.d);
    var var_1 = Struct_3(var_0.c, Struct_1(_wgslsmith_mult_u32(~(~4688u), u_input.a), firstLeadingBit(_wgslsmith_mod_i32(var_0.c, -2147483647i))), -1000f, select(vec3<i32>(_wgslsmith_clamp_i32(var_0.c, var_0.c, 11692i), -1i, 11336i), ~vec3<i32>(1i, var_0.c, 1i), !var_0.b.xxw) ^ vec3<i32>(-31255i, _wgslsmith_add_i32(var_0.c, abs(0i)), _wgslsmith_mod_i32(-2147483647i, var_0.c)), Struct_2(var_0.b.x));
    let var_2 = true || !var_0.b.x;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_3.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, var_1.c, var_3.d))), select(true, false, var_1.e.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d - var_3.d), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(802f - -641f)) + _wgslsmith_f_op_vec3_f32(var_3.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(702f, var_3.a.x, 1542f) * vec3<f32>(var_3.d, -739f, 258f)))), var_2 & false)), -vec2<i32>(min(_wgslsmith_mod_i32(var_1.b.b, -2147483647i), 2147483647i >> (var_1.b.a % 32u)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, -2147483647i, 0i, var_0.c), vec4<i32>(-1121i, -1i, 49304i, var_3.c)))), var_1.d.zy, vec2<i32>(-var_3.c, 5703i));
}

