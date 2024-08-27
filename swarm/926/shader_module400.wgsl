struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    return min(~(-2147483647i), ~1i);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = -185f;
    let var_2 = Struct_1(6242u, ~(func_3(!vec3<bool>(arg_2, false, arg_1)) & u_input.b.x), arg_3.b.c);
    var var_3 = reverseBits(min(~2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.b, var_2.b, u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, var_2.b), vec3<i32>(0i, var_2.b, 1i)))));
    return Struct_2(u_input.a, firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -27364i) & u_input.b.xw, u_input.b.xw), reverseBits(vec2<i32>(u_input.b.x, -2147483647i)))), reverseBits(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -35398i), u_input.b.wx)), Struct_1(_wgslsmith_add_u32(~4294967295u, 0u) << (reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.zyy, arg_0)) % 32u), i32(-1i) * -5663i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, 1000f, 480f)) - _wgslsmith_f_op_vec3_f32(min(var_2.c, vec3<f32>(arg_3.d.x, var_2.c.x, var_2.c.x)))) + vec3<f32>(arg_3.d.x, _wgslsmith_f_op_f32(select(-186f, var_2.c.x, true)), 799f))), u_input.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.c.x, func_2(firstLeadingBit(select(arg_1.a.ywx, arg_1.a.yxw, true)), select(u_input.c <= 40600u, arg_0, !arg_0), true, Struct_3(!vec3<bool>(arg_0, true, true), arg_1.d, arg_2 & arg_2, arg_1.d.c.xy, vec4<bool>(arg_0, arg_0, arg_0, true))).d.c.x, arg_1.d.c.x));
    var var_1 = arg_1.d;
    var_1 = func_2(func_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2.x, arg_1.a.x), vec3<u32>(60148u, arg_1.d.a, arg_2.x))), any(select(!vec2<bool>(false, arg_0), vec2<bool>(false, false), arg_0)), arg_0, Struct_3(!vec3<bool>(false, arg_0, true), func_2(select(arg_1.a.wzx, vec3<u32>(arg_2.x, 0u, var_1.a), arg_0), !arg_0, -975f != var_1.c.x, Struct_3(vec3<bool>(false, false, false), arg_1.d, arg_1.a.yz, vec2<f32>(959f, arg_1.d.c.x), vec4<bool>(arg_0, arg_0, true, false))).d, ~vec2<u32>(arg_1.d.a, 22938u) << (arg_1.e.yw % vec2<u32>(32u)), vec2<f32>(1423f, _wgslsmith_f_op_f32(arg_1.d.c.x - var_0.x)), !(!vec4<bool>(arg_0, true, arg_0, true)))).a.wyx, true, true, Struct_3(vec3<bool>(!select(true, false, arg_0), any(vec4<bool>(true, false, arg_0, false)), all(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)))), Struct_1(~(~18064u), var_1.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1667f, var_1.c.x, -212f))))), arg_1.a.wy, var_0.xz, select(!select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0), !select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), false)))).d;
    let var_2 = arg_1.d;
    var var_3 = -(_wgslsmith_mod_i32(_wgslsmith_mult_i32(54996i, -var_1.b), -2147483647i) >> (~1u % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, var_1.c.x), -278f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f * var_0.x))))));
}

