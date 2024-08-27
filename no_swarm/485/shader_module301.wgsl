struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    let var_0 = any(!vec3<bool>(false, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(u_input.a, select(select(vec4<bool>(false, 2894u >= u_input.a, var_0, arg_1.x != arg_2), select(!vec4<bool>(false, true, var_0, false), !vec4<bool>(var_0, var_0, true, var_0), !var_0), true), vec4<bool>(all(vec4<bool>(false, false, var_0, false)), true, true, true), true));
    let var_2 = Struct_1(~_wgslsmith_mod_u32(~var_1.a, _wgslsmith_div_u32(0u, arg_2)) >> (_wgslsmith_add_u32(firstLeadingBit(1u), ~arg_1.x) % 32u), select(var_1.b, !var_1.b, var_1.a > (arg_1.x ^ var_1.a)));
    var var_3 = Struct_2(Struct_1(27738u << (var_1.a % 32u), select(vec4<bool>(select(var_2.b.x, false, true), true, !var_2.b.x, true), var_2.b, select(vec4<bool>(var_1.b.x, false, var_1.b.x, false), select(var_1.b, vec4<bool>(var_0, true, true, var_1.b.x), vec4<bool>(var_0, false, true, true)), var_1.b.x))), Struct_1(arg_1.x, vec4<bool>(false, var_2.b.x, false, arg_0 <= _wgslsmith_f_op_f32(-arg_0))), firstLeadingBit(select(vec4<u32>(1u, arg_2, 60505u, var_2.a) >> (vec4<u32>(var_1.a, 1u, 42293u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 26555u, 31482u, u_input.a), !vec4<bool>(true, var_1.b.x, true, var_2.b.x))) << (~vec4<u32>(1u, min(var_2.a, arg_2), arg_1.x, firstLeadingBit(var_1.a)) % vec4<u32>(32u)), var_2, Struct_1(var_1.a, vec4<bool>(_wgslsmith_f_op_f32(arg_0 + -697f) < _wgslsmith_f_op_f32(1000f - 507f), (u_input.d.x | 0i) >= min(u_input.d.x, -1i), select(var_0, true, any(var_1.b.zx)), !var_0)));
    let var_4 = Struct_1(_wgslsmith_dot_vec4_u32(~var_3.c << (abs(_wgslsmith_mult_vec4_u32(var_3.c, var_3.c)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(var_3.c, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, 62757u, arg_1.x, 17589u)), vec4<u32>(var_1.a, 0u, var_2.a, var_1.a)))), vec4<bool>(!var_2.b.x, all(select(vec2<bool>(var_0, false), var_3.d.b.zx, vec2<bool>(true, false))), false, !(!var_0)));
    return (~10879u & reverseBits(min(_wgslsmith_mod_u32(78489u, var_3.c.x), _wgslsmith_mod_u32(arg_2, var_3.d.a)))) << (_wgslsmith_sub_u32(93189u, abs(u_input.a)) % 32u);
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_u32(u_input.a, ~func_3(-457f, select(vec3<u32>(u_input.a, 47883u, 40032u), vec3<u32>(50998u, u_input.a, 44876u), true), min(u_input.a, 0u))), arg_0);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f * 1154f)))));
    var var_3 = Struct_2(var_1, var_0, ~(~((vec4<u32>(var_1.a, var_1.a, 1u, u_input.a) | vec4<u32>(0u, 119639u, u_input.a, 4294967295u)) >> (vec4<u32>(43992u, 1u, var_0.a, u_input.a) % vec4<u32>(32u)))), Struct_1(1u, select(var_1.b, !vec4<bool>(var_1.b.x, true, true, var_1.b.x), vec4<bool>(all(var_0.b.xx), !arg_0.x, !var_0.b.x, var_1.b.x))), var_1);
    var var_4 = Struct_2(var_1, Struct_1(~1u, select(var_1.b, !vec4<bool>(true, arg_0.x, false, false), vec4<bool>(any(var_1.b.wzz), true, !arg_0.x, true))), vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u)), var_3.e.a), 88414u, _wgslsmith_dot_vec2_u32(var_3.c.wz, ~vec2<u32>(var_3.b.a, u_input.a))), Struct_1(reverseBits(var_3.a.a), vec4<bool>(!(var_2.x > var_2.x), !any(vec3<bool>(false, var_3.b.b.x, var_0.b.x)), all(var_0.b.xx), _wgslsmith_mod_u32(u_input.a, var_1.a) == _wgslsmith_dot_vec3_u32(var_3.c.xxy, var_3.c.xwx))), Struct_1(var_3.d.a, select(select(select(var_0.b, vec4<bool>(var_3.b.b.x, var_1.b.x, true, false), vec4<bool>(true, true, false, true)), !arg_0, var_1.b), !var_1.b, arg_0)));
    return select(select(select(select(!vec4<bool>(var_0.b.x, false, var_3.e.b.x, true), !var_1.b, all(var_1.b.xxz)), select(var_1.b, !vec4<bool>(var_1.b.x, true, false, true), all(vec4<bool>(var_3.d.b.x, false, true, false))), !select(vec4<bool>(true, var_0.b.x, false, true), var_4.e.b, vec4<bool>(true, false, true, var_4.b.b.x))), !arg_0, true), select(select(!var_3.d.b, !vec4<bool>(arg_0.x, true, false, true), !all(vec4<bool>(arg_0.x, false, var_1.b.x, var_0.b.x))), arg_0, select(var_0.b, vec4<bool>(var_0.b.x | true, select(arg_0.x, var_4.b.b.x, var_1.b.x), u_input.d.x < -41232i, var_1.b.x), any(!vec4<bool>(false, true, true, var_0.b.x)))), vec4<bool>(!select(var_1.b.x, all(vec3<bool>(true, false, false)), var_4.b.b.x), !(!any(vec3<bool>(var_3.e.b.x, var_4.e.b.x, arg_0.x))), !var_0.b.x, any(arg_0.xzz)));
}

fn func_1() -> vec4<bool> {
    return select(select(vec4<bool>(true, true, true, all(func_2(vec4<bool>(true, false, false, false)))), vec4<bool>(true, true, true, true), !func_2(vec4<bool>(false, true, true, true))), vec4<bool>(any(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), !(!select(true, true, false)), true, false), any(vec2<bool>(true, all(vec3<bool>(false, true, true)))) && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) + _wgslsmith_f_op_f32(106f + 1190f))))), _wgslsmith_f_op_f32(abs(480f)));
    let var_1 = Struct_1(1u, select(func_1(), vec4<bool>(true, true, true, true), true));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f * var_0.x) - 535f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2746f)))), !(!(var_0.x != var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), vec2<bool>(false, true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, 720f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1561f)))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-945f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1568f, var_0.x, var_1.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1852f + 1745f))))), 748f);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(select(-649f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - -102f), 1000f)), any(func_1().yx)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f))));
    var var_4 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, var_1.a, var_1.a)), vec3<u32>(var_1.a, var_2.a, abs(10403u))));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-928f * -293f)), var_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(1000f)))) + vec4<f32>(-985f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(719f * 2392f), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(814f, 1559f) + _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) - -567f))), ~(func_3(var_0.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 109560u, u_input.a), vec3<u32>(16692u, 1u, var_2.a)), _wgslsmith_mod_u32(1u, 1u)) ^ 201u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), 778f))));
}

