struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(15950u, 4294967295u, 4294967295u, 27155u), vec4<u32>(0u, 7796u, 16125u, 15651u), vec4<u32>(24236u, 0u, 1u, 0u), vec4<u32>(38159u, 49899u, 32932u, 1u), vec4<u32>(0u, 34961u, 4294967295u, 4294967295u), vec4<u32>(6236u, 18666u, 10090u, 4294967295u), vec4<u32>(5200u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 160u, 1u, 0u), vec4<u32>(86529u, 14209u, 44247u, 0u), vec4<u32>(4294967295u, 62847u, 4294967295u, 4294967295u), vec4<u32>(15263u, 33838u, 4294967295u, 1u), vec4<u32>(11547u, 0u, 1u, 4294967295u), vec4<u32>(8668u, 57295u, 9150u, 1u), vec4<u32>(4294967295u, 1u, 7396u, 4294967295u), vec4<u32>(1u, 30772u, 38256u, 45319u), vec4<u32>(76189u, 21489u, 14796u, 65106u), vec4<u32>(1u, 3506u, 50628u, 0u), vec4<u32>(1u, 0u, 47747u, 14714u), vec4<u32>(1u, 4294967295u, 1856u, 5157u), vec4<u32>(4294967295u, 4294967295u, 13076u, 40848u), vec4<u32>(83262u, 4294967295u, 4750u, 1u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = ~u_input.b;
    var var_1 = vec3<u32>(_wgslsmith_add_u32(~1u, min(~u_input.b, ~u_input.b)) | u_input.b, abs(~select(1u, _wgslsmith_mult_u32(1u, 1u), true)), abs(u_input.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-303f)) * _wgslsmith_f_op_f32(f32(-1f) * -459f)))))));
    let var_3 = -2147483647i;
    global0 = array<vec4<u32>, 21>();
    return ~var_1.zx & var_1.yz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<vec4<u32>, 21>();
    var var_0 = _wgslsmith_mod_vec2_i32(~firstTrailingBit(~vec2<i32>(-8163i, 2147483647i)) << (min(func_3(), _wgslsmith_mod_vec2_u32(vec2<u32>(49172u, 20216u), vec2<u32>(0u, 68476u) | vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), vec2<i32>(20136i, -2147483647i));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-arg_1.c, countOneBits(2439i)), min(-(~(0i >> (u_input.b % 32u))), -18107i), _wgslsmith_div_i32(select(firstTrailingBit(15756i), -2147483647i, arg_2.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c & arg_0.c, firstTrailingBit(0i), 0i, _wgslsmith_sub_i32(-43073i, arg_2.c)), vec4<i32>(_wgslsmith_mult_i32(arg_1.c, -18002i), 38895i, -2889i, 44040i))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - arg_2.a);
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), -1000f));
    return true;
}

fn func_1() -> bool {
    global0 = array<vec4<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(364f * -1059f), -188f, all(vec2<bool>(false, false)))))))), u_input.a, 0i, vec4<bool>(true, true, true, true));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)))), u_input.a, -u_input.a, !select(vec4<bool>(func_2(Struct_1(-1181f, -1i, 18199i, var_0.d), Struct_1(var_0.a, u_input.a, -7015i, vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x)), Struct_1(-1415f, -32331i, var_0.b, vec4<bool>(false, true, true, var_0.d.x)), Struct_1(var_0.a, var_0.c, -2147483647i, vec4<bool>(true, true, false, false))), var_0.d.x | false, var_0.b > var_0.b, true), !select(var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), var_0.d), vec4<bool>(all(vec2<bool>(true, var_0.d.x)), var_0.d.x & false, var_0.d.x | var_0.d.x, true)));
    var var_1 = vec4<i32>(~min(_wgslsmith_mult_i32(var_0.c, var_0.b), ~(-11708i)), ~_wgslsmith_mod_i32(2147483647i, var_0.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50170u, 34954u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 33460u)) % 32u)), ~(-2147483647i), u_input.a);
    var_0 = Struct_1(-1696f, 1i, min(u_input.a, _wgslsmith_mult_i32(-select(46853i, -1i, false), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 2147483647i, 19307i), var_1.xzy)))), !select(vec4<bool>(var_0.a >= -371f, func_2(Struct_1(-109f, var_0.c, 77102i, var_0.d), Struct_1(var_0.a, var_1.x, -2147483647i, vec4<bool>(var_0.d.x, true, var_0.d.x, true)), Struct_1(-564f, 2147483647i, 1i, var_0.d), Struct_1(-640f, 3370i, 41023i, vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x))), true, false), !(!var_0.d), var_0.d.x));
    return var_0.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global0 = array<vec4<u32>, 21>();
    var var_0 = !all(arg_0.d.xx) && !arg_1.d.x;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 572f) + vec2<f32>(var_1.a, var_1.a))) * vec2<f32>(-1169f, 429f)))));
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -1000f) - arg_1.a), var_1.d.x)) - -718f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 21>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(abs(911f)), -1i, 9526i, vec4<bool>(true, true, func_1(), true)), Struct_1(2115f, (u_input.a | u_input.a) >> (u_input.b % 32u), ~0i, vec4<bool>(true, true, true, true)), false, countOneBits(u_input.a))), -625f, 727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(886f, -287f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(302f, _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx)), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(762f, var_0.x) - vec2<f32>(-1504f, -214f)), _wgslsmith_f_op_vec2_f32(var_0.xx - var_0.zy))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(249f, var_0.x), vec2<f32>(var_0.x, var_0.x)))), func_2(Struct_1(280f, -27963i, -36170i, vec4<bool>(false, true, false, true)), Struct_1(var_0.x, u_input.a, u_input.a, vec4<bool>(false, false, true, false)), Struct_1(-823f, u_input.a, u_input.a, vec4<bool>(false, true, true, true)), Struct_1(var_0.x, u_input.a, 2147483647i, vec4<bool>(false, true, false, true)))))))));
    let var_2 = min(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), min(vec2<i32>(u_input.a, 0i), vec2<i32>(-4335i, u_input.a))), _wgslsmith_sub_i32(1i, ~u_input.a), _wgslsmith_mult_i32(countOneBits(-5728i), u_input.a), _wgslsmith_sub_i32(u_input.a ^ u_input.a, -u_input.a))), _wgslsmith_mod_vec4_i32(countOneBits(abs(vec4<i32>(-2147483647i, -1i, -2147483647i, u_input.a)) << ((vec4<u32>(u_input.b, u_input.b, u_input.b, 4054u) ^ vec4<u32>(40436u, 0u, 1u, 1u)) % vec4<u32>(32u))), -(~vec4<i32>(-2147483647i, 1i, u_input.a, -71165i))));
    var var_3 = var_2.x == u_input.a;
    global0 = array<vec4<u32>, 21>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-u_input.a), var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1384f, var_1.x))))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(47039u, u_input.b), vec2<u32>(u_input.b, 0u) & vec2<u32>(4294967295u, 4294967295u))), u_input.b), 21u)]);
}

