struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<u32>(42226u, 108747u, 26567u, 49476u), Struct_2(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 0u), Struct_1(vec3<u32>(4294967295u, 17307u, 10383u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 75962u, 1u), 1u, -725f), 11665u, Struct_1(vec3<u32>(3678u, 40799u, 0u), vec3<u32>(46474u, 336u, 4294967295u), vec3<u32>(4294967295u, 0u, 78154u), 85633u, -1430f)), Struct_2(vec3<bool>(false, false, true), vec2<u32>(24484u, 4294967295u), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(99212u, 35858u, 4192u), 4294967295u, 1270f), 0u, Struct_1(vec3<u32>(10704u, 1u, 1u), vec3<u32>(1u, 1383u, 4294967295u), vec3<u32>(4944u, 4294967295u, 4294967295u), 4294967295u, -1072f)), Struct_2(vec3<bool>(false, false, true), vec2<u32>(55353u, 0u), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(15823u, 46797u, 4294967295u), vec3<u32>(4073u, 4294967295u, 0u), 6760u, -895f), 4294967295u, Struct_1(vec3<u32>(0u, 88978u, 1u), vec3<u32>(4294967295u, 22049u, 0u), vec3<u32>(1u, 4294967295u, 15869u), 1989u, -379f)), Struct_3(vec2<bool>(true, false), vec2<u32>(0u, 0u), -1i, Struct_1(vec3<u32>(68985u, 1u, 26157u), vec3<u32>(1u, 31865u, 14345u), vec3<u32>(4294967295u, 19939u, 54157u), 0u, -223f))));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = Struct_5(~(~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b << (vec4<u32>(4294967295u, u_input.c, u_input.a, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.e - arg_1.d.e))) * arg_1.d.e));
    global1 = select(arg_0.wy, !select(!select(vec2<bool>(global1.x, false), arg_1.a, vec2<bool>(global1.x, true)), select(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_0.wx, select(arg_0.xw, vec2<bool>(arg_1.a.x, false), arg_0.x)), !arg_0.xz), arg_0.x);
    let var_1 = Struct_1(select(abs(arg_1.d.c << (vec3<u32>(arg_2, arg_1.b.x, arg_1.b.x) % vec3<u32>(32u))), vec3<u32>(~arg_2, _wgslsmith_clamp_u32(1u, u_input.c, arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 105035u, arg_2), vec3<u32>(7664u, u_input.c, arg_2))), arg_0.xxy) >> (arg_1.d.c % vec3<u32>(32u)), vec3<u32>(arg_1.b.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2, 0u, arg_2, 38111u), ~vec4<u32>(u_input.a, 0u, arg_2, 53881u), all(arg_0.zzy)), firstLeadingBit(~vec4<u32>(arg_2, 13547u, arg_2, 1u))), abs(arg_1.d.d)), arg_1.d.b, ~_wgslsmith_add_u32(abs(~arg_1.d.d), 1u), 238f);
    global1 = select(vec2<bool>(arg_1.a.x, true), arg_0.wz, !global1.x);
    let var_2 = arg_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_3(arg_2.a, arg_2.b, 0i, Struct_1(~arg_2.d.c, arg_2.d.a, _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(arg_2.d.c, vec3<u32>(u_input.c, 0u, 4294967295u)), vec3<u32>(u_input.a, u_input.c, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(48142u, 1u | arg_2.b.x), ~arg_2.b & ~vec2<u32>(arg_2.d.d, arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec4<bool>(arg_3.x, arg_2.a.x, true, global1.x), arg_2, min(u_input.a, 0u))))));
    let var_1 = 1u;
    var var_2 = abs(u_input.b);
    var var_3 = var_0.d;
    let var_4 = arg_2;
    return vec4<bool>(!arg_2.a.x, var_4.a.x, !all(arg_3), select((_wgslsmith_f_op_f32(func_3(vec4<bool>(global1.x, true, true, arg_3.x), arg_2, 30700u)) >= _wgslsmith_f_op_f32(-292f + 1000f)) | !arg_2.a.x, all(!(!vec3<bool>(global1.x, true, false))), all(select(vec2<bool>(global1.x, true), var_0.a, false))));
}

