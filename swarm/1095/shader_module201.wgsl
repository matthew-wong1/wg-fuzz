struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 141f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_1(false, select(vec3<bool>(true, select(true, any(vec4<bool>(false, true, false, false)), true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<bool>(!all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true));
    var var_1 = Struct_1(any(!select(!vec4<bool>(var_0.a, true, var_0.c.x, true), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), var_0.a)), vec3<bool>(all(select(var_0.d, vec3<bool>(var_0.d.x, var_0.c.x, false), var_0.b)), all(!vec2<bool>(var_0.b.x, false)), !(!var_0.c.x & any(vec4<bool>(var_0.d.x, false, false, true)))), select(select(!select(var_0.d.xy, vec2<bool>(true, true), var_0.b.zy), select(!var_0.c, var_0.b.zy, var_0.b.yy), !vec2<bool>(false, var_0.a)), select(!(!var_0.d.yy), var_0.d.xx, select(!var_0.b.xy, select(var_0.b.zz, var_0.d.xz, vec2<bool>(true, var_0.d.x)), true)), var_0.b.x), var_0.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-500f, 730f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-388f, 113f), vec2<f32>(1000f, 563f), var_0.b.xx)), select(vec2<bool>(false, var_0.b.x), vec2<bool>(false, var_0.b.x), var_0.b.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-853f, -190f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1168f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -652f))))));
    var var_3 = Struct_1(var_1.d.x, select(var_1.b, vec3<bool>(var_1.d.x, (arg_0.x | 43276u) <= u_input.a.x, all(!vec4<bool>(var_1.b.x, true, false, true))), var_0.b), select(select(select(select(var_1.d.zz, vec2<bool>(var_1.d.x, false), var_1.d.x), select(var_0.c, var_1.d.xx, true), var_1.c), !select(var_0.c, vec2<bool>(false, false), var_0.d.yy), !any(vec4<bool>(var_1.a, false, false, var_0.b.x))), !var_0.c, var_1.c), !select(!var_0.d, var_1.d, !select(var_1.d, var_1.d, vec3<bool>(true, false, var_0.a))));
    var_1 = Struct_1(any(select(var_1.d, vec3<bool>(!var_0.d.x, var_3.a, var_3.b.x || false), !select(false, true, var_0.a))), vec3<bool>(u_input.a.x < _wgslsmith_div_u32(_wgslsmith_sub_u32(80159u, arg_0.x), arg_0.x), (~u_input.e < u_input.e) || !var_3.b.x, var_0.d.x), select(select(vec2<bool>(var_0.b.x, true && var_1.b.x), vec2<bool>(true, true), var_3.c), vec2<bool>(var_3.c.x, true), select(vec2<bool>(var_3.a || false, true), vec2<bool>(all(var_1.c), true), select(vec2<bool>(var_1.c.x, true), !var_1.d.xx, true))), !(!vec3<bool>(false | var_3.a, var_3.a, false)));
    return 0i;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = (_wgslsmith_add_i32(-1i, 0i) | arg_1.x) & _wgslsmith_mod_i32(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 58425u, 17258u), u_input.b.wzz)), arg_1.x & _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), u_input.d.ww)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.x)), -1000f))) * arg_2.x), arg_2.x);
    var var_1 = arg_1;
    global0 = _wgslsmith_div_f32(1049f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 1131f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))))));
    var_0 = arg_1.x | 2147483647i;
    return Struct_1(arg_0, !select(!(!vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(arg_0, true, arg_0), select(!vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false))), !vec2<bool>(arg_0, arg_0), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0, false), arg_0), select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, true), arg_0), !vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, true, true))), select(!(!vec3<bool>(arg_0, arg_0, false)), vec3<bool>(true, true, !arg_0), vec3<bool>(true, !arg_0, arg_0)), vec3<bool>(true, true, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = func_2(arg_0.x, -_wgslsmith_div_vec3_i32(u_input.d.wxw, vec3<i32>(_wgslsmith_mult_i32(u_input.e, u_input.c), u_input.e, _wgslsmith_mod_i32(-39580i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1266f, _wgslsmith_f_op_f32(486f * -251f), 1f))))));
    let var_1 = func_2(!var_0.b.x | false, u_input.d.xzz, vec3<f32>(1f, 1f, 1f));
    var var_2 = Struct_1(any(select(vec4<bool>(false & arg_0.x, arg_2.x, true, true), vec4<bool>(true, u_input.e != u_input.c, true, true), select(select(vec4<bool>(arg_2.x, var_1.a, false, false), vec4<bool>(arg_0.x, false, true, true), arg_1.a), vec4<bool>(true, true, false, true), true))), arg_2.yzx, select(arg_1.b.xz, vec2<bool>(arg_0.x, false), var_0.c), func_2(!arg_1.a, vec3<i32>(abs(u_input.c) ^ 1i, ~u_input.d.x, u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, 249f, -1256f))))).d);
    let var_3 = func_2(!(!any(var_2.d) || all(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, true, false), vec3<bool>(true, var_2.d.x, true)))), u_input.d.yyx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, -1255f, -816f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, 588f, 478f) - vec3<f32>(-1005f, 474f, -1311f)))), vec3<f32>(1171f, -427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1609f * -458f))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))))));
    return func_2(true, u_input.d.ywx, var_4).c;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f));
    global0 = -327f;
    var var_0 = -410f;
    var var_1 = Struct_1(!any(vec4<bool>(true, true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, true), true), select(func_4(vec3<bool>(true, true, all(vec2<bool>(false, true))), func_2(all(vec4<bool>(true, false, true, true)), vec3<i32>(1749i, u_input.d.x, 1i), vec3<f32>(1000f, -986f, 1248f)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec3<bool>(-1588f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-635f))), !any(vec3<bool>(true, true, true)), true));
    var_1 = Struct_1(var_1.c.x, !select(!var_1.d, vec3<bool>(true, true, false), select(!vec3<bool>(var_1.c.x, var_1.d.x, var_1.c.x), select(vec3<bool>(var_1.a, false, var_1.b.x), var_1.b, var_1.b), !vec3<bool>(var_1.a, false, false))), var_1.c, vec3<bool>(func_2(var_1.a, u_input.d.xyz, _wgslsmith_div_vec3_f32(vec3<f32>(327f, 854f, 269f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1225f, -272f, -466f)))).b.x, all(var_1.d.yx), false));
    return func_2(true, vec3<i32>(-u_input.d.x, 2147483647i, -u_input.d.x & -24973i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-496f, _wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -1535f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-922f, 834f, -1000f), vec3<f32>(-3430f, 694f, 1000f), var_1.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1266f, -1173f, -2468f) * vec3<f32>(189f, 516f, -418f)), true)), var_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.e != (abs(0i) << (0u % 32u)), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), false, true), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-582f + -993f), _wgslsmith_f_op_f32(1671f + 2202f))), _wgslsmith_f_op_f32(-613f + -164f), 1151f))));
    global0 = -391f;
    global0 = 595f;
    let var_2 = var_0;
    let var_3 = func_1();
    let var_4 = func_1();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 610f))));
    var var_5 = _wgslsmith_f_op_f32(step(371f, -954f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~1u)), min(_wgslsmith_dot_vec4_i32(-u_input.d ^ ~u_input.d, u_input.d), min(0i, firstLeadingBit(min(1i, -1i)))));
}

