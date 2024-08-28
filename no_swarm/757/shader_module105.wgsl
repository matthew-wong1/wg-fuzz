struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> f32 {
    var var_0 = u_input.b;
    var_0 = max(reverseBits(reverseBits(~firstLeadingBit(u_input.c.zy))), ~vec2<u32>(u_input.b.x | 38540u, 1u));
    var_0 = vec2<u32>(abs(var_0.x), ~(~var_0.x));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_0.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-737f, 1388f, arg_1.x, -301f) * vec4<f32>(-1399f, arg_0.x, arg_1.x, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(396f, -188f, -380f, 867f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 556f, -541f, arg_1.x))), true)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -1460f, arg_1.x) + vec4<f32>(428f, arg_1.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1145f, -446f, arg_1.x, arg_1.x)))) - vec4<f32>(-526f, _wgslsmith_f_op_f32(arg_1.x * -1200f), _wgslsmith_f_op_f32(432f + arg_1.x), -1844f))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 359u, u_input.a, var_0.x), vec4<u32>(41256u, 3915u, u_input.a, 4294967295u)) ^ countOneBits(~vec4<u32>(4294967295u, 19338u, 19434u, var_0.x))));
    let var_2 = !(!all(!vec3<bool>(arg_2.x, false, arg_2.x))) & true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-164f)) + var_1.b.x)), arg_0.x)));
}

