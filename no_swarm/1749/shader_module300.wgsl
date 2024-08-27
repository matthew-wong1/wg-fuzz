struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(127f, -305f, -787f, 1705f, 806f, -115f, 1169f, 122f, -712f, 1185f, -1158f, -1553f, 1000f, -745f, 1872f, -1802f, 375f, 182f, -1166f, 220f, -420f, 1459f);

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, false, true, true, false, true, true, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(firstLeadingBit(u_input.c) == ~countOneBits(u_input.c), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(~u_input.e, 12u)], !(global1[_wgslsmith_index_u32(4294967295u, 12u)] != global1[_wgslsmith_index_u32(u_input.e, 12u)]), true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 12u)] || global1[_wgslsmith_index_u32(69307u, 12u)], global0[_wgslsmith_index_u32(u_input.e, 22u)] > -168f, true, any(vec3<bool>(global1[_wgslsmith_index_u32(18310u, 12u)], true, true))), any(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], false), false))), u_input.c >= _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-13266i, u_input.c)), select(vec2<i32>(26830i, u_input.c), vec2<i32>(u_input.d, u_input.d), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 12u)], global1[_wgslsmith_index_u32(47800u, 12u)]))), vec2<i32>(u_input.d, max(u_input.c, 0i))));
    global0 = array<f32, 22>();
    global1 = array<bool, 12>();
    let var_1 = select(vec2<i32>(abs(-9490i), u_input.c), vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(u_input.d), 1i), -1i), all(vec4<bool>(false, false, !global1[_wgslsmith_index_u32(63759u, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 43376u), 12u)]))) >> (reverseBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    global0 = array<f32, 22>();
    return select(var_0.b, var_0.b, !var_0.c & global1[_wgslsmith_index_u32(u_input.b.x, 12u)]);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: i32) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)] * -986f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 22u)] - _wgslsmith_f_op_f32(f32(-1f) * -828f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-223f, 1402f))));
    global1 = array<bool, 12>();
    var var_1 = Struct_2(Struct_1(arg_0.c.a), arg_0.c, vec4<f32>(-434f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1361f), 1f) - -200f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1175f, var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, -1897f, var_0.x)), vec3<f32>(-1075f, global0[_wgslsmith_index_u32(4294967295u, 22u)], var_0.x)), arg_0.a.b.yww)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 357f)))));
    let var_2 = Struct_3(_wgslsmith_mod_i32(arg_2, firstLeadingBit(-10370i)), ~_wgslsmith_mult_u32(u_input.b.x, select(u_input.e, 4294967295u, true)) >> (arg_0.c.a.x % 32u), firstTrailingBit(~(vec2<i32>(-1i) * -arg_0.b.yy)), 16668i);
    global0 = array<f32, 22>();
    return vec4<bool>(true, true, arg_0.a.a, arg_0.a.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(Struct_4(true, func_4(Struct_5(Struct_4(global1[_wgslsmith_index_u32(4294967295u, 12u)], vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<i32>(-1i, u_input.c, 29981i, 1i) ^ vec4<i32>(u_input.d, u_input.d, -2147483647i, -1i), Struct_1(u_input.a.xx)), select(func_3(), func_3(), select(vec4<bool>(global1[_wgslsmith_index_u32(69862u, 12u)], global1[_wgslsmith_index_u32(30617u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(12323u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), true)), ~(-882i)), true), _wgslsmith_mod_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -24616i, -3283i, u_input.d), vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.c)), vec4<i32>(-2147483647i, u_input.c, 0i, u_input.c)) >> (abs(vec4<u32>(u_input.a.x, 48259u, u_input.e, u_input.a.x)) % vec4<u32>(32u)), ~vec4<i32>(u_input.c, u_input.c, u_input.d, u_input.c) >> (u_input.a % vec4<u32>(32u))), Struct_1(~u_input.a.wz));
    global1 = array<bool, 12>();
    let var_1 = var_0.c;
    global1 = array<bool, 12>();
    let var_2 = Struct_4(true, select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)] | true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.c.a.x, var_0.c.a.x)), 12u)], var_0.a.b.x, global1[_wgslsmith_index_u32(~4294967295u, 12u)]), vec4<bool>(!global1[_wgslsmith_index_u32(var_0.c.a.x, 12u)], true, select(false, var_0.a.a, global1[_wgslsmith_index_u32(var_0.c.a.x, 12u)]), func_4(Struct_5(var_0.a, vec4<i32>(var_0.b.x, -26363i, -6104i, u_input.d), Struct_1(var_1.a)), vec4<bool>(var_0.a.a, var_0.a.a, global1[_wgslsmith_index_u32(var_0.c.a.x, 12u)], false), 23792i).x), var_0.a.b.x), select(var_0.a.b, func_3(), !(global0[_wgslsmith_index_u32(51885u, 22u)] <= global0[_wgslsmith_index_u32(4294967295u, 22u)])), true), false);
    return var_0.c;
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global1 = array<bool, 12>();
    global1 = array<bool, 12>();
    var var_0 = func_2();
    let var_1 = select(-18290i | ~firstLeadingBit(firstTrailingBit(-8299i)), _wgslsmith_mult_i32(-1i, -_wgslsmith_add_i32(1i, abs(u_input.d))), !(u_input.c > (53544i ^ u_input.d)) | (true & arg_0.x));
    var_0 = Struct_1(abs(u_input.b.yz));
    return Struct_4(any(!func_4(Struct_5(Struct_4(true, vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(4174u, 12u)]), false), vec4<i32>(2147483647i, u_input.d, var_1, -46530i), Struct_1(u_input.a.zx)), func_3(), _wgslsmith_clamp_i32(var_1, 2147483647i, u_input.d))), vec4<bool>(false, global1[_wgslsmith_index_u32(~(~var_0.a.x), 12u)] || !any(vec3<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), select(any(vec3<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(var_0.a.x, 12u)])), -1i != u_input.c, var_0.a.x != 63972u) || func_3().x, any(!select(vec2<bool>(false, false), arg_0, arg_0.x))), !global1[_wgslsmith_index_u32(4294967295u, 12u)]);
}

