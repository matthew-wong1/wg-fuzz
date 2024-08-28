struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec3<i32>, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_add_vec2_u32(reverseBits(~u_input.b.zz) | ~(u_input.b.xx | ~vec2<u32>(u_input.b.x, u_input.a.x)), _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 1u))) & ((vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(25362u, u_input.b.x) % vec2<u32>(32u))) | u_input.b.yx), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.b.x), ~vec2<u32>(u_input.b.x, 4294967295u)), vec2<u32>(max(u_input.b.x, u_input.b.x), 4294967295u))));
    var var_1 = Struct_2((-countOneBits(vec4<i32>(-2147483647i, arg_0.a.x, arg_0.a.x, arg_0.a.x)) & arg_0.a) | firstTrailingBit(vec4<i32>(min(-68117i, u_input.c), ~arg_0.a.x, i32(-1i) * -2147483647i, arg_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), arg_0.c, _wgslsmith_f_op_f32(floor(arg_0.c))), _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))));
    var var_2 = true || all(select(!(!vec3<bool>(arg_0.d, arg_0.d, false)), select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.d, var_1.d, arg_0.d), !vec3<bool>(false, false, arg_0.d)), var_1.d));
    global2 = array<vec3<i32>, 31>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-579f + var_1.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_div_f32(arg_0.e.x, -731f))));
    return 1000f;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2652f + arg_0.e.x) + -115f))))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 31u)];
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(~u_input.b, _wgslsmith_sub_vec3_u32(abs(u_input.a), ~vec3<u32>(1u, var_1.c, 0u)), !all(vec2<bool>(arg_0.d, true))), ~reverseBits(vec3<u32>(0u, var_1.c, 72518u))), abs(select(_wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), u_input.b, false))), 15u)];
    global1 = array<Struct_1, 31>();
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(873f, -1247f)), u_input.c, firstLeadingBit(_wgslsmith_mod_u32(select(~18739u, countOneBits(1u), false), 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(453f, 2188f, -2005f, 1000f), vec4<bool>(arg_0.d, arg_0.d, false, false))))) - _wgslsmith_f_op_vec4_f32(-var_1.d)));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 1443f, -165f)));
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    var var_0 = firstLeadingBit(firstTrailingBit(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(34994i, 16449i)))) >> (_wgslsmith_div_vec2_u32(u_input.b.yx, _wgslsmith_mult_vec2_u32(u_input.a.xz, u_input.a.xx) >> (u_input.a.xz % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = Struct_2(abs(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -6170i, u_input.c, u_input.c), vec4<i32>(var_0.x, -54525i, u_input.c, -1588i) << (vec4<u32>(0u, 50279u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<i32>(1i, 0i, 1i, -1i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), vec3<f32>(902f, -1297f, -109f), -681f, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -794f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(-1i, u_input.c, u_input.c, 0i), vec3<f32>(1389f, 534f, -152f), 236f, true, vec2<f32>(-2111f, 751f)))), _wgslsmith_f_op_f32(f32(-1f) * -214f), -210f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, -824f, 1524f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -214f, 333f))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(1f)))), any(vec4<bool>(false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1203f, -1434f), vec2<f32>(937f, 723f), false))), vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(1139f))))));
    let var_2 = Struct_2(var_1.a, vec3<f32>(335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-897f + var_1.c) + _wgslsmith_f_op_f32(var_1.c + var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f - var_1.c)) - var_1.e.x)), _wgslsmith_f_op_f32(round(-499f)), firstLeadingBit(_wgslsmith_clamp_i32(-17783i, u_input.c, var_1.a.x) >> (116523u % 32u)) == _wgslsmith_div_i32(8818i, -31492i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-335f)) - _wgslsmith_f_op_f32(var_1.e.x - var_1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1067f - -390f))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1113f)), 963f));
}