fn func_4(arg_0: f32) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-106f, _wgslsmith_f_op_f32(-arg_0)), -625f);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)), 635f, var_0.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, var_0.x, arg_0), vec3<f32>(var_0.x, -860f, arg_0)), vec2<f32>(arg_0, -686f), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), ~vec4<i32>(1i, 31405i, -21434i, -1i))), -1089f, 1011f, -688f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(331f * arg_0)))))));
    let var_2 = select(false, false, all(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), !select(true, false, true), true)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(exp2(arg_0))), -136f, _wgslsmith_div_f32(-866f, -2540f));
    let var_4 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x >> (15004u % 32u), 9100u, u_input.a, ~31393u), select(max(vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 30821u)), max(vec4<u32>(u_input.b.x, 62546u, u_input.c.x, u_input.b.x), vec4<u32>(18631u, u_input.c.x, 1u, u_input.c.x)), !var_2)), 1u);
    return -_wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(46570i, -1i)), firstLeadingBit(i32(-1i) * -12788i)) | (select(select(reverseBits(2147483647i), _wgslsmith_mod_i32(1i, 2147483647i), true), select(-14427i, -29914i, false) >> (~66215u % 32u), true) << (~4294967295u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_1.b.x, arg_0, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-19216i, func_4(_wgslsmith_f_op_f32(func_3(arg_1.b.ywy, arg_0.a.zz, vec2<bool>(true, true), vec4<i32>(1i, 15312i, 0i, 17441i)))), _wgslsmith_div_i32(~(-91880i), 1743i)), vec3<i32>(_wgslsmith_add_i32(1i, i32(-1i) * -21007i), 1i, _wgslsmith_sub_i32(i32(-1i) * -6516i, max(2147483647i, 1i)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let var_1 = var_0.d;
    let var_2 = 2147483647i;
    var var_3 = 1344f;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b.b.yzw - arg_0.a), _wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), true)))), arg_1.b, ~(~(select(vec4<u32>(arg_0.c.x, 0u, u_input.a, arg_1.c.x), var_0.b.c, true) | arg_1.c)));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3;
    var_0 = Struct_3(vec3<i32>(_wgslsmith_clamp_i32(-19630i, -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -4950i, arg_2.x, 7975i), vec4<i32>(-2147483647i, arg_3.a.x, 26048i, var_0.d.d))), -_wgslsmith_div_i32(arg_2.x, -2147483647i), arg_3.d.d), vec3<bool>(true, any(vec3<bool>(any(arg_3.b), !var_0.d.e, true)), any(select(vec4<bool>(arg_3.d.e, var_0.d.e, true, var_0.d.e), !vec4<bool>(false, false, arg_3.d.e, arg_1.x), true))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.a, arg_3.d.b.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(var_0.c.b.x + 520f), _wgslsmith_f_op_f32(arg_0 + 556f), _wgslsmith_f_op_f32(1526f - arg_3.d.b.a.x)), ~_wgslsmith_mod_vec4_u32(var_0.c.c, var_0.d.b.c)), func_2(func_2(func_2(arg_3.d.b, arg_3.c).b, Struct_1(vec3<f32>(2243f, -266f, arg_0), vec4<f32>(arg_3.c.b.x, 213f, 226f, 340f), vec4<u32>(arg_3.c.c.x, 4294967295u, 1u, arg_3.d.c.x))).b, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.b.b.x, arg_0, arg_3.c.a.x), vec3<f32>(-994f, -159f, 529f), true)), vec4<f32>(936f, arg_3.c.a.x, arg_0, -100f), arg_3.d.b.c)).b).b, Struct_2(694f, func_2(func_2(arg_3.c, arg_3.d.b).b, arg_3.d.b).b, vec3<u32>(var_0.c.c.x, 4294967295u, abs(u_input.a) ^ ~arg_3.c.c.x), -var_0.d.d & firstLeadingBit(1i), arg_3.b.x));
    let var_1 = arg_3.d.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x - -190f));
    var var_3 = func_2(Struct_1(arg_3.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.c.b + vec4<f32>(-927f, 186f, var_0.c.b.x, 136f)) + arg_3.c.b), ~vec4<u32>(var_0.c.c.x, 18334u, _wgslsmith_mod_u32(0u, 69228u), ~0u)), func_2(var_0.d.b, func_2(Struct_1(arg_3.d.b.b.yyy, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, -2525f, arg_0, 959f) + var_0.c.b), vec4<u32>(u_input.c.x, arg_3.d.c.x, var_0.c.c.x, 5479u)), func_2(Struct_1(var_0.c.a, var_0.c.b, arg_3.d.b.c), arg_3.c).b).b).b).b;
    return Struct_3(select(vec3<i32>(~(-2147483647i), -2147483647i, ~(~39592i)), ~firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_2.zxx, arg_3.a)), select(vec3<bool>(var_3.c.x > arg_3.c.c.x, true, var_0.c.b.x == 211f), vec3<bool>(true, !var_1, true), false)), arg_3.b, var_0.c, Struct_2(arg_0, func_2(func_2(var_0.c, Struct_1(vec3<f32>(var_3.a.x, 1000f, arg_0), arg_3.c.b, var_3.c)).b, func_2(func_2(Struct_1(arg_3.c.b.zyw, vec4<f32>(var_3.b.x, -558f, 1314f, var_3.a.x), arg_3.c.c), var_0.c).b, arg_3.d.b).b).b, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(arg_2.x), -16206i, arg_2.x), select(vec3<i32>(arg_3.d.d, -2003i, arg_3.d.d), vec3<i32>(var_0.d.d, 0i, 2612i), vec3<bool>(false, var_1, arg_1.x)) >> (vec3<u32>(0u, arg_3.c.c.x, 4294967295u) % vec3<u32>(32u))), true));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    let var_0 = select(firstLeadingBit(_wgslsmith_mult_u32(max(0u, 0u), 492u)), _wgslsmith_mod_u32(27678u, arg_0.d.b.c.x), !(arg_1.a > arg_0.c.b.x));
    let var_1 = arg_0;
    var var_2 = reverseBits(-vec4<i32>(abs(-20896i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3, arg_0.d.d, arg_0.d.d), vec4<i32>(-2147483647i, -1i, 37687i, arg_1.d)), min(arg_1.d, 1i), _wgslsmith_sub_i32(arg_3, firstTrailingBit(2147483647i))));
    let var_3 = u_input.c;
    let var_4 = 2147483647i;
    return arg_0.d.d;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(~(1i << (u_input.a % 32u)), _wgslsmith_clamp_i32(-5003i, i32(-1i) * -1i, 13891i), 14163i) << (~(~arg_0.c.x) % 32u), func_6(func_5(_wgslsmith_f_op_f32(round(arg_0.a.x)), vec2<bool>(true, all(vec3<bool>(false, true, true))), ~(vec4<i32>(0i, -2147483647i, -4088i, 18901i) >> (vec4<u32>(4294967295u, 0u, 13496u, arg_0.c.x) % vec4<u32>(32u))), Struct_3(~vec3<i32>(14522i, -1i, 53745i), vec3<bool>(true, true, true), arg_0, func_2(Struct_1(arg_0.b.xzy, vec4<f32>(-1732f, -1589f, arg_0.b.x, arg_0.a.x), arg_0.c), arg_0))), func_5(1000f, select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), max(-vec4<i32>(-180i, 0i, -1i, -2147483647i), select(vec4<i32>(0i, -38540i, -1i, 1i), vec4<i32>(29882i, 20387i, 1i, 40675i), true)), Struct_3(vec3<i32>(-11328i, -1i, -43264i), vec3<bool>(true, true, true), Struct_1(vec3<f32>(arg_0.a.x, 533f, arg_0.b.x), vec4<f32>(arg_0.b.x, arg_0.b.x, -334f, -1036f), vec4<u32>(1u, 29273u, 65505u, 0u)), Struct_2(1289f, arg_0, arg_0.c.zwz, 74864i, false))).d, vec3<bool>(select(true, true, all(vec3<bool>(false, false, true))), false, select(all(vec3<bool>(true, false, true)), true, false)), firstTrailingBit(func_5(1006f, vec2<bool>(true, true), vec4<i32>(11404i, 2147483647i, 22893i, 2147483647i), func_5(-270f, vec2<bool>(false, true), vec4<i32>(1i, 1i, -1i, -15456i), Struct_3(vec3<i32>(0i, -31124i, 24537i), vec3<bool>(false, false, true), arg_0, Struct_2(arg_0.b.x, arg_0, u_input.c, 1i, false)))).a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1355f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1318f + arg_0.a.x) + _wgslsmith_f_op_f32(-400f * arg_0.a.x)), -693f)) - arg_0.a.x);
    var var_2 = func_5(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), vec2<bool>(_wgslsmith_dot_vec3_u32(~arg_0.c.wyz, ~vec3<u32>(25390u, 17942u, arg_0.c.x)) >= (max(arg_0.c.x, 73564u) & ~4294967295u), false), min(~vec4<i32>(12109i, 16094i, var_0.x, var_0.x), ~vec4<i32>(var_0.x, -1i, -12731i, var_0.x)) << (~arg_0.c % vec4<u32>(32u)), Struct_3(vec3<i32>(15591i, var_0.x, -var_0.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), 30782i > var_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.b.wwy)), vec4<f32>(arg_0.b.x, 556f, _wgslsmith_f_op_f32(f32(-1f) * -408f), -838f), arg_0.c), Struct_2(_wgslsmith_f_op_f32(-arg_0.a.x), func_2(arg_0, Struct_1(arg_0.a, vec4<f32>(arg_0.a.x, arg_0.b.x, -685f, arg_0.b.x), arg_0.c)).b, vec3<u32>(arg_0.c.x | 4294967295u, 0u, _wgslsmith_mult_u32(53573u, arg_0.c.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-41386i, 1i, -13270i, var_0.x), vec4<i32>(var_0.x, var_0.x, 0i, -48580i)), all(vec2<bool>(true, true))))).d;
    var var_3 = func_5(var_2.a, vec2<bool>(true & (-var_2.d >= -52139i), any(select(!vec3<bool>(var_2.e, var_2.e, var_2.e), vec3<bool>(false, var_2.e, false), vec3<bool>(var_2.e, true, var_2.e)))), -((vec4<i32>(-2147483647i, var_0.x, var_0.x, 0i) >> (func_2(var_2.b, Struct_1(arg_0.a, vec4<f32>(arg_0.b.x, -579f, var_2.a, -791f), arg_0.c)).b.c % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_add_u32(1u, 0u), countOneBits(var_2.b.c.x), 1u << (u_input.a % 32u), var_2.b.c.x) % vec4<u32>(32u))), Struct_3(-(vec3<i32>(0i, var_0.x, 8904i) << (vec3<u32>(6567u, 59532u, var_2.b.c.x) % vec3<u32>(32u))) & select(max(vec3<i32>(37120i, -1i, -2147483647i), vec3<i32>(var_2.d, var_0.x, -1i)), ~vec3<i32>(2147483647i, 15859i, var_0.x), true && var_2.e), vec3<bool>(any(!vec3<bool>(var_2.e, var_2.e, false)), true, var_2.e), func_2(func_2(func_5(arg_0.a.x, vec2<bool>(var_2.e, var_2.e), vec4<i32>(23160i, var_0.x, -53671i, -20808i), Struct_3(vec3<i32>(69364i, var_0.x, var_0.x), vec3<bool>(true, true, true), var_2.b, Struct_2(var_2.a, var_2.b, vec3<u32>(4220u, 1u, 4294967295u), 4793i, var_2.e))).c, arg_0).b, var_2.b).b, func_5(arg_0.b.x, select(vec2<bool>(var_2.e, var_2.e), vec2<bool>(true, var_2.e), true && var_2.e), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(35656i, var_2.d, var_0.x, 2147483647i), vec4<i32>(var_2.d, -50233i, var_0.x, var_2.d), vec4<i32>(var_2.d, 1i, var_0.x, var_2.d))), func_5(1504f, !vec2<bool>(var_2.e, false), vec4<i32>(var_0.x, 1i, var_2.d, -20073i) >> (vec4<u32>(1789u, u_input.c.x, 7330u, 54342u) % vec4<u32>(32u)), Struct_3(vec3<i32>(var_0.x, -2606i, var_0.x), vec3<bool>(var_2.e, false, false), Struct_1(vec3<f32>(-151f, 877f, 1051f), var_2.b.b, vec4<u32>(37228u, 1u, 4294967295u, 0u)), Struct_2(-212f, Struct_1(var_2.b.a, vec4<f32>(-891f, -629f, -1841f, var_2.a), vec4<u32>(11459u, var_2.b.c.x, 1585u, 33321u)), var_2.c, var_2.d, true)))).d)).d;
    let var_4 = !(!select(vec4<bool>(true, var_2.e, var_2.e, true), !(!vec4<bool>(var_3.e, true, var_3.e, var_2.e)), true));
    return var_2.b.c;
}

