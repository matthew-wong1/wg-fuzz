struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(abs(36271u), -20134i, _wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(f32(-1f) * -1590f)), arg_1.b.d);
    let var_1 = ~_wgslsmith_mod_vec3_u32(~(~u_input.a.yzw), ~select(u_input.a.zww << (vec3<u32>(0u, arg_0.a, 4844u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(72896u, 6148u, arg_1.b.a), u_input.a.wzw), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)));
    let var_2 = arg_1.b;
    var_0 = var_2;
    var var_3 = select(select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), false), !select(all(vec4<bool>(false, false, false, false)), true, true)), select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.d.x < var_2.c)), vec2<bool>(!(38218u > arg_1.b.a), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))), true), ~(~_wgslsmith_sub_u32(arg_1.b.a, arg_1.b.a)) <= 59166u);
    return arg_1.b.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(1u, u_input.c, 412f, arg_0), Struct_2(u_input.d, Struct_1(u_input.d, 2147483647i, arg_0.x, arg_0)))).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.x, 1152f)), _wgslsmith_f_op_f32(f32(-1f) * -581f))), true))));
    var var_1 = Struct_1(select(u_input.d, u_input.a.x, (~4294967295u >= (u_input.d & 4294967295u)) || any(vec2<bool>(true, true))), _wgslsmith_clamp_i32(~(~u_input.c), u_input.c, 11237i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(firstTrailingBit(1u), -6100i, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1665f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), Struct_2(_wgslsmith_div_u32(8107u, 1u), Struct_1(4294967295u, arg_1, -1000f, vec3<f32>(arg_0.x, -200f, -1966f))))).x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 779f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(955f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = false;
    let var_3 = select(vec2<i32>(var_1.b, reverseBits(_wgslsmith_mult_i32(-2147483647i, ~var_1.b))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_1.b, 0i, arg_1), _wgslsmith_div_vec3_i32(~vec3<i32>(19860i, -2147483647i, u_input.c), -vec3<i32>(0i, var_1.b, u_input.c))), arg_1), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, var_1.a > u_input.d), vec2<bool>(true, true)), vec2<bool>(!(u_input.c <= u_input.c), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    var_2 = all(select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(247f < arg_0.x, true), vec2<bool>(true, true))));
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(19764i | arg_1, -1i), -36122i, 39371i, 0i), -abs(vec4<i32>(2147483647i, u_input.c, -1i, 2147483647i)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    var var_0 = vec2<i32>(43403i, u_input.c);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(abs(var_0.x), 0i, var_0.x, _wgslsmith_mod_i32(u_input.c, u_input.c)), vec4<i32>(abs(1i), _wgslsmith_mult_i32(u_input.c, u_input.c), ~u_input.c, var_0.x)), func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(13567u, u_input.c, -1000f, vec3<f32>(-928f, arg_1.x, 2074f)), Struct_2(4294967295u, Struct_1(u_input.b, u_input.c, arg_1.x, vec3<f32>(1991f, arg_1.x, arg_1.x))))), _wgslsmith_dot_vec4_i32(-vec4<i32>(23252i, -67538i, u_input.c, u_input.c), vec4<i32>(var_0.x, -17620i, 2147483647i, 0i)))), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, u_input.c)) << (u_input.a.wy % vec2<u32>(32u)), ~(vec2<i32>(var_0.x, 2147483647i) >> (vec2<u32>(u_input.b, 37153u) % vec2<u32>(32u)))));
    var_0 = firstLeadingBit(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_0.x) << (vec2<u32>(24554u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(12457i, 41038i)));
    var_0 = select(max(vec2<i32>(_wgslsmith_div_i32(2147483647i, select(1i, -1i, arg_0)), -1i), firstLeadingBit(vec2<i32>(abs(-17330i), 72592i))), ~vec2<i32>(_wgslsmith_sub_i32(reverseBits(var_1), var_1), ~_wgslsmith_clamp_i32(var_0.x, var_1, 59428i)), select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(arg_1.x * 906f) >= _wgslsmith_f_op_f32(-arg_1.x), arg_0), vec2<bool>(true, true)));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -947f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-734f - arg_1.x), arg_1.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(sign(334f))))), arg_1.x))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(u_input.d, Struct_1(u_input.d, 0i, 498f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-373f, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-164f, -503f, arg_0.x))) * vec3<f32>(-862f, 933f, -1031f)))));
    var var_1 = Struct_1(1u, 44866i, _wgslsmith_f_op_f32(-arg_0.x), var_0.b.d);
    var var_2 = Struct_2(67070u, var_0.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_0.b.b < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 58066i), vec2<i32>(1i, var_0.b.b)), arg_0)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) - _wgslsmith_f_op_f32(ceil(var_1.c)))), vec3<f32>(_wgslsmith_f_op_f32(371f + arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))), vec3<bool>(true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)))));
    var_2 = Struct_2(316u, Struct_1(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.b.b, 7281i << (u_input.b % 32u), -2147483647i, 43429i), vec4<i32>(var_1.b >> (u_input.b % 32u), ~u_input.c, firstLeadingBit(var_0.b.b), var_0.b.b)), 1187f, _wgslsmith_f_op_vec3_f32(var_2.b.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, var_1.d.x, arg_0.x) + vec3<f32>(1459f, -1239f, -1156f))))));
    return Struct_1(firstLeadingBit(_wgslsmith_add_u32(u_input.b, ~(~1u))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.d * var_0.b.d)), -u_input.c).x ^ ~countOneBits(6644i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.c))))), var_2.b.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_div_vec3_f32(vec3<f32>(346f, arg_0.d.x, var_0.c), arg_0.d))), _wgslsmith_f_op_vec3_f32(select(arg_0.d, vec3<f32>(-210f, var_0.c, arg_0.c), !vec3<bool>(arg_2, true, false))))), _wgslsmith_f_op_vec3_f32(arg_0.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.d.x, -605f), _wgslsmith_f_op_f32(var_0.c - 585f), _wgslsmith_f_op_f32(-arg_0.d.x))))));
    let var_2 = arg_0.d;
    var_1 = _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-698f)) * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)), -436f)));
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(arg_0.d.xz + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.x, 398f)), 377f)), -1027f)));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(23531u & u_input.b, Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(62329u << (u_input.d % 32u), ~43072u), ~1u), -(firstTrailingBit(u_input.c) ^ 2147483647i), _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, -457f) * vec2<f32>(742f, -937f))), -u_input.c & firstTrailingBit(u_input.c), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, -711f, false)), 114f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-525f, -267f, -850f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(600f, -1024f, -210f) + vec3<f32>(426f, -160f, -1594f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, var_0.b.c, var_0.b.c, _wgslsmith_f_op_f32(step(-939f, var_0.b.c))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, var_0.b.c, var_0.b.d.x, 918f))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(735f, var_0.b.d.x) * var_0.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) * _wgslsmith_f_op_f32(f32(-1f) * -359f))), var_0.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.c)))));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(max(var_1.yx, _wgslsmith_f_op_vec2_f32(round(var_1.yw)))));
    let var_3 = var_0;
    let var_4 = vec3<u32>(var_3.a, _wgslsmith_add_u32(min(1u, var_2.a), var_2.a), 1u);
    let var_5 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_3.b.d.yz).c - _wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-21015i, 35020i, 2147483647i, 88924i) << ((vec4<u32>(1876u, 0u, 38438u, var_2.a) ^ vec4<u32>(0u, 54096u, 4294967295u, var_0.b.a)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(2147483647i, var_0.b.b), _wgslsmith_mult_i32(var_3.b.b, u_input.c), var_3.b.b, _wgslsmith_div_i32(var_0.b.b, var_0.b.b))), vec3<i32>(u_input.c, ~_wgslsmith_add_i32(-41996i, -54310i), _wgslsmith_add_i32(-19836i, -1i) | _wgslsmith_add_i32(select(var_0.b.b, var_2.b, true), var_3.b.b)), firstLeadingBit(abs(firstLeadingBit(vec4<i32>(var_0.b.b, 7179i, u_input.c, var_0.b.b)))) << (u_input.a % vec4<u32>(32u)));
}

