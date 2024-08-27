struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = true;
    var var_1 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !vec2<bool>(all(vec3<bool>(true, true, false)), true), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(false, false, false, false)), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    var var_2 = min(u_input.a, arg_0.x);
    var_0 = any(select(vec2<bool>(true, true), !vec2<bool>(any(vec4<bool>(true, var_1.x, true, false)), any(vec3<bool>(var_1.x, true, true))), true));
    var var_3 = u_input.b.yz;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -686f, 336f, arg_1))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(716f, arg_1, -198f, arg_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1102f, arg_1, 2255f)), arg_1 > arg_1)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1345f, 356f, arg_1, 976f), vec4<f32>(-725f, 210f, 1290f, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 1142f, arg_1, arg_1)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> f32 {
    global0 = -1349f;
    var var_0 = ~(~vec3<u32>(u_input.c.x, arg_2, 34670u));
    var var_1 = ~(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, arg_2, arg_2), u_input.c, vec4<u32>(4294967295u, u_input.b.x, 54706u, arg_2)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~vec2<i32>(-2147483647i, u_input.d.x) >> ((var_1.yx | var_0.yy) % vec2<u32>(32u)), -486f, vec3<i32>(u_input.a, 40011i, u_input.a) & -vec3<i32>(-2147483647i, u_input.a, 2147483647i)))));
    var var_3 = Struct_3(Struct_2(-1i, !vec3<bool>(arg_1 && false, all(vec4<bool>(true, true, arg_1, false)), true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1032f, -1479f, var_2.a.x, var_2.a.x)) * var_2.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(-909f, var_2.a.x, var_2.a.x, 416f), arg_1))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x - 1786f), _wgslsmith_f_op_f32(step(-1268f, -1000f)), var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + -1835f))))), Struct_2(u_input.a, !vec3<bool>(arg_1, true, var_1.x < var_0.x), var_2, Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), var_3.b.a.x);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(108f)), 506f) * 740f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1138f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(max(-215f, 323f)))))), !all(!vec4<bool>(false, true, false, arg_0)))) + _wgslsmith_f_op_f32(func_2(vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, u_input.d.x), false, countOneBits(abs(u_input.b.x)))));
    global0 = -573f;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(521f, -935f, 306f, 1194f)))))));
    global0 = var_0.a.x;
    return min(45402u, 37387u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -614f);
    global0 = 219f;
    var var_1 = reverseBits(func_1(any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), all(vec3<bool>(true, false, true))))));
    let var_2 = 1i != _wgslsmith_clamp_i32(-u_input.d.x, 1i, _wgslsmith_div_i32(-reverseBits(u_input.a), _wgslsmith_add_i32(-7612i, ~u_input.d.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.d.zw, var_0, vec3<i32>(28608i, u_input.d.x, 0i))).wy))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, 795f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + var_0), -672f), var_0))));
    let var_4 = Struct_3(Struct_2(i32(-1i) * -5068i, !vec3<bool>(!var_2, var_2, true), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0, 769f, 913f) - vec4<f32>(-2023f, var_3.x, var_0, var_0)), vec4<f32>(var_0, var_0, var_0, var_0)))), Struct_1(vec4<f32>(640f, var_0, _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(sign(var_3.x))))), Struct_1(vec4<f32>(var_0, -1758f, var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), var_3.x))), Struct_2(-36234i, select(vec3<bool>(var_2, true, true), select(vec3<bool>(false, var_2, var_2), !vec3<bool>(false, var_2, var_2), select(false, false, var_2)), any(vec3<bool>(var_2, var_2, var_2))), Struct_1(vec4<f32>(317f, _wgslsmith_div_f32(var_3.x, var_3.x), var_3.x, 1229f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(531f, var_3.x, 389f, var_0))) * vec4<f32>(242f, var_0, -952f, var_3.x)))));
    let var_5 = var_4;
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_4.c.c.a.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.d.a.x, -168f) * vec2<f32>(_wgslsmith_f_op_f32(var_5.c.c.a.x * var_0), var_4.c.d.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a.c.a.x, var_4.a.c.a.x), var_5.c.c.a.yw))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.a.c.a.zx, var_5.c.d.a.zy))) + vec2<f32>(-2607f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0 - var_4.c.d.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_4.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -55021i, u_input.a, var_5.a.a), u_input.d), var_5.a.a), vec3<i32>(-var_4.c.a, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), 0i)), ~(~(-var_5.c.a)), -var_4.c.a), _wgslsmith_div_vec3_u32(~(~vec3<u32>(8680u, 1u, 29990u)), _wgslsmith_mod_vec3_u32(select(u_input.b.zzz, u_input.c.yxy, var_5.c.b), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x | 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, var_5.c.c.a.x)) - var_5.b.a.zy))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a.d.a.x, _wgslsmith_f_op_f32(var_5.b.a.x + _wgslsmith_f_op_f32(-636f - var_5.a.c.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c.c.a.x * 849f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_3.x, var_4.c.c.a.x)))))));
}

