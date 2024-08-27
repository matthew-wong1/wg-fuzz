struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(1682f, -840f, -601f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(1000f, 576f, -1568f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-936f, 621f, -364f), vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(-169f, -970f, -526f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(1439f, -1162f, -1549f), vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(-295f, -704f, -459f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-785f, -2009f, -813f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-525f, -995f, 588f), vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(-135f, -723f, 1360f), vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(-749f, 536f, 1510f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(1622f, -386f, 768f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(265f, 666f, 1383f), vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(-544f, -835f, -2605f), vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(624f, 1010f, 1161f), vec4<bool>(false, true, true, true)), Struct_1(vec3<f32>(-2236f, 625f, 563f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-1000f, 1117f, 1084f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(904f, 739f, -767f), vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(-1644f, -1432f, 394f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-2204f, 1451f, 967f), vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(-513f, -822f, 973f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(1000f, -773f, 243f), vec4<bool>(false, false, true, false)), Struct_1(vec3<f32>(1000f, 173f, 313f), vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(1074f, -1669f, -1756f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-636f, 941f, -317f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(729f, -370f, -1150f), vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-291f, -314f, 101f), vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(1284f, 1323f, 337f), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(577f, 1000f, -2171f), vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(-305f, -435f, 1000f), vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-1000f, -597f, -1000f), vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-1113f, -804f, -1224f), vec4<bool>(false, false, true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    let var_0 = arg_2.b.x;
    global1 = array<vec4<bool>, 8>();
    let var_1 = Struct_1(arg_0.a, vec4<bool>(select(!var_0, false, true) & var_0, select(arg_2.b.x, !arg_0.b.x, arg_0.b.x) || !arg_0.b.x, !(true && !arg_1.a), false));
    let var_2 = vec2<u32>(u_input.a.x & u_input.a.x, ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 13616u)), 1609u << (u_input.a.x % 32u))));
    global1 = array<vec4<bool>, 8>();
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_i32(22922i, ~(~(-(~(-2147483647i)))));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_3(Struct_1(vec3<f32>(-885f, arg_0.c.a.x, 384f), vec4<bool>(false, arg_1, true, false)), Struct_3(false, arg_0.c.a.zy, arg_0.c), arg_0.c, arg_0), arg_2) >> (abs(abs(reverseBits(u_input.a.yx))) % vec2<u32>(32u)), vec2<i32>((i32(-1i) * -16152i) | ~arg_2, -var_0));
    global0 = array<vec4<f32>, 24>();
    let var_2 = select(reverseBits(1i), var_1.x, arg_0.a);
    global2 = array<Struct_1, 31>();
    return !(!select(vec3<bool>(arg_1, true, arg_0.c.a.x >= arg_0.b.x), !arg_0.c.b.zwx, !arg_0.c.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zxw, u_input.a.wzz) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 28811u, 43816u), vec3<u32>(32610u, 121080u, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(max(1u, u_input.a.x ^ u_input.a.x), _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), 23454u)), ~abs(1u)), ~u_input.a.xzy & _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(1728u, u_input.a.x, u_input.a.x)), ~(u_input.a.xyw & vec3<u32>(u_input.a.x, u_input.a.x, 0u))), all(!(!vec2<bool>(true, arg_2.a.b.x))));
    let var_1 = select(vec2<bool>(any(vec4<bool>(arg_1.c.b.x, true, true, true)), arg_1.c.b.x), !vec2<bool>(arg_1.c.b.x | true, arg_0.a), vec2<bool>(!any(!arg_1.c.b), true));
    global1 = array<vec4<bool>, 8>();
    let var_2 = u_input.a.x;
    let var_3 = min(max(vec4<i32>(-1i, -2147483647i, -23279i << (~u_input.a.x % 32u), 0i), vec4<i32>(62491i, abs(i32(-1i) * -2147483647i), -5048i, ~_wgslsmith_mod_i32(1i, -1i))), vec4<i32>(1i, 1i, 1i, 1i));
    return Struct_2(global2[_wgslsmith_index_u32(((_wgslsmith_mod_u32(1u, var_2) ^ u_input.a.x) ^ 20327u) >> (var_0.x % 32u), 31u)]);
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = func_4(Struct_3(any(!func_2(Struct_3(true, vec2<f32>(arg_0, arg_0), global2[_wgslsmith_index_u32(4294967295u, 31u)]), true, 1i)), vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), -1430f), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~u_input.a.x) & _wgslsmith_dot_vec3_u32(u_input.a.ywz, u_input.a.wzz), 31u)]), Struct_3(true, vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -470f), _wgslsmith_f_op_f32(sign(-410f))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~u_input.a.xyw), _wgslsmith_add_vec3_u32(u_input.a.zyw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), 31u)]), Struct_2(Struct_1(vec3<f32>(-1031f, _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -260f)), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) - _wgslsmith_f_op_f32(-arg_0)) + 283f), arg_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x - arg_0) + var_0.a.a.x) - _wgslsmith_f_op_f32(round(var_0.a.a.x))), -1575f)));
    var_0 = Struct_2(func_4(Struct_3(func_4(Struct_3(var_0.a.b.x, var_1, global2[_wgslsmith_index_u32(1u, 31u)]), Struct_3(true, vec2<f32>(var_0.a.a.x, arg_0), Struct_1(var_0.a.a, global1[_wgslsmith_index_u32(37353u, 8u)])), func_4(Struct_3(var_0.a.b.x, vec2<f32>(var_0.a.a.x, arg_0), Struct_1(vec3<f32>(var_1.x, -1251f, var_0.a.a.x), var_0.a.b)), Struct_3(true, vec2<f32>(-711f, 1532f), var_0.a), Struct_2(var_0.a))).a.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, var_1.x))), Struct_1(var_0.a.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 12346u), 8u)])), Struct_3(var_0.a.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a.a.zy - vec2<f32>(arg_0, 1142f)), var_0.a.a.xy)), global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), func_4(Struct_3(var_0.a.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.a.a.x) * vec2<f32>(var_1.x, var_0.a.a.x)), global2[_wgslsmith_index_u32(~4294967295u, 31u)]), Struct_3(!var_0.a.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, -1511f) + vec2<f32>(var_0.a.a.x, var_1.x)), var_0.a), Struct_2(func_4(Struct_3(var_0.a.b.x, var_0.a.a.xz, Struct_1(var_0.a.a, vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, var_0.a.b.x))), Struct_3(var_0.a.b.x, var_1, global2[_wgslsmith_index_u32(15785u, 31u)]), Struct_2(Struct_1(var_0.a.a, vec4<bool>(true, false, true, var_0.a.b.x)))).a))).a);
    let var_2 = Struct_2(var_0.a);
    var var_3 = func_4(Struct_3(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2014f, -498f)) * vec2<f32>(-804f, var_1.x)) - _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a.a), vec4<bool>(0u < u_input.a.x, var_2.a.b.x, var_2.a.b.x, true))), Struct_3(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(701f, arg_0) + var_0.a.a.yz)) * _wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_2.a.a.x, 849f))), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) >> (~17315u % 32u), 31u)]), var_2);
    return -2147483647i;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = 0i;
    var var_1 = select(-1636f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-160f, _wgslsmith_f_op_f32(660f + -1391f))))), arg_1.a.b.x, arg_1.a.b.x & (select(arg_1.a.b.x, true, true) | false));
    var var_2 = -max(42454i, min(-arg_2.x, 60228i) | (-10837i & abs(arg_2.x)));
    let var_3 = func_4(Struct_3(arg_1.a.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1322f, 146f), arg_1.a.a.zz)) * arg_1.a.a.xx), arg_1.a), Struct_3(arg_1.a.b.x, arg_1.a.a.zz, func_4(Struct_3(arg_1.a.b.x, _wgslsmith_f_op_vec2_f32(step(arg_1.a.a.yy, arg_1.a.a.zy)), func_4(Struct_3(false, arg_1.a.a.xx, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), Struct_3(arg_1.a.b.x, arg_1.a.a.zx, Struct_1(vec3<f32>(arg_0, arg_0, -891f), vec4<bool>(arg_1.a.b.x, true, false, true))), arg_1).a), Struct_3(false | arg_1.a.b.x, vec2<f32>(arg_1.a.a.x, -290f), Struct_1(vec3<f32>(-215f, arg_0, 766f), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), arg_1).a), arg_1).a;
    var var_4 = select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 8u)], !func_4(Struct_3(func_2(Struct_3(arg_1.a.b.x, arg_1.a.a.xz, global2[_wgslsmith_index_u32(0u, 31u)]), arg_1.a.b.x, var_0).x, _wgslsmith_f_op_vec2_f32(-arg_1.a.a.yx), global2[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_3(true, arg_1.a.a.yx, arg_1.a), func_4(Struct_3(true, arg_1.a.a.yx, var_3), Struct_3(arg_1.a.b.x, var_3.a.zy, Struct_1(vec3<f32>(arg_1.a.a.x, arg_1.a.a.x, 1002f), global1[_wgslsmith_index_u32(0u, 8u)])), Struct_2(Struct_1(vec3<f32>(788f, arg_1.a.a.x, -793f), global1[_wgslsmith_index_u32(31230u, 8u)])))).a.b, select(select(vec4<bool>(true, !var_3.b.x, true, var_3.b.x), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 77802u), 8u)], true), func_4(Struct_3(func_2(Struct_3(var_3.b.x, arg_1.a.a.xy, var_3), arg_1.a.b.x, 71469i).x, _wgslsmith_f_op_vec2_f32(-arg_1.a.a.xz), func_4(Struct_3(true, arg_1.a.a.xy, Struct_1(var_3.a, var_3.b)), Struct_3(arg_1.a.b.x, var_3.a.zx, Struct_1(vec3<f32>(var_3.a.x, arg_1.a.a.x, arg_1.a.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), arg_1).a), Struct_3(arg_0 < var_3.a.x, var_3.a.yz, func_4(Struct_3(false, vec2<f32>(1165f, arg_1.a.a.x), Struct_1(vec3<f32>(arg_0, var_3.a.x, var_3.a.x), vec4<bool>(var_3.b.x, var_3.b.x, true, arg_1.a.b.x))), Struct_3(arg_1.a.b.x, var_3.a.zy, var_3), arg_1).a), func_4(Struct_3(arg_1.a.b.x, vec2<f32>(arg_0, 1628f), arg_1.a), Struct_3(true, vec2<f32>(arg_1.a.a.x, arg_1.a.a.x), Struct_1(var_3.a, arg_1.a.b)), arg_1)).a.b, vec4<bool>(var_3.b.x, !var_3.b.x, select(any(vec3<bool>(var_3.b.x, false, arg_1.a.b.x)), select(var_3.b.x, arg_1.a.b.x, true), all(vec3<bool>(arg_1.a.b.x, var_3.b.x, true))), false)));
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(38693u, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)), ~select(vec4<u32>(10015u, u_input.a.x, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 55234u), vec4<bool>(false, true, var_4.x, arg_1.a.b.x))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1663u))), select(47824u, ~firstLeadingBit(1u), select(!(!var_3.b.x), any(!arg_1.a.b.xz), select(true, var_3.b.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(714f, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -667f, -1000f))), select(select(global1[_wgslsmith_index_u32(41624u, 8u)], vec4<bool>(true, false, true, false), false), select(global1[_wgslsmith_index_u32(3354u, 8u)], vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)))), vec4<i32>(~select(-50171i, 18461i, false) | 20789i, ~abs(-2147483647i) ^ func_1(_wgslsmith_f_op_f32(586f - -2005f)), 32487i, _wgslsmith_clamp_i32(2544i, -10047i, _wgslsmith_div_i32(97i, 41308i)) | -firstLeadingBit(2147483647i)));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_3(all(!(!var_1.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1024f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1681f + 551f), -296f, var_1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-198f, -122f), vec2<f32>(-447f, 186f), var_1.x)) * vec2<f32>(-599f, 419f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, 140f)) + vec2<f32>(-1000f, -1000f)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(70579u, ~_wgslsmith_dot_vec4_u32(u_input.a, reverseBits(u_input.a))), 31u)]);
    global1 = array<vec4<bool>, 8>();
    var var_3 = var_2.b.x;
    global1 = array<vec4<bool>, 8>();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_2.c.a.xy, vec2<f32>(-816f, -755f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, var_2.c.a.x) + vec2<f32>(var_2.c.a.x, var_2.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(36454i, 0i))), i32(-1i) * -_wgslsmith_dot_vec3_i32(max(vec3<i32>(-7490i, 17655i, -10644i), vec3<i32>(-9832i, 2147483647i, -1i)), vec3<i32>(-31927i, 17685i, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c.a, vec3<f32>(2054f, 1412f, -151f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x))), _wgslsmith_f_op_f32(361f - var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -486f))));
}