fn func_5(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    let var_0 = all(vec3<bool>(true, false, !all(vec3<bool>(true, true, true))));
    var var_1 = vec2<bool>(!(!(!(1u < u_input.a.x))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-638f, arg_0, true)), _wgslsmith_f_op_f32(-arg_0), true)))) != -132f);
    let var_2 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(u_input.b, abs(~vec3<u32>(65787u, 45965u, 1u)))), 15u)];
    let var_3 = !vec4<bool>(any(!vec3<bool>(var_0, var_0, false)), var_1.x, false || !(u_input.c <= u_input.c), u_input.c <= abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -1i, 32144i), vec4<i32>(var_2.b, -18294i, u_input.c, -1i))));
    return Struct_1(-250f, 30942i, 16092u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1719f, arg_0, _wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -798f, 221f, arg_0) + var_2.d))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global2 = array<vec3<i32>, 31>();
    let var_0 = !arg_2.x & !arg_2.x;
    var var_1 = global1[_wgslsmith_index_u32(max(arg_0.c, 28020u), 31u)];
    global1 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    return Struct_1(var_1.a, ~reverseBits(abs(6180i >> (u_input.b.x % 32u))), ~reverseBits(select(17854u, arg_1.c | u_input.a.x, true)), vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f))), 169f, var_1.d.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    let var_0 = func_6(global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 31u)], func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(func_2()))))), select(vec4<bool>(false, false, true, any(vec3<bool>(false, false, true))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, arg_1 > u_input.a.x), true)));
    var var_1 = any(vec2<bool>(var_0.b >= _wgslsmith_sub_i32(37025i, 1i & arg_0), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false))));
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - -411f) + _wgslsmith_f_op_f32(exp2(var_0.a)))), firstLeadingBit(-(var_0.b >> (_wgslsmith_mult_u32(var_0.c, 4294967295u) % 32u))), ~func_5(-2192f).c, var_0.d);
    global2 = array<vec3<i32>, 31>();
    return var_0.d.x;
}

fn func_7(arg_0: f32) -> Struct_1 {
    global2 = array<vec3<i32>, 31>();
    global2 = array<vec3<i32>, 31>();
    var var_0 = min(-abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, u_input.c, u_input.c, 0i), ~vec4<i32>(2147483647i, u_input.c, 0i, u_input.c))), ~abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, 9843i, 10846i, 1i), vec4<i32>(u_input.c, 17080i, 1i, -1i) >> (vec4<u32>(u_input.a.x, u_input.b.x, 0u, 1u) % vec4<u32>(32u)))));
    return Struct_1(arg_0, -2147483647i, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u << (u_input.a.x % 32u), ~38873u), 4294967295u & countOneBits(u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -2243f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<i32>(21836i, -12560i, var_0.x, -23813i), vec3<f32>(-2230f, 942f, arg_0), 248f, true, vec2<f32>(1544f, -1825f)), vec3<f32>(arg_0, 356f, arg_0))).x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1602f, arg_0) - vec4<f32>(-502f, arg_0, -1789f, 1225f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 331f, arg_0, arg_0))))), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1725f;
    global0 = array<Struct_1, 15>();
    global2 = array<vec3<i32>, 31>();
    let var_1 = min(countOneBits(select(vec4<i32>(reverseBits(u_input.c), _wgslsmith_sub_i32(29581i, 0i), -32322i, -35533i), ~min(vec4<i32>(-15123i, 1i, u_input.c, u_input.c), vec4<i32>(16156i, 0i, u_input.c, u_input.c)), true)), vec4<i32>(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, -56602i, 2897i, u_input.c)), vec4<i32>(39253i, u_input.c, u_input.c, -2147483647i) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, 8557i)), vec2<i32>(u_input.c, u_input.c)), 2147483647i, -2147483647i));
    let var_2 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(func_1(-u_input.c, 36248u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, var_0, 1000f) * vec3<f32>(var_0, 142f, 411f))))) - var_0));
    global1 = array<Struct_1, 31>();
    var var_3 = Struct_1(224f, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-16101i, var_2.b), 7484i, -1i, u_input.c)), -firstTrailingBit(_wgslsmith_div_vec4_i32(var_1, vec4<i32>(-1i, 9193i, u_input.c, -29191i)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, var_2.c, 1u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(50108u, 13446u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, var_2.c), vec4<u32>(var_2.c, u_input.a.x, var_2.c, u_input.a.x))), ~(~firstLeadingBit(vec4<u32>(var_2.c, 18201u, var_2.c, 0u)))), var_2.d);
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~var_1, reverseBits(~(var_1 >> (vec4<u32>(0u, u_input.b.x, 44420u, 13795u) % vec4<u32>(32u))))));
}

