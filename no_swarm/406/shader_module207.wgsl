struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(select(vec2<bool>(true, !all(vec4<bool>(true, true, false, true))), select(vec2<bool>(true, false), vec2<bool>(any(vec3<bool>(false, false, false)), 4294967295u < u_input.a), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, -164f, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -326f) - vec4<f32>(769f, -1902f, arg_0, -1139f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -459f, 674f, arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 216f, arg_0, 781f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, arg_0, 1076f, arg_0))))))), !(!all(vec3<bool>(true, false, true))) | !any(vec3<bool>(true, true, false)));
    let var_1 = select(var_0.a, vec2<bool>(var_0.c, false), select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(false, false)), var_0.a.x), select(vec2<bool>(u_input.b.x == u_input.b.x, var_0.c), vec2<bool>(true, var_0.c), var_0.a)));
    var var_2 = Struct_1(!vec2<bool>(true, var_0.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(max(-454f, 1027f)), _wgslsmith_f_op_f32(abs(319f)), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - 931f), var_0.b.x, _wgslsmith_f_op_f32(exp2(arg_0)), var_0.b.x))), true)), false);
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(683f, var_3)));
    return !vec4<bool>(((var_2.b.x <= var_0.b.x) & any(vec3<bool>(false, true, true))) != var_0.c, true, false, any(!(!vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = !(!select(!func_3(-645f, vec4<u32>(54277u, arg_2, 9658u, u_input.a), vec3<u32>(arg_2, 0u, arg_2)), func_3(_wgslsmith_f_op_f32(sign(var_0.b.x)), ~vec4<u32>(u_input.a, arg_2, 4294967295u, 37884u), vec3<u32>(1u, u_input.a, 54116u) << (vec3<u32>(arg_2, 1u, arg_2) % vec3<u32>(32u))), arg_0.x));
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(!select(vec2<bool>(false, true), !vec2<bool>(var_1.x, true), true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(arg_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, arg_1.b.x, -1150f, arg_1.b.x) - var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, arg_1.b.x, -1882f, 625f)), vec4<bool>(arg_0.x, true, arg_0.x, true))), !select(arg_0, arg_0, vec4<bool>(true, var_0.a.x, var_1.x, false)))), arg_1.b)), all(func_3(arg_1.b.x, ~vec4<u32>(u_input.a, arg_2, 25179u, 4294967295u), reverseBits(vec3<u32>(arg_2, u_input.a, u_input.a))).xzw) || ((u_input.b.x > u_input.b.x) && false));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-20938i, -u_input.b.x)), ~vec2<i32>(_wgslsmith_clamp_i32(arg_2.x, 2147483647i, u_input.b.x), countOneBits(arg_2.x))), u_input.b.x, ~(~countOneBits(u_input.b.x)) | ((1i | u_input.b.x) | u_input.b.x), ~(abs(arg_2.x) & arg_2.x));
    let var_1 = all(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1005f, 1f) + arg_0.b.x), vec4<u32>(4294967295u, 1u, u_input.a & u_input.a, ~(~0u)), ~(~vec3<u32>(962u, u_input.a, u_input.a) | ~vec3<u32>(1u, 18405u, u_input.a))));
    let var_2 = -vec4<i32>(-_wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, var_0.x, 2147483647i), vec4<i32>(arg_2.x, 0i, u_input.b.x, arg_2.x))), 0i, ~(i32(-1i) * -38151i), -2390i >> (u_input.a % 32u));
    var var_3 = func_2(!(!vec4<bool>(true, true, var_1, false)), arg_0, u_input.a);
    var_3 = arg_0;
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1557f)), _wgslsmith_f_op_f32(min(838f, arg_0.b.x)), true)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_f_op_f32(arg_1.x - 1703f))), true | (countOneBits(var_0.x) > var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, arg_0.b.x, 296f, 1131f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b * vec4<f32>(1165f, -1417f, 402f, 153f)) * _wgslsmith_div_vec4_f32(vec4<f32>(386f, arg_1.x, var_3.b.x, 585f), var_3.b)))), false);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = (u_input.b.x & u_input.b.x) & 0i;
    let var_1 = func_2(!vec4<bool>(select(all(vec3<bool>(arg_1.c, true, false)), func_3(arg_0, vec4<u32>(u_input.a, 1813u, u_input.a, 18735u), vec3<u32>(u_input.a, 1u, 4294967295u)).x, func_3(arg_1.b.x, vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 1u, 81758u)).x), arg_1.a.x, false, select(!arg_1.c, arg_1.a.x && arg_1.a.x, func_3(arg_0, vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 102888u)).x)), arg_1, 46833u);
    var var_2 = firstTrailingBit(_wgslsmith_div_vec2_u32(select(firstTrailingBit(vec2<u32>(0u, u_input.a)), ~vec2<u32>(1u, 1u), vec2<bool>(false, arg_1.c)), vec2<u32>(firstLeadingBit(u_input.a), ~4294967295u)) | abs(vec2<u32>(firstTrailingBit(24919u), u_input.a)));
    var var_3 = countOneBits(1i);
    var var_4 = vec4<u32>(firstLeadingBit(21646u) ^ ((var_2.x | u_input.a) << (var_2.x % 32u)), _wgslsmith_clamp_u32(~u_input.a, ~(~14639u), u_input.a), ~var_2.x, abs(~u_input.a ^ 1u)) | vec4<u32>(1u, abs(1u), u_input.a, 4484u);
    return func_4(arg_1, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(func_4(func_4(arg_1, vec4<f32>(-382f, arg_1.b.x, arg_1.b.x, arg_0), u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, arg_0, -1000f, -1696f) * vec4<f32>(-1546f, -205f, 447f, -862f)), vec4<i32>(-1i, -2147483647i, var_0, var_0)).b)))), vec4<i32>(abs(-var_0), 2147483647i, abs(~(u_input.b.x ^ var_0)), 22107i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = func_5(1132f, func_4(func_2(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(563f, 2223f, 1976f, 460f) * vec4<f32>(893f, 1000f, 675f, 264f)), true), 0u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-902f, -1357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f - 475f)), 1242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) * -1246f)), vec4<i32>(countOneBits(arg_0.x) >> (~arg_1.x % 32u), 1i, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yxy, u_input.b.xwx), u_input.b.zyw))));
    var var_1 = _wgslsmith_mult_u32(~u_input.a, arg_1.x);
    var_1 = _wgslsmith_div_u32(arg_1.x, reverseBits(min(~67188u, 1u))) >> (1u % 32u);
    var_1 = 4294967295u;
    var_0 = Struct_1(vec2<bool>(all(!vec4<bool>(var_0.c, var_0.c, var_0.a.x, var_0.a.x)) | var_0.c, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-489f, var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x)), -1721f, 506f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), all(var_0.a));
    return false;
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = func_4(func_2(func_3(612f, ~(vec4<u32>(arg_0, 0u, u_input.a, 4294967295u) >> (vec4<u32>(25551u, arg_0, 4294967295u, arg_0) % vec4<u32>(32u))), ~(vec3<u32>(u_input.a, arg_0, 4294967295u) << (vec3<u32>(4294967295u, arg_0, 1u) % vec3<u32>(32u)))), Struct_1(!vec2<bool>(arg_3.x, true), arg_1, select(true, all(vec4<bool>(false, arg_3.x, arg_3.x, true)), false)), 82735u), vec4<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(func_5(2359f, Struct_1(arg_3, vec4<f32>(arg_1.x, 803f, arg_2, 1540f), false)).b.x, _wgslsmith_f_op_f32(373f - 620f)))), _wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(-arg_2)), arg_2), _wgslsmith_mult_vec4_i32(u_input.b, abs(~(~vec4<i32>(2147483647i, 1i, 0i, -12445i)))));
    return StorageBuffer(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, arg_0, arg_0)), ~vec3<u32>(67936u, 4294967295u, 0u)) >> (u_input.a % 32u), var_0.b.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1089f, _wgslsmith_f_op_f32(f32(-1f) * -589f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yw) - vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(1u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(603f, 1f, 224f, _wgslsmith_f_op_f32(ceil(-546f))), vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), 244f, _wgslsmith_f_op_f32(abs(649f)), -1023f), vec4<bool>(func_1(vec2<i32>(u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.a, 4807u, u_input.a)), func_3(-1051f, vec4<u32>(35779u, u_input.a, 1u, 2944u), _wgslsmith_mult_vec3_u32(vec3<u32>(5661u, 46225u, 112524u), vec3<u32>(u_input.a, 1u, 4294967295u))).x, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2166f))), !func_4(func_5(_wgslsmith_f_op_f32(200f - -1861f), Struct_1(vec2<bool>(true, true), vec4<f32>(1350f, -131f, -1616f, 615f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, 1000f, -360f, 258f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, 143f, -1270f, -586f) * vec4<f32>(383f, 598f, -683f, 252f))), countOneBits(u_input.b)).a);
}

