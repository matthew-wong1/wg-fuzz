struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(755f, 714f, 285f) + vec3<f32>(-460f, -1263f, -252f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1295f, -1043f, 149f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1856f, -417f, -1058f), vec3<f32>(217f, -1112f, -319f), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-202f, -1147f, 978f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -213f, -613f), vec3<f32>(279f, 103f, 1000f), true)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))))), 826f, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, false, true)), true, select(false, false, true), true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), all(vec4<bool>(true, true, true, false)))), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))), all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), false);
    var var_1 = var_0.d;
    var_1 = false;
    var_1 = false;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, var_0.b, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, var_0.b, 108f)))))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(sign(var_0.b))), select(vec4<bool>(any(var_0.c.zw), false, any(var_0.c.yx) || false, all(var_0.c.yz)), vec4<bool>(var_0.e, ~u_input.a == select(u_input.d.x, -2147483647i, true), true, var_0.c.x), ~u_input.d.x >= -1i), !var_0.e, var_0.c.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, var_0.a.x, var_0.a.x, 1722f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, var_0.a.x, 158f, var_0.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.b, var_0.b)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))), var_0.b, 1119f, _wgslsmith_f_op_f32(max(1200f, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -506f), _wgslsmith_f_op_f32(floor(var_0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, var_0.a.x, -384f, var_0.a.x)) - vec4<f32>(var_0.a.x, 235f, -1663f, var_0.a.x)), vec4<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(select(var_0.b, -1000f, var_0.c.x)), _wgslsmith_f_op_f32(-580f + var_0.a.x))), var_0.c)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(366f, 467f))), _wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(step(214f, _wgslsmith_f_op_f32(f32(-1f) * -1276f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f * -1192f)) - -1079f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-308f + -1000f), -301f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(515f))), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-231f + -745f), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(677f, 683f, -185f, -167f))))) - vec4<f32>(-1192f, _wgslsmith_f_op_f32(f32(-1f) * -1231f), -761f, _wgslsmith_f_op_f32(f32(-1f) * -288f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 535f, 183f) + vec4<f32>(var_0.x, 1000f, 624f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 271f, -1181f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, 349f, 1384f, var_0.x)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 301f), _wgslsmith_f_op_f32(trunc(996f)), var_0.x, _wgslsmith_f_op_f32(round(872f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1057f, _wgslsmith_f_op_f32(step(-1249f, var_0.x)), var_0.x, _wgslsmith_div_f32(503f, 955f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1019f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1678f, var_0.x, var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    var var_1 = u_input.a;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -417f))), var_0.x, 1168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1399f)), _wgslsmith_f_op_f32(-var_0.x))))), select(!vec4<bool>(any(vec3<bool>(false, false, true)), true, true, select(false, true, false)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), !(1554f < var_0.x)), vec4<bool>(false, true, u_input.b.x <= 26499u, any(vec3<bool>(true, false, true)))), true, true);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(1945f)), _wgslsmith_f_op_f32(-1000f - -1764f), _wgslsmith_f_op_f32(-619f - 1699f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) + 738f), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), (false & ((-66533i < u_input.d.x) & any(vec2<bool>(true, false)))) || true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    let var_1 = _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.b)));
    var var_2 = ~u_input.b.x;
    var var_3 = 47926u;
    let var_4 = vec2<bool>(true, var_0.e);
    return func_2(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = func_1(u_input.d.zxz);
    var_1 = func_2(u_input.c);
    let var_2 = _wgslsmith_f_op_f32(select(-328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), true));
    let var_3 = Struct_4(var_1.c, _wgslsmith_sub_vec3_u32(u_input.b, abs(max(firstLeadingBit(u_input.b), u_input.b))), var_1.c.zzx, Struct_2(func_2(_wgslsmith_mod_u32(select(u_input.c, 4294967295u, false), 4294967295u)), _wgslsmith_sub_i32(~var_0, u_input.a), func_2(~_wgslsmith_sub_u32(44289u, u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_2, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)), !select(vec4<bool>(true, true, var_1.d, true), var_1.c, var_1.c), var_1.e, var_1.c.x)));
    var_1 = var_3.d.c;
    let var_4 = vec3<u32>(var_3.b.x, u_input.c, 47031u);
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(round(163f)), var_2), var_3.d.a.b, vec4<bool>(var_1.d, ~0u < (~u_input.c | 18831u), !var_1.e, !var_3.d.c.c.x), any(!vec3<bool>(var_2 != 3192f, var_3.d.a.c.x, true)), !any(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-7215i, 0i, var_3.d.b), vec3<i32>(var_0, u_input.d.x, -1i))).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(746f, var_3.d.a.a.x, var_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.c.b, var_3.d.d.a.x, var_3.d.c.b)))) * func_2(_wgslsmith_dot_vec2_u32(var_4.xz, ~u_input.b.xy)).a), 1u, var_4.x);
}