fn func_1() -> i32 {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!vec2<bool>(true, all(vec4<bool>(false, true, false, true)))), any(vec3<bool>(!(78783i > u_input.b.x), any(vec4<bool>(true, false, false, false)), true)));
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, 4294967295u, 13441u, 23210u), countOneBits(vec4<u32>(9726u, u_input.d, u_input.e, 158117u)) ^ vec4<u32>(u_input.e, u_input.e, 1u, u_input.a.x)), ~(-u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), -910f, _wgslsmith_f_op_f32(func_4(var_0.x, func_2(u_input.a.wzx, false, true, Struct_3(vec3<bool>(var_0.x, var_0.x, true), Struct_1(u_input.d, -11251i, vec3<f32>(-439f, 931f, -159f)), vec2<u32>(u_input.a.x, 2749u), vec2<f32>(-382f, -1000f), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec2<u32>(u_input.a.x, 4294967295u))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.c.xy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.zy * vec2<f32>(739f, -539f)) + vec2<f32>(_wgslsmith_div_f32(-1252f, var_1.c.x), _wgslsmith_f_op_f32(max(389f, var_1.c.x)))))));
    var var_3 = vec4<u32>(~0u, var_1.a, max(~_wgslsmith_div_u32(4294967295u, u_input.c), u_input.a.x & select(4294967295u, 15244u, var_0.x)), _wgslsmith_dot_vec3_u32(u_input.a.zzy, u_input.a.zyw)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_div_u32(50899u, u_input.e)), ~14121u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33937u), u_input.a.wy) >> (~var_1.a % 32u), u_input.e), ~(~(~vec4<u32>(32161u, u_input.c, var_1.a, u_input.e)))) % vec4<u32>(32u));
    var_1 = func_2(select(countOneBits(_wgslsmith_div_vec3_u32(var_3.wxx >> (vec3<u32>(var_1.a, 0u, var_3.x) % vec3<u32>(32u)), var_3.yzz ^ var_3.wwx)), var_3.yyy, vec3<bool>(var_0.x, var_1.c.x <= 1f, true)), var_1.b != -46316i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 2246i, var_1.b, 36157i)), vec4<i32>(24881i, 0i, var_1.b, -82815i) & vec4<i32>(0i, u_input.b.x, var_1.b, u_input.b.x)), -3050i) >= ~_wgslsmith_div_i32(~u_input.b.x, var_1.b | var_1.b), Struct_3(!vec3<bool>(!var_0.x, true, any(vec4<bool>(var_0.x, true, true, false))), Struct_1(func_2(vec3<u32>(1u, var_1.a, var_3.x), var_0.x, true, Struct_3(vec3<bool>(true, false, false), Struct_1(1u, var_1.b, vec3<f32>(var_1.c.x, 1000f, var_1.c.x)), vec2<u32>(var_1.a, 20372u), vec2<f32>(var_2.x, 302f), vec4<bool>(var_0.x, false, var_0.x, false))).a.x, ~u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c * vec3<f32>(1182f, -906f, -2251f)))), ~(~vec2<u32>(u_input.a.x, 1u) & ~u_input.a.zw), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_2.x))))), select(select(!vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), !var_0.x), !vec4<bool>(true, false, var_0.x, true), true))).d;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~min(_wgslsmith_sub_i32(0i, ~(-1i)), -12046i), countOneBits(~u_input.b.x));
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(16934i, _wgslsmith_sub_i32(~u_input.b.x, 21620i)), _wgslsmith_div_vec2_i32(vec2<i32>(49943i, func_1()), _wgslsmith_clamp_vec2_i32(-u_input.b.zx, u_input.b.yw, min(vec2<i32>(-1i, u_input.b.x), vec2<i32>(0i, 25485i)) << (_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.e)) % vec2<u32>(32u)))));
    var var_1 = max(0i, ~var_0.x) ^ 0i;
    var_0 = -vec2<i32>(_wgslsmith_div_i32(22356i, 1i), abs(var_0.x) >> (1u % 32u));
    let var_2 = Struct_3(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), Struct_1(max(34814u, firstLeadingBit(9661u)), max(-1i, 0i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, -1232f, -370f) - vec3<f32>(-1614f, -387f, 383f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, 1542f, 101f)))))), ~(func_2(_wgslsmith_mult_vec3_u32(u_input.a.xwy, u_input.a.xyz), true, true, Struct_3(vec3<bool>(false, true, false), Struct_1(u_input.c, -4807i, vec3<f32>(1810f, 540f, -1919f)), u_input.a.xz, vec2<f32>(985f, 1647f), vec4<bool>(false, true, true, false))).e.yx | u_input.a.wy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1288f, -710f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, -422f) + vec2<f32>(1007f, -712f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), (true || any(vec2<bool>(false, true))) || true)), vec4<bool>(!select(u_input.b.x != -24228i, true, var_0.x <= 11544i), true, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_mult_u32(~(~1u), max(~(~4294967295u), var_2.b.a)) <= var_2.b.a;
    var var_4 = !var_2.e;
    var var_5 = abs(firstLeadingBit(~vec4<u32>(u_input.c, ~var_2.b.a, _wgslsmith_dot_vec3_u32(u_input.a.yzz, u_input.a.zzw), var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c.x) - 1656f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(141f + -1326f), -388f))), 419f, _wgslsmith_div_f32(var_2.b.c.x, var_2.b.c.x)), -2899f, u_input.d, _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(var_2.c, var_5.wx), select(vec2<u32>(0u, 77059u) & vec2<u32>(u_input.c, 4294967295u), u_input.a.xz >> (~u_input.a.zz % vec2<u32>(32u)), !var_4.zw)), _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(0i, -2147483647i), 0i, i32(-1i) * -31339i, min(_wgslsmith_add_i32(var_2.b.b, var_0.x), func_3(vec3<bool>(true, true, var_4.x)))), ~(-u_input.b) >> (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, var_2.b.a, var_2.b.a, var_2.b.a) ^ u_input.a) % vec4<u32>(32u))));
}

