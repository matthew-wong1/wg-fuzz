struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<bool> {
    var var_0 = !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), u_input.c.x >= u_input.c.x)));
    var var_1 = var_0.x;
    return vec2<bool>(true, true);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(472f, 1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-361f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f + 349f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(341f, 2140f))))));
    let var_1 = -min(_wgslsmith_mod_i32(-54048i, u_input.c.x), abs(u_input.c.x) >> ((1u ^ u_input.a.x) % 32u)) << (u_input.b % 32u);
    let var_2 = all(!vec3<bool>(true, true, !func_1().x));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-348f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(-var_0.x))), -718f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(808f + 1624f), 1261f, var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-708f - var_0.x), _wgslsmith_f_op_f32(154f - 602f), var_0.x, var_0.x)))));
    var var_4 = Struct_1(304f, vec2<bool>(true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_3.wyz)), var_3.yxz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1238f, var_3.x, -1174f)))) - _wgslsmith_f_op_vec3_f32(min(var_3.yzx, vec3<f32>(var_0.x, var_0.x, 416f))))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_2, true, true), var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, true, var_2), vec3<bool>(true, var_2, var_2)), !var_2)));
    return var_4.c.x;
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))) + 176f);
    let var_1 = ~(~firstLeadingBit(max(vec4<i32>(u_input.c.x, -60930i, -18529i, -1i), vec4<i32>(u_input.c.x, -41376i, -3934i, u_input.c.x)) | vec4<i32>(u_input.c.x, 21027i, 10418i, u_input.c.x)));
    var var_2 = ((u_input.c.x == -2944i) || !(_wgslsmith_div_u32(u_input.a.x, 51367u) <= ~u_input.b)) || true;
    var_2 = true;
    var var_3 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(all(vec2<bool>(true, true)), false, var_1.x > 2147483647i, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)), func_1().x), !(u_input.a.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 62468u), vec2<u32>(u_input.b, u_input.a.x)))), vec4<bool>(true, u_input.c.x <= u_input.c.x, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))) & true, true), vec4<bool>(true, true, true, true));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1549f * -1000f), _wgslsmith_f_op_f32(trunc(117f)), any(vec4<bool>(false, var_3.x, var_3.x, true)))) * _wgslsmith_f_op_f32(-454f - _wgslsmith_f_op_f32(f32(-1f) * -306f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(389f, -130f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) * _wgslsmith_f_op_f32(trunc(-1360f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(-1015f, select(select(select(vec2<bool>(true, false), !vec2<bool>(var_0, false), false), select(vec2<bool>(true, true), func_1(), select(vec2<bool>(false, var_0), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, any(vec2<bool>(var_0, false)))), func_1(), false), _wgslsmith_f_op_vec3_f32(func_2()), select(!select(vec3<bool>(true, var_0, true), vec3<bool>(false, true, var_0), var_0), vec3<bool>(!(!var_0), func_1().x, var_0), select(select(select(vec3<bool>(false, var_0, true), vec3<bool>(false, var_0, var_0), false), vec3<bool>(var_0, false, var_0), !var_0), !select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, true), var_0), all(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false)))));
    var var_2 = select(!var_1.b.x & (false && var_1.d.x), select(true | !(!var_1.b.x), ~(u_input.c.x & -6781i) != _wgslsmith_add_i32(u_input.c.x, -16875i), !(countOneBits(4294967295u) >= u_input.b)), false);
    let var_3 = var_1.a;
    var_1 = Struct_1(_wgslsmith_f_op_f32(495f - var_1.a), select(!vec2<bool>(var_0, any(vec2<bool>(false, var_1.b.x))), var_1.d.xy, all(var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, -697f), vec3<f32>(var_1.c.x, var_1.a, var_1.a), true)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1384f, -1128f, _wgslsmith_div_f32(var_1.a, -714f))))), select(var_1.d, vec3<bool>(any(!vec3<bool>(var_0, var_1.d.x, false)), true, var_1.d.x || func_1().x), vec3<bool>(any(vec2<bool>(false, var_0)), !var_0, any(vec4<bool>(var_1.d.x, var_0, true, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec3<i32>(abs(-abs(u_input.c.x)), u_input.c.x, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c)))), ~(~_wgslsmith_mod_u32(0u, u_input.a.x) & max(u_input.b, 23192u)), min(5917u, u_input.b), u_input.a.x);
}

