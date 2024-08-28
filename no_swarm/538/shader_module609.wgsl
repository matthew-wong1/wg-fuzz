struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(64988u, 4294967295u, 4294967295u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = select(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), select(vec3<bool>(true, global0.x > ~0u, true), vec3<bool>(true, true == any(vec2<bool>(false, true)), true), false), vec3<bool>(true, true, true));
    global2 = 56870u;
    global0 = u_input.c << (~(_wgslsmith_div_vec4_u32(~u_input.c, vec4<u32>(global0.x, 4294967295u, global0.x, u_input.e)) ^ vec4<u32>(~global0.x, abs(u_input.e), 48572u, global0.x)) % vec4<u32>(32u));
    global3 = all(select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), vec3<bool>(true, !var_0.x, select(true, true, false)), !select(var_0.x, true, false)), !select(vec3<bool>(false, var_0.x, false), !vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(all(!vec4<bool>(false, false, var_0.x, true)), all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false))), false)));
    var var_1 = vec2<bool>(true, !var_0.x);
    return vec4<f32>(197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-840f))) + 1749f), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1253f, 660f, var_1.x))), _wgslsmith_f_op_f32(1117f * _wgslsmith_f_op_f32(1053f - -1310f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -726f))), _wgslsmith_f_op_f32(f32(-1f) * -1257f)))), _wgslsmith_f_op_f32(round(-1663f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    global2 = 0u;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_i32(u_input.d, u_input.d)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) * arg_2), -793f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_0.x)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -719f)), true))));
    global0 = ~select(~u_input.c, select(~vec4<u32>(u_input.e, u_input.c.x, 64069u, 1471u), u_input.c, vec4<bool>(false, select(true, true, true), select(true, false, true), true)), vec4<bool>(true, true, true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false))));
    var var_1 = arg_1;
    let var_2 = Struct_1(arg_1.a);
    return vec3<bool>(true, any(vec3<bool>(true, false, true)), !(u_input.c.x > 1u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(371f, -798f, -1000f), vec3<f32>(243f, 1033f, 1237f), false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 451f, -147f) * vec3<f32>(662f, 1105f, 1000f)))), vec3<f32>(-151f, -155f, _wgslsmith_f_op_f32(115f * 281f)), func_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(-19409i), 107f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.d, u_input.d), vec4<i32>(u_input.d, global1.a, -2147483647i, -44857i)))).zzw)), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(945f, 258f, -1486f), vec3<f32>(-1000f, -1000f, -1781f))))))));
    let var_1 = min(u_input.c, min(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, u_input.e), ~vec4<u32>(u_input.c.x, 33369u, u_input.c.x, 68332u)), u_input.c.x, global0.x), vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u) | ~u_input.e, 4294967295u, u_input.c.x >> (7602u % 32u))));
    global1 = Struct_1(global1.a);
    let var_2 = Struct_1(-2147483647i);
    let var_3 = u_input.b;
    return var_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = -1221f;
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, ~global0.x, 1u, min(arg_3, 1u) >> (global0.x % 32u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(24760u, u_input.c.x), ~arg_2), _wgslsmith_add_u32(_wgslsmith_add_u32(11352u, 83037u), _wgslsmith_dot_vec4_u32(vec4<u32>(44112u, 0u, global0.x, 0u), vec4<u32>(0u, 0u, 1u, u_input.e))), _wgslsmith_add_u32(reverseBits(global0.x), arg_3), abs(0u))), u_input.c);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(441f, 707f)))))), -1760f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-257f, _wgslsmith_f_op_f32(f32(-1f) * -398f))));
    var var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, ~min(select(arg_1.a, 35068i, true), arg_1.a)), ~arg_1.a);
    return ~(~22051u);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_i32(func_1().a, -6258i))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2203f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -708f), -670f)))));
    global1 = func_1();
    global0 = vec4<u32>(global0.x, arg_1.x, ~26738u, ~arg_1.x);
    global1 = Struct_1(global1.a);
    global3 = true;
    return -reverseBits(vec3<i32>(-(arg_2.a ^ global1.a), 65116i, arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = -150f;
    let var_2 = func_5(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 30450u, 0u), u_input.c)), firstLeadingBit(func_4(vec2<bool>(false, false), func_1(), 147u, global0.x))), ~(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 0u), u_input.c.zy), u_input.c.yx) | global0.zz), func_1(), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(select(false, true, true), true)));
    global0 = ~(~vec4<u32>(1u, ~u_input.e, u_input.e, 1u >> (u_input.c.x % 32u))) >> ((u_input.c >> (countOneBits(vec4<u32>(~11304u, min(30162u, u_input.e), global0.x & global0.x, ~global0.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = false;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(floor(220f))), -586f) - vec3<f32>(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))), 1040f)), 43597i);
}

