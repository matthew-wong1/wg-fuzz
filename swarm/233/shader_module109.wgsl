struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.d.a.x * 478f);
    var var_1 = i32(-1i) * -34911i;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.a.x))), arg_1.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(arg_1.d.a.x - _wgslsmith_f_op_f32(step(399f, arg_1.d.a.x)))))));
    var_0 = _wgslsmith_f_op_f32(-arg_1.e.a.x);
    let var_3 = !((_wgslsmith_f_op_f32(abs(-885f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1000f))) | false);
    return arg_0.c.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = 2147483647i;
    var_0 = 17556i;
    var_0 = (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-42889i, -2147483647i, 1i, 1108i), _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(u_input.b, -54105i, -2147483647i, 0i), arg_1)), -_wgslsmith_sub_i32(-15083i, arg_0.b.x)) << (~4294967295u % 32u)) & _wgslsmith_sub_i32(abs(firstLeadingBit(~arg_0.b.x)), arg_0.c);
    var var_1 = !((_wgslsmith_dot_vec2_u32(~u_input.a.xy, vec2<u32>(4294967295u, 4294967295u)) == _wgslsmith_dot_vec2_u32(~u_input.a.zx, ~vec2<u32>(16455u, 1u))) & (max(u_input.b >> (10215u % 32u), _wgslsmith_mult_i32(u_input.d, -12501i)) < arg_1.x));
    var_1 = !(!(_wgslsmith_f_op_f32(step(276f, 651f)) >= arg_0.a.x));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, -204f, -415f), vec4<f32>(-1783f, arg_0.a.x, -522f, 473f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(1008f + -2223f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, 468f, -533f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), !vec4<bool>(true, true, false, all(vec2<bool>(false, false)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    let var_0 = -select(arg_2.d.b, -arg_0.b, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, 564f, 868f) * vec4<f32>(arg_1.c.a.x, -1325f, 1300f, arg_2.d.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1979f, arg_2.e.a.x), arg_2.d.a.x, arg_2.e.a.x, 150f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(203f, 156f, 1501f, arg_1.b.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, -207f, 114f, -420f) - vec4<f32>(arg_2.d.a.x, 375f, 619f, 380f)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true))), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_5(54877u, arg_2.e, arg_1.b), arg_2)))))), _wgslsmith_f_op_f32(-arg_2.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.a.x + -428f)) + arg_1.c.a.x)), _wgslsmith_f_op_vec4_f32(func_3(arg_2.e, vec4<i32>(-1i) * -arg_2.e.b)), !select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)), true, true), vec4<bool>(true, false, true, any(vec3<bool>(true, true, true))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.a.x, arg_0.a.x, var_1.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(step(var_2, var_2)), true))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(277f + -1606f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), 1000f))))), select(vec4<bool>(true, !(34184u > u_input.a.x), !(arg_2.e.a.x <= var_2.x), false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), true)))));
    var var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, arg_0.a.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21503i;
    var_0 = ~_wgslsmith_clamp_i32(u_input.c, ~(~u_input.b), max(-671i, _wgslsmith_add_i32(u_input.c, -62711i))) << (21734u % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-773f, 352f), vec4<i32>(0i, 30203i, -1i, u_input.b), u_input.c, vec3<i32>(u_input.c, 30022i, u_input.d)), Struct_5(u_input.a.x, Struct_1(vec2<f32>(-1029f, -1564f), vec4<i32>(u_input.b, -24498i, 37956i, u_input.c), 16518i, vec3<i32>(u_input.c, 4626i, u_input.b)), Struct_1(vec2<f32>(791f, 239f), vec4<i32>(u_input.c, u_input.c, -2147483647i, -44877i), -45887i, vec3<i32>(-17050i, 1i, u_input.b))), Struct_3(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(vec4<u32>(u_input.a.x, 32901u, u_input.a.x, 21790u)), Struct_1(vec2<f32>(-1547f, -314f), vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.d), u_input.b, vec3<i32>(-1i, u_input.c, -6709i)), Struct_1(vec2<f32>(-714f, 115f), vec4<i32>(u_input.d, u_input.c, 1i, -1i), 32116i, vec3<i32>(u_input.c, u_input.c, u_input.c))))), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-1000f, 1000f), vec4<i32>(-39454i, u_input.c, u_input.c, u_input.d), u_input.d, vec3<i32>(0i, u_input.c, u_input.c)), Struct_5(1u, Struct_1(vec2<f32>(1697f, -1220f), vec4<i32>(u_input.c, u_input.b, u_input.d, u_input.c), -2863i, vec3<i32>(u_input.c, u_input.c, 44812i)), Struct_1(vec2<f32>(-434f, 854f), vec4<i32>(-27511i, u_input.c, 1087i, 2147483647i), 3541i, vec3<i32>(-1i, u_input.c, 0i))), Struct_3(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), Struct_1(vec2<f32>(-1035f, -820f), vec4<i32>(u_input.d, -2147483647i, u_input.b, -34993i), 0i, vec3<i32>(77078i, -1i, 4200i)), Struct_1(vec2<f32>(-1737f, 1000f), vec4<i32>(2147483647i, u_input.d, 2147483647i, u_input.d), -62987i, vec3<i32>(u_input.c, 2147483647i, u_input.c)))))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(round(-416f)))))));
    var var_2 = Struct_5(0u, Struct_1(vec2<f32>(var_1, var_1), ~select(vec4<i32>(u_input.d, u_input.c, -11621i, u_input.c), vec4<i32>(u_input.b, u_input.d, -1i, u_input.c), -1i <= u_input.b), u_input.c, _wgslsmith_sub_vec3_i32(~vec3<i32>(-19718i, u_input.d, 1i), vec3<i32>(u_input.d, u_input.c, 47174i)) << (~vec3<u32>(u_input.a.x, 0u, 1u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1))) + vec2<f32>(var_1, var_1)))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.d, select(25378i, u_input.d, true), 93522i), ~(vec4<i32>(u_input.d, -4330i, u_input.b, 25464i) ^ vec4<i32>(u_input.c, 51921i, u_input.b, u_input.b))), reverseBits(u_input.d), ~(~select(vec3<i32>(u_input.b, u_input.b, 15886i), vec3<i32>(u_input.b, u_input.b, 0i), vec3<bool>(true, false, true)))));
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, -17112i | u_input.b, 1i);
}

