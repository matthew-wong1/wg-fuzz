struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = 65976u;
    var var_1 = select(vec3<u32>(abs(~(var_0 >> (28642u % 32u))), abs(~(var_0 & 0u)), ~(var_0 ^ var_0)), reverseBits(~vec3<u32>(_wgslsmith_add_u32(var_0, 26356u), var_0, _wgslsmith_sub_u32(var_0, var_0))), vec3<bool>(true, all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), all(vec2<bool>(true, true))));
    var var_2 = Struct_3(u_input.b, Struct_1(any(vec2<bool>(true, true)), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), !(!select(false, false, true)), _wgslsmith_f_op_f32(trunc(-2786f))), countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -1461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f) + _wgslsmith_f_op_f32(select(-389f, 342f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2162f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(0i, 1i), 31715i, 2147483647i), ~(-vec4<i32>(-1i, u_input.a.x, 66552i, 32923i))));
    var var_3 = 1u;
    var_1 = ~vec3<u32>(_wgslsmith_div_u32(var_0, _wgslsmith_mult_u32(var_1.x, var_1.x)), var_0, firstLeadingBit(var_0) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_0, var_0), vec3<u32>(30516u, 31366u, 1u))) << (min(vec3<u32>(~max(var_0, var_1.x), var_0, (4294967295u >> (var_0 % 32u)) << (var_1.x % 32u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(57084u, var_1.x, var_1.x), ~vec3<u32>(var_1.x, var_0, 4294967295u)), 64818u)) % vec3<u32>(32u));
    return ~firstTrailingBit(~var_0);
}

fn func_2() -> bool {
    let var_0 = Struct_1(!(-2147483647i > u_input.a.x) & select(func_3() > func_3(), !any(vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec2<bool>(false, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), u_input.b == -59320i)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), true), true), any(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-282f)), _wgslsmith_f_op_f32(1115f - 1353f)), 1f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2649f))))))));
    var var_1 = Struct_3(~(i32(-1i) * -1i), var_0, vec2<i32>(-2341i & (~(-17377i) ^ u_input.b), 1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) * _wgslsmith_f_op_f32(var_0.d - 2154f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))), -985f, _wgslsmith_f_op_f32(-var_0.d)))), select(firstTrailingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.b, 0i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-28838i, 11327i, u_input.b, -2147483647i)))), u_input.a.x, var_0.c));
    var_1 = Struct_3(~_wgslsmith_add_i32(~_wgslsmith_mod_i32(var_1.a, 1i), 2147483647i), var_0, ~(max(vec2<i32>(var_1.c.x, u_input.a.x), u_input.a) ^ ~(~vec2<i32>(var_1.c.x, -40950i))), vec4<f32>(_wgslsmith_div_f32(-187f, _wgslsmith_div_f32(var_1.b.d, 819f)), _wgslsmith_f_op_f32(2134f - var_1.d.x), var_0.d, _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_div_i32(-u_input.b, var_1.a ^ -1i));
    var_1 = Struct_3(1991i, Struct_1(var_0.b.x, !(!select(var_1.b.b, vec3<bool>(true, true, var_1.b.b.x), var_1.b.c)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-699f)) + _wgslsmith_f_op_f32(sign(var_0.d))), var_0.d)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(12839i, 41929i, 2147483647i, 1i)) & vec4<i32>(var_1.a, var_1.c.x, u_input.b, u_input.b), vec4<i32>(1i, firstLeadingBit(var_1.c.x), ~2147483647i, -var_1.e)), _wgslsmith_div_i32(u_input.a.x, -34971i)), vec4<f32>(var_0.d, -672f, 2255f, var_1.b.d), ~u_input.b);
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(-vec4<i32>(u_input.b, 2147483647i, 0i, var_1.c.x), vec4<i32>(var_1.c.x, var_1.a, 2147483647i, u_input.b), vec4<bool>(false, false, var_0.b.x, true)), -vec4<i32>(-2147483647i, u_input.a.x, 1i, 29113i)), vec4<i32>(u_input.b, _wgslsmith_div_i32(i32(-1i) * -7696i, -26546i), ~select(u_input.a.x, u_input.b, var_1.b.c), var_1.e)), var_0, var_1.c, var_1.d, ~(~max(50955i, 25557i)));
    return 2147483647i <= _wgslsmith_div_i32(-var_2.a, -_wgslsmith_sub_i32(-u_input.a.x, 0i));
}

