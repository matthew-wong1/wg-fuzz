struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<bool>(false, true, false, true)));

var<private> global2: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    global1 = array<Struct_4, 1>();
    global0 = select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, all(!vec3<bool>(global0.x, global0.x, true)) & (firstTrailingBit(u_input.b) >= min(u_input.c, u_input.c))), true);
    global2 = ~reverseBits(-_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.a.x));
    global2 = u_input.a.x | u_input.a.x;
    let var_0 = Struct_3(arg_0.yy, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(46253u, u_input.b) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))), firstTrailingBit(max(vec2<u32>(1u, u_input.b), vec2<u32>(18796u, u_input.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, 1458f), arg_0.x), arg_0, global0.x))), Struct_2(Struct_1(_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-344f, 970f, arg_0.x, -571f), vec4<f32>(1000f, 603f, arg_0.x, 1179f), global0.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1274f, 1582f, arg_0.x)), _wgslsmith_mult_i32(max(u_input.a.x, 1i), -u_input.a.x)), Struct_1(max(-1i, u_input.a.x), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -175f, 165f))), -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -3414i, 0i, u_input.a.x))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, arg_0.x, arg_0.x, -1678f)) - vec4<f32>(1100f, -908f, -505f, arg_0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(arg_0)))), max(_wgslsmith_mult_i32(-12963i, u_input.a.x), u_input.a.x)), ~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xwx, u_input.a.xxw, u_input.a.wyy), min(vec3<i32>(-3285i, u_input.a.x, u_input.a.x), u_input.a.zxw))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.c.c.x, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.d.b.b.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-1061f * -1921f), _wgslsmith_f_op_f32(ceil(-875f)), 1f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-797f, -1279f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1009f, 586f) * vec2<f32>(429f, 1059f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-507f, -1193f) + vec2<f32>(-314f, 1328f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(1144f, -2147f)), !vec2<bool>(true, global0.x)))), global0.x & true)));
    let var_2 = !select(!global0.x, false, false) && all(vec3<bool>(true, global0.x, true));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(-u_input.a ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-11130i, 35025i, 31562i, 0i), vec4<i32>(u_input.a.x, var_0, u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a)) & u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-889f + -711f)))), _wgslsmith_f_op_f32(ceil(-210f)), var_1.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1014f, -1142f) + vec3<f32>(873f, -769f, 151f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 1230f, var_1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 127f, 1287f), vec3<f32>(903f, 979f, 278f))))))), u_input.a.x);
    var var_4 = Struct_4(select(vec4<bool>(all(vec3<bool>(true, true, var_2)) && any(vec3<bool>(false, global0.x, false)), true, all(vec2<bool>(false, false)), any(vec2<bool>(global0.x, var_2)) | var_2), !vec4<bool>(var_2, !var_2, any(vec2<bool>(var_2, true)), var_1.x > var_3.b.x), vec4<bool>(any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, false, var_2))), !any(vec4<bool>(global0.x, var_2, true, true)), true, global0.x)));
    return Struct_2(var_3, var_3, var_3, vec3<i32>(var_0, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_3.a), firstLeadingBit(vec2<i32>(0i, var_0))), max(var_0, u_input.a.x))));
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    global2 = -(~(u_input.a.x | u_input.a.x));
    let var_1 = countOneBits(u_input.a.zx);
    let var_2 = func_2();
    global2 = u_input.a.x;
    return _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, -30023i), abs(-27143i), var_1.x, var_2.a.d), max(u_input.a, u_input.a)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = select(vec2<bool>(arg_0 < ~reverseBits(4294967295u), global0.x), !select(select(select(vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x), select(global0.x, global0.x, false)), select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), global0.x & false), vec2<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x)), vec2<bool>(global0.x, 0u <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, 23132u, 98611u), vec4<u32>(u_input.c, arg_0, 1u, 0u))));
    let var_0 = ~(~(~(~firstLeadingBit(29377i))));
    var var_1 = func_2().a;
    var var_2 = -893f;
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-func_2().d.yx, arg_1.xw), vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x - -150f), var_1.c.x, _wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(sign(var_1.c.x)), 1036f))), _wgslsmith_dot_vec3_i32(u_input.a.xzz, u_input.a.xyz));
    return Struct_1(arg_1.x, var_1.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(229f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(256f - -1000f), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1821f)), var_1.b.yxx), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(64177u, 1u);
    var var_1 = Struct_2(func_4(7258u, vec4<i32>(func_1(), min(select(u_input.a.x, 39661i, global0.x), 1i), _wgslsmith_clamp_i32(-51023i, ~1i, ~u_input.a.x), -42613i)), Struct_1(_wgslsmith_add_i32(firstLeadingBit(~2147483647i), _wgslsmith_dot_vec3_i32(func_2().d, vec3<i32>(u_input.a.x, u_input.a.x, -1i))), vec4<f32>(-374f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-382f - -1456f), _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-959f, -107f, 954f))).x, global0.x)), 846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f))), vec3<f32>(func_2().c.c.x, _wgslsmith_f_op_f32(select(-377f, _wgslsmith_f_op_f32(abs(1529f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f + 834f))), _wgslsmith_dot_vec2_i32(min(countOneBits(u_input.a.yy), ~u_input.a.yw), vec2<i32>(-68005i, u_input.a.x))), func_2().a, -u_input.a.xwx);
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.c.b - var_1.c.b);
    let var_3 = Struct_1(var_1.c.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, -637f, 413f, 935f)))))), var_1.b.b.zxz, u_input.a.x);
    var_0 = ~vec2<u32>(abs(1u), ~(~64373u));
    let var_4 = -738f;
    let x = u_input.a;
    s_output = StorageBuffer(46624i | min(var_1.a.d, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.a.c))), vec3<f32>(1232f, _wgslsmith_f_op_f32(var_4 + var_4), _wgslsmith_f_op_f32(-var_1.a.b.x)), select(vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x || global0.x)))), _wgslsmith_f_op_f32(-var_3.c.x), vec3<i32>(var_3.a << (~u_input.c % 32u), firstLeadingBit(func_4(_wgslsmith_sub_u32(var_0.x, 22034u), ~vec4<i32>(-4763i, -23458i, var_3.d, -7283i)).a), u_input.a.x));
}

