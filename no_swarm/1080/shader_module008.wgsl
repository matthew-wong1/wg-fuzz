struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<Struct_3, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = min(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b, 14u)] | -4835i, u_input.e.x), 20036i) > -1i;
    global0 = array<i32, 14>();
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 1u), 0u ^ min(_wgslsmith_mod_u32(4294967295u, 24007u), u_input.a.x));
    var var_2 = all(select(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, false, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x))), vec3<bool>(-global0[_wgslsmith_index_u32(0u, 14u)] < global0[_wgslsmith_index_u32(~var_1, 14u)], false, arg_0.x), vec3<bool>(true, !arg_0.x && any(arg_0), arg_0.x)));
    var_0 = !all(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, false)), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, true), vec4<bool>(false, arg_0.x, false, true))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, ~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), 52679i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(10630i, -1i, 2147483647i, -8913i), vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])), vec4<i32>(0i, u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(u_input.b, 14u)]) & vec4<i32>(-29490i, u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(var_1, 14u)]))) & firstLeadingBit(vec4<i32>(reverseBits(38485i), min(u_input.e.x, 19083i), u_input.c, 28306i)), (firstLeadingBit(vec4<i32>(20844i, 25654i, u_input.e.x, u_input.e.x)) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(-35563i, global0[_wgslsmith_index_u32(3957u, 14u)], -1i, -313i), -vec4<i32>(-676i, global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.d.x, -1i), ~vec4<i32>(-3419i, 14611i, -2086i, global0[_wgslsmith_index_u32(29307u, 14u)]))) & countOneBits((vec4<i32>(-1i, -1i, -2147483647i, u_input.d.x) | vec4<i32>(43894i, global0[_wgslsmith_index_u32(var_1, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])) | (vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], -9182i, u_input.c, 2147483647i) >> (vec4<u32>(4294967295u, var_1, 59810u, 4294967295u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    let var_0 = Struct_4(select(!arg_2.b.d.b, all(vec4<bool>(arg_2.a.d.b, arg_2.b.d.b, true, false)), !arg_1.b), Struct_3(arg_2.b, arg_2.a, _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec2_u32(select(u_input.a, u_input.a, arg_2.b.d.b), u_input.a >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))))), arg_2.a);
    let var_1 = var_0;
    global1 = array<Struct_3, 12>();
    let var_2 = select(_wgslsmith_sub_i32(abs(1i), 35798i | ~arg_1.a), -max(1i, firstTrailingBit(~arg_2.a.c.a)), !(!(-54205i != ~arg_1.a)));
    global0 = array<i32, 14>();
    return var_1.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    global0 = array<i32, 14>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1243f * -266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(363f, 163f)), -364f, arg_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1530f, 1000f)))), Struct_1(min(_wgslsmith_mod_i32(0i, arg_0.x), arg_0.x), !arg_2.x), Struct_1(u_input.d.x, any(!(!vec4<bool>(true, false, arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1003f, -1112f, -1197f, 114f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, -1368f, 181f, -336f) + vec4<f32>(-1199f, 1510f, -1000f, 356f)))))));
    global1 = array<Struct_3, 12>();
    global0 = array<i32, 14>();
    let var_1 = Struct_1(1i, func_4(~u_input.b, Struct_1(_wgslsmith_dot_vec4_i32(func_3(vec2<bool>(true, var_0.c.b), var_0.e.xzy), reverseBits(vec4<i32>(arg_0.x, arg_1, arg_1, arg_0.x))), select(arg_2.x, arg_2.x, arg_2.x) | all(vec2<bool>(true, arg_2.x))), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]));
    return Struct_2(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(165f)))))), Struct_1(reverseBits(arg_0.x), !func_4(1u, var_1, Struct_3(var_0, Struct_2(-291f, 588f, Struct_1(global0[_wgslsmith_index_u32(69039u, 14u)], true), var_1, var_0.e), 4294967295u))), Struct_1(~_wgslsmith_sub_i32(-var_0.c.a, -arg_1), select(true, true, true) && any(vec3<bool>(false, var_0.d.b, true))), var_0.e);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32) -> vec2<u32> {
    global1 = array<Struct_3, 12>();
    let var_0 = vec4<i32>(arg_0.b.a.c.a, -(global0[_wgslsmith_index_u32(26718u, 14u)] ^ countOneBits(1i)), _wgslsmith_sub_i32(arg_0.b.a.d.a, -(~arg_1.x >> (firstLeadingBit(50066u) % 32u))), -2147483647i);
    var var_1 = !vec2<bool>(any(vec3<bool>(true, all(vec3<bool>(true, arg_0.b.a.d.b, true)), !arg_0.b.a.d.b)), true);
    global0 = array<i32, 14>();
    var var_2 = vec2<bool>(true, true);
    return ~vec2<u32>(~arg_0.b.c, u_input.b);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    global1 = array<Struct_3, 12>();
    let var_0 = func_5(Struct_4(true, Struct_3(func_2(-vec3<i32>(4824i, global0[_wgslsmith_index_u32(22787u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), 28682i, !arg_1), func_2(vec3<i32>(global0[_wgslsmith_index_u32(0u, 14u)], u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]), 33040i, vec2<bool>(true, false)), _wgslsmith_mod_u32(~1u, ~0u)), Struct_2(-532f, _wgslsmith_f_op_f32(sign(arg_0)), func_2(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), func_2(vec3<i32>(-2147483647i, 1i, -34201i), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<bool>(arg_1.x, false)).c.a, select(arg_1, vec2<bool>(true, arg_1.x), arg_1.x)).c, func_2(-vec3<i32>(global0[_wgslsmith_index_u32(60001u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 50290i), 1i, select(arg_1, vec2<bool>(true, true), arg_1)).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(2023f, arg_0, arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1316f, -400f, 468f, 191f) + vec4<f32>(457f, arg_0, arg_0, -964f))))), vec3<i32>(-func_3(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(2049f, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, arg_0))).x, 2147483647i, 11554i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-215f, _wgslsmith_f_op_f32(min(1585f, arg_0)))))), 953f));
    global1 = array<Struct_3, 12>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(~firstLeadingBit(vec3<u32>(u_input.b, 92644u, 30739u))), ~abs(~vec3<u32>(var_0.x, 4294967295u, 4294967295u))), vec3<u32>(max(u_input.a.x, 0u), 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 680u, u_input.b), reverseBits(vec3<u32>(var_0.x, var_0.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(var_0, _wgslsmith_sub_vec2_u32(var_0, var_0)))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_4(-1556f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x)))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 12u)], func_2(-(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 14u)], -1i) | vec3<i32>(-11663i, global0[_wgslsmith_index_u32(37485u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])) | select(_wgslsmith_sub_vec3_i32(vec3<i32>(70709i, -1i, 11901i), vec3<i32>(-59205i, global0[_wgslsmith_index_u32(25550u, 14u)], 2674i)), max(vec3<i32>(u_input.d.x, u_input.e.x, u_input.e.x), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], u_input.d.x, -39577i)), vec3<bool>(false, false, true)), u_input.e.x, vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    global0 = array<i32, 14>();
    global1 = array<Struct_3, 12>();
    let var_1 = u_input.e;
    let var_2 = select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 19604u, 0u, var_0.b.c)) << (select(select(vec4<u32>(var_0.b.c, arg_0.x, u_input.a.x, 0u), vec4<u32>(76905u, 42443u, arg_0.x, u_input.a.x), var_0.b.b.c.b), firstLeadingBit(vec4<u32>(1u, 29176u, var_0.b.c, 4294967295u)), true) % vec4<u32>(32u)), ~(firstLeadingBit(vec4<u32>(arg_0.x, 4294967295u, 44376u, 54796u)) & (vec4<u32>(4294967295u, 1u, var_0.b.c, arg_0.x) >> (vec4<u32>(27814u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)))), vec4<u32>(67107u, 31705u, _wgslsmith_clamp_u32(50655u, 0u, 24270u), var_0.b.c) | vec4<u32>(var_0.b.c, 5716u, abs(4294967295u), ~var_0.b.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~var_0.b.c, ~106853u), u_input.a.x, 31077u, _wgslsmith_add_u32(countOneBits(1u), firstTrailingBit(arg_0.x))), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, abs(1u)), ~(~0u), 1u, 2970u)), !(!(!select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(false, true, var_0.b.b.d.b, var_0.a), false))));
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_6(vec3<u32>(4294967295u, u_input.b, u_input.a.x) << (vec3<u32>(0u, max(4294967295u, u_input.a.x), func_1(591f, vec2<bool>(true, false))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, -779f, -1000f, -1602f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1712f), _wgslsmith_f_op_f32(floor(-1277f)), 1594f, 1f))));
    var var_1 = Struct_5(func_6(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 40806u), vec3<u32>(u_input.b, 4294967295u, u_input.a.x))) & (~vec3<u32>(u_input.b, u_input.a.x, 45351u) >> (vec3<u32>(u_input.b, u_input.b, 74898u) % vec3<u32>(32u))), var_0.a.e));
    var_1 = Struct_5(func_6(vec3<u32>(~4294967295u, u_input.a.x, firstLeadingBit(u_input.b)) >> (~(~vec3<u32>(u_input.b, 69589u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.e * var_0.a.e) * var_0.a.e))));
    let var_2 = var_1.a;
    var var_3 = Struct_4(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, u_input.b, 1u), countOneBits(vec3<u32>(u_input.b, u_input.b, 1u)), !var_0.a.c.b) & countOneBits(reverseBits(vec3<u32>(4294967295u, 0u, u_input.a.x))), ~vec3<u32>(~1u, u_input.a.x, ~1u)), 12u)], func_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, -46615i, -4126i), ~(vec3<i32>(-2147483647i, 0i, 1i) ^ vec3<i32>(11173i, u_input.d.x, var_2.d.a))), _wgslsmith_mult_i32(~u_input.d.x, -1i), !vec2<bool>(true, func_2(vec3<i32>(1i, var_0.a.d.a, 2147483647i), 2147483647i, vec2<bool>(true, true)).c.b)));
    var_1 = Struct_5(Struct_2(-353f, _wgslsmith_f_op_f32(var_3.c.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b))), Struct_1(global0[_wgslsmith_index_u32(49400u, 14u)], !var_3.b.b.d.b), Struct_1(-59976i, func_6(firstTrailingBit(vec3<u32>(3741u, 22392u, u_input.b)), vec4<f32>(123f, var_2.e.x, 2149f, -1704f)).d.b), var_1.a.e));
    var_3 = Struct_4(true, Struct_3(var_0.a, var_3.c, 3127u), var_3.b.b);
    var_1 = Struct_5(var_1.a);
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.d.x, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1i, -1i), firstTrailingBit(vec3<i32>(113i, var_2.c.a, var_3.c.c.a))))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(35327i, -56895i, var_1.a.c.a), vec3<i32>(var_3.b.a.c.a, -2147483647i, var_1.a.d.a)), vec3<i32>(_wgslsmith_mod_i32(22914i, var_3.b.b.c.a), abs(1i), ~var_2.c.a)) << (vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.a.x), u_input.b, func_1(var_0.a.b, !vec2<bool>(var_3.b.a.c.b, var_2.d.b))) % vec3<u32>(32u)), ~var_3.b.c, vec4<i32>(16361i, -(func_6(vec3<u32>(var_3.b.c, 4294967295u, 0u), vec4<f32>(var_2.e.x, 208f, var_2.b, -1221f)).d.a & _wgslsmith_mult_i32(var_0.a.c.a, var_0.a.c.a)), -2147483647i, max(2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.a.c.a, var_2.c.a), 768i))), var_4);
}

