struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = !(!(!vec4<bool>(true, 31975u < u_input.a.x, arg_0.a.x <= -96473i, true)));
    let var_1 = Struct_1(min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 49946u) | u_input.a.wzx, u_input.a.zww), _wgslsmith_mult_vec3_u32(u_input.a.zxz, _wgslsmith_div_vec3_u32(u_input.a.zzz, u_input.a.wyw))) & (u_input.a.yxz >> (u_input.a.xwx % vec3<u32>(32u))), select(!(!var_0.ww), var_0.xx, var_0.x), firstTrailingBit(arg_0.a));
    let var_2 = arg_0.a.x;
    var var_3 = 777f;
    var_3 = 425f;
    return -482f;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_3.a.wxw;
    var var_1 = Struct_3(u_input.a, -1000f, arg_1.b.x, _wgslsmith_f_op_f32(func_3(Struct_5(var_0.xz))), Struct_1(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(arg_2.x, arg_2.x, u_input.a.x)), ~vec3<u32>(0u, arg_2.x, 0u), !all(vec3<bool>(false, false, false))), vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false))), max(vec2<i32>(-1i) * -vec2<i32>(-6861i, arg_3.a.x), abs(_wgslsmith_clamp_vec2_i32(arg_3.b, vec2<i32>(-2147483647i, arg_3.b.x), vec2<i32>(45020i, -40395i))))));
    let var_2 = arg_1;
    let var_3 = Struct_4(_wgslsmith_sub_vec4_u32(countOneBits(countOneBits(var_2.a)) << (vec4<u32>(~u_input.a.x, ~arg_1.a.x, 13907u, _wgslsmith_mod_u32(u_input.a.x, var_2.a.x)) % vec4<u32>(32u)), arg_1.a), vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f))));
    var_1 = Struct_3(vec4<u32>(_wgslsmith_sub_u32(arg_1.a.x, 61456u), reverseBits(var_2.a.x), var_3.a.x, 1u), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(trunc(var_2.b.x))), _wgslsmith_f_op_f32(1000f - 754f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b.x))), -491f, all(vec3<bool>(false, !var_1.e.b.x, true)))), var_1.e);
    return Struct_3(vec4<u32>(var_3.a.x, abs(4294967295u), var_2.a.x << (var_2.a.x % 32u), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(var_2.a.yz, u_input.a.wx))) >> (abs(_wgslsmith_add_vec4_u32(var_1.a, max(var_1.a, vec4<u32>(arg_1.a.x, 1u, arg_2.x, 6950u)))) % vec4<u32>(32u)), var_3.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b, -820f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) - var_3.b.x)), any(!vec3<bool>(false, true, var_1.e.b.x)))), _wgslsmith_f_op_f32(abs(-186f)), Struct_1(~_wgslsmith_clamp_vec3_u32(u_input.a.xzx, u_input.a.zwx, arg_1.a.yzw), vec2<bool>(var_1.e.b.x, -38671i >= _wgslsmith_add_i32(arg_0, var_0.x)), vec2<i32>(-2147483647i ^ firstTrailingBit(arg_3.b.x), 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, var_2.a.x, arg_2.x, 4294967295u), vec4<u32>(29949u, 0u, 16699u, 0u)) % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> Struct_1 {
    let var_0 = u_input.a.zxz;
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, arg_0.e.a.x, 25587u))) ^ _wgslsmith_add_u32(0u, arg_0.e.a.x);
    let var_2 = vec3<u32>(0u, arg_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(24158u, var_0.x), u_input.a.xx | vec2<u32>(4294967295u, 4294967295u)) << (arg_0.e.a.yx % vec2<u32>(32u)), select(u_input.a.yz, vec2<u32>(22700u | u_input.a.x, ~u_input.a.x), arg_0.e.b)));
    var var_3 = func_2(i32(-1i) * -(-31559i << (abs(var_0.x) % 32u)), Struct_4(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.a, u_input.a), countOneBits(arg_0.a)), vec3<f32>(arg_0.d, 1203f, _wgslsmith_f_op_f32(floor(960f)))), firstLeadingBit(countOneBits(var_0.xy)), Struct_2(vec4<i32>(arg_1.a.x, arg_0.e.c.x, arg_1.a.x, 2147483647i), min(-abs(arg_1.a), select(vec2<i32>(arg_1.a.x, arg_0.e.c.x) << (var_2.yx % vec2<u32>(32u)), vec2<i32>(arg_0.e.c.x, 0i), arg_0.e.b.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(max(-227f, var_3.c)))));
    return Struct_1(vec3<u32>(var_1, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, var_2.x), _wgslsmith_clamp_u32(31197u, _wgslsmith_mult_u32(u_input.a.x, 30348u), ~var_2.x)), ~var_3.e.a.x), var_3.e.b, ~var_3.e.c);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = func_4(func_2(~(-(i32(-1i) * -1i)), Struct_4(_wgslsmith_mult_vec4_u32(u_input.a, ~u_input.a), vec3<f32>(-571f, 1562f, 1885f)), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 37050u), vec2<u32>(u_input.a.x, u_input.a.x))), Struct_2(vec4<i32>(0i, -1i, select(29750i, -2147483647i, true), -2147483647i), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -41904i, 1i), vec3<i32>(-14408i, 2147483647i, 22909i))))), Struct_5(abs(vec2<i32>(max(-83611i, -2147483647i), -74861i))));
    var_0 = Struct_1(~var_0.a, vec2<bool>(arg_0.x, !arg_0.x && (abs(0u) < u_input.a.x)), var_0.c);
    var var_1 = !vec4<bool>(any(vec4<bool>(true, var_0.b.x, all(vec3<bool>(var_0.b.x, true, true)), arg_0.x)), var_0.b.x, !arg_0.x, true & arg_0.x);
    var var_2 = arg_0.yxz;
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec4<i32>(_wgslsmith_add_i32(21109i, func_1(vec4<bool>(true, true, false, false))), -(i32(-1i) * -39228i), 2147483647i, _wgslsmith_sub_i32(~0i, 2147483647i)), vec2<i32>(_wgslsmith_clamp_i32(-abs(-21882i), min(~(-37521i), -3654i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-8255i, 2147483647i, -2147483647i), vec3<i32>(-2147483647i, 2147483647i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(8780i, -28470i, 1i), vec3<i32>(29930i, 39585i, 1i)))), -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(69709i, 1i, -16020i, 0i)), vec4<i32>(-32286i, 6002i, -2147483647i, 1i))));
    let var_1 = Struct_4(~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1699f, -661f)) + _wgslsmith_f_op_f32(1000f * 249f)) - -259f), _wgslsmith_f_op_f32(-func_2(-1i, Struct_4(u_input.a, vec3<f32>(805f, -1034f, -502f)), _wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 4294967295u)), var_0).d)));
    var var_2 = Struct_2(-(~vec4<i32>(abs(var_0.b.x), max(var_0.a.x, var_0.a.x), var_0.a.x, 0i)), -vec2<i32>(var_0.a.x, -(var_0.a.x | -1i)));
    var_2 = Struct_2(max(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(~var_0.a.x, reverseBits(var_0.b.x), ~var_2.a.x, -1i), var_2.a, select(abs(vec4<i32>(40533i, 0i, -63272i, var_0.b.x)), countOneBits(vec4<i32>(var_2.a.x, var_2.a.x, var_2.b.x, -24991i)), vec4<bool>(true, true, true, true)))), var_2.b);
    let var_3 = Struct_5(var_2.a.yw | (vec2<i32>(-1i) * -(var_2.b >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-740f, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1177f - -1392f)), u_input.a.x);
}

