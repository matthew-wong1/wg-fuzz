struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return -33445i << (u_input.c % 32u);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> vec2<f32> {
    let var_0 = ~vec2<u32>(1u, abs(countOneBits(0u)));
    return vec2<f32>(-268f, arg_2);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, arg_0.x)), arg_0), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -2048f), true)), _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) - -1000f), arg_1, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(216f, arg_0.x)), vec2<f32>(arg_0.x, arg_0.x)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(arg_0 + arg_0);
    var var_1 = u_input.a;
    var var_2 = !all(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true | any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(314i, u_input.b.x, u_input.b.x)), u_input.a), ~(~firstLeadingBit(arg_1.x)), vec3<u32>(0u, reverseBits(1u), arg_1.x)), Struct_1(u_input.a, ~_wgslsmith_sub_u32(~u_input.c, u_input.c >> (arg_1.x % 32u)), ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(1u, 80693u)), u_input.c)), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), all(vec3<bool>(true, false, false)))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, ~select(var_3.a.c.x, var_3.b.b, true) | _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.b.b, arg_1.x), ~arg_1.zy), u_input.c, u_input.c), vec4<u32>(var_3.b.b, arg_1.x, var_3.b.c.x, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(sign(786f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(532f))));
    var var_1 = vec2<i32>(i32(-1i) * -func_1(Struct_1(-1i, u_input.c, vec3<u32>(58148u, u_input.c, u_input.c))), select(-55009i, -15344i, 1u > ~u_input.c));
    let var_2 = ~(~func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 153f))), vec3<u32>(17263u, ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(55857u, u_input.c, 52941u), vec3<u32>(u_input.c, u_input.c, u_input.c)))));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -611f))), _wgslsmith_f_op_f32(-1000f - var_0));
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.b.x, var_1.x) ^ u_input.b.zz), vec2<i32>(u_input.a, _wgslsmith_mod_i32(var_1.x, var_1.x))), 0u, abs(~vec3<u32>(1u, 69253u, var_2)) >> (vec3<u32>(u_input.c, _wgslsmith_add_u32(var_2, 53907u), _wgslsmith_sub_u32(0u, var_2)) % vec3<u32>(32u))), Struct_1(1i, 1u, vec3<u32>(var_2, var_2, 4294967295u ^ u_input.c) >> (_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, var_2, u_input.c), vec3<u32>(var_2, 1u, u_input.c), false), ~vec3<u32>(u_input.c, var_2, 1u)) % vec3<u32>(32u))), vec2<bool>(true, (-607f > _wgslsmith_f_op_f32(var_0 + var_0)) && !all(vec3<bool>(false, false, false))));
    var var_5 = 1u;
    var_1 = reverseBits(_wgslsmith_add_vec2_i32(-(~reverseBits(vec2<i32>(23869i, -2147483647i))), vec2<i32>((-35666i | var_1.x) & _wgslsmith_clamp_i32(var_4.b.a, 9391i, -2147483647i), min(func_1(Struct_1(u_input.a, var_4.b.b, var_4.b.c)), u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 186f, -525f, 1448f) * vec4<f32>(var_0, var_3.x, var_3.x, 126f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, var_3.x, -1650f, var_0), vec4<f32>(-400f, var_3.x, var_0, -153f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-490f, -1218f, var_3.x, var_0), vec4<f32>(876f, -997f, var_3.x, 1658f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -457f, var_3.x, 200f))))))), u_input.b.wwy);
}

