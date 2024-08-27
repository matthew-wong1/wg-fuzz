struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(36068i, false, vec3<u32>(13686u, 127095u, 9682u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<f32>) -> bool {
    global0 = arg_0.c.a;
    let var_0 = arg_0.b.a.a;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - arg_3.x)));
    global0 = arg_0.d.a;
    global0 = Struct_2(var_0);
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_i32(34328i, arg_2.a.c.x, arg_2.b.a.a.a), false, abs(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.a.c.x, 0u, u_input.c.x), ~arg_2.b.a.a.c))));
    var var_0 = vec3<bool>(arg_2.a.a.a.b, arg_1.x, false);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(638f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1005f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f))))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1310f)), _wgslsmith_f_op_f32(round(-125f))), _wgslsmith_f_op_f32(-449f + 3241f)))));
    let var_2 = reverseBits(_wgslsmith_add_vec3_i32(-abs(vec3<i32>(23373i, arg_2.c.b.a, arg_2.b.a.a.a)), arg_2.d.c) | vec3<i32>(0i, 36134i, max(-1i, global0.a.a)));
    var_0 = !(!(!vec3<bool>(all(vec4<bool>(true, false, arg_1.x, arg_1.x)), all(vec4<bool>(false, true, arg_2.c.a.a.b, arg_0.x)), false)));
    return 593f;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), 2023f, _wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, arg_0.x, 376f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(-182f, 2963f, arg_0.x, -719f))))), arg_0, global0.a.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.x) + 1147f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, arg_0.x)), _wgslsmith_f_op_f32(sign(-1228f)), 1663f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2577f, -238f, var_0.x, 920f), arg_0), arg_0)));
    var_0 = vec4<f32>(-1467f, _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.d.b.b, false, true), !vec3<bool>(true, func_2(Struct_4(arg_2.c, Struct_3(arg_2.d.a, Struct_1(u_input.b, global0.a.b, vec3<u32>(10383u, global0.a.c.x, global0.a.c.x)), arg_2.d.c), arg_2.b, Struct_3(Struct_2(Struct_1(u_input.b, false, global0.a.c)), Struct_1(global0.a.a, false, arg_2.c.a.a.c), vec3<i32>(u_input.b, -13841i, 12894i))), arg_0.yyy, 4294967295u, var_0.xxw), true), Struct_4(Struct_3(Struct_2(arg_2.d.b), Struct_1(global0.a.a, global0.a.b, global0.a.c), abs(arg_2.b.c)), arg_2.c, Struct_3(arg_2.b.a, global0.a, max(vec3<i32>(0i, arg_2.b.a.a.a, arg_3), vec3<i32>(22573i, u_input.b, global0.a.a))), Struct_3(Struct_2(Struct_1(-1i, false, arg_2.c.a.a.c)), global0.a, ~vec3<i32>(37026i, u_input.b, 1i))))), -1168f, 1313f);
    var var_1 = select(!select(!select(vec3<bool>(false, arg_2.c.b.b, true), vec3<bool>(false, global0.a.b, global0.a.b), vec3<bool>(arg_2.b.b.b, global0.a.b, false)), select(vec3<bool>(true, global0.a.b, global0.a.b), vec3<bool>(arg_2.c.b.b, false, false), global0.a.b), select(vec3<bool>(false, global0.a.b, false), !vec3<bool>(global0.a.b, true, global0.a.b), !global0.a.b)), select(vec3<bool>(true, arg_2.b.a.a.b, all(!vec4<bool>(arg_2.b.a.a.b, true, arg_2.d.a.a.b, true))), !(!select(vec3<bool>(false, true, arg_2.a.a.a.b), vec3<bool>(global0.a.b, global0.a.b, arg_2.b.b.b), vec3<bool>(true, global0.a.b, global0.a.b))), vec3<bool>(false, all(select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(false, global0.a.b), false)), !arg_2.d.a.a.b)), select(select(vec3<bool>(true, false, any(vec4<bool>(global0.a.b, arg_2.a.b.b, true, global0.a.b))), !(!vec3<bool>(arg_2.c.a.a.b, global0.a.b, false)), vec3<bool>(global0.a.b, !arg_2.a.a.a.b, true)), vec3<bool>(false, false, true), vec3<bool>(global0.a.c.x <= 1u, true, true)));
    var var_2 = min(~31506u, ~countOneBits(firstLeadingBit(_wgslsmith_clamp_u32(u_input.c.x, 12325u, arg_1))));
    return u_input.c.wwy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.a.a), vec2<i32>(u_input.a, u_input.a)) | ~abs(global0.a.a), any(select(vec4<bool>(global0.a.b, global0.a.b, global0.a.b, false), vec4<bool>(global0.a.b, global0.a.b, true, true), any(vec4<bool>(global0.a.b, global0.a.b, global0.a.b, false)))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x ^ u_input.c.x, 97453u, 55096u), ~func_1(vec4<f32>(1000f, -730f, -1549f, -1503f), global0.a.c.x, Struct_4(Struct_3(Struct_2(Struct_1(u_input.a, false, u_input.c.wzz)), Struct_1(1i, global0.a.b, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(47621i, -2147483647i, global0.a.a)), Struct_3(Struct_2(Struct_1(u_input.a, global0.a.b, u_input.c.xww)), Struct_1(global0.a.a, global0.a.b, u_input.c.wxx), vec3<i32>(global0.a.a, 1i, -53689i)), Struct_3(Struct_2(Struct_1(-19489i, global0.a.b, vec3<u32>(u_input.c.x, u_input.c.x, 0u))), Struct_1(global0.a.a, true, vec3<u32>(global0.a.c.x, 1u, 80115u)), vec3<i32>(0i, global0.a.a, 1i)), Struct_3(Struct_2(Struct_1(global0.a.a, global0.a.b, vec3<u32>(1u, 1u, 9511u))), global0.a, vec3<i32>(global0.a.a, -50982i, global0.a.a))), 3238i))));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.b, ~u_input.a), !(global0.a.b || all(vec3<bool>(global0.a.b, global0.a.b, global0.a.b))), ~(abs(global0.a.c) | ~vec3<u32>(global0.a.c.x, 0u, 56611u))));
    var var_0 = Struct_2(Struct_1(-global0.a.a, false || all(vec4<bool>(false, global0.a.b, global0.a.b, global0.a.b)), ~vec3<u32>(global0.a.c.x, global0.a.c.x >> (u_input.c.x % 32u), u_input.c.x)));
    let var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1194f, 492f, global0.a.a & -(~(0i << (var_1.x % 32u))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1394f))))), _wgslsmith_f_op_f32(round(1f))), var_0.a.a);
}

