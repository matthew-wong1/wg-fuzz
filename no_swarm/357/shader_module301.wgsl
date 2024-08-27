struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = true;
    var_0 = true;
    var_0 = false;
    let var_1 = u_input.e;
    var var_2 = _wgslsmith_div_i32(u_input.d.x, 1i);
    return -u_input.d.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(457f)));
    var_0 = arg_1;
    let var_1 = Struct_2(355f);
    var var_2 = abs(firstTrailingBit(929u)) & ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_2.c, u_input.e.x), ~vec3<u32>(4294967295u, u_input.c, u_input.c)), ~abs(4294967295u), true);
    var_0 = Struct_2(-1454f);
    return !select(arg_3, arg_3, true);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    var var_0 = func_4(func_3(_wgslsmith_mod_vec3_u32(max(u_input.e.wwx, u_input.b), u_input.e.yyy) | vec3<u32>(~arg_0, 1u, _wgslsmith_mult_u32(35889u, 1u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2207f), _wgslsmith_f_op_f32(select(-544f, -395f, false))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(floor(1062f)), _wgslsmith_div_f32(117f, 336f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, 1243f, -1085f, 461f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, -779f, 403f, 716f) + vec4<f32>(1910f, 435f, -805f, 106f)))), arg_1.yx, countOneBits(0u)), vec3<bool>(true, true, true));
    var_0 = select(vec3<bool>(true, select(true, var_0.x, var_0.x) && var_0.x, var_0.x), select(!vec3<bool>(true, select(var_0.x, true, false), var_0.x), !vec3<bool>(any(vec4<bool>(false, false, var_0.x, var_0.x)), true, true), !(!vec3<bool>(var_0.x, false, false))), !vec3<bool>(var_0.x, !any(vec3<bool>(var_0.x, true, var_0.x)), !all(vec3<bool>(false, var_0.x, var_0.x))));
    var_0 = vec3<bool>(!select(!select(var_0.x, var_0.x, false), false, any(func_4(-2147483647i, Struct_2(464f), Struct_1(vec4<f32>(1647f, -1376f, -117f, -1148f), arg_1.xx, arg_0), vec3<bool>(false, true, var_0.x)))), var_0.x, any(vec3<bool>(any(func_4(-20833i, Struct_2(2725f), Struct_1(vec4<f32>(3179f, 1255f, -477f, 2210f), arg_1.zx, 3587u), vec3<bool>(true, var_0.x, true))), var_0.x, all(!var_0.zy))));
    var_0 = select(vec3<bool>(true, !var_0.x, select((30747i & u_input.d.x) > -17161i, !var_0.x, var_0.x)), func_4(_wgslsmith_mult_i32(-5734i, -abs(arg_1.x)), Struct_2(809f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1616f, 1101f, 731f, -468f))), ~(u_input.d.zy >> (u_input.e.xz % vec2<u32>(32u))), abs(countOneBits(0u))), !(!vec3<bool>(var_0.x, true, true))), select(vec3<bool>(true, var_0.x, !any(vec4<bool>(var_0.x, true, false, var_0.x))), select(vec3<bool>(!var_0.x, true, any(var_0.xz)), vec3<bool>(true, true, true), vec3<bool>(true, !var_0.x, true)), vec3<bool>(!(false == var_0.x), all(vec4<bool>(var_0.x, true, var_0.x, true)), all(vec2<bool>(var_0.x, false)))));
    var_0 = select(vec3<bool>(true, all(!func_4(u_input.d.x, Struct_2(1146f), Struct_1(vec4<f32>(-522f, -1964f, -1494f, 1271f), arg_1.zx, arg_0), vec3<bool>(false, true, var_0.x))), true), vec3<bool>(any(select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, false, false), var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false))), select(0i <= _wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.zx), var_0.x, true), var_0.x), var_0.x);
    return any(!select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, true, false), var_0.x)), vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_0.x, true, true))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * arg_0))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), arg_3.a, _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-995f + 208f), arg_0.x, true)))), _wgslsmith_div_vec2_i32(min(u_input.d.xz, reverseBits(vec2<i32>(74i, -6685i))), vec2<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.d.x, u_input.d.x)))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d.x, -1i), i32(-1i) * -10585i), u_input.d.yx), 1u);
    let var_1 = abs(-24559i);
    let var_2 = 6200i;
    let var_3 = 1232f;
    let var_4 = select(select(vec4<i32>(~reverseBits(var_0.b.x), var_2, -7028i, 9022i), select(countOneBits(reverseBits(vec4<i32>(-789i, -1i, var_2, var_2))), countOneBits(vec4<i32>(17630i, var_2, -16311i, 29676i) ^ vec4<i32>(var_2, 1i, 2147483647i, -48343i)), true), select(!(!vec4<bool>(true, false, arg_2.x, true)), select(!vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(false, true, arg_2.x, arg_2.x), true), !select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_2.x, arg_2.x), arg_2.x))), (-(vec4<i32>(var_1, -1i, var_0.b.x, 16352i) | vec4<i32>(u_input.d.x, var_1, 1i, 11402i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 0u, var_0.c) & u_input.e, vec4<u32>(var_0.c, var_0.c, var_0.c, 73355u) ^ u_input.e) % vec4<u32>(32u))) << (vec4<u32>(var_0.c, 12076u, var_0.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.c, 53739u), ~var_0.c)) % vec4<u32>(32u)), false);
    return !arg_2.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.e;
    let var_1 = !(!arg_0.x);
    let var_2 = ~(~(select(reverseBits(vec4<u32>(var_0.x, u_input.a, 69234u, u_input.e.x)), vec4<u32>(var_0.x, 55469u, 1u, 4404u), select(arg_0.x, true, true)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 38180u, 7680u), vec4<u32>(u_input.e.x, 1u, 1u, 4294967295u)), var_0.x, min(1u, 25921u), 35333u)));
    var var_3 = arg_2;
    var var_4 = vec3<bool>(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, var_3.a, 1000f, arg_2.a) - vec4<f32>(-1007f, var_3.a, var_3.a, -1245f)) - vec4<f32>(var_3.a, 292f, -661f, -1636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f * arg_2.a)), !vec3<bool>(var_1 | true, func_2(var_0.x, u_input.d), true), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-939f)))))), any(select(func_4(firstLeadingBit(7093i), arg_2, Struct_1(vec4<f32>(var_3.a, 324f, 1463f, -371f), arg_1.yz, u_input.a), vec3<bool>(true, arg_0.x, arg_0.x)).yz, arg_0, !(false || var_1))), true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1937f, -470f, arg_2.a, 1224f)), vec4<f32>(871f, _wgslsmith_f_op_f32(var_3.a * 154f), _wgslsmith_f_op_f32(arg_2.a + var_3.a), -351f))), select(~(~(u_input.d.zx ^ vec2<i32>(1282i, u_input.d.x))), -arg_1.xx, select(!(!var_4.zy), func_4(arg_1.x, Struct_2(var_3.a), Struct_1(vec4<f32>(-704f, arg_2.a, var_3.a, arg_2.a), vec2<i32>(-53395i, -65714i), var_0.x), !vec3<bool>(arg_0.x, false, false)).xz, vec2<bool>(true, true))), ~_wgslsmith_mod_u32(10409u, 4294967295u));
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(805f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-arg_3.a.x), true)), 1f))) * -1000f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x)))) + arg_3.a.x));
    let var_2 = func_1(func_4(arg_3.b.x, var_1, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a + vec4<f32>(var_1.a, var_1.a, 375f, 1710f)) * _wgslsmith_f_op_vec4_f32(-arg_3.a)), u_input.d.xx, 40041u), func_4(-20923i, var_1, arg_3, select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), !vec3<bool>(arg_1, true, arg_1)))).xz, _wgslsmith_div_vec3_i32(vec3<i32>(-28214i, arg_3.b.x | arg_3.b.x, -6421i), max(vec3<i32>(u_input.d.x, 445i, -15852i), vec3<i32>(-27872i, u_input.d.x, arg_3.b.x) >> (u_input.b % vec3<u32>(32u)))) ^ (vec3<i32>(-1i, u_input.d.x, firstLeadingBit(arg_3.b.x)) ^ ~(~vec3<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x))), var_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1142f, arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f), _wgslsmith_f_op_f32(var_1.a + 1153f)) - -356f)) * _wgslsmith_f_op_f32(f32(-1f) * -2259f));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)));
    return Struct_2(_wgslsmith_f_op_f32(-var_1.a));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-878f, -1671f, arg_0.a, -3700f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_2.a.x, 570f, 577f) - arg_2.a))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), -464f == arg_2.a.x)))), arg_1, arg_2.c);
    let var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1162f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) + arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * arg_0.a), -1000f))));
    var_0 = arg_2;
    var var_3 = countOneBits(firstLeadingBit(u_input.e) << (select(u_input.e, vec4<u32>(~var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1437u, var_0.c), vec3<u32>(48734u, 0u, u_input.b.x)), ~var_0.c, abs(u_input.b.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))) % vec4<u32>(32u)));
    return firstTrailingBit(vec4<u32>(max(~u_input.e.x, abs(var_3.x)), u_input.b.x, u_input.e.x, func_1(vec2<bool>(true, true), ~vec3<i32>(arg_2.b.x, u_input.d.x, 1i), func_6(vec4<u32>(var_3.x, arg_2.c, 18517u, 32579u), true, 4294967295u, arg_2)).c)) | countOneBits(u_input.e);
}

