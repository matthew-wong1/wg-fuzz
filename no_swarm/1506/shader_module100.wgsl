struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = vec3<bool>(any(!select(select(vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, arg_1), false), vec3<bool>(false, false, true), all(vec4<bool>(arg_1, false, arg_1, true)))), true, true);
    var var_1 = Struct_3(select(var_0.x, all(select(select(var_0, var_0, var_0), !vec3<bool>(false, var_0.x, true), false)), any(!(!vec4<bool>(var_0.x, false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 599f, 285f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1189f, -670f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 413f) + vec3<f32>(arg_0.x, -659f, arg_0.x)))))), Struct_1(abs(firstLeadingBit(u_input.b.zzy)) << (abs(u_input.b.wyx) % vec3<u32>(32u)), ~(_wgslsmith_sub_u32(arg_2, 1u) | ~arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)), arg_0.x > arg_0.x), Struct_1(vec3<u32>(~41099u, ~1u, 19015u), reverseBits(_wgslsmith_mult_u32(arg_2, arg_2)), -190f, !((arg_0.x > arg_0.x) && var_0.x)), var_0.x);
    var_1 = Struct_3((u_input.a > 1i) || var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1531f + var_1.b.x)), 1000f, _wgslsmith_f_op_f32(sign(-904f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - var_1.b)), var_1.d, var_1.c, arg_1);
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.b, var_1.b), vec3<f32>(1155f, var_1.d.c, var_1.d.c))), vec3<bool>(all(vec4<bool>(arg_1, var_1.e, var_1.e, true)), var_1.d.d, var_1.d.c < 1081f)))), var_1.d, Struct_1(abs(var_1.d.a), min(~_wgslsmith_mod_u32(6093u, 4294967295u), min(86337u, arg_2) >> (12206u % 32u)), _wgslsmith_f_op_f32(round(arg_0.x)), !any(var_0.zz)), 50404u == arg_2);
    let var_2 = ~firstTrailingBit(1i ^ u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, var_1.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_3(any(!vec3<bool>(!arg_0.d, !arg_0.d, arg_0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-376f, arg_0.c, 1311f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -656f) * vec3<f32>(-2437f, -633f, arg_0.c))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(880f, -168f, _wgslsmith_f_op_f32(arg_0.c - arg_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, -881f, arg_0.c)), any(vec3<bool>(arg_0.d, false, true)) & any(vec2<bool>(true, false))))), arg_0, arg_0, false);
    var var_1 = 570f;
    var var_2 = vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(arg_1, u_input.a, reverseBits(u_input.a))), abs(_wgslsmith_mult_i32(-arg_1, firstLeadingBit(u_input.a)))), 1i, abs(_wgslsmith_clamp_i32(-11430i, firstLeadingBit(reverseBits(2147483647i)), u_input.a)));
    let var_3 = Struct_1(vec3<u32>(34129u, _wgslsmith_dot_vec2_u32(~vec2<u32>(26930u, arg_0.a.x) | ~vec2<u32>(u_input.b.x, 1u), _wgslsmith_sub_vec2_u32(arg_0.a.xz, countOneBits(var_0.c.a.yx))), _wgslsmith_mult_u32(46288u, var_0.d.b)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 84801u, 63881u, 4294967295u)) << (~30140u % 32u), max(u_input.b.x, 4377u)) & 30426u, arg_0.c, var_0.c.c > 207f);
    var_1 = _wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) - var_3.c))));
    return vec4<u32>(_wgslsmith_clamp_u32(93631u, ~_wgslsmith_div_u32(select(4294967295u, 42036u, var_0.d.d), 2436u), _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_0.a.x, 50886u, arg_0.b), vec4<u32>(15935u, var_3.a.x, 0u, 1u), vec4<u32>(23860u, 1u, arg_0.a.x, u_input.b.x))) ^ u_input.b.x), 48248u, u_input.b.x, arg_0.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = Struct_2(vec3<i32>(u_input.a, 1i, ~firstTrailingBit(_wgslsmith_div_i32(-1i, u_input.a))), select(func_4(Struct_1(arg_0.a, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_0.c, 1124f), false, 28685u)), true), select(u_input.a, 4407i, !arg_0.d)), u_input.b | u_input.b, vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-19449i), firstLeadingBit(u_input.a), var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(var_0.a.x, u_input.a, u_input.a))), -countOneBits(vec4<i32>(var_0.a.x, 22785i, 0i, 37792i))), -25279i, u_input.a ^ var_0.a.x, u_input.a), select(~vec4<i32>(-2147483647i, -2147483647i, -6391i, u_input.a), -vec4<i32>(-36542i, var_0.a.x, var_0.a.x, -10152i), arg_0.d) >> ((u_input.b & vec4<u32>(_wgslsmith_clamp_u32(arg_1, 4294967295u, u_input.b.x), u_input.b.x, 41519u, 23591u)) % vec4<u32>(32u)));
    var var_2 = var_0.a.x;
    var_2 = -var_0.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), 1050f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) - vec2<f32>(-643f, -1000f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c))))));
    return var_0.a.x;
}

