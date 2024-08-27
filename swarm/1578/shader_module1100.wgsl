struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: i32 = -59888i;

var<private> global3: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1479f, 504f, -908f, 264f), vec4<f32>(966f, -1249f, 621f, 343f), vec4<f32>(-491f, 1522f, 1177f, -835f), vec4<f32>(853f, 725f, 898f, 1000f), vec4<f32>(1542f, -709f, 386f, 160f), vec4<f32>(-1000f, 1680f, 1516f, 3055f), vec4<f32>(-415f, 145f, 1305f, 466f), vec4<f32>(2184f, -1000f, 2479f, -401f), vec4<f32>(1364f, -1068f, -867f, 593f), vec4<f32>(481f, 1000f, 517f, -725f), vec4<f32>(-976f, -710f, -661f, -1388f), vec4<f32>(368f, -857f, -915f, -795f), vec4<f32>(677f, -458f, -246f, 224f), vec4<f32>(-493f, 116f, -356f, 232f));

var<private> global4: array<i32, 9>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    global3 = array<vec4<f32>, 14>();
    global3 = array<vec4<f32>, 14>();
    var var_0 = arg_1.b.x;
    global0 = i32(-1i) * -arg_1.a.x;
    var_0 = 699f;
    return ~firstTrailingBit(global4[_wgslsmith_index_u32(u_input.c, 9u)]);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global3 = array<vec4<f32>, 14>();
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_mod_vec4_i32(-(~u_input.a & firstLeadingBit(abs(vec4<i32>(0i, u_input.a.x, 21332i, arg_1)))), vec4<i32>(abs(u_input.a.x) | min(_wgslsmith_mult_i32(arg_1, 12566i), -1499i), u_input.a.x, _wgslsmith_mult_i32(2147483647i, countOneBits(min(8443i, u_input.a.x))), _wgslsmith_mult_i32(3332i, 0i)));
    let var_2 = arg_0.b.x;
    let var_3 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(func_3(vec4<f32>(911f, var_2, 247f, var_2), Struct_1(vec3<i32>(-2147483647i, -32542i, -25552i), arg_0.b, arg_0.c, u_input.b, arg_0.c.x)), arg_0.a.x, i32(-1i) * -2147483647i), var_1.yxz)) & -abs(~u_input.a.zxx >> ((arg_0.c | vec3<u32>(13926u, arg_0.e, 27017u)) % vec3<u32>(32u)));
    return var_1.x ^ -_wgslsmith_sub_i32(-16029i, ~(-17603i));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global2 = _wgslsmith_mod_i32(u_input.a.x >> (u_input.b % 32u), i32(-1i) * -5122i);
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, u_input.c, 0u)))));
    global3 = array<vec4<f32>, 14>();
    var var_1 = Struct_1(firstLeadingBit(u_input.a.yyx), arg_0.wwz, vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, var_0)), ~vec3<u32>(u_input.b, 0u, var_0)), min(~0u, ~1u), u_input.b) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_0), u_input.c), abs(firstLeadingBit(u_input.b)), var_0) % vec3<u32>(32u)), var_0, var_0);
    let var_2 = Struct_1(firstLeadingBit(~(~var_1.a)) ^ vec3<i32>(func_4(Struct_1(var_1.a, vec3<f32>(arg_0.x, 1021f, var_1.b.x), var_1.c, 6489u, var_0), func_3(global3[_wgslsmith_index_u32(u_input.c, 14u)], Struct_1(vec3<i32>(1i, global4[_wgslsmith_index_u32(10728u, 9u)], u_input.a.x), vec3<f32>(arg_0.x, arg_0.x, -604f), var_1.c, 0u, var_1.c.x))), _wgslsmith_dot_vec3_i32(-var_1.a, var_1.a), abs(global4[_wgslsmith_index_u32(firstTrailingBit(var_1.d), 9u)])), _wgslsmith_f_op_vec3_f32(arg_0.wzx + vec3<f32>(arg_0.x, -319f, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1549f))))), ~(~reverseBits(vec3<u32>(u_input.c, 12737u, 1u)) | _wgslsmith_mult_vec3_u32(var_1.c, ~var_1.c)), ~(var_0 | (min(u_input.c, 100777u) & min(u_input.b, 49122u))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1.c.x), vec2<u32>(4294967295u, 1u)), 1u), ~vec4<u32>(19593u, 12796u, u_input.b, 67003u) ^ max(vec4<u32>(var_1.c.x, var_0, var_1.c.x, 1u), vec4<u32>(u_input.c, 115045u, 59802u, u_input.c)))));
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(firstTrailingBit(~arg_1.e), 14u)], _wgslsmith_f_op_vec4_f32(ceil(global3[_wgslsmith_index_u32(~0u, 14u)]))))));
    var var_1 = 1i;
    var var_2 = Struct_1(vec3<i32>(abs(var_0.a.x), _wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(arg_1.a.x, -5300i, -2147483647i, arg_1.a.x), true), vec4<i32>(-1i, 6712i, global4[_wgslsmith_index_u32(4294967295u, 9u)], 0i) << (vec4<u32>(4294967295u, 10609u, arg_1.d, 0u) % vec4<u32>(32u))) ^ abs(reverseBits(36323i)), ~(~arg_1.a.x)), func_2(vec4<f32>(_wgslsmith_f_op_f32(round(-800f)), arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(-arg_1.b.x))))).b, abs(firstLeadingBit(arg_2.c)), _wgslsmith_dot_vec2_u32(max(select(vec2<u32>(76362u, 1u), var_0.c.yx, vec2<bool>(true, arg_0)), ~var_0.c.zx) ^ _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.x, arg_2.d), arg_2.c.zz), arg_1.c.zx), var_0.c.yy), arg_1.e);
    global4 = array<i32, 9>();
    global2 = var_2.a.x;
    return func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(243f, -770f, arg_2.b.x, var_0.b.x) + _wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(arg_2.d, 14u)])))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = -(~(~(-global4[_wgslsmith_index_u32(56119u, 9u)])) | 24160i);
    global0 = _wgslsmith_sub_i32(-max(47873i ^ u_input.a.x, 16148i) & countOneBits(max(countOneBits(0i), func_2(global3[_wgslsmith_index_u32(arg_1.c.x, 14u)]).a.x)), global4[_wgslsmith_index_u32(1u, 9u)]);
    let var_0 = Struct_1(vec3<i32>(arg_0.a.x, u_input.a.x, (_wgslsmith_mod_i32(-6036i, -2147483647i) ^ arg_1.a.x) | ~firstLeadingBit(-2097i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)), countOneBits(reverseBits(_wgslsmith_mod_vec3_u32(~arg_1.c, ~arg_0.c))), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(18994u, 2506u, arg_0.e, 4294967295u)), ~vec4<u32>(u_input.b, 65350u, arg_0.e, arg_0.e)), ~(~vec4<u32>(6960u, arg_0.c.x, arg_0.d, arg_1.e))));
    var var_1 = Struct_1(vec3<i32>(arg_0.a.x, ~11613i, -(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 13800u), 9u)] << (1u % 32u))), _wgslsmith_f_op_vec3_f32(sign(var_0.b)), ~(~_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_0.c), firstTrailingBit(var_0.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(~min(arg_0.d, arg_0.c.x), ~(~var_0.e), ~var_0.e, _wgslsmith_mult_u32(reverseBits(arg_0.d), var_0.c.x)), reverseBits(global1[_wgslsmith_index_u32(arg_0.e >> (_wgslsmith_sub_u32(25719u, var_0.e) % 32u), 14u)])), _wgslsmith_dot_vec2_u32(arg_0.c.zy, ~select(vec2<u32>(var_0.d, arg_1.e), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d, arg_1.e), vec2<u32>(arg_0.d, 36497u)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_2 = arg_1;
    return func_5(all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), var_2, func_5(!all(vec4<bool>(true, true, true, true)), func_5(true, func_5(true, var_0, arg_0, _wgslsmith_mod_vec4_i32(u_input.a, u_input.a)), Struct_1(arg_1.a ^ var_0.a, var_2.b, func_2(vec4<f32>(1040f, -1310f, -991f, -158f)).c, _wgslsmith_sub_u32(var_0.c.x, 1u), ~6306u), abs(vec4<i32>(arg_1.a.x, var_0.a.x, -1i, u_input.a.x) & vec4<i32>(-1i, -1i, var_0.a.x, arg_1.a.x))), var_0, select(vec4<i32>(var_2.a.x >> (u_input.b % 32u), 1i, var_1.a.x, ~var_0.a.x), u_input.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), true))), _wgslsmith_sub_vec4_i32(vec4<i32>(-arg_1.a.x ^ 0i, max(1i, 23812i), i32(-1i) * -7077i, -1i), vec4<i32>(-1i) * -u_input.a));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec3<f32> {
    global1 = array<vec4<u32>, 14>();
    var var_0 = arg_0;
    global0 = abs(1i);
    var var_1 = _wgslsmith_dot_vec3_u32(func_2(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f * var_0.b.x)), _wgslsmith_f_op_f32(sign(var_0.b.x)))).c, ~(~select(var_0.c, var_0.c, vec3<bool>(false, true, true)) << (~vec3<u32>(37308u, arg_0.e, 10955u) % vec3<u32>(32u))));
    let var_2 = vec3<bool>(true, true, true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.b)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(~abs(firstLeadingBit(-u_input.a.wwx)), _wgslsmith_f_op_vec3_f32(func_7(func_6(Struct_1(abs(vec3<i32>(2680i, -60505i, -17772i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-512f, 332f, 693f), vec3<f32>(1000f, -735f, -570f), vec3<bool>(true, false, false))), ~vec3<u32>(23279u, u_input.b, u_input.c), 0u, ~u_input.c), func_5(select(true, false, true), Struct_1(vec3<i32>(arg_0.x, -2147483647i, arg_0.x), vec3<f32>(-540f, -265f, 597f), vec3<u32>(22527u, u_input.b, u_input.c), 16243u, 43328u), func_2(vec4<f32>(1361f, -1279f, -1055f, 788f)), u_input.a)), 4294967295u, ~vec4<u32>(1u, ~1u, 1u, 73476u << (u_input.c % 32u)))), countOneBits(~firstLeadingBit(vec3<u32>(104889u, 4294967295u, 1u) ^ vec3<u32>(u_input.c, 5142u, u_input.b))), reverseBits(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(42389u, u_input.c, u_input.c, u_input.b), vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u))), global1[_wgslsmith_index_u32(~countOneBits(u_input.b), 14u)])), ~min(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, 50618u))));
    global1 = array<vec4<u32>, 14>();
    global2 = ~0i;
    global3 = array<vec4<f32>, 14>();
    global0 = ~abs(-func_4(var_0, _wgslsmith_mod_i32(9128i, global4[_wgslsmith_index_u32(var_0.e, 9u)])));
    return Struct_1(vec3<i32>(_wgslsmith_add_i32(arg_0.x, var_0.a.x), ~((global4[_wgslsmith_index_u32(30692u, 9u)] << (32743u % 32u)) >> (48211u % 32u)), 66659i), var_0.b, ~var_0.c, var_0.e, ~(~_wgslsmith_mod_u32(u_input.b, func_6(var_0, Struct_1(u_input.a.yzz, vec3<f32>(-446f, var_0.b.x, -1597f), vec3<u32>(97409u, var_0.d, 21972u), 29759u, var_0.c.x)).c.x)));
}

