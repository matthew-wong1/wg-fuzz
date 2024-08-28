struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_3.b, arg_0);
    var_0 = Struct_2(-arg_3.b, var_0.b);
    var_0 = Struct_2(_wgslsmith_mult_i32(-var_0.b.b | -67579i, -40131i), arg_0);
    let var_1 = arg_1.zy;
    let var_2 = arg_0;
    return abs(arg_0.b & ~(-var_0.a));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(-48332i, arg_2);
    var var_1 = func_3(var_0.b, vec4<bool>(true, select(any(vec2<bool>(false, true)), var_0.b.a.x != 4294967295u, false), true, any(vec3<bool>(true, true, true))), all(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(u_input.a >= -2147483647i))), arg_2);
    let var_2 = var_0;
    var var_3 = max(min(_wgslsmith_add_vec2_u32(select(arg_2.c, vec2<u32>(arg_2.c.x, 8453u), true), firstLeadingBit(var_2.b.a.yz)), ~(~var_2.b.a.xz)) | max(_wgslsmith_clamp_vec2_u32(~arg_2.a.zx, var_0.b.a.xy, ~vec2<u32>(arg_2.a.x, 0u)), ~var_2.b.a.yx), _wgslsmith_mod_vec2_u32(arg_2.a.yy, ~_wgslsmith_mult_vec2_u32(var_0.b.c, ~var_0.b.c)));
    let var_4 = var_2.b;
    return min(vec2<i32>(23362i, arg_2.b), firstLeadingBit(~abs(~vec2<i32>(var_2.a, 2147483647i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-2363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-969f, -268f)), _wgslsmith_f_op_f32(f32(-1f) * -292f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(2831f, 1000f))) + -362f), -153f, _wgslsmith_mod_i32(-2147483647i, reverseBits(-1i)) > (-50936i >> (~arg_1.x % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-3268f)), _wgslsmith_f_op_f32(floor(-1562f)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_2(1i, Struct_1(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 0u, 4294967295u), vec3<u32>(1u, 1989u, 1u), vec3<u32>(0u, 73372u, 6202u))), u_input.a, arg_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-681f * -1211f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-234f + -407f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(466f, var_1) + _wgslsmith_f_op_f32(-var_1))), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_1)) + _wgslsmith_f_op_f32(-var_0.x))))));
    let var_4 = ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(arg_0.x, arg_0.x, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, u_input.a, var_2.a), abs(vec3<i32>(24738i, 42593i, var_2.a)))), ~(~(vec3<i32>(21146i, arg_0.x, -8013i) ^ vec3<i32>(2147483647i, -45570i, u_input.a))));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_1(arg_3, -_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, -2147483647i, 2147483647i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), -vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i))), arg_3.zy);
    let var_1 = var_0;
    let var_2 = func_4(func_2(_wgslsmith_f_op_f32(floor(-1363f)), vec2<f32>(-447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f + 209f))), Struct_1(vec3<u32>(~68906u, 52248u, ~var_0.c.x), ~reverseBits(1i), ~var_1.c >> (~vec2<u32>(54130u, 16714u) % vec2<u32>(32u)))), ~vec2<u32>(0u, firstLeadingBit(4294967295u)));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, 52566u) >> (firstLeadingBit(var_0.c) % vec2<u32>(32u)), var_2.b.a.yx), _wgslsmith_dot_vec4_u32((vec4<u32>(1u, 0u, 1u, arg_1) ^ vec4<u32>(16017u, 45741u, 4294967295u, var_1.c.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.c.x, 4294967295u, 4294967295u), vec4<u32>(5383u, var_0.c.x, 100797u, arg_1)) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(arg_3.x, 24795u, var_2.b.c.x, var_1.c.x)))), _wgslsmith_mod_vec2_u32(~var_2.b.c, vec2<u32>(29306u, ~(var_0.c.x >> (4294967295u % 32u)))));
    var var_4 = true;
    return any(vec2<bool>(arg_0, !any(!vec3<bool>(arg_0, arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, 1017f, 361f, -943f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1097f, 1654f, 242f, -1550f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, -1614f, 1921f, -1305f))), vec4<bool>(any(vec4<bool>(false, false, true, false)), true, func_1(false, 4294967295u, true, vec3<u32>(4294967295u, 13507u, 19875u)), select(true, true, false)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, 1032f, 133f, -828f)), vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(659f, 681f, 256f, 1000f))) - vec4<f32>(-1581f, -395f, -741f, -1825f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 1534f, -2031f, -205f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(461f, -174f, 670f, -1720f) - vec4<f32>(-590f, -653f, -1000f, 1892f)))))));
    let var_1 = 1i;
    let var_2 = vec3<bool>(all(vec3<bool>(false, true, var_0.x != _wgslsmith_f_op_f32(var_0.x * var_0.x))), true, true);
    let var_3 = Struct_1(vec3<u32>(~0u, ~1u, 4294967295u), 2147483647i, vec2<u32>(1u, 1u));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.x, var_3.a.x, ~select(53563u, var_3.a.x, false), ~(~165143u)), ~vec4<u32>(~0u, select(var_3.c.x, var_3.a.x, var_2.x), abs(1u), 40191u)) | vec4<u32>(var_3.c.x, 49110u, 0u, 6242u);
    let var_5 = abs(vec3<i32>(var_3.b, countOneBits(2147483647i), u_input.a) ^ -_wgslsmith_div_vec3_i32(vec3<i32>(-7099i, 1i, var_1), vec3<i32>(1i, var_1, 1i))) >> ((countOneBits(countOneBits(vec3<u32>(1u, 33416u, var_4.x))) & vec3<u32>(var_3.a.x | 0u, var_3.c.x | _wgslsmith_add_u32(68114u, var_3.a.x), countOneBits(~5974u))) % vec3<u32>(32u));
    var var_6 = var_4.wy | var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1367f, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(ceil(var_0)))) * var_0));
}