fn func_8(arg_0: vec4<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = ~vec2<u32>(~_wgslsmith_add_u32(59074u, _wgslsmith_add_u32(u_input.e.x, u_input.a)), u_input.b.x);
    var var_1 = ~(~(-7987i));
    let var_2 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b.zy, _wgslsmith_div_vec2_u32(~var_0, vec2<u32>(var_0.x, var_0.x))), func_7(Struct_2(func_1(func_4(u_input.d.x, Struct_2(-746f), Struct_1(vec4<f32>(-1372f, 873f, 327f, -1000f), vec2<i32>(-48328i, u_input.d.x), 74586u), vec3<bool>(arg_1, false, arg_1)).zy, u_input.d, Struct_2(496f)).a.x), -u_input.d.zz, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1571f, 576f, -1073f, 971f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1034f, 795f, -337f, -927f), vec4<f32>(-527f, 973f, -782f, 1748f))))), ~firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x)), u_input.c), -abs(vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, -2147483647i)) | _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), ~vec4<i32>(2147483647i, 16435i, 1i, 2147483647i), ~vec4<i32>(0i, u_input.d.x, -1i, 0i))).yy);
    var_1 = u_input.d.x;
    var_1 = u_input.d.x;
    return func_6(~(~(~u_input.e) & countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_0.x, var_0.x, 13210u), arg_0))), false, 35107u, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(764f, 151f, -1240f, -536f) - vec4<f32>(-1152f, -252f, -1243f, 1359f)))))), abs(select(-vec2<i32>(u_input.d.x, u_input.d.x), firstLeadingBit(u_input.d.zx), arg_1)), countOneBits(var_2.x ^ 39998u)));
}

