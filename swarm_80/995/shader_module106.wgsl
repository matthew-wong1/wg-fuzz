struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<bool>(arg_0.x, all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), u_input.a.yy, true), Struct_1(!(!arg_0.ww), vec2<u32>(~u_input.a.x, countOneBits(u_input.a.x)), true), u_input.c.x >> (u_input.a.x % 32u), min(~(u_input.a.x | u_input.a.x), select(_wgslsmith_sub_u32(u_input.a.x, 18413u), firstLeadingBit(u_input.a.x), true)) & u_input.a.x, min(70293u, ~(u_input.a.x & u_input.a.x)));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(654f)), arg_1)) * arg_1)))));
    var_1 = 9899i;
    var_0 = Struct_2(var_0.a, var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, select(u_input.c | vec2<i32>(13276i, 2147483647i), u_input.c, !arg_0.zz)), vec2<i32>(_wgslsmith_mod_i32(var_0.c << (75010u % 32u), u_input.e), max(u_input.b, 0i & var_0.c))), ~abs(var_0.a.b.x), u_input.a.x);
    return all(arg_0);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.zzx, u_input.a.zyx)) | 0u;
    var_0 = _wgslsmith_clamp_u32(u_input.a.x, 11093u, u_input.a.x);
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, any(vec4<bool>(true, true, false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false)), ~vec2<u32>(_wgslsmith_mod_u32(33180u, u_input.a.x), ~u_input.a.x), true), Struct_1(vec2<bool>(true && (0u != u_input.a.x), true), vec2<u32>(u_input.a.x, 28426u), func_3(vec4<bool>(false, any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, false)), u_input.c.x <= u_input.e), _wgslsmith_f_op_f32(f32(-1f) * -740f))), 1i, select(0u ^ _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~_wgslsmith_clamp_u32(1u, u_input.a.x, 4294967295u), true) >> (4294967295u % 32u), u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1404f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(505f)))), _wgslsmith_f_op_f32(floor(1f))) - vec3<f32>(-931f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -650f)))), _wgslsmith_f_op_f32(f32(-1f) * -673f)));
    let var_3 = firstTrailingBit(~1u);
    return var_1.c;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = arg_1 >= _wgslsmith_clamp_i32(2147483647i, u_input.b, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-54487i, arg_2.x), func_2()) | 2147483647i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f - 568f) + _wgslsmith_f_op_f32(1790f - 1763f)))) * 103f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2252f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(f32(-1f) * -2021f))), _wgslsmith_f_op_f32(591f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1150f)) - -412f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1213f - 314f), _wgslsmith_f_op_f32(-1183f + -387f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f * 1047f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(150f + -357f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-385f, -1287f)))), var_0))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-545f)), _wgslsmith_f_op_f32(select(-1258f, _wgslsmith_f_op_f32(-var_1.x), arg_1 <= -40654i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f * var_1.x))), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, _wgslsmith_f_op_f32(round(1422f)), _wgslsmith_f_op_f32(sign(var_1.x)), 975f))));
    let var_2 = Struct_3(arg_3.x, Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, var_0), var_0)), select(~(~vec2<u32>(1u, 4294967295u)), _wgslsmith_clamp_vec2_u32(arg_0.b, u_input.a.xy, arg_0.b) | _wgslsmith_add_vec2_u32(u_input.a.wz, u_input.a.wz), arg_0.a.x), var_0), ~4294967295u, var_1.x);
    let var_3 = select((var_2.b.c && var_2.b.a.x) || any(vec2<bool>(arg_0.c, var_0)), var_0 && true, false);
    return 1359f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1332f;
    var var_1 = u_input.a.wxz;
    var_1 = vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(var_1.x, var_1.x), ~select(~38514u << ((var_1.x >> (u_input.a.x % 32u)) % 32u), var_1.x, true));
    var_1 = u_input.a.zww;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(false, true), vec2<u32>(var_1.x, 0u), true), u_input.c.x ^ -1i, ~vec4<i32>(u_input.b, -7591i, -2147483647i, u_input.e), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, u_input.c.x)))), -852f));
    let x = u_input.a;
    s_output = StorageBuffer(-1i << (~countOneBits(var_1.x) % 32u), vec3<i32>(-56718i ^ abs(_wgslsmith_mod_i32(u_input.c.x, u_input.b)), -1i, u_input.c.x), _wgslsmith_f_op_f32(exp2(1f)));
}

