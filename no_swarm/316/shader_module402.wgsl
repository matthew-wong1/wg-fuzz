struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1120f, -354f, 831f), vec3<f32>(109f, -529f, -292f), vec3<f32>(728f, 223f, -299f));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(!(!(!vec2<bool>(false, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1363f, 107f))), select(-vec3<i32>(u_input.b, u_input.b, arg_1.x) ^ vec3<i32>(u_input.b, arg_1.x, -82007i), vec3<i32>(u_input.b >> (arg_0.x % 32u), -2147483647i, 0i), any(!vec4<bool>(false, global2.x, global2.x, false))), !select(vec2<bool>(true, true), vec2<bool>(global2.x, false), true), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-48238i, 1i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, -43562i)), select(-vec3<i32>(arg_1.x, arg_1.x, 35841i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 0i), vec3<i32>(2147483647i, arg_1.x, 28139i)), !vec3<bool>(global2.x, true, global2.x)))), _wgslsmith_div_vec3_i32(abs(reverseBits(vec3<i32>(u_input.b, 2147483647i, 2336i) >> (u_input.a % vec3<u32>(32u)))), vec3<i32>(u_input.b ^ _wgslsmith_mod_i32(-2147483647i, arg_1.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-11408i, -16054i, u_input.b), -2147483647i), _wgslsmith_mod_i32(arg_1.x, -2147483647i))));
    global1 = array<vec3<f32>, 3>();
    global1 = array<vec3<f32>, 3>();
    global0 = array<Struct_4, 24>();
    global1 = array<vec3<f32>, 3>();
    return max(var_0.a.c, select(vec3<i32>(countOneBits(1i), -(~(-10772i)), -1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0.b.x, arg_1.x), vec4<i32>(var_0.b.x, -40826i, arg_1.x, 1i)), ~(-2147483647i), -2147483647i) & firstTrailingBit(var_0.a.e), global2.x));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(arg_2.a.a, reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, arg_2.a.b.x, -19240i), vec3<i32>(-1i, arg_2.c.c.x, -2147483647i)), func_3(vec2<u32>(arg_2.b.x, arg_2.b.x), vec2<i32>(arg_2.e, -2147483647i), arg_2.b.x)))), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a.x >> (u_input.a.x % 32u))), vec2<u32>(~1u, u_input.a.x)), arg_2.d.a, Struct_3(Struct_1(!vec2<bool>(true, global2.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.b), arg_2.c.b), ~arg_2.a.b, arg_1, ~countOneBits(arg_2.d.a.e))), -firstLeadingBit(-(-1i ^ arg_2.d.a.e.x)));
    let var_1 = arg_2.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * 968f), _wgslsmith_f_op_f32(arg_0 - arg_0)))))));
    var var_3 = Struct_4(Struct_2(arg_2.a.a, ~abs(vec3<i32>(arg_2.c.e.x, var_0.c.e.x, arg_2.a.b.x))), u_input.a.zy, var_1.a, var_0.d, -189i);
    var var_4 = var_0.d;
    return Struct_2(Struct_1(select(vec2<bool>(var_1.a.a.x, !global2.x), !(!arg_2.a.a.d), !vec2<bool>(arg_2.c.a.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, -286f) * vec2<f32>(-1899f, 575f)))) + vec2<f32>(var_2, _wgslsmith_f_op_f32(trunc(-1096f)))), reverseBits(vec3<i32>(func_3(var_3.b, vec2<i32>(-4559i, var_4.a.c.x), arg_2.b.x).x, -37641i | var_1.a.e.x, _wgslsmith_clamp_i32(-2147483647i, arg_2.e, arg_2.e))), vec2<bool>(13873u == ~var_3.b.x, var_0.d.a.a.x), var_3.d.a.e), (var_3.c.c >> (((u_input.a & u_input.a) >> (countOneBits(vec3<u32>(var_0.b.x, 40497u, var_3.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u))) | var_1.a.e);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = vec3<u32>(1u, ~_wgslsmith_mult_u32(arg_2.x & _wgslsmith_sub_u32(u_input.a.x, 12283u), 15390u), _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(arg_2.x, arg_2.x << (4294967295u % 32u))), ~((u_input.a.x << (29036u % 32u)) | arg_2.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~var_0.x, 39381u, arg_2.x >> (0u % 32u), arg_2.x) << (vec4<u32>(~_wgslsmith_mod_u32(arg_2.x, 8917u), 1u, ~(~arg_2.x), var_0.x) % vec4<u32>(32u)), ~(~min(vec4<u32>(5463u, var_0.x, 4294967295u, var_0.x), vec4<u32>(arg_2.x, 18944u, 4294967295u, u_input.a.x))));
    var var_2 = vec4<u32>(abs(firstTrailingBit(0u)) << (4294967295u % 32u), max(10950u, u_input.a.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, 5581u, 12136u)), vec3<u32>(arg_2.x, var_0.x, _wgslsmith_clamp_u32(reverseBits(arg_2.x), 4294967295u ^ arg_2.x, 28490u))), ~min(1u, 1u) << (_wgslsmith_clamp_u32(var_0.x, _wgslsmith_add_u32(1u, 45791u), ~42491u ^ _wgslsmith_mod_u32(var_0.x, 73216u)) % 32u));
    global1 = array<vec3<f32>, 3>();
    let var_3 = 1417f;
    return Struct_4(Struct_2(func_2(-642f, arg_3, Struct_4(func_2(var_3, vec2<bool>(arg_3.x, true), Struct_4(Struct_2(arg_0.a, vec3<i32>(u_input.b, -18259i, arg_0.a.c.x)), vec2<u32>(arg_2.x, 99756u), arg_0.a, Struct_3(arg_0.a), arg_0.b.x)), select(vec2<u32>(0u, var_2.x), arg_2, arg_0.a.d.x), arg_0.a, Struct_3(arg_0.a), abs(arg_0.b.x))).a, arg_0.a.c), _wgslsmith_add_vec2_u32(~vec2<u32>(~var_0.x, _wgslsmith_clamp_u32(25601u, 0u, 0u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, var_2.x), vec2<u32>(var_0.x, u_input.a.x)) | vec2<u32>(~u_input.a.x, 21607u)), Struct_1(func_2(101f, vec2<bool>(arg_0.a.b.x == 1014f, !global2.x), Struct_4(Struct_2(Struct_1(vec2<bool>(arg_1, arg_0.a.a.x), arg_0.a.b, arg_0.a.c, arg_3, vec3<i32>(-31747i, arg_0.b.x, -35086i)), vec3<i32>(8274i, 2147483647i, -53362i)), ~var_2.zx, func_2(var_3, arg_0.a.a, global0[_wgslsmith_index_u32(4294967295u, 24u)]).a, Struct_3(arg_0.a), 2147483647i)).a.a, vec2<f32>(var_3, arg_0.a.b.x), -arg_0.b, select(select(vec2<bool>(true, false), arg_3, vec2<bool>(arg_1, false)), arg_0.a.d, arg_1), arg_0.a.c), Struct_3(Struct_1(vec2<bool>(true, false), _wgslsmith_div_vec2_f32(arg_0.a.b, _wgslsmith_f_op_vec2_f32(-arg_0.a.b)), vec3<i32>(~(-2147483647i), 26546i, min(-47436i, 1i)), func_2(_wgslsmith_f_op_f32(abs(775f)), select(arg_0.a.a, vec2<bool>(true, false), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(0u, 24u)]).a.d, arg_0.b)), -65035i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    var var_0 = vec4<bool>(all(arg_1.c.a), arg_1.c.b.x == _wgslsmith_f_op_f32(f32(-1f) * -1268f), false, select(true, !all(select(vec4<bool>(false, arg_2.a.d.x, arg_1.c.d.x, arg_1.c.a.x), vec4<bool>(global2.x, arg_2.a.a.x, arg_1.a.a.d.x, true), vec4<bool>(arg_2.a.a.x, global2.x, arg_1.a.a.a.x, false))), global2.x || (func_2(-509f, arg_2.a.d, global0[_wgslsmith_index_u32(arg_3, 24u)]).a.a.x && arg_2.a.d.x)));
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) - _wgslsmith_f_op_f32(-arg_2.a.b.x)), vec2<bool>(true, any(select(select(vec3<bool>(global2.x, true, false), vec3<bool>(arg_1.a.a.d.x, arg_1.a.a.a.x, arg_2.a.a.x), var_0.yxx), select(var_0.zxz, vec3<bool>(var_0.x, false, arg_2.a.d.x), vec3<bool>(arg_2.a.d.x, true, arg_2.a.a.x)), !arg_1.d.a.a.x))), Struct_4(arg_1.a, vec2<u32>(0u, ~88573u) ^ (select(u_input.a.yy, vec2<u32>(0u, 1824u), arg_2.a.d.x) | arg_1.b), func_2(_wgslsmith_f_op_f32(f32(-1f) * -427f), !func_4(arg_1.a, true, u_input.a.yy, vec2<bool>(false, true)).a.a.d, global0[_wgslsmith_index_u32(~(arg_1.b.x >> (arg_3 % 32u)), 24u)]).a, func_4(func_4(Struct_2(arg_1.c, arg_2.a.c), true, reverseBits(vec2<u32>(arg_3, arg_1.b.x)), vec2<bool>(true, global2.x)).a, any(vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(arg_1.b, _wgslsmith_div_vec2_u32(arg_1.b, vec2<u32>(arg_3, arg_1.b.x)), func_4(arg_1.a, var_0.x, u_input.a.xx, vec2<bool>(false, var_0.x)).b), arg_1.c.a).d, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-35197i, -2147483647i, arg_0.x, 2147483647i), vec4<i32>(7178i, -1i, arg_0.x, 2393i)))).a;
    return global0[_wgslsmith_index_u32(arg_3, 24u)];
}