fn func_1() -> u32 {
    let var_0 = vec2<bool>(any(select(vec4<bool>(true, true, u_input.b.x <= 1004i, all(vec2<bool>(global1.x, global1.x))), select(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(true, global1.x, false, global1.x), global1.x), func_2(vec3<f32>(1878f, -624f, -1000f), true, Struct_3(vec2<bool>(global1.x, global1.x), vec2<u32>(u_input.c, u_input.c), -49620i, Struct_1(vec3<u32>(0u, 15788u, u_input.a), vec3<u32>(23025u, u_input.c, 43684u), vec3<u32>(1u, 1u, 1u), u_input.c, 947f)), vec2<bool>(false, false)), all(vec2<bool>(false, true))), !func_2(vec3<f32>(-514f, 1593f, 645f), false, Struct_3(vec2<bool>(false, global1.x), vec2<u32>(u_input.c, u_input.a), u_input.b.x, Struct_1(vec3<u32>(1u, 7759u, 34664u), vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.a, 1u, u_input.c), 0u, 472f)), vec2<bool>(global1.x, false)))), !(!(!all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)))));
    global1 = var_0;
    var var_1 = Struct_1(vec3<u32>(~(~reverseBits(20308u)), abs(_wgslsmith_div_u32(u_input.a, u_input.c)) & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 74312u, u_input.a), vec4<u32>(1u, u_input.c, u_input.a, 136786u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.c))), ~u_input.a), firstTrailingBit(~abs(vec3<u32>(23601u, 28836u, 1u))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a, 0u) << (firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.c)) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.a, u_input.c, u_input.c))) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.c, ~u_input.c >> (4436u % 32u)), 1696u, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-496f))))))));
    var var_2 = any(func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2742f), -1510f), false, Struct_3(select(var_0, var_0, global1.x), vec2<u32>(25137u, u_input.a), abs(-10555i), Struct_1(vec3<u32>(40235u, 37654u, 4294967295u), vec3<u32>(82643u, 13915u, var_1.a.x), vec3<u32>(u_input.c, var_1.b.x, 0u), var_1.c.x, var_1.e)), var_0).yx) | ((_wgslsmith_f_op_f32(-var_1.e) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e)) - _wgslsmith_f_op_f32(-3506f + -115f))) || global1.x);
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(34585u, 1u ^ u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7231u, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, var_1.b.x, 27354u, var_1.b.x)), vec4<u32>(6737u, u_input.c, 4294967295u, u_input.c))) << ((abs(max(3490u, u_input.a)) & ~u_input.c) % 32u)), 1u)];
    return ~(~(~47975u));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_3(vec4<bool>(!arg_1.x, false, global1.x, false), Struct_3(arg_1.yx, ~(~vec2<u32>(80767u, u_input.a) & vec2<u32>(11242u, u_input.a)), _wgslsmith_sub_i32(arg_2.a.x, max(_wgslsmith_add_i32(-47825i, 1i), u_input.b.x)), Struct_1(~max(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(arg_0, u_input.a, arg_0)), vec3<u32>(arg_0, 1u, u_input.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(29691u, u_input.c, 0u), vec3<u32>(1u, u_input.a, 1u)), vec3<u32>(firstLeadingBit(1310u), arg_0 & 58889u, abs(u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(67300u, u_input.a, arg_0), vec3<u32>(1u, u_input.c, arg_0)) | 15581u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1215f))))), u_input.a));
    let var_1 = -u_input.b.x;
    var var_2 = arg_1.x;
    let var_3 = Struct_2(func_2(vec3<f32>(1631f, -1146f, _wgslsmith_f_op_f32(arg_2.b + arg_2.b)), !(global1.x & !arg_1.x), Struct_3(vec2<bool>(true, true), vec2<u32>(2782u, abs(7976u)), -2147483647i, Struct_1(vec3<u32>(u_input.c, 4294967295u, arg_0), ~vec3<u32>(56032u, 0u, 4294967295u), countOneBits(vec3<u32>(arg_0, 42875u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, u_input.c, arg_0), vec4<u32>(u_input.c, arg_0, arg_0, arg_0)), _wgslsmith_div_f32(2254f, -1015f))), select(arg_1.yx, !arg_1.yz, select(func_2(vec3<f32>(-407f, arg_2.b, -1862f), arg_1.x, Struct_3(vec2<bool>(true, true), vec2<u32>(arg_0, 0u), var_1, Struct_1(vec3<u32>(arg_0, u_input.a, arg_0), vec3<u32>(34458u, 61291u, 46383u), vec3<u32>(arg_0, arg_0, arg_0), arg_0, 606f)), vec2<bool>(arg_1.x, true)).zw, func_2(vec3<f32>(425f, arg_2.b, -352f), global1.x, Struct_3(vec2<bool>(global1.x, arg_1.x), vec2<u32>(u_input.a, arg_0), -24696i, Struct_1(vec3<u32>(arg_0, u_input.c, 0u), vec3<u32>(2334u, u_input.a, 31694u), vec3<u32>(20678u, arg_0, 11255u), u_input.a, -248f)), arg_1.yy).yx, false))).yzz, vec2<u32>(~(arg_0 >> ((arg_0 << (arg_0 % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 1u, 18013u), vec4<u32>(arg_0, 41661u, arg_0, u_input.c)), max(reverseBits(vec4<u32>(arg_0, u_input.c, arg_0, arg_0)), vec4<u32>(61066u, u_input.c, 4294967295u, 8611u)))), Struct_1(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, arg_0, u_input.a)), vec3<u32>(reverseBits(arg_0), u_input.c ^ 4294967295u, _wgslsmith_mult_u32(u_input.a, arg_0))), vec3<u32>(_wgslsmith_sub_u32(arg_0, u_input.a), 43414u, 0u), vec3<u32>(u_input.a | ~arg_0, countOneBits(4294967295u), ~(~11732u)), ~_wgslsmith_div_u32(u_input.c, 18912u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f))), 77851u, Struct_1(~firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 27128u)), _wgslsmith_clamp_vec3_u32(max(abs(vec3<u32>(arg_0, arg_0, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(28848u, arg_0, arg_0), vec3<u32>(arg_0, u_input.c, u_input.c))), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0), vec3<u32>(u_input.c, 58006u, u_input.a)), vec3<u32>(7018u, 0u, 1u) ^ vec3<u32>(u_input.c, 1u, u_input.c)), vec3<u32>(abs(u_input.a), _wgslsmith_div_u32(46425u, u_input.c), 41880u)), ~(~vec3<u32>(3238u, u_input.a, arg_0)), ~max(select(u_input.a, arg_0, arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(15499u, 12305u), vec2<u32>(96929u, u_input.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.b, 579f)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(-560f)), -1012f, var_3.e.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-223f, var_3.c.e, arg_2.b))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.c.e, var_3.c.e, var_3.c.e)))), !(arg_1.x && arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-968f, var_3.e.e, arg_2.b))))))));
    return var_3.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec2<bool>(all(vec3<bool>(global1.x && true, false, true)), true), !select(select(!vec2<bool>(true, global1.x), select(vec2<bool>(false, false), vec2<bool>(global1.x, false), vec2<bool>(true, false)), true), !vec2<bool>(global1.x, global1.x), true), func_4(~_wgslsmith_div_u32(30750u, u_input.c) >> (max(func_1(), 76856u) % 32u), vec3<bool>(false, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1265f, -973f, -1250f) - vec3<f32>(-510f, -1399f, 486f)), true, Struct_3(vec2<bool>(global1.x, global1.x), vec2<u32>(14696u, u_input.c), 1i, Struct_1(vec3<u32>(4294967295u, 4056u, u_input.a), vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(4393u, u_input.a, 4294967295u), u_input.c, 372f)), !vec2<bool>(global1.x, false)).x, true), Struct_5(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, 2147483647i, -1i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = vec2<bool>(!select(!(!global1.x), global1.x, global1.x && true), true);
    var var_0 = !vec3<bool>(global1.x, all(select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, true), global1.x), func_2(vec3<f32>(530f, -1227f, -268f), false, Struct_3(vec2<bool>(global1.x, false), vec2<u32>(u_input.c, 1u), -1i, Struct_1(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(75679u, 132780u, 15188u), vec3<u32>(4294967295u, u_input.a, u_input.c), u_input.c, 126f)), vec2<bool>(global1.x, true)).www, true)), !all(func_2(vec3<f32>(223f, 483f, 1020f), global1.x, Struct_3(vec2<bool>(true, global1.x), vec2<u32>(u_input.a, u_input.c), 2147483647i, Struct_1(vec3<u32>(71419u, 51409u, u_input.a), vec3<u32>(u_input.a, 18309u, 0u), vec3<u32>(u_input.c, 4294967295u, 4294967295u), 4294967295u, -1423f)), vec2<bool>(false, false)).zy));
    var_0 = vec3<bool>(false, true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -37983i, -2147483647i), -vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)) >= (select(7163i, 2147483647i, true) >> (1u % 32u))));
    var var_1 = _wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(1u, ~u_input.c, 84029u & u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 6813u), vec2<u32>(u_input.c, u_input.c)))), vec4<u32>(~40687u, u_input.c, u_input.a, ~u_input.c));
    let var_2 = Struct_4(_wgslsmith_div_vec4_u32(select(~vec4<u32>(var_1.x, 49779u, 36006u, 0u), firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 103655u, 15514u)), var_0.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(30728u, var_1.x, var_1.x, var_1.x), vec4<u32>(4294967295u, 91138u, 24978u, 51202u))) >> (max(~vec4<u32>(var_1.x, u_input.c, 21048u, 45764u) >> ((vec4<u32>(var_1.x, var_1.x, 86036u, 80705u) | vec4<u32>(46967u, 51706u, 4294967295u, var_1.x)) % vec4<u32>(32u)), vec4<u32>(var_1.x, 4212u, u_input.c, 1u) | ~vec4<u32>(36877u, 4597u, 15568u, 21320u)) % vec4<u32>(32u)), Struct_2(select(vec3<bool>(global1.x, global1.x, true), !vec3<bool>(false, var_0.x, false), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, 731f, 1000f)), var_0.x, Struct_3(vec2<bool>(true, false), vec2<u32>(var_1.x, 39392u), u_input.b.x, Struct_1(var_1.wwx, vec3<u32>(9674u, 4294967295u, var_1.x), vec3<u32>(u_input.a, 56807u, var_1.x), var_1.x, -1000f)), func_2(vec3<f32>(-1650f, -434f, -880f), var_0.x, Struct_3(vec2<bool>(true, true), var_1.xy, u_input.b.x, Struct_1(var_1.wzx, vec3<u32>(u_input.c, u_input.c, var_1.x), var_1.xwz, 95173u, -1000f)), var_0.xy).wx).xxw), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.a, 4294967295u), var_1.xz) ^ ~var_1.wy), Struct_1(var_1.wwx, vec3<u32>(~44675u, _wgslsmith_div_u32(0u, 4294967295u), 1042u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.x, 0u), vec3<u32>(4294967295u, u_input.a, 34404u)), ~u_input.c & reverseBits(var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(143f + -360f), _wgslsmith_f_op_f32(-615f * 1548f), global1.x))), var_1.x, Struct_1(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(~79830u, 61708u & u_input.a, _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(0u, var_1.x))), ~var_1.yxw << (vec3<u32>(61818u, u_input.c, var_1.x) % vec3<u32>(32u)), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-943f, -979f)))))), Struct_2(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, -201f, -135f)), !var_0.x, Struct_3(vec2<bool>(false, true), vec2<u32>(12931u, u_input.a), u_input.b.x, Struct_1(vec3<u32>(16643u, 29528u, u_input.a), var_1.zyw, vec3<u32>(var_1.x, 4294967295u, 4294967295u), u_input.c, 2702f)), var_0.zx).wyy, countOneBits(_wgslsmith_add_vec2_u32(var_1.wz, var_1.yx)), Struct_1(vec3<u32>(u_input.a, 100682u, 4294967295u) | max(var_1.zxx, vec3<u32>(0u, 1u, 1u)), abs(var_1.yxx ^ var_1.wyw), ~select(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(23188u, 45764u, 1u), vec3<bool>(true, false, false)), _wgslsmith_div_u32(1u, max(16379u, var_1.x)), -327f), 0u, Struct_1(vec3<u32>(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c, 0u), vec4<u32>(u_input.c, 0u, u_input.c, 36158u)), u_input.c), ~var_1.xxz, var_1.xyy & vec3<u32>(var_1.x, 62800u, 0u), 9273u, -2672f)), Struct_2(select(vec3<bool>(any(var_0.zx), false, true), select(!vec3<bool>(true, false, global1.x), select(vec3<bool>(var_0.x, global1.x, global1.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false)), !vec3<bool>(global1.x, var_0.x, var_0.x)), func_2(vec3<f32>(1781f, 1000f, 1000f), global1.x, Struct_3(vec2<bool>(true, var_0.x), var_1.wy, u_input.b.x, Struct_1(var_1.wzy, vec3<u32>(u_input.c, 0u, var_1.x), vec3<u32>(var_1.x, u_input.a, 4294967295u), 33179u, 1219f)), !var_0.zy).wxy), min(var_1.xz, vec2<u32>(0u, var_1.x)), Struct_1(min(vec3<u32>(u_input.a, var_1.x, 1992u), select(var_1.www, vec3<u32>(77934u, 28725u, 13582u), vec3<bool>(global1.x, false, global1.x))), ~_wgslsmith_sub_vec3_u32(var_1.ywy, vec3<u32>(0u, var_1.x, 1u)), _wgslsmith_mod_vec3_u32(var_1.xwy, countOneBits(vec3<u32>(0u, u_input.c, 1u))), firstLeadingBit(u_input.a), 1f), select(_wgslsmith_sub_u32(var_1.x, 0u), ~_wgslsmith_mult_u32(u_input.a, u_input.a), !any(vec3<bool>(true, var_0.x, false))), Struct_1(var_1.zwy, var_1.zyz, _wgslsmith_mod_vec3_u32(var_1.zwy, vec3<u32>(var_1.x, 4294967295u, u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.c), var_1.xzw) % vec3<u32>(32u)), 10967u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1198f))))), Struct_3(!var_0.zx, abs(max(abs(vec2<u32>(63499u, var_1.x)), _wgslsmith_mult_vec2_u32(var_1.zx, var_1.zz))), -_wgslsmith_div_i32(2147483647i, -u_input.b.x), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 51323u), var_1.yzw, vec3<u32>(62495u, 51786u, 0u)), vec3<u32>(var_1.x, var_1.x, 58019u), vec3<u32>(var_1.x, 4294967295u, 6308u) << (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(var_1.xz, var_1.wx), _wgslsmith_f_op_f32(f32(-1f) * -592f))));
    var var_3 = ~((~var_2.a ^ var_2.a) | vec4<u32>(~var_2.b.e.c.x & _wgslsmith_mod_u32(u_input.a, u_input.c), firstLeadingBit(_wgslsmith_div_u32(var_2.b.b.x, u_input.c)), 80833u << (_wgslsmith_sub_u32(39560u, var_1.x) % 32u), 28448u));
    global0 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~var_2.e.d.c.x), 13237i, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, 4294967295u), select(var_1.wyw, vec3<u32>(3511u, 85245u, 1u), false)) & _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(var_1.x, var_3.x)), 27094u, _wgslsmith_mod_u32(~select(var_3.x, var_2.a.x, false), ~var_1.x), var_1.x), abs(select(var_2.c.e.a, min(reverseBits(vec3<u32>(7509u, 7206u, 4294967295u)), reverseBits(var_2.a.wyw)), !var_2.e.a.x | true)));
}

