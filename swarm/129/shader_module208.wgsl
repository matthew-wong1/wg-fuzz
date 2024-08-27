struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = !(!select(select(select(arg_1.zyx, vec3<bool>(arg_2.a, true, arg_1.x), arg_2.a), !arg_1.wwy, arg_1.zzz), vec3<bool>(arg_2.a, !arg_1.x, arg_2.b.x >= arg_2.b.x), !vec3<bool>(arg_1.x, false, arg_1.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-299f + 1502f) + arg_2.b.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.x)) + _wgslsmith_f_op_f32(step(-464f, -1000f))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: f32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(false, vec3<f32>(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))), u_input.b.xz), Struct_1(-853f >= _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, 217f, 587f), vec3<f32>(arg_3, arg_3, 1557f), false))))), u_input.b.zz), u_input.c);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1531f * -920f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.b.b.x)))))), _wgslsmith_f_op_f32(floor(arg_3))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a.b.zy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, var_0.b.b.x) * var_0.b.b.xz)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3))));
    var_0 = Struct_2(Struct_1(any(!select(vec4<bool>(false, var_0.a.a, var_0.b.a, false), vec4<bool>(var_0.a.a, false, var_0.a.a, true), vec4<bool>(var_0.a.a, var_0.b.a, false, var_0.b.a))), _wgslsmith_f_op_vec3_f32(var_0.a.b - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_0.b.b, vec3<f32>(arg_2, 516f, arg_2)))))), vec2<i32>(-var_0.b.c.x, i32(-1i) * -12596i)), Struct_1(var_0.b.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f + var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + 378f) - var_3.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 + var_2)))), u_input.b.xx), 51456u);
    return _wgslsmith_div_vec4_f32(vec4<f32>(-645f, _wgslsmith_f_op_f32(-var_2), arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(281f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1628f, var_0.a.b.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, var_0.b.b.x, arg_2, arg_3)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(475f - var_2), var_3.x, -914f)))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(537f, -345f, 451f, 2118f) + _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.x, -1114f, -812f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-275f, 102f), 1247f, _wgslsmith_f_op_f32(f32(-1f) * -291f), -133f))));
    let var_1 = select(max(vec2<u32>(~u_input.c, abs(17831u)), vec2<u32>(reverseBits(u_input.c), ~u_input.a.x)), vec2<u32>(_wgslsmith_add_u32(u_input.c, 0u), 4294967295u), select(vec2<bool>(true, u_input.d >= u_input.b.x), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))) | ~(~select(u_input.a.zy, abs(vec2<u32>(54800u, u_input.c)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * -1092f), _wgslsmith_f_op_f32(f32(-1f) * -1604f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(-37173i, vec4<bool>(false, false, true, false), Struct_1(false, var_0.xxx, vec2<i32>(u_input.d, 4477i)))), -1086f, _wgslsmith_f_op_f32(min(var_0.x, -818f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, 1821f, 824f, var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2036f, var_0.x, var_0.x, var_0.x) + vec4<f32>(654f, var_0.x, var_0.x, 1811f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 286f))), _wgslsmith_f_op_f32(min(var_0.x, 171f)), _wgslsmith_f_op_f32(select(1352f, _wgslsmith_f_op_f32(-1000f + var_0.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -2053f)), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -414f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-726f, 1000f, -823f, var_0.x), vec4<f32>(var_0.x, 533f, -544f, var_0.x), vec4<bool>(false, true, true, true)))))));
    var var_2 = any(select(vec3<bool>(_wgslsmith_div_f32(-744f, var_0.x) > _wgslsmith_f_op_f32(var_0.x - 918f), all(vec4<bool>(true, false, false, false)) && false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-23458i, vec4<bool>(false, true, true, true), Struct_1(true, vec3<f32>(-414f, 2194f, 315f), u_input.b.zx))) - -917f), -1188f))), -201f, -1000f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(func_2())))) != var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(-681f, -1055f, true)), _wgslsmith_div_f32(925f, 112f))))), vec2<i32>(u_input.d, 4191i));
    let var_2 = var_0.x;
    let var_3 = vec4<f32>(var_2, 696f, var_0.x, _wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-966f, _wgslsmith_div_f32(var_2, var_2)))));
    let var_4 = _wgslsmith_f_op_f32(-var_2);
    let var_5 = var_1;
    let var_6 = Struct_1(var_5.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, 569f)), var_5.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_5.b.x))), -vec2<i32>(~23998i, ~abs(var_1.c.x)));
    let var_7 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3 - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.x, -1221f, -1193f, -468f)) - var_3)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, -2016f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_4), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) * var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec3_i32(countOneBits(u_input.b), -vec3<i32>(-13417i, var_6.c.x, 27134i), -(~vec3<i32>(0i, -2147483647i, var_5.c.x))), u_input.b), _wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -383f), 1495f)), abs(abs(min(u_input.a.x, 1u))));
}