fn func_8(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global2 = arg_1.a.x;
    global0 = select(max(71965i, ~(-(~arg_1.a.x))), _wgslsmith_div_i32(arg_1.a.x, global4[_wgslsmith_index_u32(arg_1.e, 9u)]), !arg_0.x);
    let var_0 = 230f;
    global1 = array<vec4<u32>, 14>();
    let var_1 = func_5(select(any(vec2<bool>(true, true)), !any(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), true), Struct_1(vec3<i32>(func_4(func_1(arg_1.a), _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), min(_wgslsmith_mult_i32(1i, global4[_wgslsmith_index_u32(arg_2.x, 9u)]), global4[_wgslsmith_index_u32(u_input.c, 9u)]), func_6(arg_1, Struct_1(u_input.a.xzz, vec3<f32>(var_0, 136f, var_0), arg_2, 4294967295u, arg_1.e)).a.x), arg_1.b, vec3<u32>(_wgslsmith_mult_u32(u_input.b, 99821u) ^ ~arg_1.d, abs(~arg_1.d), _wgslsmith_add_u32(4154u | arg_2.x, abs(103158u))), arg_1.e, _wgslsmith_dot_vec2_u32(func_2(vec4<f32>(arg_1.b.x, var_0, var_0, arg_1.b.x)).c.xy, vec2<u32>(32442u, ~arg_2.x))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(arg_2.x, 9u)]), vec2<i32>(global4[_wgslsmith_index_u32(u_input.c, 9u)], 0i) >> (arg_2.zy % vec2<u32>(32u))), func_6(Struct_1(u_input.a.xzx, vec3<f32>(3031f, -1000f, -413f), arg_2, 50080u, 1u), arg_1).a.x, -1i), arg_1.b, vec3<u32>(~(~1u), u_input.c, ~42167u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(~0u, 14u)], vec4<u32>(0u, arg_2.x, arg_1.e, u_input.c)), global1[_wgslsmith_index_u32(0u, 14u)]), u_input.b), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-1i, arg_1.a.x, -1i, ~arg_1.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-1i, arg_1.a.x, 0i, -5000i)) & vec4<i32>(-1i, -2147483647i, global4[_wgslsmith_index_u32(arg_2.x, 9u)], u_input.a.x), _wgslsmith_div_vec4_i32(u_input.a >> (global1[_wgslsmith_index_u32(38325u, 14u)] % vec4<u32>(32u)), abs(vec4<i32>(-44064i, global4[_wgslsmith_index_u32(4294967295u, 9u)], -18610i, -5217i)))), ~u_input.a));
    return func_1(_wgslsmith_mod_vec3_i32(select(~(~vec3<i32>(-63854i, u_input.a.x, 6880i)), arg_1.a, vec3<bool>(global4[_wgslsmith_index_u32(0u, 9u)] >= -2147483647i, select(arg_0.x, arg_0.x, true), any(vec2<bool>(arg_0.x, arg_0.x)))), var_1.a));
}

