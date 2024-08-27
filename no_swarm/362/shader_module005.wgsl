struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = max(abs(vec3<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(44833u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.e, 4294967295u, 31782u, 0u))), ~max(38187u, 0u), arg_0.x)), vec3<u32>(~min(max(47944u, u_input.a), u_input.c), ~u_input.a, arg_0.x));
    let var_1 = select(vec2<u32>(32791u, _wgslsmith_add_u32(var_0.x, arg_0.x)), vec2<u32>(~_wgslsmith_mult_u32(1u, var_0.x), abs(~(~var_0.x))), vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1619f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), all(vec2<bool>(true, true))));
    var var_2 = Struct_4(arg_1, Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(arg_1.a.x)), -449f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, 1000f) * arg_1.a))), 36263u);
    var_2 = Struct_4(arg_1, arg_1, ~min(_wgslsmith_sub_u32(max(var_1.x, 25290u), min(u_input.a, 1u)), _wgslsmith_sub_u32(arg_0.x ^ 0u, var_2.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1996f)))) * _wgslsmith_f_op_f32(f32(-1f) * -476f)));
    return min(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), -26654i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.a.x, arg_3.a.x), _wgslsmith_f_op_vec4_f32(min(arg_1.a, vec4<f32>(-196f, 1829f, arg_0.a.x, arg_3.a.x)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 380f, arg_3.a.x, arg_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(210f, 330f)), -203f, -1904f, arg_0.a.x)))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_3.a.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -1342f, 424f))) - vec3<f32>(-1099f, _wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(1000f * 332f)))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(786f, 1080f, arg_3.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, -667f, -280f)))))), 24005u << ((_wgslsmith_clamp_u32(~arg_1.b.x, 24275u, _wgslsmith_div_u32(u_input.a, u_input.c)) << (firstLeadingBit(17353u) % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_0.a)), arg_1.a.yyx, true)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-786f * 1000f)))), true));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_2, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, abs(arg_2), max(0i, arg_2)), vec4<i32>(u_input.b, u_input.d.x, 11437i, max(u_input.b, -4258i))) >> (vec4<u32>(0u, reverseBits(3061u), arg_1.b.x, (var_1.c >> (arg_1.b.x % 32u)) & select(4294967295u, 0u, false)) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_1.a.x)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * arg_3.a.x), -1017f, false));
    let var_1 = Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 631f, arg_1.a.x)), arg_3.a, vec3<bool>(true, true, true)))), Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_3.a.x, 748f, 123f) - vec4<f32>(arg_1.a.x, arg_3.a.x, -644f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -183f, -309f, -168f)), vec4<bool>(true, true, true, true))), select(max(vec4<u32>(arg_0, arg_0, 0u, 62077u), vec4<u32>(1u, u_input.e, u_input.a, 0u)), max(vec4<u32>(u_input.c, arg_0, arg_0, 4294967295u), vec4<u32>(u_input.a, u_input.a, 9638u, 19384u)), true)), _wgslsmith_add_i32(arg_2, _wgslsmith_add_i32(-u_input.b, func_3(vec3<u32>(22594u, u_input.e, u_input.a), Struct_2(arg_3.a)))), arg_1), !vec3<bool>(true, 1000f != _wgslsmith_f_op_f32(min(arg_3.a.x, arg_3.a.x)), all(vec3<bool>(false, false, true))), arg_2, countOneBits(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d)), 2147483647i)), -12465i);
    var var_2 = _wgslsmith_mod_u32(u_input.c ^ arg_0, ~0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)), arg_1.a.x, _wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_div_f32(arg_1.a.x, 1323f)), arg_3.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -222f), 1654f, _wgslsmith_f_op_f32(f32(-1f) * -1604f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.a.x, 149f, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -754f, -1230f, 136f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, 710f, -153f, -471f))))), all(select(select(vec4<bool>(true, var_1.b.x, false, var_1.b.x), vec4<bool>(false, false, var_1.b.x, true), var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), true))))));
    var_0 = true;
    return ~(~0u);
}

fn func_1() -> vec2<u32> {
    return ~(~vec2<u32>(max(u_input.e << (u_input.c % 32u), func_2(0u, Struct_2(vec3<f32>(-206f, 840f, -454f)), -3800i, Struct_2(vec3<f32>(-847f, 778f, 961f)))), u_input.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1767f, 1000f, -777f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 1214f) + vec3<f32>(480f, 775f, 2127f)), vec3<bool>(false, true, false))), vec3<f32>(945f, _wgslsmith_f_op_f32(576f * 444f), _wgslsmith_f_op_f32(ceil(-155f))))), any(vec4<bool>(all(vec3<bool>(true, true, false)), true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)))));
    var_0 = Struct_3(var_0.a, var_0.b);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.a.x);
    let var_2 = Struct_1(u_input.b, !vec3<bool>(any(vec4<bool>(false, false, var_0.b, true)), any(vec2<bool>(var_0.b, var_0.b)) == false, true), ~(~(~u_input.d.x)), -min(countOneBits(-45507i), u_input.d.x) & -47698i, _wgslsmith_dot_vec2_i32(~abs(-u_input.d), vec2<i32>(_wgslsmith_div_i32(u_input.d.x, firstLeadingBit(0i)), -_wgslsmith_clamp_i32(14498i, -35950i, 37594i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.a.a.yy)));
    return ~(~(~vec4<u32>(abs(17578u), 46479u, arg_0.x >> (arg_1.x % 32u), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(394f * -1878f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1675f))) * 1f));
    var_0 = -1881f;
    let var_1 = ~firstTrailingBit(u_input.e) < ~_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.c, u_input.a & u_input.a), ~53532u);
    var_0 = 740f;
    let var_2 = func_5(func_1(), vec3<u32>(u_input.e, ~firstLeadingBit(0u), ~(~23344u))) ^ firstLeadingBit(vec4<u32>(39618u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)), 3086u, _wgslsmith_mult_u32(u_input.c, _wgslsmith_clamp_u32(0u, 930u, u_input.e))));
    var var_3 = vec2<i32>(~u_input.d.x, ~abs(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

