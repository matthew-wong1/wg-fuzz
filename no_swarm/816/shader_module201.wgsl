struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = abs(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), max(u_input.e, 4294967295u)), u_input.b.x, (29164u ^ u_input.e) | 30090u));
    let var_1 = max((u_input.b.zy & ~_wgslsmith_div_vec2_u32(u_input.b.yx, u_input.b.yy)) >> (u_input.b.zx % vec2<u32>(32u)), select(firstTrailingBit(abs(vec2<u32>(1u, u_input.b.x))), vec2<u32>(1u, 1u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))) ^ u_input.b.yx);
    var var_2 = true;
    return vec3<u32>(abs(~(~var_0)), u_input.e, var_0) & (u_input.b & u_input.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = !(true != all(vec4<bool>(all(vec2<bool>(true, arg_2)), arg_1.x, true, true)));
    var var_2 = Struct_3(u_input.b);
    var var_3 = Struct_3(func_3());
    let var_4 = ~firstLeadingBit(~(~(~vec4<u32>(u_input.e, 49991u, 4294967295u, var_2.a.x))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1333f, 563f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-198f, -1337f, arg_0.x), arg_0, true))) * vec3<f32>(_wgslsmith_div_f32(arg_0.x, -1199f), arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, var_0)))), _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -1000f, var_0), arg_0)))), true))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(-1072f, arg_0, select(vec2<bool>(arg_0 && arg_0, false), select(vec2<bool>(arg_0, u_input.c >= u_input.d), vec2<bool>(!arg_0, select(true, arg_0, arg_0)), vec2<bool>(true, true)), vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(f32(-1f) * -2732f), _wgslsmith_f_op_f32(-1077f * 106f), _wgslsmith_f_op_f32(abs(-897f)))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1935f, 190f, -225f)), vec2<bool>(arg_0, arg_0), false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(406f, -436f, 590f) - vec3<f32>(143f, -825f, 142f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, 808f, 1574f) + vec3<f32>(-115f, 452f, 1000f))), false))));
    var var_1 = Struct_2(!all(select(vec2<bool>(false, arg_0), var_0.c, false)) || !arg_0, -1122f);
    let var_2 = _wgslsmith_f_op_f32(step(var_1.b, 1096f));
    var var_3 = all(select(select(vec4<bool>(!var_1.a, var_1.a, any(vec2<bool>(var_1.a, false)), var_1.a), vec4<bool>(false, 31217i < u_input.d, var_1.a, var_1.a), arg_0 | !var_0.b), select(vec4<bool>(any(vec2<bool>(false, true)), var_1.a, true, any(vec4<bool>(var_1.a, var_0.c.x, false, arg_0))), vec4<bool>(var_0.b, var_0.b, true, var_1.a), select(select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(var_0.b, false, false, arg_0), false), vec4<bool>(false, false, var_0.b, true), false)), vec4<bool>(var_1.a, !var_1.a, u_input.e >= 1u, !var_1.a)));
    var_1 = Struct_2(false, var_2);
    return Struct_2(all(select(select(select(vec3<bool>(var_1.a, var_0.c.x, var_0.c.x), vec3<bool>(true, var_0.c.x, true), true), vec3<bool>(false, false, var_1.a), select(true, var_0.b, var_1.a)), vec3<bool>(u_input.a == u_input.a, true, any(vec4<bool>(true, arg_0, arg_0, false))), vec3<bool>(!var_1.a, arg_0, false))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(5348u >= u_input.b.x));
    var var_1 = Struct_3(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-490f))))));
    var var_3 = Struct_1(var_0.b, true, !select(vec2<bool>(true, true), vec2<bool>(select(true, var_0.a, true), any(vec2<bool>(false, var_0.a))), var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) * _wgslsmith_f_op_f32(trunc(976f))), 840f, -275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 598f, var_0.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 374f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_2, var_0.b))))), vec3<f32>(896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2), vec3<bool>(false, true, var_0.a))));
    var var_4 = abs(max(~reverseBits(u_input.b), ~var_1.a)) ^ ~vec3<u32>(10964u, var_1.a.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, u_input.b.x), vec4<u32>(0u, 4294967295u, var_1.a.x, var_1.a.x))));
    var_0 = func_1(var_3.c.x);
    var var_5 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))) != _wgslsmith_f_op_f32(-801f * var_2)) != any(select(select(vec3<bool>(true, false, true), vec3<bool>(var_3.c.x, true, var_0.a), vec3<bool>(var_0.a, var_3.c.x, var_3.c.x)), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, true, var_0.a))));
    var_5 = var_0.a;
    var_5 = !any(vec4<bool>(var_3.c.x, all(select(vec2<bool>(false, false), var_3.c, true)), !func_1(var_3.b).a, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mod_i32(-1860i, abs(countOneBits(-1i))), ~var_4.x);
}

