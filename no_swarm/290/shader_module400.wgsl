struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> f32 {
    return 681f;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    var var_0 = false | arg_0;
    var var_1 = ~(~max(reverseBits(_wgslsmith_dot_vec4_u32(arg_2, arg_2)), arg_2.x << ((arg_1.a << (0u % 32u)) % 32u)));
    let var_2 = Struct_4(min(-arg_1.d.c.x, u_input.a.x), arg_1, vec2<f32>(-579f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.a.x, arg_1, vec2<f32>(159f, 1188f), Struct_1(arg_1.c.xx, arg_0), arg_1.d), Struct_4(arg_1.d.c.x, Struct_3(4294967295u, arg_1.b, arg_1.c, Struct_2(arg_1.d.a, Struct_1(vec2<f32>(1020f, arg_1.b.a.x), arg_0), arg_1.d.c, Struct_1(arg_1.b.a, true))), vec2<f32>(arg_1.b.a.x, 1187f), arg_1.d.b, arg_1.d), !arg_0)), -1079f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(arg_1.c.xy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, arg_1.d.d.a.x)))), true), Struct_2(arg_1.d.a, arg_1.b, arg_1.d.c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a) + _wgslsmith_f_op_vec2_f32(floor(arg_1.c.zz))), arg_1.d.a.x)));
    var_1 = 586u;
    let var_3 = _wgslsmith_div_vec2_f32(var_2.e.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.b.a.x, arg_1.c.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b.c.x, arg_1.b.a.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, var_2.e.b.a.x)), var_2.e.d.a, var_2.b.d.a.zy)))));
    return _wgslsmith_dot_vec4_u32(arg_2, _wgslsmith_sub_vec4_u32(vec4<u32>(abs(countOneBits(arg_1.a)), _wgslsmith_add_u32(var_2.b.a | 17621u, 38860u), arg_1.a, reverseBits(0u)), select(vec4<u32>(53353u, 4871u, arg_1.a, var_2.b.a) << (arg_2 % vec4<u32>(32u)), min(arg_2, arg_2) | abs(vec4<u32>(25224u, arg_2.x, arg_1.a, arg_2.x)), var_2.d.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(true, false, _wgslsmith_sub_u32(~(~11130u), _wgslsmith_mod_u32(func_2(false, Struct_3(1u, Struct_1(vec2<f32>(730f, 508f), true), vec3<f32>(2028f, -451f, -327f), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(1000f, -1141f), true), vec4<i32>(-55683i, -2147483647i, 2147483647i, u_input.a.x), Struct_1(vec2<f32>(656f, 497f), true))), vec4<u32>(1u, 4294967295u, 24234u, 1u)), 1u)) > min(1u, ~(~0u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1960f)))), _wgslsmith_f_op_f32(f32(-1f) * -922f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, 1f, var_0.x)))));
    var_0 = vec3<bool>(!var_0.x, !(!(!var_0.x)), all(!vec4<bool>(!var_0.x, true, all(vec2<bool>(var_0.x, true)), !var_0.x)));
    var var_2 = 0u;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) - -1297f)), _wgslsmith_f_op_f32(max(-1935f, 274f))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(38373u, arg_1.b.a, 40752u, arg_1.a.a), select(vec4<u32>(19002u, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec4<u32>(4294967295u, arg_1.a.a, 4294967295u, arg_1.b.a), false)) ^ vec4<u32>(1u ^ arg_1.b.a, ~4294967295u, select(1u, arg_1.a.a, arg_1.a.d.a.x), min(arg_1.b.a, 28745u))));
    var_0 = countOneBits(vec4<u32>(1u, var_0.x, 1u, ~(~arg_1.b.a ^ countOneBits(45777u))));
    var var_1 = vec2<bool>(false == arg_1.b.b.b, any(select(!arg_1.a.d.a, arg_1.b.d.a, arg_1.b.d.a)));
    var_0 = _wgslsmith_mult_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_1.b.a, var_0.x), vec4<u32>(var_0.x, 1u, arg_1.b.a, arg_1.b.a), vec4<u32>(1u, 23435u, 73826u, 17187u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 24507u, 38629u), vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))), reverseBits(vec4<u32>(arg_1.a.a & 1u, 1u, ~var_0.x, firstTrailingBit(31609u)))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.a, 0u), vec2<u32>(arg_1.a.a, 21226u)), 1u, arg_1.a.a, _wgslsmith_mult_u32(62164u, arg_1.a.a)), ~vec4<u32>(62076u, 11737u, 0u, 15747u) | ~vec4<u32>(73205u, var_0.x, 1u, var_0.x)) % vec4<u32>(32u));
    var_1 = select(vec2<bool>(arg_0.b, !(!(arg_3.b && arg_1.b.d.b.b))), arg_1.a.d.a.ww, arg_3.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(1i, arg_1.b, vec2<f32>(arg_1.a.b.a.x, arg_3.a.x), arg_1.a.d.b, arg_1.b.d), Struct_4(arg_1.b.d.c.x, arg_1.b, arg_1.b.b.a, arg_3, arg_1.b.d), true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a + _wgslsmith_f_op_vec2_f32(arg_3.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, -1118f)))) * arg_3.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_5(Struct_3(1u, func_1(), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, -1330f, -122f)), vec3<f32>(-110f, 1358f, -184f))), Struct_2(vec4<bool>(true, true, true, true), func_1(), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 27665i) ^ vec4<i32>(-3694i, u_input.a.x, u_input.a.x, u_input.a.x), func_1())), Struct_3(1u, Struct_1(vec2<f32>(-677f, -410f), any(vec3<bool>(false, true, false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -293f), 1969f, _wgslsmith_f_op_f32(select(1897f, -284f, false))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(1451f, -287f), false), select(vec4<i32>(-16145i, u_input.a.x, u_input.a.x, -7652i), vec4<i32>(20284i, -73914i, 1i, 2147483647i), vec4<bool>(true, true, false, false)), func_1()))), u_input.a.x, func_1());
    var var_1 = vec4<bool>(true, true, true, (!(!var_0.b) && var_0.b) || false);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.a, var_0.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(263f, -1441f), var_0.a)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, 380f), vec2<f32>(223f, 2528f)))))), all(select(!(!vec4<bool>(var_0.b, var_1.x, var_0.b, var_0.b)), !vec4<bool>(true, false, true, var_1.x), true)));
    let var_2 = _wgslsmith_div_vec2_u32(min(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(60790u, 0u)), vec2<u32>(1u, 1u)), ~(~(~vec2<u32>(61972u, 46285u)))) >> (vec2<u32>(firstTrailingBit(16117u), 11888u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-select(u_input.a.xx, u_input.a.zx, !vec2<bool>(var_0.b, false)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(-10705i, 9263i, ~u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~(0u ^ var_2.x), 39289u, var_2.x), ~vec3<u32>(var_2.x, firstTrailingBit(26410u), abs(var_2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(301f, var_0.a.x) - var_0.a)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_0.a.x), _wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, var_0.b))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -144f) * var_0.a)))), vec2<i32>(-(~2147483647i), u_input.a.x));
}