fn func_7(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = 27813u;
    var var_2 = firstTrailingBit(vec3<i32>(abs(arg_2), 1i & (arg_0.x & arg_0.x), arg_2) & vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -29537i), vec4<i32>(-2147483647i, arg_0.x, arg_0.x, arg_0.x)), 1i, _wgslsmith_mod_i32(~(-18370i), reverseBits(arg_2))));
    let var_3 = vec2<bool>(true, true);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-1359f + _wgslsmith_f_op_f32(sign(931f))), func_5(_wgslsmith_f_op_f32(-func_2(Struct_1(vec3<f32>(-756f, -1369f, 401f), vec4<f32>(-1032f, -873f, -1004f, -2841f), arg_1), func_2(Struct_1(vec3<f32>(-482f, 1685f, -1935f), vec4<f32>(558f, 1212f, -493f, -328f), vec4<u32>(4294967295u, u_input.c.x, 1u, 0u)), Struct_1(vec3<f32>(-217f, 412f, -1033f), vec4<f32>(1000f, 1013f, -287f, -388f), vec4<u32>(var_1, 108669u, 4294967295u, var_1))).b).a), select(!select(vec2<bool>(false, var_3.x), var_3, vec2<bool>(var_3.x, false)), var_3, vec2<bool>(true, true)), ~max(vec4<i32>(arg_0.x, arg_0.x, arg_2, arg_2) & vec4<i32>(0i, arg_2, -25666i, -15566i), ~vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 1i)), Struct_3(reverseBits(select(vec3<i32>(1i, var_2.x, 0i), arg_0, false)), vec3<bool>(-19867i == var_2.x, 103494u != var_1, select(var_3.x, true, var_3.x)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -948f), !var_3, reverseBits(vec4<i32>(arg_0.x, arg_0.x, arg_2, var_2.x)), func_5(-867f, var_3, vec4<i32>(arg_2, arg_2, arg_2, arg_0.x), Struct_3(arg_0, vec3<bool>(false, false, var_3.x), Struct_1(vec3<f32>(1127f, 151f, 419f), vec4<f32>(-1047f, -984f, -534f, 1000f), arg_1), Struct_2(-575f, Struct_1(vec3<f32>(-1269f, 1467f, -208f), vec4<f32>(167f, 692f, 480f, 878f), vec4<u32>(4294967295u, var_1, arg_1.x, 32422u)), vec3<u32>(var_1, arg_1.x, 1u), arg_2, var_3.x)))).c, Struct_2(_wgslsmith_div_f32(-674f, -781f), Struct_1(vec3<f32>(159f, 173f, 1507f), vec4<f32>(1000f, 117f, -1312f, -817f), arg_1), ~vec3<u32>(1u, 54106u, 1u), -75404i, all(vec3<bool>(true, var_3.x, var_3.x))))).d.b, ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 23705u, arg_1.x), vec3<u32>(arg_1.x, u_input.b.x, var_1)) << (abs(vec3<u32>(96180u, ~1u, ~16190u)) % vec3<u32>(32u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -18017i, 22238i), arg_0), arg_2, arg_0.x), -arg_0.x | var_2.x), var_2.x), !var_3.x);
    return func_2(func_2(func_2(Struct_1(vec3<f32>(-182f, -442f, var_4.b.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.a.x, -128f, var_4.b.a.x, var_4.a), var_4.b.b, vec4<bool>(var_3.x, var_4.e, var_4.e, var_4.e))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.c.x, u_input.b.x, 1u, var_0.x), var_4.b.c)), Struct_1(_wgslsmith_f_op_vec3_f32(select(var_4.b.b.zzy, var_4.b.a, var_4.e)), vec4<f32>(889f, 1630f, -2195f, -684f), func_2(Struct_1(var_4.b.a, vec4<f32>(589f, var_4.a, var_4.a, -1368f), vec4<u32>(52870u, arg_1.x, var_0.x, var_1)), Struct_1(var_4.b.b.zxz, var_4.b.b, arg_1)).b.c)).b, var_4.b).b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(var_4.a, 1242f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.b.a.x, -1227f)) + 506f), _wgslsmith_f_op_f32(f32(-1f) * -298f)), var_4.b.b, vec4<u32>(var_1, 0u, abs(var_4.c.x), 1u))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(abs(vec3<i32>(-1i, -1i, abs(~0i))), ~_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.c.x, 0u, 68292u, 13852u), false), firstLeadingBit(func_1(Struct_1(vec3<f32>(-522f, -1039f, 905f), vec4<f32>(177f, -1144f, -1537f, -1018f), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.a, 3650u), vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a), vec4<u32>(12005u, u_input.c.x, u_input.a, u_input.a)) >> ((vec4<u32>(72794u, u_input.a, u_input.c.x, u_input.b.x) >> (vec4<u32>(u_input.a, u_input.a, u_input.c.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-17558i, 2147483647i, -2147483647i, 12885i), vec4<i32>(23969i, 2147483647i, -21650i, -2423i)), vec4<i32>(-24064i, 0i, 48654i, 9937i), select(vec4<i32>(-34086i, -4933i, -2147483647i, -20303i), vec4<i32>(-1i, -13508i, -14545i, -1i), false)), -abs(vec4<i32>(0i, -14896i, 45462i, -17138i))));
    var var_1 = var_0.c.x;
    var_0 = func_7(-firstLeadingBit(func_5(423f, vec2<bool>(true, false), vec4<i32>(0i, 15338i, -1i, 2147483647i), Struct_3(vec3<i32>(1i, 2147483647i, -17730i), vec3<bool>(true, true, false), Struct_1(var_0.b.wyz, var_0.b, var_0.c), Struct_2(var_0.b.x, Struct_1(vec3<f32>(-387f, 300f, -327f), var_0.b, vec4<u32>(u_input.b.x, var_0.c.x, u_input.a, 67693u)), u_input.c, 51799i, true))).a) & (vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)), firstTrailingBit(vec4<u32>(func_1(Struct_1(var_0.a, vec4<f32>(-1000f, 676f, var_0.a.x, -834f), var_0.c)).x, 1u ^ _wgslsmith_mult_u32(1u, var_0.c.x), ~var_0.c.x, ~16839u)), _wgslsmith_sub_i32(-func_5(_wgslsmith_f_op_f32(f32(-1f) * -1574f), vec2<bool>(true, true), reverseBits(vec4<i32>(-35817i, -2147483647i, -50340i, 1i)), func_5(var_0.b.x, vec2<bool>(true, true), vec4<i32>(37359i, -1i, 0i, 2147483647i), Struct_3(vec3<i32>(-57549i, 0i, 0i), vec3<bool>(false, false, false), Struct_1(var_0.a, var_0.b, var_0.c), Struct_2(var_0.b.x, Struct_1(vec3<f32>(-443f, var_0.a.x, 1826f), var_0.b, var_0.c), var_0.c.yzz, 0i, false)))).d.d, -21519i));
    var_1 = _wgslsmith_div_u32(u_input.c.x << (_wgslsmith_div_u32(57720u, ~firstLeadingBit(var_0.c.x)) % 32u), ~var_0.c.x << (u_input.a % 32u));
    var var_2 = select(select(vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), true, (10699u >= var_0.c.x) && (-339f != var_0.b.x), !(var_0.a.x <= -434f)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)), true), vec4<bool>(!select(false, false, false) & any(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(35570u, 33630u), reverseBits(var_0.c.x)) == 1u, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), (_wgslsmith_f_op_f32(-303f + var_0.b.x) == 893f) & all(vec3<bool>(true, true, true))), (1u < _wgslsmith_mult_u32(u_input.b.x, 27615u)) | false);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.xwy)))))), var_0.b, func_1(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), -1003f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1146f, -1661f, 1191f, 406f), var_0.b) + var_0.b), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 51165u, u_input.b.x, u_input.a), var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(Struct_1(var_0.b.xyy, _wgslsmith_f_op_vec4_f32(-var_0.b), var_0.c), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, -110f, -1854f))), vec4<f32>(120f, var_0.a.x, -1495f, var_0.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(13110u, var_0.c.x, u_input.a, 13151u), var_0.c, var_0.c))).a), 1105f, _wgslsmith_f_op_vec2_f32(var_0.a.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1235f, 1393f))) + var_0.a.xz))));
}