fn func_9(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = arg_2.c;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(sign(arg_1.b.x))), arg_0.x);
    let var_2 = select(vec3<bool>(false, all(!select(vec3<bool>(true, true, arg_3.x), arg_3, arg_3.x)), any(vec3<bool>(-141f <= arg_2.b.x, all(vec3<bool>(true, arg_3.x, true)), false))), select(select(!select(arg_3, arg_3, vec3<bool>(arg_3.x, true, true)), arg_3, arg_3.x), select(select(arg_3, vec3<bool>(true, arg_3.x, arg_3.x), arg_3), vec3<bool>(true, true, true), arg_3), ((arg_1.c.x & var_0.x) & _wgslsmith_mult_u32(u_input.b, 13579u)) < (1u & ~u_input.b)), select(vec3<bool>(!arg_3.x, !arg_3.x, arg_3.x), select(select(select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(true, arg_3.x, arg_3.x), arg_3), select(vec3<bool>(true, true, arg_3.x), vec3<bool>(false, false, false), arg_3), all(arg_3)), vec3<bool>(arg_3.x, arg_3.x, true), !(!arg_3)), !arg_3.x));
    var var_3 = 18071u;
    let var_4 = all(arg_3);
    return _wgslsmith_f_op_vec3_f32(arg_1.b * arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(-2147483647i, -1i, 2147483647i) & u_input.a.ywy, _wgslsmith_f_op_vec3_f32(func_9(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-2559f, -1089f, true)), _wgslsmith_f_op_f32(ceil(1379f)), _wgslsmith_f_op_f32(1000f * -1000f)), vec3<f32>(_wgslsmith_div_f32(921f, 1000f), _wgslsmith_f_op_f32(select(-1291f, 753f, false)), 782f)), func_8(select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_1(vec3<i32>(global4[_wgslsmith_index_u32(1u, 9u)], u_input.a.x, global4[_wgslsmith_index_u32(u_input.b, 9u)])), ~vec3<u32>(u_input.c, 4294967295u, 84318u)), func_1(vec3<i32>(1892i, global4[_wgslsmith_index_u32(1u, 9u)], u_input.a.x | -2147483647i)), select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), false))), func_2(vec4<f32>(-1324f, _wgslsmith_f_op_f32(f32(-1f) * -1183f), -401f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(481f + 1394f))))).c, 51876u, firstTrailingBit(u_input.b));
    global3 = array<vec4<f32>, 14>();
    let var_1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a.wzx, max(_wgslsmith_sub_vec3_i32(u_input.a.yyz, vec3<i32>(var_0.a.x, -1i, global4[_wgslsmith_index_u32(u_input.c, 9u)])) >> (vec3<u32>(u_input.b, 2698u, 39669u) % vec3<u32>(32u)), select(var_0.a, var_0.a, true) | ~vec3<i32>(global4[_wgslsmith_index_u32(u_input.c, 9u)], -1i, 18927i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))) - _wgslsmith_f_op_f32(-var_0.b.x))));
    let var_3 = max(var_0.c.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(min(11133u, var_0.e), 21953u), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_0.d, var_0.c.x)), var_0.c.zz & var_0.c.zx)));
    global4 = array<i32, 9>();
    let var_4 = func_8(vec2<bool>(true & all(vec4<bool>(false, false, true, true)), func_6(Struct_1(var_0.a, var_0.b, var_0.c, u_input.b, var_0.c.x), func_2(global3[_wgslsmith_index_u32(1u, 14u)])).e != countOneBits(23102u)), Struct_1(vec3<i32>(func_5(true, Struct_1(vec3<i32>(1i, u_input.a.x, 8163i), vec3<f32>(-998f, -1477f, -1690f), vec3<u32>(var_3.x, var_0.d, 13177u), 24629u, var_0.d), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, global4[_wgslsmith_index_u32(var_3.x, 9u)]), var_0.b, vec3<u32>(var_0.d, u_input.b, u_input.b), var_3.x, 4294967295u), u_input.a).a.x & func_4(Struct_1(var_0.a, vec3<f32>(var_0.b.x, 437f, var_0.b.x), vec3<u32>(u_input.b, 7691u, var_3.x), 10118u, var_0.e), 3726i), -u_input.a.x >> (0u % 32u), var_1 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 10927u), var_3) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-300f - var_2), var_0.b.x, _wgslsmith_f_op_f32(max(var_2, -671f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_2), -613f, var_2)), countOneBits(~var_0.c) >> (func_5(any(vec2<bool>(true, true)), Struct_1(var_0.a, var_0.b, vec3<u32>(u_input.c, u_input.c, var_3.x), var_3.x, 4294967295u), Struct_1(vec3<i32>(global4[_wgslsmith_index_u32(var_3.x, 9u)], var_1, u_input.a.x), vec3<f32>(var_2, var_0.b.x, var_2), vec3<u32>(1u, var_3.x, var_0.e), 4294967295u, var_3.x), select(vec4<i32>(0i, var_1, global4[_wgslsmith_index_u32(var_3.x, 9u)], 0i), vec4<i32>(global4[_wgslsmith_index_u32(var_0.d, 9u)], 15428i, var_0.a.x, global4[_wgslsmith_index_u32(var_0.c.x, 9u)]), true)).c % vec3<u32>(32u)), func_5(firstLeadingBit(var_3.x) != ~var_3.x, func_6(func_2(vec4<f32>(var_0.b.x, -1422f, var_2, -1521f)), func_6(Struct_1(var_0.a, vec3<f32>(var_0.b.x, -1164f, var_2), vec3<u32>(var_3.x, u_input.b, 4294967295u), 0u, var_3.x), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), var_0.b, vec3<u32>(var_0.c.x, var_0.e, 0u), 1u, var_3.x))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-14892i, var_0.a.x, 0i), var_0.a), var_0.b, firstTrailingBit(vec3<u32>(1u, 50660u, var_3.x)), var_3.x, u_input.c), vec4<i32>(-65611i, -15936i, 1i, 0i)).e, u_input.b), _wgslsmith_add_vec3_u32(~var_0.c, ~var_0.c));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

