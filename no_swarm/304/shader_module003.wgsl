struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32) -> vec3<i32> {
    return vec3<i32>(~(-1i), arg_0, -u_input.a.x);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(all(vec2<bool>(false, arg_1.x)));
    var var_1 = 44045u & _wgslsmith_dot_vec2_u32(firstLeadingBit(~_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.c.x, u_input.d))), ~vec2<u32>(select(u_input.b.x, u_input.c.x, arg_1.x), 4294967295u));
    var var_2 = ~abs(_wgslsmith_sub_vec3_u32(~(~u_input.c), vec3<u32>(~u_input.b.x, firstTrailingBit(u_input.c.x), 4294967295u)));
    var_2 = u_input.c;
    var_2 = vec3<u32>(min(var_2.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(47703u, var_2.x), u_input.c.x)), 7383u, firstLeadingBit(var_2.x));
    return Struct_1(arg_1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = 2049f;
    var var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -142f))) - -390f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)) + 374f)), vec3<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), true, true), func_2(firstTrailingBit(_wgslsmith_div_i32(abs(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, 57117i)))), Struct_1(true));
    let var_2 = max(~0u, select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(12680u, u_input.b.x), u_input.c.xz & u_input.c.yx), 2921u), _wgslsmith_sub_u32(~(~u_input.c.x), ~(~1u)), !var_1.a));
    var var_3 = any(!select(!(!vec2<bool>(var_1.a, true)), !(!vec2<bool>(var_1.a, var_1.a)), select(vec2<bool>(true, true), vec2<bool>(false, var_1.a), vec2<bool>(true, var_1.a))));
    let var_4 = Struct_1(select(true, true, false) | (false & (_wgslsmith_dot_vec4_i32(vec4<i32>(-8219i, -2147483647i, -1i, 14140i), u_input.a) < u_input.a.x)));
    return var_4;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = func_1().a;
    var var_1 = Struct_1(u_input.c.x == u_input.b.x);
    var var_2 = firstTrailingBit(~u_input.d) >> (44864u % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-429f))), 426f, -750f, -1589f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1092f, -111f, -245f, _wgslsmith_f_op_f32(f32(-1f) * -282f))))));
    let var_4 = select(vec4<bool>(~(~58839u) != ~_wgslsmith_sub_u32(u_input.b.x, 16816u), 1i <= _wgslsmith_mult_i32(abs(16063i), abs(arg_1)), true, var_1.a), select(!vec4<bool>(arg_0, -1343f >= var_3.x, arg_2.a, !var_1.a), vec4<bool>(true, all(!vec3<bool>(arg_0, true, arg_2.a)), arg_2.a, u_input.b.x > u_input.c.x), vec4<bool>(-174f == var_3.x, var_3.x == -158f, select(func_1().a, true, !var_1.a), var_1.a | true)), !vec4<bool>(true, arg_2.a, !arg_2.a, all(vec2<bool>(false, true))));
    return select(arg_2.a, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(160f, 1397f))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(-200f, _wgslsmith_div_f32(-1135f, var_3.x)))), all(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a, false), var_4.xz, !vec2<bool>(false, var_4.x)), false)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1873f, -1000f, true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1363f + _wgslsmith_f_op_f32(1347f * -2460f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(487f))), (arg_1.a && false) || arg_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -231f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1083f, -757f))))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, ~_wgslsmith_mod_vec3_u32(countOneBits(u_input.c), u_input.c)), u_input.b.x, abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, arg_0, ~u_input.c.x) ^ countOneBits(~vec4<u32>(arg_0, 0u, arg_0, 29630u)), min(vec4<u32>(u_input.c.x, arg_0, u_input.b.x, 1u), vec4<u32>(15758u, 4294967295u, 0u, u_input.c.x) ^ vec4<u32>(u_input.b.x, u_input.c.x, 1u, 1u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.b.x, 1u, arg_0), vec4<u32>(25056u, 40562u, 35791u, 7285u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d, arg_0, u_input.d), vec4<u32>(u_input.d, u_input.c.x, arg_0, 0u))) % vec4<u32>(32u))));
    let var_2 = ~(~(-u_input.a.zz));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-243f - _wgslsmith_f_op_f32(select(1f, var_0.x, !(true & arg_1.a)))), -1545f);
    let var_4 = !(!((328f < _wgslsmith_f_op_f32(-var_0.x)) | !(arg_1.a || true)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(131f))));
    let var_2 = max(vec4<u32>(1u, _wgslsmith_add_u32(arg_3.x, ~u_input.d), u_input.b.x, ~max(abs(38588u), _wgslsmith_div_u32(u_input.b.x, 16537u))), vec4<u32>(abs(68438u), 0u, ~u_input.b.x << (u_input.b.x % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 1u) & 1u, ~(u_input.d | u_input.b.x))));
    var var_3 = func_1();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), 402f, -1573f, _wgslsmith_f_op_f32(1000f + 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1696f, -740f, -320f)), vec4<bool>(func_5(0u, Struct_1(arg_2)).a, u_input.b.x <= 0u, true, true))))) - _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, 488f, -1571f, -440f) - vec4<f32>(1099f, 1124f, 935f, 1567f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, -111f, -1000f, -406f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, -344f, -814f, -1297f) - vec4<f32>(1000f, -175f, 360f, -189f)))))));
    return Struct_1(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~_wgslsmith_clamp_u32(69061u, _wgslsmith_add_u32(u_input.c.x, 1u), select(8258u, 0u, true)), Struct_1(func_4(select(true, true, true), i32(-1i) * -12174i, func_1()))), func_3(1000f, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true), vec3<bool>(true, true, func_5(u_input.b.x, Struct_1(true)).a), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), func_2(u_input.a.x), func_5(~u_input.d, Struct_1(true))), (i32(-1i) * -u_input.a.x) > -1i, u_input.b);
    let var_1 = u_input.b.x;
    var_0 = func_6(func_1(), func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, 0u >> (var_1 % 32u), u_input.c.x | var_1), select(abs(vec4<u32>(74775u, 4294967295u, 1u, u_input.d)), ~vec4<u32>(var_1, u_input.c.x, 0u, 4294967295u), vec4<bool>(true, false, false, var_0.a))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1473f - 1242f)), !(!vec3<bool>(var_0.a, true, true)), vec3<i32>(-1i, u_input.a.x, u_input.a.x), Struct_1(true))), (31994i <= _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7093i, 57972i, u_input.a.x), u_input.a.xxx, vec3<i32>(5876i, -59675i, 10463i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a.x), u_input.a.wzy))) || !var_0.a, vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x & u_input.b.x, var_1, 34294u >> (u_input.c.x % 32u)), u_input.c.x) & reverseBits(vec2<u32>(var_1, var_1)));
    var_0 = Struct_1(all(select(select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(false, true, false), true), vec3<bool>(var_0.a, var_0.a, true), select(vec3<bool>(true, true, false), vec3<bool>(var_0.a, var_0.a, true), var_0.a)), !(!vec3<bool>(false, var_0.a, true)), func_1().a)));
    var var_2 = u_input.a.yxz;
    let var_3 = 14375i;
    var_2 = -u_input.a.yww;
    var var_4 = func_6(Struct_1(!(!any(vec4<bool>(var_0.a, var_0.a, var_0.a, false)))), func_1(), true, vec2<u32>(var_1, var_1) ^ u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d << (_wgslsmith_sub_u32(_wgslsmith_div_u32(min(var_1, 0u), u_input.b.x), ~(~1u)) % 32u), _wgslsmith_clamp_i32(-(~(-1i)), -_wgslsmith_div_i32(u_input.a.x, reverseBits(-1397i)), var_3));
}

