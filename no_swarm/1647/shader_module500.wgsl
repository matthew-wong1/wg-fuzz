struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    var var_0 = -1126f;
    let var_1 = arg_2;
    let var_2 = vec3<bool>(false, arg_3.x, ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -38799i, 2147483647i), vec4<i32>(-1i, -1i, 2147483647i, 0i))) == abs(1i));
    let var_3 = Struct_1(var_1.a, abs(u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~u_input.a), u_input.a, vec4<u32>(86591u, ~1u, 94998u, arg_1)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(124487u, 84555u), vec2<u32>(var_1.c, 4294967295u)), countOneBits(34583u), 98496u, u_input.a.x) & vec4<u32>(~arg_1, 1u, arg_2.b << (var_1.c % 32u), select(arg_1, arg_2.b, false))));
    let var_4 = select(abs(min(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(57001i, 1i, ~0i, -36352i >> (var_3.c % 32u)))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(2147483647i, -1i, 2147483647i, 14820i)), abs(firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, 19767i, -14214i))), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(4378i, 16990i, 2147483647i, -22091i), vec4<i32>(4791i, 761i, -1i, -7866i) << (u_input.a % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -14829i, 1i, -2147483647i)), vec4<i32>(~(-46446i), ~(-23974i), ~14943i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 0i), vec3<i32>(69450i, -1i, 0i))))), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-17340i, 2147483647i), max(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 9407i))) == (_wgslsmith_dot_vec4_i32(~vec4<i32>(-10486i, -3364i, 2147483647i, 1i), vec4<i32>(2147483647i, 16034i, 31233i, -10062i)) & _wgslsmith_add_i32(85135i, ~1i)));
    return ~_wgslsmith_add_i32(0i, _wgslsmith_add_i32(countOneBits(29152i), ~(17473i & var_4.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32((_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 0i, -29529i), reverseBits(vec4<i32>(-1i, 74519i, -1i, 64251i))) & vec4<i32>(6610i, firstTrailingBit(-14590i), 1i, _wgslsmith_mult_i32(-6778i, -21051i))) & (vec4<i32>(-10389i, -72564i, func_3(1000f, 1u, Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), 1u, u_input.b.x), vec2<bool>(true, false)), reverseBits(31279i)) >> (vec4<u32>(~0u, abs(u_input.c), max(63983u, arg_2.x), arg_1.c & 60955u) % vec4<u32>(32u))), vec4<i32>(1i, abs(i32(-1i) * -1i), -select(func_3(1331f, arg_2.x, Struct_1(arg_0.a, arg_1.b, 38090u), vec2<bool>(true, false)), ~(-1i), all(vec2<bool>(true, true))), 6165i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))))), arg_1.c, 1u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1252f, _wgslsmith_f_op_f32(f32(-1f) * -2097f))), _wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = any(vec2<bool>(!(!(arg_0.b >= u_input.c)), false));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_div_i32(var_0.x, 43303i), 2147483647i | countOneBits(34162i >> (u_input.c % 32u)), 59809i), abs(-vec4<i32>(0i, 19263i, var_0.x, -10259i) ^ -vec4<i32>(1i, var_0.x, -1i, var_0.x)));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = firstTrailingBit(1i);
    var var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true));
    var_1 = select(!select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x), var_1.x), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)), all(vec2<bool>(true, var_1.x))), select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), var_1.x), !var_1.x)), select(select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), vec2<bool>(var_1.x, false)), vec2<bool>(false, var_1.x), true), vec2<bool>(var_1.x, all(vec2<bool>(false, var_1.x))), any(vec4<bool>(true, var_1.x, var_1.x, false))), select(vec2<bool>(func_2(arg_0, Struct_1(arg_0.a, 101u, arg_1.b), vec2<u32>(4294967295u, 24326u)), var_1.x), vec2<bool>(var_1.x, true), select(!vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, false), select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), var_1.x))), arg_1.a.x == -306f), vec2<bool>((_wgslsmith_clamp_u32(21096u, arg_1.c, 13242u) ^ reverseBits(u_input.c)) > 0u, any(vec2<bool>(true, true))));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_1.a.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 1717f)))), arg_0.c, 1u);
    return _wgslsmith_mod_vec4_i32(vec4<i32>(var_0 ^ 0i, -_wgslsmith_add_i32(-2147483647i, 50409i), 25488i, _wgslsmith_mod_i32(-2147483647i, var_0)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -1i, -1i), vec4<i32>(8166i, 66937i, var_0, -41027i)) | abs(vec4<i32>(var_0, var_0, var_0, -26349i)), vec4<i32>(~(-31628i), _wgslsmith_div_i32(var_0, var_0), -1i << (arg_1.c % 32u), 0i))) << (u_input.a % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-func_1(Struct_1(vec3<f32>(592f, -713f, -1651f), 82403u, u_input.d.x), Struct_1(vec3<f32>(1907f, -1312f, -1826f), 4294967295u, u_input.a.x), vec2<f32>(-1170f, -572f)))) | ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-18002i, -1i, 22645i, 0i), vec4<i32>(-21134i, 1i, 2147483647i, 47054i), vec4<i32>(0i, 2147483647i, -66908i, 462i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-17792i, 0i, 2147483647i, -40784i) >> (u_input.a % vec4<u32>(32u))));
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(false, false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), -26549i > var_0.x), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, -1817f, -462f))))), 9578u, ~(~u_input.d.x));
    var_1 = select(select(vec2<bool>(any(!vec2<bool>(var_1.x, var_2)), !all(vec3<bool>(false, false, false))), vec2<bool>(true, var_3.a.x > -910f), var_2), !(!select(select(vec2<bool>(true, var_2), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x)), select(vec2<bool>(var_1.x, var_2), vec2<bool>(var_2, false), vec2<bool>(var_1.x, true)), !vec2<bool>(var_1.x, true))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.x >> (16422u % 32u)) << (1u % 32u), 56775u, -1i);
}