fn func_6(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-19864i), -37689i, arg_0.e, i32(-1i) * -1i), vec4<i32>(_wgslsmith_add_i32(0i, -9970i), func_2(arg_0.c.b.x, vec2<bool>(false, false), arg_0).a.c.x, u_input.b, func_2(-1451f, arg_0.d.a.d, Struct_4(Struct_2(arg_0.d.a, vec3<i32>(2147483647i, arg_0.c.e.x, -2147483647i)), u_input.a.yz, arg_0.d.a, arg_0.d, arg_1)).a.c.x)), -2147483647i, i32(-1i) * -1i) ^ ((~(-vec4<i32>(arg_0.e, arg_1, arg_1, arg_0.c.e.x)) << (select(select(vec4<u32>(16936u, u_input.a.x, 30628u, u_input.a.x), vec4<u32>(32117u, u_input.a.x, 16890u, 7865u), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, 1449u, 0u, arg_0.b.x), vec4<u32>(arg_0.b.x, 60035u, 118621u, arg_0.b.x)), func_2(arg_0.a.a.b.x, vec2<bool>(arg_0.c.a.x, arg_0.c.d.x), global0[_wgslsmith_index_u32(0u, 24u)]).a.a.x) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -12850i, 1i), vec4<i32>(arg_0.d.a.e.x, 1i, -46245i, arg_1)), -61420i, max(81904i, 2147483647i), _wgslsmith_clamp_i32(-1i, u_input.b, u_input.b))));
    var var_1 = global0[_wgslsmith_index_u32(func_5(arg_0.d.a.e ^ reverseBits(select(vec3<i32>(u_input.b, u_input.b, u_input.b), arg_0.d.a.c, vec3<bool>(global2.x, arg_0.c.a.x, arg_0.d.a.d.x)) ^ vec3<i32>(-1i, -17071i, 25484i)), Struct_4(Struct_2(Struct_1(func_2(arg_0.d.a.b.x, vec2<bool>(false, global2.x), arg_0).a.d, _wgslsmith_f_op_vec2_f32(-arg_0.a.a.b), -vec3<i32>(var_0.x, -29799i, -30363i), arg_0.a.a.d, -var_0.zww), ~vec3<i32>(0i, arg_0.c.e.x, var_0.x)), max((arg_0.b ^ vec2<u32>(u_input.a.x, 863u)) ^ ~vec2<u32>(1173u, 1u), arg_0.b), arg_0.a.a, Struct_3(Struct_1(func_2(-1074f, vec2<bool>(arg_0.a.a.a.x, global2.x), Struct_4(Struct_2(Struct_1(arg_0.c.a, vec2<f32>(arg_0.c.b.x, arg_0.a.a.b.x), vec3<i32>(u_input.b, u_input.b, -1i), arg_0.d.a.a, vec3<i32>(arg_1, arg_0.e, arg_1)), vec3<i32>(arg_1, 2147483647i, 32322i)), vec2<u32>(17358u, 16527u), arg_0.d.a, arg_0.d, u_input.b)).a.a, vec2<f32>(208f, arg_0.d.a.b.x), var_0.yxy, !vec2<bool>(false, arg_0.d.a.a.x), var_0.yxw)), ~1i), arg_0.d, ~u_input.a.x).b.x, 24u)];
    var var_2 = arg_0.d;
    global1 = array<vec3<f32>, 3>();
    var var_3 = var_0.zyz;
    return Struct_2(arg_0.a.a, reverseBits(-(vec3<i32>(0i, var_2.a.c.x, 29021i) | vec3<i32>(var_2.a.e.x, 49447i, var_1.a.a.c.x)) & vec3<i32>(~(-2147483647i), 1i, func_2(-485f, vec2<bool>(var_2.a.d.x, arg_0.d.a.a.x), Struct_4(Struct_2(Struct_1(var_2.a.a, var_2.a.b, arg_0.a.b, vec2<bool>(false, var_1.d.a.a.x), var_0.zzw), vec3<i32>(var_0.x, arg_1, 54935i)), arg_0.b, Struct_1(var_2.a.a, arg_0.d.a.b, vec3<i32>(-2147483647i, 1i, var_3.x), vec2<bool>(false, false), vec3<i32>(0i, 2147483647i, arg_1)), arg_0.d, -1i)).b.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    global1 = array<vec3<f32>, 3>();
    global0 = array<Struct_4, 24>();
    let var_0 = func_6(func_5(-vec3<i32>(0i, 38592i, u_input.b) ^ ~vec3<i32>(34453i, arg_1.e.x, 12559i), func_4(func_2(arg_1.b.x, select(arg_1.a, vec2<bool>(false, true), arg_1.a), Struct_4(Struct_2(Struct_1(vec2<bool>(false, global2.x), arg_1.b, vec3<i32>(-1i, -1i, u_input.b), vec2<bool>(arg_0, arg_1.d.x), arg_1.c), arg_1.c), vec2<u32>(47683u, 4294967295u), Struct_1(vec2<bool>(global2.x, false), arg_1.b, arg_1.c, vec2<bool>(arg_0, false), arg_1.e), Struct_3(arg_1), arg_1.e.x)), true, ~u_input.a.yz, vec2<bool>(!arg_1.d.x, all(vec4<bool>(false, global2.x, true, global2.x)))), Struct_3(func_4(func_4(Struct_2(arg_1, vec3<i32>(-1i, 1i, u_input.b)), global2.x, u_input.a.xz, arg_1.d).a, !global2.x, abs(vec2<u32>(43654u, 10866u)), vec2<bool>(global2.x, arg_0)).c), u_input.a.x), -reverseBits(47437i));
    return vec2<bool>(any(!(!vec3<bool>(var_0.a.d.x, true, arg_1.a.x))) & false, !global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_1(false, Struct_1(select(vec2<bool>(false, global2.x), vec2<bool>(true, global2.x), global2.x | global2.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1339f, -240f))), min(vec3<i32>(u_input.b, -2846i, u_input.b), vec3<i32>(0i, u_input.b, u_input.b)) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec2<bool>(true, global2.x), vec3<i32>(u_input.b, ~u_input.b, 0i)));
    global0 = array<Struct_4, 24>();
    let var_0 = ~(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(min(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(-27303i, u_input.b), vec2<i32>(72811i, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-106f - -1420f), func_5(~vec3<i32>(u_input.b, u_input.b, 10475i) << (~vec3<u32>(61504u, 0u, u_input.a.x) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(22817u, 24u)], func_5(vec3<i32>(var_0.x, -2147483647i, 66055i), func_4(Struct_2(Struct_1(vec2<bool>(global2.x, global2.x), vec2<f32>(-169f, 436f), vec3<i32>(var_0.x, 0i, 53590i), vec2<bool>(global2.x, global2.x), vec3<i32>(u_input.b, u_input.b, -36504i)), vec3<i32>(u_input.b, var_0.x, 8040i)), true, u_input.a.xx, vec2<bool>(global2.x, true)), func_4(Struct_2(Struct_1(vec2<bool>(true, global2.x), vec2<f32>(-1822f, -549f), vec3<i32>(u_input.b, 1i, 2147483647i), vec2<bool>(true, true), vec3<i32>(var_0.x, var_0.x, -2147483647i)), vec3<i32>(u_input.b, 25680i, u_input.b)), false, u_input.a.yx, vec2<bool>(true, global2.x)).d, ~36013u).d, 1u).a.a.b.x)));
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    let var_2 = reverseBits(u_input.a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(857f))))), 363f, _wgslsmith_f_op_f32(func_5(abs(vec3<i32>(3015i, var_0.x, u_input.b)), Struct_4(Struct_2(Struct_1(vec2<bool>(global2.x, global2.x), vec2<f32>(189f, 2266f), vec3<i32>(-2147483647i, u_input.b, -45610i), vec2<bool>(false, global2.x), vec3<i32>(u_input.b, 43510i, 0i)), vec3<i32>(-27496i, -1i, -1i)), u_input.a.yy, Struct_1(vec2<bool>(global2.x, global2.x), vec2<f32>(-1000f, -525f), vec3<i32>(var_0.x, 2147483647i, u_input.b), vec2<bool>(false, false), vec3<i32>(var_0.x, -55183i, 31343i)), Struct_3(Struct_1(vec2<bool>(false, global2.x), vec2<f32>(-1147f, -988f), vec3<i32>(u_input.b, -2147483647i, var_0.x), vec2<bool>(false, global2.x), vec3<i32>(-1i, 0i, 0i))), var_0.x), func_4(Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(1106f, 490f), vec3<i32>(1i, u_input.b, var_0.x), vec2<bool>(global2.x, false), vec3<i32>(32010i, u_input.b, 0i)), vec3<i32>(-43243i, -2147483647i, var_0.x)), global2.x, var_2, vec2<bool>(true, true)).d, abs(u_input.a.x)).d.a.b.x * 243f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1238f + -393f), _wgslsmith_div_f32(-254f, 1303f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1317f - -231f))))), vec4<f32>(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -868f), select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x)), Struct_4(Struct_2(Struct_1(vec2<bool>(global2.x, global2.x), vec2<f32>(680f, -779f), vec3<i32>(-2147483647i, var_0.x, -51099i), vec2<bool>(global2.x, true), vec3<i32>(var_0.x, 1i, var_0.x)), vec3<i32>(var_0.x, u_input.b, u_input.b)), vec2<u32>(4294967295u, var_2.x), Struct_1(vec2<bool>(global2.x, true), vec2<f32>(-147f, -1818f), vec3<i32>(var_0.x, var_0.x, 20120i), vec2<bool>(false, false), vec3<i32>(-35881i, 0i, var_0.x)), Struct_3(Struct_1(vec2<bool>(global2.x, global2.x), vec2<f32>(-1150f, 581f), vec3<i32>(53481i, -50516i, -10862i), vec2<bool>(true, global2.x), vec3<i32>(0i, u_input.b, -26395i))), -1i)), global2.x, ~(~var_2), vec2<bool>(global2.x, func_2(-604f, vec2<bool>(true, global2.x), global0[_wgslsmith_index_u32(var_2.x, 24u)]).a.d.x)).a.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f - _wgslsmith_div_f32(-504f, -218f))), 376f), max(_wgslsmith_mod_u32(~(~4294967295u), func_4(Struct_2(Struct_1(vec2<bool>(false, global2.x), vec2<f32>(-1032f, -303f), vec3<i32>(-2147483647i, u_input.b, u_input.b), vec2<bool>(global2.x, true), vec3<i32>(1i, -34034i, var_0.x)), vec3<i32>(24467i, u_input.b, 0i)), !global2.x, var_2 >> (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u)), func_4(Struct_2(Struct_1(vec2<bool>(global2.x, false), vec2<f32>(-1120f, -460f), vec3<i32>(u_input.b, u_input.b, -4822i), vec2<bool>(global2.x, global2.x), vec3<i32>(0i, var_0.x, -28101i)), vec3<i32>(-39873i, 54882i, var_0.x)), global2.x, vec2<u32>(4294967295u, 0u), vec2<bool>(true, false)).c.d).b.x), ~0u), ~var_2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1361f, -1537f, 323f) * vec4<f32>(404f, -1000f, -648f, -1652f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(800f, -289f, -886f, 177f))), true)))))));
}

