struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-586f, 491f, -866f, -1850f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    var var_0 = 1i;
    var var_1 = Struct_2(-select(0i, ~abs(1i), true));
    let var_2 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14120i, var_1.a, 287i, 1i), -vec4<i32>(u_input.a.x, -332i, -1i, -1i)), select(var_1.a, _wgslsmith_mult_i32(var_1.a, 2147483647i), true)) >> (max(~0u, _wgslsmith_div_u32(abs(16090u), _wgslsmith_mult_u32(1u, 5352u))) % 32u), Struct_2((abs(u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(8087u, 44725u), vec2<u32>(1u, 4294967295u)) % 32u)) & var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-254f))))), Struct_1(global0.a));
    var var_3 = !any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(var_2.a <= 2147483647i, true), vec2<bool>(true, true)));
    let var_4 = select(!(_wgslsmith_f_op_f32(max(-695f, _wgslsmith_f_op_f32(exp2(var_2.c)))) >= global0.a.x), true, true);
    return !vec3<bool>(any(vec3<bool>(any(vec3<bool>(var_4, false, true)), var_4, var_4)), select(all(vec2<bool>(var_4, true)), _wgslsmith_f_op_f32(f32(-1f) * -976f) >= _wgslsmith_f_op_f32(-var_2.c), var_4), false);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(u_input.a.yx | u_input.c), vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(u_input.c.x, -63820i))), Struct_2(i32(-1i) * -firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), Struct_1(global0.a));
    var_0 = Struct_3(arg_0, Struct_2(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, var_0.c))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * var_0.d.a) + _wgslsmith_f_op_vec4_f32(-var_0.d.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-970f, var_0.d.a.x, var_0.d.a.x, var_0.d.a.x)))))));
    let var_1 = _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(max(320f, -2076f))));
    var var_2 = !select(vec3<bool>(true, true, true), func_3(), true);
    var_0 = Struct_3(abs(u_input.a.x), var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x - global0.a.x))), var_0.d);
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = ~vec4<u32>(~1u, 1u, abs(0u), ~(~0u));
    var var_1 = Struct_2(u_input.a.x);
    global0 = Struct_1(arg_0.a);
    var_1 = Struct_2(~u_input.a.x);
    var_1 = Struct_2(countOneBits(abs(~u_input.b.x)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = func_2(arg_1.b.a);
    var var_1 = true;
    var_1 = true;
    let var_2 = vec4<u32>(1u, ~1u, 1u, ~1u);
    let var_3 = arg_1.d.a.zz;
    return _wgslsmith_sub_vec3_u32(~var_2.zyx, _wgslsmith_add_vec3_u32(~(~var_2.wxz), _wgslsmith_div_vec3_u32(var_2.zzy, vec3<u32>(~var_2.x, 1u, ~var_2.x))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-344f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f + 628f))), _wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x)))));
    let var_1 = Struct_3(-59529i, Struct_2(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-908f)))))), arg_0);
    var_0 = func_5(func_4(func_2(u_input.c.x), -15779i & _wgslsmith_div_i32(max(1i, var_1.a), u_input.c.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(-38895i, 2147483647i, u_input.c.x, -24465i) ^ vec4<i32>(var_1.a, 40136i, -8686i, -6040i), vec4<i32>(1i, var_1.a, var_1.b.a, u_input.a.x) | vec4<i32>(-1i, -1i, u_input.b.x, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1880f, global0.a.x)))), var_1);
    global0 = func_2(var_1.b.a);
    return -18744i;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.d.a.xwy)))));
    let var_2 = var_1.xy;
    let var_3 = arg_0.d.a;
    var_0 = Struct_3(-2147483647i, arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1065f)) - -281f))))), var_0.d);
    return func_4(func_2(~u_input.c.x), arg_0.a, _wgslsmith_clamp_vec4_i32(max(vec4<i32>(func_1(arg_0.d), var_0.b.a, 745i, -1i), ~(-vec4<i32>(var_0.a, arg_0.b.a, var_0.a, 8498i))), -vec4<i32>(_wgslsmith_clamp_i32(7148i, 3840i, arg_0.b.a), arg_0.a, u_input.b.x | 1i, 1i), (vec4<i32>(3432i, arg_0.a, var_0.b.a, 10040i) & vec4<i32>(-31720i, -1i, -11087i, 2147483647i)) | -firstTrailingBit(vec4<i32>(2147483647i, 11240i, arg_0.a, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1628f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_3(_wgslsmith_div_i32(-u_input.b.x, func_1(Struct_1(vec4<f32>(global0.a.x, -749f, global0.a.x, 453f)))), Struct_2(12249i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, global0.a.x, 684f, global0.a.x)))), -1i, abs(_wgslsmith_div_vec4_i32(vec4<i32>(-45462i, 0i, 1i, u_input.c.x), vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, 1i))), 189f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(148f))))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1923f, _wgslsmith_f_op_f32(min(-1240f, global0.a.x)), 1916f, _wgslsmith_f_op_f32(f32(-1f) * -1501f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))))), _wgslsmith_dot_vec2_u32(abs(~max(vec2<u32>(4764u, 16492u), vec2<u32>(1u, 4294967295u))), ~vec2<u32>(reverseBits(1u), 1u)));
    var var_0 = vec2<u32>(~(~(~0u) << (_wgslsmith_mod_u32(1u, 1u) % 32u)), 14858u);
    let var_1 = _wgslsmith_f_op_f32(751f * 348f);
    var_0 = reverseBits(vec2<u32>(~(~var_0.x) ^ var_0.x, _wgslsmith_mult_u32(countOneBits(var_0.x), var_0.x) << (var_0.x % 32u)));
    var var_2 = u_input.b.x;
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a)))))), u_input.b.x, _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, abs(u_input.a.x), u_input.b.x, ~30405i)), ~(-select(vec4<i32>(u_input.b.x, u_input.c.x, 1i, u_input.a.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, 35664i), vec4<bool>(false, false, false, false)))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 793f, 821f, var_1))), u_input.b.x, countOneBits(countOneBits(reverseBits(vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, u_input.c.x)))), 661f).a.x);
    let var_3 = Struct_3(2147483647i, Struct_2(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), func_6(Struct_3(40915i, Struct_2(23148i), 1332f, func_6(Struct_3(-7331i, Struct_2(u_input.a.x), 1907f, Struct_1(global0.a)), global0.a.x, Struct_1(vec4<f32>(1803f, global0.a.x, -849f, 218f)), ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -1000f, _wgslsmith_div_f32(var_1, 700f), _wgslsmith_f_op_f32(min(-584f, 1125f)))), ~(~(~4294967295u))));
    var var_4 = !all(vec4<bool>(true, true, true, true));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(~30591u), vec4<f32>(-201f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.d.a.x, -1636f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_1, -604f, 1117f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 284f, -1091f, 1000f)), _wgslsmith_f_op_vec4_f32(global0.a - var_3.d.a))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 405f, -1000f, global0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-1722f, 1100f, true)), _wgslsmith_f_op_f32(min(var_5.d.a.x, 1147f)), _wgslsmith_f_op_f32(exp2(global0.a.x)), 730f), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), var_1 <= var_1)))));
}