fn func_1() -> bool {
    let var_0 = ~31266i;
    var var_1 = select(any(vec2<bool>(true, true)), !func_2(), !(!(_wgslsmith_f_op_f32(round(-1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1045f))));
    var var_2 = Struct_3(u_input.b, Struct_1(true, vec3<bool>(any(vec3<bool>(true, true, true)), false, false), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), -866f), u_input.a, vec4<f32>(193f, _wgslsmith_f_op_f32(-1f), 131f, 1058f), u_input.a.x);
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), countOneBits(4761u)), vec2<u32>(~4294967295u, func_3())), vec2<u32>(1u, 1u) << (firstLeadingBit(~vec2<u32>(46199u, 1u)) % vec2<u32>(32u))) < ~1u;
    var var_3 = Struct_2(Struct_1(var_2.b.b.x, !(!(!vec3<bool>(false, var_2.b.b.x, true))), any(var_2.b.b.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))), var_2.b.b.yz, u_input.a.x);
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<bool>) -> bool {
    return true;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(func_1(), vec3<bool>(true, true, arg_0), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1003f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(506f, 352f, func_4(vec3<i32>(42058i, arg_3.x, arg_3.x), arg_1, vec4<bool>(arg_2, arg_0, false, arg_0)))), -265f))));
    let var_1 = Struct_2(Struct_1(any(vec2<bool>(arg_1 == 36147u, var_0.d == var_0.d)), !vec3<bool>(all(vec2<bool>(false, arg_2)), true, false), true, 463f), select(!select(vec2<bool>(arg_0, arg_2), var_0.b.xy, select(var_0.b.zz, vec2<bool>(true, true), var_0.b.xx)), var_0.b.zx, any(select(vec2<bool>(arg_2, false), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false), false)))), u_input.b | arg_3.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-935f, var_1.a.d))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 153f) * _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f - var_0.d) * _wgslsmith_f_op_f32(var_0.d - var_0.d)))), vec2<f32>(var_0.d, var_0.d)));
    var var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(988f)) + _wgslsmith_div_f32(var_2.x, -891f))))) == 1086f;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!(!(any(vec2<bool>(false, false)) || false)), 1u, (false & !any(vec4<bool>(true, true, false, true))) != func_4(vec3<i32>(u_input.a.x | u_input.b, u_input.a.x << (54439u % 32u), 1i), ~0u, vec4<bool>(true, func_1(), true, false)), -min(firstTrailingBit(-vec4<i32>(u_input.a.x, 0i, -1505i, u_input.b)), firstTrailingBit(vec4<i32>(u_input.a.x, -1i, 0i, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d, var_0.d))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1890f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), var_0.b.x)))));
    let var_2 = vec2<u32>(~75038u, _wgslsmith_mult_u32(4294967295u, 1u)) >> (vec2<u32>(_wgslsmith_clamp_u32(~countOneBits(0u), min(61868u, 0u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) << (~1u % 32u)) % vec2<u32>(32u));
    let var_3 = Struct_3(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(abs(11875i), 1i, u_input.a.x | -25056i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), Struct_1(func_5(true, var_2.x, true, vec4<i32>(23105i ^ u_input.b, _wgslsmith_div_i32(9253i, u_input.b), 1i, u_input.a.x)).b.x, !(!var_0.b), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(firstTrailingBit(73349i) >> (~1u % 32u), u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d, 473f, var_1.x, 264f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 662f, 1000f, var_1.x)))) * vec4<f32>(var_0.d, 605f, _wgslsmith_f_op_f32(var_1.x - var_1.x), var_0.d))), max((0i & (u_input.b << (30384u % 32u))) >> (var_2.x % 32u), 45957i));
    var var_4 = vec2<bool>(!any(var_3.b.b), false);
    var var_5 = vec4<bool>(all(var_3.b.b.yx), 1355f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-175f, _wgslsmith_f_op_f32(f32(-1f) * -536f))))), all(!select(!vec4<bool>(true, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, false, var_3.b.b.x), !vec4<bool>(false, var_0.c, var_0.a, false))), ((true && (var_2.x > 4294967295u)) != (func_3() != ~1u)) && false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(var_3.d.yxw)), ~(~u_input.a.x));
}