fn func_9(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(arg_1.a);
    var var_1 = vec2<u32>(_wgslsmith_add_u32(reverseBits(~abs(61859u)), u_input.e.x), arg_2.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-func_1(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), ~(-14753i), u_input.d.x), func_8(vec4<u32>(var_1.x, 1u, arg_2.x, var_1.x), true)).a.xx)));
    let var_3 = ~abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.zy, vec2<i32>(u_input.d.x, -2147483647i)) ^ _wgslsmith_clamp_vec2_i32(u_input.d.xz, u_input.d.xy, u_input.d.xz), -(~vec2<i32>(-2147483647i, u_input.d.x))));
    var_0 = func_6(countOneBits(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x), u_input.e), u_input.e)), true, reverseBits(~var_1.x | (1u | ~var_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(824f, -1189f, var_2.x, arg_0.a), vec4<f32>(-293f, arg_0.a, var_2.x, 361f))), vec2<i32>(-47174i, -38881i >> (_wgslsmith_add_u32(u_input.e.x, 43388u) % 32u)), 20497u));
    return Struct_2(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(func_8(func_7(func_6(~u_input.e, any(vec2<bool>(false, false)), u_input.e.x, func_1(vec2<bool>(false, false), u_input.d, Struct_2(-1501f))), _wgslsmith_sub_vec2_i32(~u_input.d.xx, vec2<i32>(1i, u_input.d.x)), func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), u_input.d | vec3<i32>(-62855i, u_input.d.x, u_input.d.x), Struct_2(-715f)), vec4<i32>(i32(-1i) * -40704i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), func_1(vec2<bool>(true, true), u_input.d, Struct_2(880f)).b.x, _wgslsmith_sub_i32(3290i, -8143i))), false), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-672f)) - _wgslsmith_f_op_f32(f32(-1f) * -935f))))), u_input.e);
    let var_1 = func_1(vec2<bool>(true, true), vec3<i32>(-1i) * -(~(-u_input.d)), func_8(vec4<u32>(~48750u, u_input.b.x, _wgslsmith_div_u32(~u_input.c, ~8896u), 70000u ^ _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(17981u, u_input.c, 0u))), ~_wgslsmith_add_u32(23207u, u_input.c) <= firstLeadingBit(1u)));
    var_0 = func_9(func_9(func_8(vec4<u32>(~50783u, u_input.e.x, countOneBits(var_1.c), ~33387u), !func_2(var_1.c, u_input.d)), func_6(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(56517u, 12834u, var_1.c, 4294967295u)), false, firstLeadingBit(u_input.b.x), var_1), ~max(~vec4<u32>(10734u, var_1.c, u_input.b.x, u_input.c), ~vec4<u32>(104543u, u_input.c, var_1.c, 35106u))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -433f)), u_input.e);
    let var_2 = var_1;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -689f)))), _wgslsmith_f_op_f32(func_8(~vec4<u32>(1u, var_1.c, u_input.a, u_input.b.x), false).a - _wgslsmith_f_op_f32(951f - 512f)), func_2(var_1.c, vec3<i32>(-39908i, 2147483647i, -2147483647i) & _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.d.x, var_1.b.x), u_input.d)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_1.a, var_2.a)))))))));
    let var_5 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.xxz, ~u_input.e.zyw), u_input.e.wwz));
    var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a), func_1(vec2<bool>(false, false), u_input.d, Struct_2(-392f)).a.x)), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f * 1211f))))));
    var_3 = Struct_2(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f + _wgslsmith_f_op_f32(-var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(668f, var_4.x, -343f));
}

