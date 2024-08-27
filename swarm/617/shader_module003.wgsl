struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: f32 = 613f;

var<private> global2: Struct_1 = Struct_1(0i, 81474u, 1u, vec3<u32>(5541u, 1u, 0u), 4294967295u);

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = Struct_2(arg_3.c);
    var var_1 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~select(arg_3.c.d.yz, var_0.a.d.zz, false), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_3.b.e), vec2<u32>(global2.c, global2.d.x)), vec2<u32>(global2.c, 9379u))), firstTrailingBit(u_input.b.ww));
    var var_2 = -_wgslsmith_sub_vec4_i32(~(~(~vec4<i32>(-26880i, 49368i, arg_3.c.a, arg_3.b.a))), select(vec4<i32>(global2.a, global2.a, 52875i, -1i) >> (vec4<u32>(0u, u_input.c, 10690u, arg_1) % vec4<u32>(32u)), ~(vec4<i32>(-2147483647i, -14619i, 46920i, 10979i) | vec4<i32>(-31881i, arg_3.b.a, global2.a, -2147483647i)), (26658u > arg_3.b.d.x) || true));
    let var_3 = 1i;
    var var_4 = firstLeadingBit(~22262u);
    return var_0.a.d.zz;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-2283f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))))));
    return !(!select(vec4<bool>(any(vec2<bool>(false, true)), true, true, u_input.e >= 2147483647i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_2() -> vec4<bool> {
    return select(!func_4(Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, -23248i), vec2<i32>(1i, global2.a)), _wgslsmith_div_f32(621f, -418f), Struct_1(4624i, u_input.d.x, 4294967295u, global2.d, 1u)), ~func_3(u_input.c, u_input.b.x, false, Struct_3(1004f, Struct_1(33050i, 1u, 11131u, vec3<u32>(41618u, 0u, global0[_wgslsmith_index_u32(68389u, 29u)]), 4294967295u), Struct_1(-15642i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 17590u, global2.d, u_input.b.x), vec4<bool>(false, false, false, false))), vec3<u32>(u_input.c, 0u, 55800u)), !select(vec4<bool>(false, true, false, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), all(vec2<bool>(false, false))), vec4<bool>(any(vec2<bool>(false, true)), !(u_input.b.x <= ~global0[_wgslsmith_index_u32(68664u, 29u)]), true, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(select(-996f, _wgslsmith_f_op_f32(f32(-1f) * -320f), false));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -156f, -1000f, 406f))))));
    return arg_1.b;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global2 = func_5(!select(select(func_2(), func_2(), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true)), func_2(), true), Struct_3(-404f, Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-48697i, -1i, global2.a), vec3<i32>(global2.a, 21500i, global2.a))), reverseBits(global2.d.x), 1u, global2.d, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.d.x, arg_0), ~arg_0)), Struct_1(0i, ~_wgslsmith_mult_u32(61880u, u_input.a), 4294967295u, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], arg_0, arg_0) << (u_input.b.zyy % vec3<u32>(32u)), arg_0), vec4<bool>(true, true, true, true)));
    let var_0 = ~4294967295u;
    let var_1 = Struct_2(Struct_1(abs(-2147483647i), _wgslsmith_sub_u32(countOneBits(abs(42421u)), u_input.d.x), firstTrailingBit(var_0 >> (1u % 32u)), abs(firstTrailingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 29u)], 6905u))), global0[_wgslsmith_index_u32(1u, 29u)]));
    global3 = -1000f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(2551f, -117f)), _wgslsmith_f_op_f32(max(640f, 427f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-510f)) * -1696f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(692f, _wgslsmith_f_op_f32(-1000f + -1658f))))), var_1.a, func_5(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true | all(vec4<bool>(true, false, false, true)), func_4(Struct_4(vec2<i32>(u_input.e, var_1.a.a), -908f, Struct_1(-28507i, 42880u, 0u, vec3<u32>(var_0, var_0, 4294967295u), var_0)), ~vec2<u32>(1u, var_1.a.b), ~vec3<u32>(0u, var_0, 4294967295u)).x), Struct_3(-708f, Struct_1(global2.a, global0[_wgslsmith_index_u32(~var_0, 29u)], select(u_input.b.x, 4294967295u, true), abs(vec3<u32>(global2.c, var_1.a.c, 48266u)), min(29518u, var_0)), var_1.a, vec4<bool>(1i != global2.a, any(vec4<bool>(false, true, true, false)), select(false, false, true), all(vec2<bool>(false, false))))), vec4<bool>(!(!any(vec3<bool>(false, false, false))), select(func_4(Struct_4(vec2<i32>(25146i, 0i), 687f, Struct_1(global2.a, global2.d.x, 59285u, vec3<u32>(var_1.a.e, 43362u, global0[_wgslsmith_index_u32(var_0, 29u)]), var_0)), ~global2.d.yx, vec3<u32>(global2.b, 0u, global2.e)).x, true, true), all(select(func_4(Struct_4(vec2<i32>(global2.a, 2147483647i), 1550f, var_1.a), vec2<u32>(u_input.c, 0u), vec3<u32>(42139u, 1u, u_input.c)).zyz, func_2().wzw, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), false));
    return vec2<i32>(-2147483647i, var_2.c.a) << (~vec2<u32>(_wgslsmith_div_u32(var_2.c.b, ~1u), ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_2.b.e, var_1.a.e, 0u, 0u))) % vec2<u32>(32u));
}