fn func_5(arg_0: i32, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = arg_1.a.b.zy;
    let var_1 = func_1(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c.a.x | (_wgslsmith_mult_u32(31079u, u_input.e) >> (firstLeadingBit(arg_1.c.a.x) % 32u)), 12u)], true));
    let var_2 = func_3().xzy;
    var var_3 = Struct_2(func_2(), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], -916f, 225f, global0[_wgslsmith_index_u32(0u, 22u)])) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(172f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 346f, global0[_wgslsmith_index_u32(45078u, 22u)]))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], 1005f, global0[_wgslsmith_index_u32(arg_1.c.a.x, 22u)], 190f))), global1[_wgslsmith_index_u32(u_input.e, 12u)]))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-525f, global0[_wgslsmith_index_u32(arg_1.c.a.x, 22u)])), _wgslsmith_f_op_f32(select(286f, global0[_wgslsmith_index_u32(11312u, 22u)], true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.c.a.x, 22u)])) * global0[_wgslsmith_index_u32(reverseBits(1u), 22u)]), global0[_wgslsmith_index_u32(~abs(4294967295u), 22u)], global0[_wgslsmith_index_u32(arg_1.c.a.x, 22u)])), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32((arg_1.c.a.x >> (35034u % 32u)) ^ ~u_input.e, 22u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.b.x)), vec2<u32>(395u, arg_1.c.a.x)), 22u)] - _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.c.a.x | 30023u, 22u)])))));
    let var_4 = arg_1.b.zxw | firstTrailingBit(vec3<i32>(u_input.d, arg_0 << (4294967295u % 32u), 0i));
    return select(select(vec3<bool>(var_1.b.x != var_2.x, select(!var_2.x, var_0.x, true || arg_1.a.b.x), var_2.x), !var_1.b.wwz, !func_4(arg_1, func_4(Struct_5(Struct_4(true, vec4<bool>(var_1.b.x, false, false, var_2.x), var_0.x), vec4<i32>(arg_1.b.x, 4123i, arg_0, 3421i), var_3.b), vec4<bool>(true, true, var_2.x, true), 1i), _wgslsmith_dot_vec2_i32(var_4.yy, vec2<i32>(-2147483647i, arg_0))).zzx), select(!select(func_1(var_1.b.xy).b.wzw, var_2, 2147483647i >= u_input.c), !vec3<bool>(var_1.c, 1u <= var_3.b.a.x, var_0.x || true), !(!vec3<bool>(global1[_wgslsmith_index_u32(70498u, 12u)], var_2.x, true))), any(vec3<bool>(arg_1.b.x != arg_0, false, select(true, true, arg_1.a.a))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 12>();
    let var_0 = u_input.a.xw;
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 8221u), 12u)], !global1[_wgslsmith_index_u32(var_0.x, 12u)]), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(75744u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), true)), select(func_5(_wgslsmith_mult_i32(0i, -2147483647i), Struct_5(func_1(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, 16535i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, -3260i)), func_2())), !vec3<bool>(func_4(Struct_5(Struct_4(false, vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)]), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.d), Struct_1(var_0)), vec4<bool>(false, false, true, false), 2147483647i).x, true, !global1[_wgslsmith_index_u32(40660u, 12u)]), !vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(28162u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])), global1[_wgslsmith_index_u32(min(23710u, u_input.b.x), 12u)], global1[_wgslsmith_index_u32(1u, 12u)])), select(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 12u)], true, global1[_wgslsmith_index_u32(var_0.x, 12u)]))), vec3<bool>(global1[_wgslsmith_index_u32(func_2().a.x, 12u)], !global1[_wgslsmith_index_u32(31002u, 12u)], false), !any(vec4<bool>(false, global1[_wgslsmith_index_u32(8554u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false))), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 68523u), vec2<u32>(4294967295u, 5070u)) < _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(1u, 12u)] || true, global1[_wgslsmith_index_u32(7546u, 12u)]), !global1[_wgslsmith_index_u32(4294967295u, 12u)]));
    var var_2 = global0[_wgslsmith_index_u32(~16890u, 22u)];
    global0 = array<f32, 22>();
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c, 0i, 40567i, 69500i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.d, 2147483647i, u_input.d), vec4<i32>(22131i, u_input.d, u_input.d, u_input.d))), min(1i, 1i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 22u)], -560f, 1839f)), vec3<f32>(-631f, global0[_wgslsmith_index_u32(var_0.x, 22u)], 903f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-355f, global0[_wgslsmith_index_u32(var_0.x, 22u)], -696f))))))), _wgslsmith_mult_vec3_i32(reverseBits(-vec3<i32>(u_input.c, -10568i, u_input.c)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d, -2147483647i, u_input.c), -vec3<i32>(u_input.c, 0i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.d, -2147483647i), vec3<i32>(-1i, 1i, -34547i)))) ^ vec3<i32>(select(-2147483647i, u_input.c >> (var_0.x % 32u), true), u_input.c, u_input.c));
}

