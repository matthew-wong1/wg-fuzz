struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, Struct_1(vec2<f32>(-1106f, 470f), 23771i, vec4<f32>(-273f, 300f, -749f, 1178f), 0i), Struct_1(vec2<f32>(-1000f, -365f), -1i, vec4<f32>(-138f, -1217f, 1892f, -256f), 5805i), Struct_1(vec2<f32>(-1920f, 566f), 2147483647i, vec4<f32>(-1000f, 1000f, 107f, 921f), -53136i));

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-227f, -913f), vec2<f32>(-1801f, 801f), vec2<f32>(1171f, -1875f), vec2<f32>(253f, -1585f), vec2<f32>(-1963f, 813f), vec2<f32>(-387f, 1023f), vec2<f32>(-775f, 781f), vec2<f32>(-1055f, -1000f), vec2<f32>(1555f, -290f), vec2<f32>(486f, -1066f), vec2<f32>(471f, -1000f), vec2<f32>(1137f, 1000f), vec2<f32>(1000f, 1167f), vec2<f32>(1210f, -866f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    let var_0 = global0.d;
    global1 = array<vec2<f32>, 14>();
    let var_1 = Struct_2(~(~u_input.c.x) & 77651i, Struct_1(vec2<f32>(var_0.c.x, 1f), _wgslsmith_div_i32(38030i, _wgslsmith_mult_i32(-var_0.d, arg_0.b.d)), global0.d.c, firstTrailingBit(firstTrailingBit(16011i))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_mult_i32(global0.c.b, -1823i), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.c)), global0.d.b), Struct_1(vec2<f32>(-1300f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.c.c.x))))), _wgslsmith_mod_i32(~(~arg_0.b.d), min(u_input.d.x, arg_0.a) & arg_1.d), _wgslsmith_f_op_vec4_f32(arg_1.c + var_0.c), arg_0.a));
    var var_2 = firstLeadingBit(u_input.d);
    let var_3 = Struct_2(1i, arg_0.c, Struct_1(var_1.d.c.wy, firstTrailingBit(_wgslsmith_sub_i32(-18528i, -24170i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.x, var_0.c.x, 509f, 898f))), _wgslsmith_f_op_vec4_f32(-arg_1.c))), firstLeadingBit(~(var_1.b.b << (u_input.b % 32u)))), arg_0.d);
    return _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(min(-1i, var_1.b.d), countOneBits(global0.d.d) | -arg_1.d, -1i)), -u_input.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = -1i;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~u_input.b)), u_input.b), u_input.b);
    var_1 = _wgslsmith_div_u32(min(countOneBits(~0u), _wgslsmith_mod_u32(43631u, u_input.b)) | ~max(u_input.a.x, 0u & u_input.b), 22305u);
    let var_2 = _wgslsmith_dot_vec3_i32(func_3(Struct_2(i32(-1i) * -8297i, Struct_1(vec2<f32>(arg_3.a.x, arg_3.a.x), 23918i, arg_1.c, global0.b.b), arg_1, arg_3), global0.d, true), _wgslsmith_add_vec3_i32((vec3<i32>(1i, 1i, 1i) & vec3<i32>(u_input.c.x, -40302i, -27098i)) << (~vec3<u32>(36899u, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_0.b.b, arg_3.b, -1i) >> (_wgslsmith_mod_vec3_u32(u_input.a.yxy, u_input.a.yzw) % vec3<u32>(32u)))) < -func_3(Struct_2(min(35750i, var_0), global0.b, arg_1, Struct_1(vec2<f32>(arg_1.c.x, -759f), global0.b.d, vec4<f32>(global0.c.c.x, 185f, -289f, arg_3.a.x), 2147483647i)), Struct_1(global0.b.c.xw, min(u_input.c.x, u_input.d.x), vec4<f32>(global0.c.c.x, -355f, arg_1.a.x, 1021f), abs(arg_3.b)), !arg_2.x & any(vec3<bool>(false, true, arg_2.x))).x;
    return Struct_2(func_3(arg_0, arg_0.b, arg_2.x).x, arg_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.c.xx))), i32(-1i) * -44032i, arg_1.c, 0i), arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.c.x, -300f, arg_2.x, -166f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 2571f, arg_2.x, arg_2.x) * global0.b.c))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.x, arg_0.d.a.x, arg_0.c.a.x, global0.c.a.x) - vec4<f32>(118f, 541f, -1000f, arg_1.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, -500f, arg_2.x, -487f))), _wgslsmith_f_op_vec4_f32(exp2(global0.c.c))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 222f, 270f, arg_1.c.x))) * _wgslsmith_f_op_vec4_f32(-arg_2)), arg_2)))));
    var var_1 = func_2(func_2(arg_0, func_2(arg_0, arg_1, vec3<bool>(true, all(vec3<bool>(true, true, false)), false), arg_0.d).d, vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.c.zx)), 2147483647i, arg_0.d.c, u_input.c.x)), arg_0.d, !vec3<bool>(true, ~u_input.a.x == u_input.b, true), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.c.ww))), _wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(1u, 14u)]))), ~0i ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(851i, arg_1.b), -969i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b.c)))), -(~0i))).d;
    var var_2 = arg_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f * var_2.a.x)), 338f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * var_0.x))))), _wgslsmith_f_op_f32(-arg_2.x));
    var_2 = func_2(Struct_2(35710i, Struct_1(_wgslsmith_f_op_vec2_f32(round(var_1.a)), -2147483647i, _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(564f, var_2.c.x, arg_0.d.a.x, -1730f), vec4<f32>(var_3.x, var_3.x, -1283f, arg_2.x)))), select(global0.b.b >> (u_input.a.x % 32u), _wgslsmith_sub_i32(u_input.d.x, var_2.b), select(false, false, true))), func_2(func_2(Struct_2(59699i, arg_0.c, arg_1, global0.c), Struct_1(vec2<f32>(2034f, -1392f), 1i, vec4<f32>(arg_1.c.x, -526f, var_2.c.x, -881f), 37275i), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(global0.d.c.x, var_3.x), u_input.c.x, vec4<f32>(367f, -374f, var_2.a.x, arg_0.d.a.x), 0i)), global0.c, vec3<bool>(true, true, true), global0.c).c, Struct_1(_wgslsmith_div_vec2_f32(arg_2.yw, vec2<f32>(-1391f, -608f)), ~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -494f, 1434f, var_2.c.x)), ~(-u_input.d.x))), global0.b, vec3<bool>(true, true, true), func_2(Struct_2(_wgslsmith_mult_i32(arg_1.b, _wgslsmith_mod_i32(-13729i, var_1.b)), func_2(arg_0, func_2(arg_0, global0.b, vec3<bool>(true, true, true), Struct_1(var_3.xz, 14907i, vec4<f32>(arg_0.c.c.x, -1394f, 350f, var_2.c.x), 1i)).d, vec3<bool>(true, true, true), func_2(Struct_2(arg_0.c.b, Struct_1(vec2<f32>(arg_2.x, 781f), u_input.d.x, arg_2, var_2.b), global0.d, arg_0.c), Struct_1(arg_2.wz, -44873i, arg_0.d.c, var_1.d), vec3<bool>(true, true, true), Struct_1(vec2<f32>(-839f, global0.b.a.x), global0.d.d, vec4<f32>(-489f, var_3.x, 1000f, 273f), -18489i)).b).c, func_2(Struct_2(var_2.d, Struct_1(vec2<f32>(1469f, -232f), var_2.d, vec4<f32>(372f, -2753f, 489f, var_0.x), 2147483647i), global0.c, arg_0.d), func_2(arg_0, Struct_1(var_3.xy, u_input.d.x, vec4<f32>(855f, -346f, var_0.x, var_2.a.x), 2147483647i), vec3<bool>(false, false, true), arg_1).b, vec3<bool>(false, false, false), Struct_1(vec2<f32>(-909f, 2139f), arg_1.d, vec4<f32>(arg_1.c.x, var_2.c.x, 998f, 2449f), var_2.d)).d, func_2(func_2(Struct_2(0i, Struct_1(vec2<f32>(492f, -989f), -32246i, vec4<f32>(-942f, -399f, var_0.x, 464f), 1i), arg_1, global0.d), Struct_1(vec2<f32>(global0.c.c.x, var_1.a.x), arg_1.d, vec4<f32>(-1283f, -1021f, 1644f, arg_1.a.x), -3525i), vec3<bool>(false, false, false), Struct_1(var_3.wy, -2147483647i, var_2.c, -22755i)), arg_0.d, vec3<bool>(true, true, true), Struct_1(var_2.a, 68509i, vec4<f32>(-1929f, 773f, var_0.x, arg_1.c.x), 0i)).b), func_2(func_2(Struct_2(2501i, Struct_1(vec2<f32>(global0.c.c.x, 1000f), -1i, arg_1.c, global0.b.d), global0.d, Struct_1(global0.d.c.xx, 1i, var_1.c, 1i)), func_2(arg_0, global0.b, vec3<bool>(true, false, true), Struct_1(vec2<f32>(-248f, 447f), -37307i, global0.b.c, 0i)).b, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(var_2.c.x, global0.c.c.x), -2147483647i, arg_0.b.c, -2161i)), func_2(func_2(arg_0, Struct_1(vec2<f32>(var_1.c.x, var_2.a.x), global0.c.b, vec4<f32>(-715f, var_2.a.x, arg_0.c.a.x, -385f), arg_0.a), vec3<bool>(true, false, false), arg_0.d), Struct_1(var_3.xz, 42062i, arg_1.c, arg_1.d), vec3<bool>(true, false, false), arg_1).d, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), global0.d).b, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), Struct_1(var_1.a, 9039i, vec4<f32>(_wgslsmith_f_op_f32(max(460f, var_2.a.x)), var_1.c.x, -1269f, -247f), ~(var_1.b ^ arg_0.c.d))).b).d;
    return _wgslsmith_mod_i32(var_2.b, _wgslsmith_mult_i32(var_1.b, max(var_2.b, -(i32(-1i) * -1i))));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_2(firstTrailingBit(i32(-1i) * -14909i), func_2(func_2(func_2(func_2(Struct_2(-1i, Struct_1(vec2<f32>(-593f, 1117f), arg_0, global0.c.c, -1i), global0.d, global0.c), Struct_1(global0.c.a, global0.c.b, vec4<f32>(global0.d.c.x, global0.b.c.x, global0.c.a.x, global0.d.c.x), arg_2), vec3<bool>(false, true, false), Struct_1(vec2<f32>(global0.c.c.x, -1000f), arg_0, global0.b.c, -2147483647i)), func_2(Struct_2(global0.d.b, Struct_1(global0.d.a, 35113i, vec4<f32>(518f, 185f, 1181f, global0.b.a.x), 19946i), Struct_1(global0.b.c.zz, -31939i, global0.d.c, 0i), Struct_1(vec2<f32>(289f, global0.d.c.x), global0.d.b, vec4<f32>(global0.c.a.x, 1334f, global0.d.a.x, global0.d.c.x), arg_0)), Struct_1(global0.b.a, u_input.c.x, vec4<f32>(881f, 363f, global0.b.c.x, global0.b.a.x), arg_2), vec3<bool>(true, false, true), global0.c).b, vec3<bool>(true, false, true), func_2(Struct_2(19651i, global0.b, global0.d, Struct_1(global1[_wgslsmith_index_u32(14222u, 14u)], -2147483647i, global0.c.c, 0i)), Struct_1(vec2<f32>(-1917f, 211f), 30016i, global0.c.c, 1i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(-1578f, -895f), -18778i, global0.c.c, 2147483647i)).b), global0.d, vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)), false), Struct_1(global0.c.a, firstTrailingBit(arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1022f, global0.b.a.x, -466f, global0.b.c.x)), select(arg_0, arg_0, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c.x, 341f))), min(1i, u_input.c.x), _wgslsmith_f_op_vec4_f32(global0.b.c + vec4<f32>(267f, global0.b.c.x, -153f, 1000f)), 1i), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), vec3<bool>(true, true, false)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~var_0.x, 14u)]), arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, -1000f, global0.b.c.x, 919f) + vec4<f32>(global0.d.a.x, global0.b.a.x, 709f, global0.d.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, global0.b.c.x, global0.d.c.x, -1266f) - vec4<f32>(global0.c.c.x, 682f, 1767f, 642f)))), arg_2)).d, Struct_1(_wgslsmith_div_vec2_f32(func_2(func_2(Struct_2(48985i, Struct_1(vec2<f32>(global0.d.c.x, -637f), 1i, global0.d.c, 2518i), global0.d, global0.c), global0.c, vec3<bool>(false, false, true), global0.d), func_2(Struct_2(u_input.c.x, global0.c, Struct_1(vec2<f32>(-1221f, -1230f), global0.c.b, vec4<f32>(1835f, 1567f, global0.d.a.x, 1115f), arg_0), Struct_1(vec2<f32>(global0.c.c.x, 1000f), u_input.d.x, vec4<f32>(global0.d.a.x, 738f, global0.d.a.x, global0.d.a.x), 1i)), Struct_1(global0.c.c.wz, arg_2, global0.c.c, global0.d.b), vec3<bool>(true, false, true), global0.c).b, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), global0.b).c.c.xx, vec2<f32>(_wgslsmith_f_op_f32(global0.d.c.x * global0.d.c.x), global0.b.c.x)), reverseBits(37648i), vec4<f32>(_wgslsmith_f_op_f32(round(global0.c.c.x)), _wgslsmith_f_op_f32(global0.b.c.x * _wgslsmith_f_op_f32(-325f + global0.c.a.x)), func_2(func_2(Struct_2(15413i, global0.b, Struct_1(vec2<f32>(-424f, global0.c.a.x), -19410i, vec4<f32>(-287f, global0.b.a.x, -110f, 1867f), -1i), Struct_1(vec2<f32>(-628f, global0.d.c.x), -2147483647i, global0.c.c, 0i)), Struct_1(vec2<f32>(-256f, -970f), global0.b.d, global0.d.c, 0i), vec3<bool>(true, true, false), Struct_1(vec2<f32>(global0.d.c.x, global0.b.c.x), -1i, vec4<f32>(global0.d.c.x, global0.c.a.x, -241f, global0.d.c.x), 0i)), global0.d, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(global1[_wgslsmith_index_u32(63599u, 14u)], 0i, global0.c.c, global0.a)).d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) - _wgslsmith_f_op_f32(f32(-1f) * -945f))), func_3(func_2(func_2(Struct_2(12717i, Struct_1(global0.d.c.xy, 11539i, global0.b.c, -1i), global0.b, global0.b), Struct_1(vec2<f32>(-193f, global0.c.c.x), u_input.c.x, vec4<f32>(-2008f, -2084f, 888f, global0.c.c.x), arg_2), vec3<bool>(true, true, false), Struct_1(global0.c.a, -89950i, vec4<f32>(global0.d.a.x, global0.d.a.x, global0.c.c.x, -364f), -2147483647i)), Struct_1(vec2<f32>(global0.d.c.x, -1878f), global0.c.b, vec4<f32>(-843f, 1204f, 496f, 520f), arg_2), vec3<bool>(false, true, true), func_2(Struct_2(u_input.c.x, Struct_1(vec2<f32>(global0.d.c.x, global0.b.c.x), -1i, vec4<f32>(-124f, -342f, -1641f, global0.d.a.x), arg_0), Struct_1(global0.c.a, 2147483647i, vec4<f32>(global0.d.a.x, -1259f, 2101f, 1222f), -24833i), Struct_1(global1[_wgslsmith_index_u32(16794u, 14u)], u_input.c.x, global0.c.c, arg_0)), global0.d, vec3<bool>(false, true, true), global0.b).d), func_2(Struct_2(arg_2, global0.c, Struct_1(vec2<f32>(1525f, global0.b.c.x), arg_0, vec4<f32>(global0.c.a.x, global0.c.a.x, 268f, global0.b.c.x), arg_2), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 14u)], 65846i, global0.b.c, -14521i)), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 14u)], 8902i, vec4<f32>(global0.c.c.x, global0.c.a.x, 2188f, global0.c.a.x), global0.d.d), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), global0.d).b, false).x), global0.c);
    var var_2 = var_1.c.c.x;
    global1 = array<vec2<f32>, 14>();
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -492f);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -381f))))), _wgslsmith_f_op_f32(func_5(firstLeadingBit(~(-1i)), ~(~u_input.a.yxx), func_4(func_2(Struct_2(global0.d.b, global0.d, global0.c, global0.c), Struct_1(vec2<f32>(global0.b.c.x, 491f), u_input.d.x, vec4<f32>(165f, global0.b.c.x, global0.d.c.x, 656f), global0.d.d), vec3<bool>(false, true, true), Struct_1(global0.b.a, -1496i, global0.d.c, -20117i)), global0.c, vec4<f32>(-590f, global0.c.a.x, global0.c.c.x, 414f)))))));
    global1 = array<vec2<f32>, 14>();
    let var_1 = ~firstLeadingBit(abs(countOneBits(u_input.a.xx ^ u_input.a.xw)));
    global0 = Struct_2(global0.a, global0.c, func_2(func_2(func_2(func_2(Struct_2(u_input.c.x, Struct_1(vec2<f32>(176f, global0.c.c.x), u_input.d.x, vec4<f32>(-1167f, -1001f, global0.b.c.x, global0.c.a.x), global0.b.d), global0.c, global0.c), Struct_1(vec2<f32>(-1172f, var_0.x), u_input.d.x, vec4<f32>(global0.c.a.x, var_0.x, var_0.x, 1000f), 1i), vec3<bool>(true, false, false), global0.c), func_2(Struct_2(global0.d.b, Struct_1(global1[_wgslsmith_index_u32(7441u, 14u)], global0.b.b, global0.c.c, -28937i), global0.b, Struct_1(vec2<f32>(global0.d.c.x, 823f), -2147483647i, global0.d.c, 18449i)), Struct_1(global0.c.a, 12670i, global0.c.c, global0.a), vec3<bool>(false, true, false), global0.c).b, vec3<bool>(true, true, true), global0.b), global0.d, vec3<bool>(0u > u_input.a.x, all(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))), global0.b), func_2(func_2(Struct_2(-33600i, global0.c, Struct_1(global0.c.a, -44561i, vec4<f32>(-702f, -1974f, global0.c.a.x, 350f), 15397i), global0.c), global0.c, vec3<bool>(false, false, true), global0.b), func_2(func_2(Struct_2(-25722i, global0.b, Struct_1(vec2<f32>(1186f, var_0.x), u_input.c.x, global0.b.c, -1i), global0.b), global0.d, vec3<bool>(false, true, true), Struct_1(vec2<f32>(-948f, 2011f), 4382i, vec4<f32>(var_0.x, 254f, 1000f, var_0.x), -38668i)), global0.b, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), Struct_1(vec2<f32>(829f, var_0.x), u_input.c.x, vec4<f32>(-2779f, 710f, -1810f, global0.c.c.x), 8970i)).d, select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), global0.d).b, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), func_2(func_2(func_2(Struct_2(u_input.d.x, global0.b, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.d.x, global0.c.c, 25621i), Struct_1(global0.d.a, -13199i, vec4<f32>(global0.b.c.x, var_0.x, var_0.x, -1000f), 82416i)), Struct_1(vec2<f32>(global0.b.a.x, 1167f), 10041i, vec4<f32>(global0.b.c.x, var_0.x, global0.d.c.x, global0.c.c.x), global0.c.b), vec3<bool>(true, false, true), Struct_1(vec2<f32>(var_0.x, 411f), u_input.d.x, vec4<f32>(246f, global0.d.a.x, -1000f, global0.d.c.x), 8847i)), Struct_1(global0.b.a, u_input.c.x, vec4<f32>(global0.b.a.x, var_0.x, -200f, -263f), global0.a), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), global0.d), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1061f, -858f), vec2<f32>(1000f, 197f)), firstLeadingBit(global0.b.b), _wgslsmith_f_op_vec4_f32(-global0.c.c), u_input.c.x), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0.c.a.x) + vec2<f32>(-1000f, global0.c.a.x)), global0.c.d, global0.d.c, u_input.d.x)).d).c, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(var_1.x, 14u)] + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 384f), vec2<f32>(-552f, var_0.x)))))), ~(2147483647i << (arg_0 % 32u)), global0.d.c, 24665i));
    let var_2 = func_2(func_2(Struct_2(global0.c.b, func_2(Struct_2(53075i, Struct_1(vec2<f32>(-523f, 1145f), -32265i, global0.c.c, -5268i), global0.b, global0.d), func_2(Struct_2(0i, global0.c, Struct_1(global1[_wgslsmith_index_u32(arg_0, 14u)], 37483i, vec4<f32>(1636f, global0.b.a.x, 783f, var_0.x), u_input.c.x), Struct_1(global0.c.c.xy, 52012i, vec4<f32>(-1050f, 355f, var_0.x, -777f), 1i)), global0.c, vec3<bool>(true, false, true), Struct_1(global0.d.a, u_input.c.x, global0.b.c, u_input.c.x)).d, vec3<bool>(true, true, true), func_2(Struct_2(-42655i, global0.c, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 14u)], -20943i, vec4<f32>(global0.c.c.x, 1284f, var_0.x, global0.b.a.x), global0.a), global0.d), Struct_1(vec2<f32>(-194f, 363f), u_input.d.x, global0.c.c, u_input.d.x), vec3<bool>(true, false, false), Struct_1(vec2<f32>(-1211f, -639f), u_input.d.x, vec4<f32>(1000f, global0.b.a.x, 1498f, var_0.x), -13177i)).c).d, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1211f, -576f)), _wgslsmith_add_i32(global0.c.d, global0.c.b), func_2(Struct_2(u_input.c.x, global0.d, global0.d, Struct_1(vec2<f32>(global0.b.a.x, 503f), -45839i, vec4<f32>(650f, var_0.x, global0.c.a.x, global0.d.c.x), 2147483647i)), global0.c, vec3<bool>(false, false, true), Struct_1(vec2<f32>(253f, 2007f), 0i, global0.b.c, global0.d.b)).d.c, -1i), func_2(Struct_2(global0.b.b, Struct_1(vec2<f32>(var_0.x, var_0.x), -18845i, vec4<f32>(var_0.x, global0.d.a.x, global0.b.c.x, -1769f), global0.c.b), Struct_1(global1[_wgslsmith_index_u32(1u, 14u)], u_input.c.x, global0.b.c, global0.c.d), global0.d), global0.b, vec3<bool>(true, true, true), func_2(Struct_2(global0.b.d, global0.b, Struct_1(vec2<f32>(715f, -1086f), u_input.c.x, global0.b.c, -2147483647i), global0.b), global0.c, vec3<bool>(false, true, false), global0.b).d).c), global0.b, vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.c.c.wy), func_3(Struct_2(-2147483647i, Struct_1(vec2<f32>(-1431f, 969f), global0.c.d, vec4<f32>(var_0.x, var_0.x, var_0.x, global0.d.a.x), global0.c.d), Struct_1(global1[_wgslsmith_index_u32(2928u, 14u)], 0i, global0.d.c, u_input.d.x), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 1i)), global0.b, false).x, _wgslsmith_f_op_vec4_f32(-global0.d.c), _wgslsmith_dot_vec2_i32(vec2<i32>(12775i, -37680i) ^ vec2<i32>(global0.a, 55144i), -vec2<i32>(u_input.c.x, 9241i)))), global0.b, select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), !select(true, true, false)), select(vec3<bool>(false, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), true), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.d.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.b.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, var_0.x, -1550f, var_0.x))), vec4<f32>(_wgslsmith_div_f32(-1026f, -583f), -2098f, -165f, var_0.x))), u_input.c.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_sub_u32(u_input.b, u_input.a.x));
    let var_0 = ~0i;
    let var_1 = true;
    let var_2 = -(~vec3<i32>(select(global0.a, global0.c.d, false) & _wgslsmith_clamp_i32(1i, var_0, global0.d.b), -25575i, firstLeadingBit(~0i)));
    var var_3 = -22905i;
    var var_4 = func_2(Struct_2(func_3(func_1(0u), func_1(~0u).b, true).x, func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1700u, u_input.b, u_input.a.x) >> (vec3<u32>(u_input.b, 4294967295u, u_input.a.x) % vec3<u32>(32u)), ~u_input.a.xzw)).b, global0.d, func_1(u_input.b).c), func_2(func_1(firstLeadingBit(u_input.b) >> (40453u % 32u)), Struct_1(global0.c.a, func_4(func_2(Struct_2(var_2.x, global0.b, global0.c, Struct_1(global0.b.a, 42046i, vec4<f32>(global0.b.c.x, 707f, global0.d.a.x, global0.b.a.x), var_0)), Struct_1(global0.c.a, 27699i, vec4<f32>(global0.b.c.x, global0.d.c.x, -1424f, 287f), var_2.x), vec3<bool>(var_1, false, var_1), Struct_1(global0.d.a, -8893i, global0.d.c, u_input.d.x)), Struct_1(global0.b.c.zw, u_input.d.x, global0.b.c, -12373i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.c.x, -213f, 971f, -450f) + vec4<f32>(328f, 125f, -706f, global0.b.c.x))), _wgslsmith_f_op_vec4_f32(max(global0.b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.c.x, 252f, global0.c.a.x, -1000f)))), ~1i), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(global0.b.c.yz + global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 14u)]), _wgslsmith_sub_i32(-20727i, var_2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.c.x, global0.c.a.x, -1512f, 598f), vec4<f32>(global0.d.a.x, -1048f, 724f, global0.c.c.x), var_1)), _wgslsmith_f_op_vec4_f32(-global0.b.c), any(vec3<bool>(false, var_1, false)))), 51720i)).c, select(select(vec3<bool>(var_2.x > var_2.x, var_1 != var_1, false), select(!vec3<bool>(var_1, false, false), select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, var_1, true), var_1), !vec3<bool>(true, var_1, true)), (18302u >= u_input.a.x) || false), !select(vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, true), vec3<bool>(false, var_1, true)), true), any(vec4<bool>(!var_1, var_1, true, true))), func_1(countOneBits(_wgslsmith_add_u32(66400u, u_input.a.x)) ^ _wgslsmith_dot_vec4_u32(abs(u_input.a), u_input.a)).c);
    let var_5 = Struct_2(-42058i, func_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b | u_input.b, u_input.b), 26166u)).b, func_1(firstTrailingBit(u_input.b)).d, global0.c);
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(0u, abs(u_input.b))), countOneBits(firstLeadingBit(abs(u_input.a.wy) << ((vec2<u32>(5612u, 0u) ^ u_input.a.wy) % vec2<u32>(32u)))), ~vec2<i32>(-(var_2.x << (36922u % 32u)), _wgslsmith_div_i32(16344i, _wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(-32652i, -2147483647i)))));
}

