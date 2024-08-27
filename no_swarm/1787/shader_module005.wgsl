struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-510f));
    let var_1 = vec2<i32>(-1i) * -(vec2<i32>(u_input.c, 0i << (u_input.a.x % 32u)) ^ vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, 8379i))));
    var_0 = _wgslsmith_f_op_f32(abs(arg_0));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -885f);
    let var_3 = vec4<u32>(~arg_2.x, _wgslsmith_clamp_u32(u_input.d.x << (select(30638u, ~99461u, !arg_1) % 32u), 4294967295u, 47591u), ~(~(~arg_3)), ~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(7366u, 1875u), u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -924f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 906f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-131f, arg_0))), arg_1))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 722f)) - 130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))), vec2<bool>(true, arg_1))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, 2282f)))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(arg_1 - -341f), true, vec3<u32>(u_input.b.x, u_input.e, 48859u), abs(u_input.b.x)))), firstTrailingBit(firstLeadingBit(0u)), vec3<i32>(arg_2.x, _wgslsmith_div_i32(u_input.c, 0i), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_1)))));
    let var_1 = vec3<f32>(2100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.a.x)) - _wgslsmith_f_op_f32(exp2(var_0.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.d, 736f)));
    var var_2 = var_0.a.c.yz | select(select(-var_0.a.c.zx, ~arg_2.wz, false), var_0.a.c.yx, !arg_0);
    var_2 = ~(arg_2.yz & _wgslsmith_div_vec2_i32(-vec2<i32>(1i, u_input.c), var_0.a.c.zz));
    var var_3 = _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(9217i, 23495i, -1i, -22979i), arg_2), -vec4<i32>(var_2.x, u_input.c, arg_2.x, var_0.a.c.x)), -(arg_2 >> (max(vec4<u32>(40377u, 13353u, 0u, 0u), vec4<u32>(4294967295u, 86393u, 23808u, 0u)) % vec4<u32>(32u)))) >> (vec4<u32>(12818u, u_input.a.x, abs(~1u), u_input.d.x) % vec4<u32>(32u));
    return 1i;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = (i32(-1i) * -_wgslsmith_div_i32(arg_0.a.c.x, min(arg_0.a.c.x, 41519i))) ^ arg_0.a.c.x;
    var_0 = func_2(vec2<bool>(select(_wgslsmith_f_op_f32(min(1075f, arg_0.a.a.x)) > arg_0.a.a.x, arg_1.a, true), arg_1.a), _wgslsmith_f_op_f32(arg_0.a.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1925f), -1000f)), -vec4<i32>(u_input.c, u_input.c, 86162i, u_input.c));
    return firstLeadingBit(-12435i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = vec2<i32>(0i >> (0u % 32u), u_input.c);
    var_0 = reverseBits(76287u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-523f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(465f - -1509f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(397f + _wgslsmith_f_op_f32(-2089f - -196f)), _wgslsmith_f_op_f32(-876f - _wgslsmith_f_op_f32(-364f + 1715f))))) < _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(445f))), _wgslsmith_f_op_f32(895f * _wgslsmith_f_op_f32(f32(-1f) * -172f))), _wgslsmith_f_op_f32(-1329f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) * _wgslsmith_f_op_f32(step(-257f, 1407f)))), !(!any(vec4<bool>(true, false, false, false)))));
    var var_3 = 14815u;
    var_3 = ~(~u_input.a.x);
    var var_4 = !(!(!(_wgslsmith_sub_u32(u_input.a.x, 53923u) < (u_input.b.x << (0u % 32u)))));
    var var_5 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, 109f)))), 0u, _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(var_1.x, 0i), _wgslsmith_mod_i32(func_1(Struct_3(Struct_1(vec2<f32>(287f, -1192f), 1u, vec3<i32>(7257i, u_input.c, var_1.x), 2244f)), Struct_2(false)), min(-1i, var_1.x)), ~_wgslsmith_sub_i32(var_1.x, -6129i)), vec3<i32>(37191i, firstTrailingBit(u_input.c), -61591i & var_1.x) & max(abs(vec3<i32>(2147483647i, u_input.c, -11617i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -49723i), vec3<i32>(1i, -2147483647i, u_input.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f * 1846f))))));
    var_0 = ~abs(var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~(-vec4<i32>(var_1.x, 29223i, 41803i, u_input.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2344f, var_5.a.x, 516f, 439f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.d, -842f, -654f, -1066f)))))), (reverseBits(vec3<u32>(0u, var_5.b, 25574u)) | vec3<u32>(u_input.a.x << (u_input.b.x % 32u), 1u, u_input.d.x)) >> (vec3<u32>(~15234u, ~(~1u), max(countOneBits(u_input.e), ~5815u)) % vec3<u32>(32u)), countOneBits(~u_input.d.zy));
}

