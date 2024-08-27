struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> Struct_1 {
    return Struct_1(u_input.e.x, _wgslsmith_f_op_f32(f32(-1f) * -434f), vec2<f32>(_wgslsmith_div_f32(-1299f, _wgslsmith_f_op_f32(select(-151f, arg_2.a.b.c.x, true || arg_2.b.x))), arg_2.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_2.a.b.c.x) - arg_2.a.b.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(543f, arg_3)), _wgslsmith_f_op_f32(exp2(arg_2.e)))), 1098f, -739f)), 1u ^ _wgslsmith_add_u32(countOneBits(min(u_input.a, arg_2.a.b.a)), u_input.a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_5 {
    let var_0 = func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(848f)) + arg_1.b), Struct_5(Struct_2(5956i, arg_1), vec3<bool>(false, true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c.x, 498f, -350f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.d.x, 844f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.xwx) + _wgslsmith_f_op_vec3_f32(arg_1.d.wzy * arg_1.d.yww)))), true, -614f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)));
    let var_1 = true;
    var var_2 = Struct_3(max(abs(arg_1.a), select(arg_2, ~var_0.a, var_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1657f), var_0.b), vec2<f32>(_wgslsmith_f_op_f32(floor(398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(250f)))), select(select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), !vec2<bool>(true, var_1)), vec2<bool>(var_1, var_1), _wgslsmith_f_op_f32(f32(-1f) * -473f) <= _wgslsmith_f_op_f32(arg_1.b + var_0.d.x)))), _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.c, min(_wgslsmith_sub_i32(-1i, arg_0.x), arg_0.x), ~1i)), any(!vec2<bool>(any(vec3<bool>(var_1, var_1, var_1)), any(vec2<bool>(var_1, var_1)))), _wgslsmith_clamp_u32(arg_1.e, countOneBits(u_input.e.x), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(15448u, arg_2, arg_1.e, arg_1.e), vec4<u32>(1u, 21392u, u_input.e.x, u_input.a)))));
    let var_3 = 18840u;
    let var_4 = all(vec4<bool>(5841u >= ~(~var_3), false, !(!(39586u <= arg_2)), true));
    return Struct_5(Struct_2(-11229i, func_2(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2075f + 273f) * _wgslsmith_f_op_f32(var_2.b.x * 1616f)), Struct_5(Struct_2(u_input.d.x, arg_1), !vec3<bool>(var_1, false, true), _wgslsmith_f_op_vec3_f32(-arg_1.d.zyw), any(vec3<bool>(true, var_2.d, var_4)), _wgslsmith_f_op_f32(-var_2.b.x)), var_0.d.x)), select(vec3<bool>(!any(vec3<bool>(var_1, var_4, true)), true, all(vec4<bool>(false, var_4, var_2.d, true))), select(vec3<bool>(any(vec4<bool>(true, var_1, true, var_1)), var_0.d.x < var_2.b.x, select(false, false, var_2.d)), !select(vec3<bool>(true, var_1, true), vec3<bool>(var_4, false, var_4), true), vec3<bool>(true, any(vec3<bool>(var_4, true, true)), !var_4)), true), _wgslsmith_f_op_vec3_f32(-var_0.d.zxz), any(select(!select(vec3<bool>(false, true, var_4), vec3<bool>(false, var_4, var_2.d), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_2.d, true)), select(select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, var_4)), select(vec3<bool>(true, false, true), vec3<bool>(var_1, false, var_1), var_1), vec3<bool>(var_4, true, var_4)))), _wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x * 908f), var_2.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1098f, arg_1.d.x)))))));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec4<bool> {
    let var_0 = 35303i;
    var var_1 = false;
    var var_2 = func_3(~countOneBits(countOneBits(min(vec4<i32>(2147483647i, 2867i, 0i, 2147483647i), vec4<i32>(1i, -50707i, arg_0.a.a, u_input.d.x)))), func_2(all(vec4<bool>(arg_0.d, true, true, func_3(vec4<i32>(2147483647i, 19173i, -12864i, -62019i), arg_0.a.b, arg_0.a.b.e).d)), arg_0.e, func_3(-(~vec4<i32>(0i, 0i, 0i, 0i)), arg_0.a.b, ~(~31987u)), arg_0.a.b.d.x), 29960u).a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f - arg_0.c.x) * _wgslsmith_f_op_f32(-1090f * 934f)) * _wgslsmith_f_op_f32(func_2(arg_0.b.x, 189f, Struct_5(arg_0.a, arg_0.b, arg_0.c, true, arg_0.e), var_2.b.d.x).b - -698f)) - 225f), _wgslsmith_f_op_f32(-var_2.b.d.x));
    var var_4 = !vec4<bool>(arg_0.b.x, any(arg_0.b.zx), arg_0.d, !func_3(abs(vec4<i32>(var_2.a, -2147483647i, 20020i, u_input.b)), arg_0.a.b, 3047u).d);
    return vec4<bool>(var_4.x, var_4.x, !(!arg_0.b.x), false);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2471f), -461f);
    var var_2 = vec4<bool>(arg_1.x, !(!(!all(vec2<bool>(arg_1.x, arg_1.x)))), true, (abs(~4294967295u) >> (1u % 32u)) > _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(u_input.e.x, u_input.e.x)), 1u << (~u_input.a % 32u)));
    var_2 = select(!func_4(func_3(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), func_2(arg_1.x, var_1.x, Struct_5(Struct_2(u_input.d.x, Struct_1(54517u, var_1.x, var_1, vec4<f32>(-1000f, 461f, var_1.x, var_0), u_input.e.x)), var_2.ywz, arg_0, var_2.x, var_0), -576f), u_input.e.x >> (u_input.e.x % 32u)), u_input.a), select(vec4<bool>(true, true, func_4(func_3(vec4<i32>(u_input.b, 19370i, 0i, 2147483647i), Struct_1(u_input.a, var_1.x, var_1, vec4<f32>(-665f, -315f, 108f, arg_0.x), 1u), u_input.a), 1u).x, true), select(select(vec4<bool>(arg_1.x, true, false, false), func_4(Struct_5(Struct_2(u_input.c, Struct_1(1u, -577f, var_1, vec4<f32>(-2005f, -747f, 377f, 563f), u_input.e.x)), vec3<bool>(var_2.x, false, true), vec3<f32>(585f, -981f, var_1.x), true, var_1.x), u_input.e.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, true)), vec4<bool>(true, var_0 < var_0, arg_1.x, u_input.a < 1u), !arg_1.x == arg_1.x), !(!vec4<bool>(arg_1.x, var_2.x, true, false))), any(!var_2.wxy));
    var var_3 = vec2<i32>(-44918i << (u_input.a % 32u), _wgslsmith_mult_i32(29639i, select(_wgslsmith_clamp_i32(2147483647i, ~u_input.d.x, -u_input.c), u_input.c, !arg_1.x & true)));
    return Struct_1(_wgslsmith_div_u32(~u_input.a, ~1u), var_1.x, var_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-299f, -530f, var_1.x, var_0) * vec4<f32>(-830f, -431f, var_0, arg_0.x)) + func_3(vec4<i32>(-57049i, 33080i, -2147483647i, var_3.x), Struct_1(4294967295u, arg_0.x, var_1, vec4<f32>(-367f, var_1.x, arg_0.x, arg_0.x), u_input.e.x), 103953u).a.b.d)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -900f, -1066f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, 1285f, -893f)), false)))), !vec2<bool>(false, all(vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~vec4<i32>(1i, 10764i, u_input.b, u_input.d.x) | firstLeadingBit(vec4<i32>(-2147483647i, 5619i, 2147483647i, u_input.c))));
}

