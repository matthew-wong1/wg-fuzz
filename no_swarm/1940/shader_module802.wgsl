struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_4(Struct_2(_wgslsmith_add_vec2_i32(max(vec2<i32>(-28378i, u_input.c.x), u_input.c.yy & u_input.c.xz), _wgslsmith_mod_vec2_i32(~u_input.a.yy, vec2<i32>(u_input.c.x, u_input.a.x))), Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true))), Struct_2(-(select(vec2<i32>(-2147483647i, -14644i), u_input.a.zz, vec2<bool>(true, false)) << ((u_input.b.xz << (u_input.b.xx % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_1(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, false))), Struct_1(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, true)), true, 13046u < u_input.b.x), true)));
    var_0 = Struct_4(var_0.a, var_0.a, Struct_1(var_0.b.b.b, vec4<bool>(true, false, true, !var_0.a.b.a.x | true)));
    let var_1 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(max(28976u, 36924u) ^ arg_0, 1u << (0u % 32u), u_input.b.x), vec3<u32>(min(u_input.b.x, u_input.b.x), firstTrailingBit(arg_0), arg_0 ^ arg_0) >> (u_input.b % vec3<u32>(32u))));
    return all(var_0.b.b.b.wwy);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = -u_input.a.yx;
    let var_1 = Struct_4(arg_1.b, arg_1.b, arg_1.b.b);
    let var_2 = Struct_3(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    var var_3 = Struct_1(vec4<bool>(false, arg_1.b.b.a.x, select(false, var_2.a.x | var_2.a.x, var_1.c.b.x) || func_3(arg_1.d.x), arg_1.b.b.a.x), vec4<bool>(108297u != ~(~u_input.b.x), true, (true & (arg_1.b.b.a.x & var_1.c.a.x)) && arg_1.b.b.a.x, !(!var_2.a.x || (-1123f >= arg_2.x))));
    let var_4 = false;
    return _wgslsmith_add_i32(1i & u_input.a.x, u_input.a.x) >> (~0u % 32u);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = vec4<bool>((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + -439f) >= -426f) | all(vec2<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(false, true)))), true && (~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 26099u), select(vec3<u32>(1472u, 1u, 0u), vec3<u32>(4294967295u, 1u, u_input.b.x), true))), false, false);
    var var_1 = -vec3<i32>(-20040i, ~(-1i), -16953i);
    var_1 = vec3<i32>(~func_2(vec2<f32>(_wgslsmith_f_op_f32(-1150f + -1041f), arg_0), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-407f, arg_0)), Struct_2(var_1.xy, Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false))), _wgslsmith_f_op_f32(ceil(arg_0)), ~vec2<u32>(u_input.b.x, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, 960f, 285f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), u_input.b.zx), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(-var_1.zx, arg_2.yz)), _wgslsmith_div_i32(var_1.x ^ -(2147483647i & arg_1.x), min(_wgslsmith_mult_i32(var_1.x | 1i, arg_1.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, 1i, 0i)))));
    var_1 = vec3<i32>(u_input.a.x, -_wgslsmith_add_i32(firstLeadingBit(arg_1.x), abs(arg_1.x)), _wgslsmith_mod_i32(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1594f, -1665f), vec2<f32>(-151f, -123f))), Struct_5(vec2<f32>(arg_0, arg_0), Struct_2(vec2<i32>(u_input.a.x, -35280i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, var_0.x))), 1000f, u_input.b.xx), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, arg_0, arg_0))), countOneBits(vec2<u32>(u_input.b.x, 0u))), 0i | select(arg_2.x, 26042i, false))) & vec3<i32>(-2147483647i, _wgslsmith_mod_i32(i32(-1i) * -14927i, -24166i >> (u_input.b.x % 32u)), -(~var_1.x));
    var var_2 = func_3(_wgslsmith_add_u32(u_input.b.x, 37322u) | u_input.b.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -798f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2181f + _wgslsmith_f_op_f32(f32(-1f) * -563f)))))), vec4<f32>(265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(458f, u_input.a.xx, vec4<i32>(3492i, u_input.c.x, 19807i, 1i))) - -1841f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(378f, -1089f) + _wgslsmith_f_op_f32(f32(-1f) * -911f)) + _wgslsmith_f_op_f32(-774f * -297f)), _wgslsmith_f_op_f32(min(803f, -196f))));
}

