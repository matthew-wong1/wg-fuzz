struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(~(~u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(342f, -629f, -2118f), vec3<f32>(-1000f, -993f, -867f))) - vec3<f32>(-953f, -1459f, _wgslsmith_f_op_f32(min(-313f, -1000f))))), vec4<u32>(firstTrailingBit(min(reverseBits(0u), firstLeadingBit(u_input.d))), reverseBits(reverseBits(u_input.d)), ~abs(60842u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.c, 2346u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(672f, 1033f, -1000f, -767f) * vec4<f32>(522f, 454f, 443f, -410f))))))));
    var var_1 = !(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    var_1 = !vec3<bool>(any(vec3<bool>(true, true, !var_1.x)), firstLeadingBit(-u_input.a) == countOneBits(abs(u_input.a)), false);
    var_1 = vec3<bool>(all(select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), select(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, false, var_1.x, true), any(var_1.xx)), var_1.x)), any(vec4<bool>(any(vec2<bool>(var_1.x, true)), var_1.x, true, all(var_1.zz))), false);
    var_1 = vec3<bool>(!(all(vec4<bool>(false, var_1.x, true, false)) & (false || any(vec2<bool>(var_1.x, var_1.x)))), !var_1.x, any(select(var_1.yx, var_1.yy, var_1.zz)));
    return any(vec2<bool>(var_1.x || false, false));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(arg_2.c.d, (true & func_3()) && (all(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, true))) | true), Struct_1(~select(1u, _wgslsmith_mod_u32(arg_0.c.x, arg_2.c.c.x), arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x))), -1061f, _wgslsmith_f_op_f32(-1064f * -505f)), _wgslsmith_clamp_vec4_u32(~arg_0.c, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.c.c.zzz, vec3<u32>(61761u, 0u, arg_2.c.c.x)), ~arg_0.c.x, 24616u, u_input.d), vec4<u32>(arg_2.c.a, firstLeadingBit(25836u), 1u << (0u % 32u), ~arg_2.c.c.x)), vec4<f32>(501f, arg_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(arg_2.c.d.x - _wgslsmith_f_op_f32(f32(-1f) * -937f)))));
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, var_1.x, 195f, 770f)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f * _wgslsmith_div_f32(741f, arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, 598f))) - 457f), _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1972f, _wgslsmith_f_op_f32(-arg_0.d.x), arg_2.b))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b.x - var_0.a.x) + _wgslsmith_f_op_f32(select(210f, arg_2.c.b.x, true))))), vec4<f32>(-538f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, arg_0.b.x))), _wgslsmith_f_op_f32(-var_0.a.x), true)), -146f, 1446f)));
    return ~var_0.c.c.zzw;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = ~6017u;
    let var_1 = _wgslsmith_f_op_f32(-arg_3.a.x);
    var var_2 = arg_3.c.c;
    var var_3 = !(true && arg_3.b);
    var var_4 = Struct_1(_wgslsmith_mod_u32(arg_3.c.c.x, ~(~firstLeadingBit(0u))), arg_3.c.b, vec4<u32>(~var_2.x, 4294967295u, abs(_wgslsmith_mult_u32(var_2.x, arg_1)), _wgslsmith_div_u32(var_2.x | 4294967295u, ~arg_3.c.a)) ^ (firstTrailingBit(countOneBits(arg_3.c.c)) >> (select(vec4<u32>(arg_3.c.a, 25500u, arg_3.c.c.x, 52663u), arg_3.c.c, any(vec4<bool>(false, arg_3.b, true, arg_3.b))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1)))), 397f, _wgslsmith_f_op_f32(trunc(811f)), 775f)));
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = !(!arg_0.yz);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(3406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f))));
    var_0 = select(arg_0.zy, vec2<bool>(!(!select(arg_0.x, arg_0.x, true)), true), select(arg_0.xy, vec2<bool>(false, arg_0.x), select(!(!vec2<bool>(arg_0.x, false)), arg_0.zy, false)));
    var var_2 = 10019i;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(833f, 1639f, var_1.x, 444f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, var_1.x, -832f, 1946f))))), arg_0.x, Struct_1(min(u_input.c, ~u_input.d), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1292f) * vec3<f32>(-1021f, -485f, -768f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -369f, -1275f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1778f, 727f, var_1.x) * vec3<f32>(476f, var_1.x, 895f)))), vec4<u32>(u_input.c, ~u_input.d, 1u, 1u) & (~vec4<u32>(4198u, 1u, 24814u, u_input.d) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.d), vec4<u32>(23688u, u_input.d, u_input.c, 3601u))), vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, -1071f))), _wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 416f)))));
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.d), u_input.d >> (~u_input.c % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.d.x + var_3.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, -235f), 183f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(226f, var_1.x)) * _wgslsmith_div_f32(var_1.x, var_1.x)))), var_1.x), _wgslsmith_clamp_vec4_u32(min(var_3.c.c, _wgslsmith_add_vec4_u32(vec4<u32>(var_3.c.a, 4294967295u, var_3.c.a, var_3.c.c.x), var_3.c.c & var_3.c.c)), abs(vec4<u32>(~0u, u_input.c & 65458u, 27958u, 1u)), vec4<u32>(4931u, var_3.c.a, ~countOneBits(var_3.c.a), var_3.c.c.x)), var_3.a);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    var var_0 = true;
    let var_1 = vec3<u32>(~(~(~_wgslsmith_add_u32(0u, u_input.d))), _wgslsmith_clamp_u32(arg_0, 1u, abs(4294967295u)) << (u_input.d % 32u), ~arg_0);
    let var_2 = var_1.x;
    let var_3 = func_5(!vec3<bool>(func_4(func_2(Struct_1(4294967295u, vec3<f32>(312f, arg_1.x, arg_1.x), vec4<u32>(var_2, 64446u, var_2, 62951u), vec4<f32>(734f, arg_1.x, 1489f, 426f)), false, Struct_2(vec4<f32>(-1210f, arg_1.x, arg_1.x, 407f), false, Struct_1(1365u, vec3<f32>(-1361f, -1933f, -1343f), vec4<u32>(var_1.x, 1820u, var_2, 0u), vec4<f32>(-432f, 981f, 547f, arg_1.x)))), var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, -351i), vec3<i32>(u_input.a, -2147483647i, u_input.a)), Struct_2(vec4<f32>(arg_1.x, -1032f, -1000f, arg_1.x), false, Struct_1(36671u, vec3<f32>(-884f, -915f, arg_1.x), vec4<u32>(68427u, var_1.x, 6032u, 4294967295u), vec4<f32>(arg_1.x, arg_1.x, 927f, 232f)))), (u_input.b < -16876i) & (var_1.x >= 22951u), false), ~(~(-(vec3<i32>(u_input.b, u_input.b, 1i) ^ vec3<i32>(u_input.b, u_input.a, u_input.a)))));
    var var_4 = var_3;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(350f)), 227f)), 250f)))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(u_input.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(16838u, 1u), vec2<u32>(44399u, 0u)) % 32u)), u_input.c, max(func_1(u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, 376f))), _wgslsmith_mult_u32(abs(u_input.c), u_input.c)), 51892u), vec4<u32>(0u, ~(~(~1u)), firstTrailingBit(countOneBits(reverseBits(40296u))), firstLeadingBit(32781u)));
    let var_2 = abs(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 3107u, 71126u, 23308u), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x)), reverseBits(u_input.c))) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, firstTrailingBit(72681u), 28303u), var_1.wyx);
    var var_3 = !vec3<bool>(true, false, func_4(abs(~vec3<u32>(var_1.x, var_1.x, 8187u)), func_1(_wgslsmith_sub_u32(4294967295u, 52137u), _wgslsmith_f_op_vec2_f32(vec2<f32>(2017f, -651f) + vec2<f32>(974f, 142f))), u_input.a, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, -411f, -2207f, -236f) + vec4<f32>(-393f, -1000f, 146f, -207f)), func_4(var_1.zxw, var_1.x, u_input.a, Struct_2(vec4<f32>(1000f, 1447f, -995f, 153f), false, Struct_1(u_input.c, vec3<f32>(-562f, -296f, -1000f), vec4<u32>(4294967295u, 34566u, u_input.d, 0u), vec4<f32>(1363f, 949f, -923f, 1386f)))), func_5(vec3<bool>(true, true, true), vec3<i32>(-19110i, u_input.b, u_input.a)))));
    var var_4 = Struct_2(vec4<f32>(430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1242f, -1660f) + _wgslsmith_f_op_f32(step(-943f, 110f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-942f))))), _wgslsmith_f_op_f32(round(-2078f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(682f - -1203f) - 634f))), !(!(var_1.x <= u_input.c)), Struct_1(~func_2(func_5(vec3<bool>(false, true, false), vec3<i32>(2147483647i, u_input.a, 3721i)), false, Struct_2(vec4<f32>(906f, -971f, -442f, -405f), false, Struct_1(7303u, vec3<f32>(867f, 548f, -1463f), vec4<u32>(u_input.d, 0u, u_input.c, 2924u), vec4<f32>(750f, -1413f, -903f, -1000f)))).x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, 670f, 1692f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(325f, -146f, 199f)))), ~vec4<u32>(1u, 1u | var_2, var_1.x >> (u_input.d % 32u), 5975u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1898f), 229f, _wgslsmith_f_op_f32(min(919f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -863f))))));
    let var_5 = var_4.a.zzy;
    let var_6 = -u_input.a;
    var var_7 = Struct_1(~_wgslsmith_sub_u32(firstTrailingBit(4294967295u << (0u % 32u)), ~1u), var_4.a.xzy, var_4.c.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)), var_4.c.b.x, var_4.c.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((~vec4<i32>(var_6, 2960i, u_input.a, u_input.a) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -8956i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.b, var_6, 1935i), vec4<i32>(-1i, -17001i, u_input.b, 50800i))) | abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_6, 2147483647i, var_6, u_input.a), vec4<i32>(0i, -30492i, u_input.a, var_6)))), _wgslsmith_sub_i32(2147483647i, -abs(-u_input.a)), vec2<u32>(func_2(Struct_1(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1380f, var_7.d.x, 738f))), var_7.c, var_4.c.d), all(select(vec2<bool>(false, var_4.b), var_3.zz, var_3.zx)), Struct_2(vec4<f32>(1963f, -500f, var_4.a.x, 1088f), all(vec4<bool>(var_4.b, true, true, true)), var_4.c)).x, 8563u | ~firstTrailingBit(29405u)));
}

