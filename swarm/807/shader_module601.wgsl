struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -935f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(401f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 414f), -1376f)) + _wgslsmith_f_op_f32(-879f - _wgslsmith_f_op_f32(f32(-1f) * -486f)))));
    var var_1 = u_input.d;
    var_0 = -450f;
    var var_2 = u_input.c;
    var_1 = vec4<u32>(~(~var_1.x), _wgslsmith_mod_u32(reverseBits(~15272u), ~17901u), 0u, 1u);
    return _wgslsmith_f_op_f32(ceil(3503f));
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(466f - 2527f), _wgslsmith_f_op_f32(573f - _wgslsmith_f_op_f32(159f - _wgslsmith_f_op_f32(-1747f - 2215f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1888f, 1416f) + _wgslsmith_div_f32(1000f, -341f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-477f, -1000f, 1000f), vec3<f32>(var_0.x, -1000f, 631f), false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2373f, var_0.x, var_0.x))))) + vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -846f)))));
    let var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1174f, -538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * var_0.x))));
    return all(vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = select(select(vec4<bool>(true, select(any(vec4<bool>(arg_0.x, false, false, arg_0.x)), false, false), all(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(false, false, true), vec3<bool>(false, arg_0.x, false))), (-1i >> (u_input.b.x % 32u)) <= -1i), select(vec4<bool>(false, u_input.d.x != 86188u, all(vec4<bool>(true, arg_0.x, arg_0.x, false)), arg_0.x), select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), func_2()), !select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), true), vec4<bool>(arg_0.x & any(vec2<bool>(true, false)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-214f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), arg_0.x), vec4<bool>(!(_wgslsmith_f_op_f32(sign(176f)) >= _wgslsmith_f_op_f32(round(255f))), arg_0.x, arg_0.x, !arg_0.x));
    let var_1 = ~(u_input.c.x ^ _wgslsmith_mod_i32((-3103i & u_input.c.x) & u_input.a.x, firstLeadingBit(~u_input.c.x)));
    var var_2 = ~(~(~(u_input.d.x << (u_input.d.x % 32u))) << ((u_input.b.x | _wgslsmith_div_u32(u_input.b.x, 1u)) % 32u));
    let var_3 = !(!vec2<bool>(true, var_0.x));
    global0 = -638f;
    return Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, u_input.c.x, -68232i, var_1), ~vec4<i32>(-5403i, var_1, -1i, 0i)), var_0.yzz, select(vec3<bool>(var_0.x, true, !arg_0.x), select(vec3<bool>(false, false, false), var_0.yzz, vec3<bool>(var_0.x, arg_0.x, arg_0.x)), var_3.x)), select(vec3<bool>(var_0.x, arg_0.x, true), var_0.zyz, !any(vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1612f))), -1336f)), -2962f, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(1286f)))))), Struct_1(-u_input.a, vec3<bool>(arg_0.x, !(var_3.x & var_0.x), any(vec4<bool>(false, false, var_0.x, true))), vec3<bool>(true, all(select(vec4<bool>(var_3.x, var_3.x, var_0.x, arg_0.x), vec4<bool>(var_3.x, true, false, arg_0.x), false)), var_0.x != var_0.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(round(-1000f));
    var var_0 = Struct_5(func_4(vec2<bool>(!all(vec3<bool>(true, false, false)), func_2() || any(vec4<bool>(false, true, false, true)))), vec4<f32>(-960f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(-1662f + -490f)), _wgslsmith_f_op_f32(func_4(vec2<bool>(false, true)).c.x * -811f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2, -955f))))), Struct_2(!vec3<bool>(any(vec4<bool>(false, true, false, true)), true, all(vec2<bool>(true, true))), abs(u_input.b.x) << (0u % 32u), vec2<bool>(select(all(vec4<bool>(false, false, true, false)), true, true), false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(221f, 965f)))))), !(!(true & (arg_2 > arg_0.x))));
    global0 = 1162f;
    let var_1 = Struct_4(select(max(u_input.a.x, _wgslsmith_div_i32(-5655i, _wgslsmith_dot_vec2_i32(var_0.a.a.a.wy, u_input.c.zz))), abs(_wgslsmith_clamp_i32(-29610i, 0i, firstLeadingBit(var_0.a.d.a.x))), var_0.d || true), -countOneBits(vec2<i32>(var_0.a.d.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(43348i, -31168i, u_input.a.x, 23959i), vec4<i32>(var_0.a.d.a.x, -2147483647i, 664i, arg_1)))), Struct_3(var_0.a.a, !(!vec3<bool>(var_0.c.c.x, var_0.d, var_0.d)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.d, arg_2))), 1f, _wgslsmith_f_op_f32(exp2(arg_0.x)), -981f), var_0.a.a), firstLeadingBit(u_input.d), func_4(!var_0.a.d.c.yx).b.xx);
    var var_2 = u_input.a.x;
    return Struct_1(var_1.c.a.a, var_1.c.d.c, vec3<bool>(var_1.e.x, select(true, !(2147483647i > var_0.a.a.a.x), var_1.c.b.x), !var_1.c.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f + 137f))) - -835f) - -614f);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1395f, -1313f))))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    var var_1 = ~2147483647i;
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - var_0.x))), -326f);
    let var_2 = Struct_5(Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(u_input.a, ~u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(any(vec2<bool>(true, false)), true, false)), vec3<bool>(true, true, !any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, 551f, -244f, 355f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, -1192f, -597f))))), func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-639f, var_0.x))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f + 211f) - -1558f))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, var_0.x, 1048f), Struct_2(vec3<bool>(true, true, func_4(vec2<bool>(true, false)).a.c.x), ~(~51880u), vec2<bool>(true, false), _wgslsmith_f_op_f32(min(func_4(vec2<bool>(true, true)).c.x, var_0.x))), false);
    var var_3 = Struct_4(firstLeadingBit(min(-u_input.a.x & countOneBits(var_2.a.a.a.x), ~(~var_2.a.a.a.x))), u_input.a.zy, Struct_3(Struct_1(var_2.a.d.a >> (~vec4<u32>(u_input.d.x, 68299u, 1u, 41447u) % vec4<u32>(32u)), var_2.a.b, !var_2.c.a), vec3<bool>(false, false, !var_2.c.c.x & true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b)), var_2.a.d), vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 40968u, 10692u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(25289u), u_input.b.x), _wgslsmith_div_u32(~var_2.c.b, ~20516u), ~u_input.d.x), 11643u, 2521u), var_2.a.d.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1410f * var_0.x) * var_3.c.c.x))), vec2<i32>(~(~(var_3.c.d.a.x ^ u_input.a.x)), 2147483647i ^ firstTrailingBit(2147483647i)));
}