fn func_6(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = !(!(!(global2.c <= global0[_wgslsmith_index_u32(func_5(vec4<bool>(true, true, false, true), Struct_3(1596f, Struct_1(2883i, 10420u, global0[_wgslsmith_index_u32(0u, 29u)], vec3<u32>(2995u, global0[_wgslsmith_index_u32(49178u, 29u)], global2.e), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4553u, 29u)], 29u)]), Struct_1(arg_0.x, 19440u, 7848u, vec3<u32>(51496u, 3484u, u_input.c), 0u), vec4<bool>(true, true, true, true))).c, 29u)])));
    let var_1 = -645f;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)));
    let var_2 = func_5(func_4(Struct_4(arg_0 ^ abs(vec2<i32>(arg_0.x, global2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1758f, var_1))), Struct_1(2147483647i, 30696u, ~0u, u_input.b.xwy, 0u)), vec2<u32>(~reverseBits(0u), u_input.b.x), abs(_wgslsmith_sub_vec3_u32(~u_input.d.yyy, u_input.d.wzw))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -971f), func_5(!(!vec4<bool>(false, var_0, false, true)), Struct_3(var_1, func_5(vec4<bool>(var_0, var_0, false, var_0), Struct_3(var_1, Struct_1(42761i, global0[_wgslsmith_index_u32(84082u, 29u)], global2.d.x, vec3<u32>(global0[_wgslsmith_index_u32(52202u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)], u_input.a), 4481u), Struct_1(global2.a, global2.d.x, 37089u, u_input.d.xwx, 15221u), vec4<bool>(false, true, var_0, false))), func_5(vec4<bool>(var_0, var_0, var_0, var_0), Struct_3(var_1, Struct_1(global2.a, 72365u, 4294967295u, vec3<u32>(global2.b, 4294967295u, 1u), 3710u), Struct_1(-15578i, global2.b, 97453u, vec3<u32>(global2.e, u_input.d.x, global0[_wgslsmith_index_u32(2043u, 29u)]), 18035u), vec4<bool>(var_0, true, true, var_0))), vec4<bool>(true, true, var_0, false))), Struct_1(global2.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(15896u, 58244u, 34608u), 11615u << (global0[_wgslsmith_index_u32(10644u, 29u)] % 32u)), _wgslsmith_add_u32(4294967295u ^ u_input.d.x, 47197u), vec3<u32>(~1u, 55283u, global0[_wgslsmith_index_u32(min(global2.c, 32053u), 29u)]), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.d.x, 35262u, 1u, u_input.b.x), vec4<u32>(0u, global2.d.x, global0[_wgslsmith_index_u32(global2.b, 29u)], u_input.a)), u_input.d)), select(select(vec4<bool>(false, false, var_0, var_0), select(vec4<bool>(var_0, true, true, false), vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, true, var_0, false)), select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(false, var_0, true, false), vec4<bool>(true, false, var_0, var_0))), func_2(), func_4(Struct_4(vec2<i32>(global2.a, -1i), 762f, Struct_1(2147483647i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 1u, vec3<u32>(u_input.c, 0u, global2.c), 54269u)), vec2<u32>(1u, 34450u), vec3<u32>(global0[_wgslsmith_index_u32(67029u, 29u)], u_input.d.x, global2.c)))));
    global0 = array<u32, 29>();
    return Struct_3(1653f, var_2, func_5(vec4<bool>(var_0, select(func_4(Struct_4(arg_0, -1000f, Struct_1(var_2.a, var_2.c, global0[_wgslsmith_index_u32(0u, 29u)], global2.d, 4294967295u)), var_2.d.yz, global2.d).x, func_4(Struct_4(vec2<i32>(var_2.a, var_2.a), var_1, var_2), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)]), vec3<u32>(102766u, 4294967295u, global2.d.x)).x, var_0), !var_0, global2.d.x > ~global0[_wgslsmith_index_u32(1593u, 29u)]), Struct_3(_wgslsmith_f_op_f32(var_1 + -151f), Struct_1(-11711i, u_input.a, 1u, _wgslsmith_sub_vec3_u32(u_input.b.xzx, u_input.d.zzy), 1u), Struct_1(1i, ~23119u, firstTrailingBit(4294967295u), func_5(vec4<bool>(true, var_0, var_0, false), Struct_3(-553f, Struct_1(u_input.e, 0u, global2.e, u_input.d.yww, 0u), Struct_1(global2.a, 34593u, 1u, vec3<u32>(1438u, global0[_wgslsmith_index_u32(u_input.d.x, 29u)], var_2.b), global0[_wgslsmith_index_u32(var_2.c, 29u)]), vec4<bool>(true, var_0, var_0, true))).d, var_2.c >> (global2.e % 32u)), select(!vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, var_0, var_0, true)))), select(vec4<bool>(!any(vec2<bool>(var_0, var_0)), !(var_0 == var_0), all(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), false)), true && var_0), func_4(Struct_4(-vec2<i32>(global2.a, u_input.e), _wgslsmith_f_op_f32(var_1 - -1244f), func_5(vec4<bool>(false, var_0, var_0, true), Struct_3(1059f, var_2, Struct_1(11487i, global0[_wgslsmith_index_u32(var_2.e, 29u)], global2.b, var_2.d, 34732u), vec4<bool>(true, true, false, true)))), vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, global2.b, 4294967295u, u_input.c), u_input.b)), ~u_input.d.yzx), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(263f)))) * 837f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f));
    var var_0 = func_6(min(vec2<i32>(2147483647i, ~2147483647i) | countOneBits(-vec2<i32>(u_input.e, u_input.e)), _wgslsmith_sub_vec2_i32(func_1(~19298u), vec2<i32>(2147483647i, countOneBits(global2.a)))));
    let var_1 = var_0.d.x;
    var_0 = func_6(~(~(~vec2<i32>(-1i, -52381i) >> ((u_input.b.yy ^ u_input.b.ww) % vec2<u32>(32u)))));
    var var_2 = ~(vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(3287i, -2147483647i, 0i, 2147483647i), vec4<i32>(16774i, -1i, 37324i, var_0.b.a)) ^ min(vec4<i32>(-2147483647i, 2147483647i, var_0.c.a, -2147483647i), vec4<i32>(0i, global2.a, 64352i, global2.a))));
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 661f, -1096f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, -300f, var_0.a) * vec3<f32>(-751f, 200f, var_0.a)))))), vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_div_i32(global2.a, -1i), -1i), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(func_1(global0[_wgslsmith_index_u32(global2.c, 29u)]).x), ~(~2147483647i), var_0.c.a, global2.a), ~(min(vec4<i32>(u_input.e, var_2.x, 41699i, global2.a), vec4<i32>(var_0.b.a, global2.a, var_2.x, 1i)) ^ vec4<i32>(u_input.e, var_2.x, -2147483647i, 53491i))), ~(countOneBits(vec4<i32>(u_input.e, 2147483647i, -1i, -1i)) >> ((vec4<u32>(u_input.a, global2.e, global0[_wgslsmith_index_u32(1968u, 29u)], 1u) & u_input.b) % vec4<u32>(32u))) ^ -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.a, -2147483647i, -1i, global2.a), vec4<i32>(2147483647i, -54972i, -33044i, 15223i))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - -416f))), var_0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-505f, 845f) * _wgslsmith_f_op_f32(trunc(var_0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f + 583f) * 654f))));
}

