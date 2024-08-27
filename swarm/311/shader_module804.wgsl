struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1127f + -221f)))))), -1346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1103f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - _wgslsmith_f_op_f32(1000f * -885f)) - -1107f)));
    var var_1 = Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true)), _wgslsmith_add_u32(max(reverseBits(firstTrailingBit(147418u)), _wgslsmith_mult_u32(~1u, u_input.c.x)), ~(u_input.c.x << (~u_input.c.x % 32u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), abs(vec2<u32>(4294967295u, u_input.a.x))), 4294967295u), vec2<bool>((i32(-1i) * -u_input.b) > ~u_input.b, true), var_0.zyy);
    return all(select(vec4<bool>(all(select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.d.x, false, false), var_1.d.x)), select(true, true, any(vec3<bool>(var_1.a.x, false, var_1.a.x))), true, var_1.a.x), select(vec4<bool>(all(vec3<bool>(true, var_1.a.x, var_1.d.x)), true, !var_1.a.x, select(var_1.d.x, var_1.a.x, var_1.a.x)), select(vec4<bool>(var_1.d.x, var_1.a.x, var_1.a.x, var_1.d.x), vec4<bool>(false, false, true, var_1.d.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.d.x)), !var_1.a.x), select(!select(vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.d.x, var_1.a.x, true)), !vec4<bool>(false, var_1.d.x, false, var_1.a.x), var_1.d.x)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = 1130f;
    var var_1 = Struct_1(vec2<bool>(!func_3(), _wgslsmith_mod_i32(u_input.e, _wgslsmith_clamp_i32(-2147483647i, u_input.e, u_input.d.x)) < firstLeadingBit(1i)), 13448u, ~arg_0.x | _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.x, firstTrailingBit(6848u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), ~vec2<u32>(arg_0.x, 0u))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_3()), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), 40858u <= max(0u, u_input.c.x)), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(select(-699f, 506f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)), -1023f))));
    var_1 = Struct_1(var_1.d, _wgslsmith_sub_u32(1u, 1u), arg_0.x, !var_1.d, _wgslsmith_f_op_vec3_f32(var_1.e + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1000f) + 1320f), 1687f)));
    var_1 = Struct_1(!var_1.a, ~1u, countOneBits(4294967295u), select(!select(vec2<bool>(var_1.a.x, true), vec2<bool>(var_1.a.x, var_1.a.x), var_1.a), var_1.a, !var_1.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(1373f, var_0, true)), _wgslsmith_div_f32(2224f, -465f), _wgslsmith_f_op_f32(var_1.e.x * -411f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, 485f, -1057f)), (34954u >= arg_0.x) && any(vec4<bool>(true, true, var_1.d.x, var_1.d.x)))), _wgslsmith_f_op_vec3_f32(-var_1.e))));
    var var_2 = abs(vec4<u32>(~(~13535u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, 761u, var_1.c) >> (vec4<u32>(1u, 65539u, 26517u, arg_0.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(var_1.b, 1u), u_input.c.x, _wgslsmith_div_u32(var_1.c, 0u), var_1.b)), _wgslsmith_dot_vec3_u32(u_input.c.xxy, vec3<u32>(1u, var_1.b, _wgslsmith_add_u32(1u, 1u))), _wgslsmith_div_u32(1u ^ _wgslsmith_clamp_u32(4294967295u, u_input.c.x, arg_0.x), _wgslsmith_add_u32(arg_0.x, var_1.b & 6484u))));
    return var_1.d.x;
}

fn func_1() -> bool {
    var var_0 = (vec4<i32>(u_input.d.x, u_input.b, u_input.e, select(countOneBits(21543i), u_input.e, func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 69030u)))) & (vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.d.x, 3039i, 2147483647i), vec4<i32>(u_input.e, 0i, u_input.d.x, u_input.d.x)), u_input.e, u_input.b, min(u_input.d.x, 73940i)) >> (u_input.c % vec4<u32>(32u)))) | max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 6820i, 1614i, u_input.b) | vec4<i32>(u_input.d.x, u_input.b, 0i, u_input.d.x), vec4<i32>(-2147483647i, -23692i, ~(-29892i), abs(1i))), vec4<i32>(-1i, _wgslsmith_sub_i32(abs(2147483647i), countOneBits(1i)), ~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-48261i, u_input.b), u_input.e)));
    let var_1 = _wgslsmith_mod_u32(0u, u_input.c.x & ~58903u);
    var_0 = countOneBits(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 2147483647i, var_0.x)), vec3<i32>(-1i, u_input.d.x, u_input.d.x) & var_0.zyw), var_0.x, 1i)) ^ (min(~vec4<i32>(u_input.b, -25115i, -1i, 7981i) >> (countOneBits(u_input.c) % vec4<u32>(32u)), vec4<i32>(1i, abs(1i), 1i, var_0.x)) ^ vec4<i32>(var_0.x, 1i, var_0.x, 74821i));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f - -1302f)) * 1251f), -415f));
    var var_3 = Struct_1(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), abs(_wgslsmith_mult_u32(~firstLeadingBit(4294967295u), min(u_input.c.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)))), ~0u, vec2<bool>(true, all(vec2<bool>(true, u_input.e <= 2147483647i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 330f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -2112f), _wgslsmith_f_op_f32(min(var_2, -761f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, var_2, -705f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, var_2, 582f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -3262f, -742f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u) >> (vec3<u32>(38142u, _wgslsmith_div_u32(~u_input.c.x, min(0u, 81783u)), u_input.a.x) % vec3<u32>(32u)), abs(max(_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x), u_input.c.xxy), vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), vec3<u32>(~1u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.a.x))));
    let var_2 = u_input.a;
    var_1 = _wgslsmith_div_u32(u_input.c.x | ~(~select(6498u, var_2.x, var_0)), var_2.x);
    var var_3 = _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_sub_i32(~u_input.d.x, -(2147483647i >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, var_2.x, _wgslsmith_dot_vec2_u32(~u_input.c.wx, ~_wgslsmith_mult_vec2_u32(var_2.yx, vec2<u32>(4570u, 4294967295u))), u_input.a.x));
}