fn func_1() -> Struct_2 {
    var var_0 = !(-508f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-602f, _wgslsmith_f_op_f32(340f - 399f), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-476f, -280f))))));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a | -36686i, _wgslsmith_div_i32(u_input.a, u_input.a), -1i) << (((vec3<u32>(4294967295u, 1u, u_input.b.x) ^ u_input.b.zzy) & abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a & u_input.a, ~(-20081i), 1i), 254i ^ func_2(Struct_1(u_input.b.xzz, u_input.b.x, -505f, true), u_input.b.x, 18016u), abs(func_2(Struct_1(u_input.b.zww, 0u, -956f, true), u_input.b.x, u_input.b.x)))), u_input.b);
    var_1 = Struct_2(_wgslsmith_mult_vec3_i32(abs(reverseBits(min(var_1.a, vec3<i32>(0i, -1i, 2147483647i)))), var_1.a), min(vec4<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), min(~u_input.b.x, firstTrailingBit(var_1.b.x)), u_input.b.x), u_input.b));
    var var_2 = vec2<bool>(any(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), false)), true);
    let var_3 = Struct_2((-var_1.a ^ vec3<i32>(36973i, 19696i, var_1.a.x)) >> (~min(~vec3<u32>(u_input.b.x, var_1.b.x, u_input.b.x), max(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.b.x, 105385u, 47082u))) % vec3<u32>(32u)), var_1.b | (~max(vec4<u32>(42190u, var_1.b.x, var_1.b.x, u_input.b.x), u_input.b) ^ (~vec4<u32>(var_1.b.x, u_input.b.x, var_1.b.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, var_1.b.x, var_1.b.x, 0u) % vec4<u32>(32u)))));
    return Struct_2(vec3<i32>(-(~36783i), var_1.a.x, -20214i), var_1.b);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_2(arg_1.a, u_input.b);
    let var_1 = Struct_1(select(vec3<u32>(_wgslsmith_mod_u32(arg_1.b.x, 29832u), var_0.b.x | u_input.b.x, u_input.b.x), vec3<u32>(~u_input.b.x, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x), ~arg_1.b.x), arg_0.xxy) & _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, arg_1.b.x, firstTrailingBit(19438u)), _wgslsmith_mult_vec3_u32(arg_1.b.yzz, vec3<u32>(4294967295u, u_input.b.x, var_0.b.x))), arg_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1319f)), _wgslsmith_f_op_f32(-1344f + -191f), true))))), any(arg_0) && (arg_0.x && arg_0.x));
    return StorageBuffer(max(_wgslsmith_mod_u32(min(u_input.b.x | 53907u, u_input.b.x), 30449u), _wgslsmith_clamp_u32(5159u, 1u, ~arg_1.b.x)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<f32>(var_1.c, var_1.c), arg_0.x, 1u))))) + var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_1.c)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(702f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1066f, 172f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(859f * -1720f))))));
    let x = u_input.a;
    s_output = func_5(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), func_1());
}

