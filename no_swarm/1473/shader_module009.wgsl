struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<f32> {
    var var_0 = ~(-49559i);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1366f + _wgslsmith_f_op_f32(-1447f - _wgslsmith_f_op_f32(max(-649f, 1853f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-253f * 609f), -517f)), 2572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(884f, -888f))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(min(-663f, 793f)))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(-738f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1668f, -250f)), -1026f), true)), _wgslsmith_f_op_f32(1190f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(676f, 504f) * _wgslsmith_f_op_f32(abs(851f))))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> bool {
    let var_0 = arg_1.x;
    let var_1 = Struct_2(all(arg_1.yxw));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1572f, -838f, 1151f, -1553f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(116f, -437f, 958f, 461f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -474f, 566f, 2017f), vec4<f32>(-239f, -326f, 179f, 1186f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1102f, -234f, 474f, 578f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1312f, 906f, -1429f, -557f) - vec4<f32>(-339f, 425f, 810f, -1000f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3());
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_3.x, var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 1112f) + -138f) != _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(round(var_3.x)), true)))));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    return !(((_wgslsmith_f_op_f32(step(297f, -489f)) < _wgslsmith_f_op_f32(f32(-1f) * -124f)) != func_2(arg_0, vec4<bool>(arg_0, arg_0, false, arg_0), ~arg_1.x)) || !all(select(vec2<bool>(false, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, true))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = vec3<i32>(-((abs(2147483647i) ^ arg_3.x) >> (u_input.a.x % 32u)), -2147483647i, -(~(arg_3.x >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u)));
    let var_1 = -854f;
    var var_2 = (~countOneBits(1u) | ((~u_input.a.x & 15623u) >> (reverseBits(37101u) % 32u))) | 4294967295u;
    var_2 = countOneBits(36482u);
    var_2 = u_input.a.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-func_4(func_1(true, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 113709u, 4294967295u), u_input.a)), firstLeadingBit(u_input.a.x) <= _wgslsmith_dot_vec2_u32(vec2<u32>(105498u, u_input.a.x), u_input.a.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * 1351f) - _wgslsmith_f_op_f32(sign(-340f))), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(11299i, 11337i, 2147483647i, -1i) << (vec4<u32>(u_input.a.x, 4294967295u, 27529u, 4294967295u) % vec4<u32>(32u)), true)));
    var_0 = _wgslsmith_sub_vec4_i32(reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-22924i, -53506i, var_0.x, 18513i)) | vec4<i32>(-var_0.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(8697i, var_0.x)), _wgslsmith_mod_i32(21491i, 1i))), select(-vec4<i32>(-1i, var_0.x, 36043i, var_0.x) ^ max(vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), vec4<i32>(var_0.x, 0i, var_0.x, -1i)), abs(vec4<i32>(52507i, 1i, var_0.x, var_0.x)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))) << (vec4<u32>(~reverseBits(43659u), ~0u, u_input.a.x, 1u) % vec4<u32>(32u)));
    let var_1 = Struct_2(!any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))) | false);
    var_0 = -abs(~vec4<i32>(36034i, 1i, 1i, var_0.x) << (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(-(~func_4(var_1.a, var_1.a, _wgslsmith_f_op_f32(-326f - 683f), vec4<i32>(16785i, var_0.x, 0i, var_0.x)).x), -var_0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, 0i, -9309i, var_0.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(var_0.x & var_0.x, var_0.x, _wgslsmith_add_i32(57208i, 4164i), 1i)), func_4(true, any(select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), var_1.a)), -244f, vec4<i32>(var_0.x, 1i, -2147483647i, var_0.x) & max(vec4<i32>(var_0.x, 5163i, -8474i, -1i), vec4<i32>(-17416i, 1i, var_0.x, -19888i))).x), 50533i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -var_0.wzw, var_0.wwz);
}

