struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-28866i, 0i, 1i, -1i);

var<private> global1: array<bool, 15> = array<bool, 15>(true, false, true, false, false, true, false, false, false, false, true, true, true, true, false);

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true));

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(0i, false), Struct_4(0i, false), Struct_4(1i, false), Struct_4(2147483647i, false), Struct_4(54632i, false), Struct_4(-21504i, true), Struct_4(-49638i, true), Struct_4(1i, true), Struct_4(2147483647i, false), Struct_4(-3170i, false), Struct_4(5549i, true), Struct_4(-58356i, false), Struct_4(1i, false), Struct_4(i32(-2147483648), true), Struct_4(2147483647i, false), Struct_4(0i, true), Struct_4(1i, true), Struct_4(52262i, false), Struct_4(0i, true), Struct_4(-1i, false), Struct_4(3096i, true), Struct_4(2147483647i, true), Struct_4(0i, true), Struct_4(1i, false), Struct_4(-1i, true), Struct_4(11697i, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> vec4<i32> {
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    global0 = abs(_wgslsmith_mult_vec4_i32(arg_0.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-20927i, -2147483647i, -2147483647i, 2147483647i), -vec4<i32>(global0.x, global0.x, arg_0.b.x, u_input.c.x))));
    var var_0 = global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(max(~(~u_input.a.x), u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_3.x, ~1u), 1u)), 4294967295u, all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)] & global1[_wgslsmith_index_u32(1u, 15u)], all(arg_1.xy), all(global2[_wgslsmith_index_u32(1u, 29u)]), 0i > global0.x))), 26u)];
    let var_1 = arg_0.d;
    return _wgslsmith_add_vec4_i32(-(((u_input.c & arg_0.b) >> (u_input.a % vec4<u32>(32u))) | u_input.c), -(u_input.c >> (u_input.a % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 15>();
    global0 = ~(~func_3(Struct_3(global2[_wgslsmith_index_u32(39828u, 29u)], vec4<i32>(1i, 2147483647i, -36533i, u_input.b.x), Struct_1(false, vec2<u32>(69588u, 0u), -191f), Struct_2(Struct_1(true, arg_1, 469f))), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], false, global1[_wgslsmith_index_u32(28777u, 15u)], true), global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)]), -1782f, _wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(36749u, arg_0.x), arg_0.yx))) & (~(u_input.c >> (~vec4<u32>(arg_0.x, 4294967295u, 14006u, 26001u) % vec4<u32>(32u))) | abs(vec4<i32>(global0.x, reverseBits(1i), 58991i, ~47847i)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))) <= 389f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1663f));
    global0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, 1622f, var_0.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) - vec3<f32>(2904f, 653f, var_0.c)))), !select(!vec3<bool>(global1[_wgslsmith_index_u32(39331u, 15u)], false, global1[_wgslsmith_index_u32(var_0.b.x, 15u)]), vec3<bool>(var_0.a, false, true), false))));
    return Struct_1(true, _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(firstTrailingBit(14488u)), u_input.a.x), ~(~_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(u_input.a.x, arg_0.x)))), var_1.x);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(186f, 1589f), -1166f)), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c)) + -1172f), arg_0.c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + 1000f) + 884f), arg_0.c, arg_0.c) * vec4<f32>(-1145f, arg_0.c, _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c))), 748f)));
    var var_1 = Struct_2(func_2(max(vec3<u32>(arg_0.b.x, 0u, arg_0.b.x), ~vec3<u32>(1u, arg_0.b.x, arg_0.b.x)) | _wgslsmith_mod_vec3_u32(u_input.a.wzx, ~vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u)), vec2<u32>(u_input.a.x, max(16209u & arg_0.b.x, arg_0.b.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.zzz)))));
    var var_3 = arg_0.a;
    var_3 = !(55069u == ~(u_input.a.x & ~arg_0.b.x));
    return Struct_2(func_2(vec3<u32>(_wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_sub_u32(8392u, 628u)), ~(~arg_0.b.x), 8522u), arg_0.b));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = func_4(func_4(arg_0.a).a);
    var var_1 = select(countOneBits(~(~u_input.a & u_input.a)), vec4<u32>(31050u, countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 4294967295u ^ arg_0.a.b.x)), 0u, ~max(min(4294967295u, 60313u), _wgslsmith_clamp_u32(u_input.a.x, 1u, 21635u))), arg_1);
    let var_2 = 75311i;
    let var_3 = u_input.a.xwz;
    let var_4 = any(select(vec3<bool>(arg_0.a.a, false, any(global2[_wgslsmith_index_u32(u_input.a.x, 29u)]) & arg_1), vec3<bool>(true, true, true), true));
    return Struct_2(var_0.a);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    let var_1 = reverseBits(~((vec2<i32>(36461i, -8574i) | u_input.c.zz) << (func_2(vec3<u32>(u_input.a.x, 15452u, u_input.a.x), arg_1.a.b).b % vec2<u32>(32u)))) ^ _wgslsmith_mult_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(u_input.b.x, global0.x)) ^ min(vec2<i32>(-19091i, global0.x), vec2<i32>(-1i, global0.x))), vec2<i32>(~min(-2147483647i, 13018i), _wgslsmith_clamp_i32(1i, global0.x, u_input.c.x)));
    global2 = array<vec4<bool>, 29>();
    var var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = -_wgslsmith_mult_vec4_i32(vec4<i32>(min(1i, global0.x) ^ (var_1.x | global0.x), -min(-1i, -34247i), 1i, u_input.b.x), -firstLeadingBit(vec4<i32>(24314i, var_1.x, var_1.x, var_1.x)));
    return Struct_1(false, vec2<u32>(firstTrailingBit(~u_input.a.x), arg_1.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - func_2(u_input.a.wzw, arg_1.a.b).c) + func_2(u_input.a.zxw, vec2<u32>(44161u, var_0.b.x)).c), var_0.c));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global1 = array<bool, 15>();
    let var_0 = 47826i;
    var var_1 = select(!vec4<bool>(func_2(u_input.a.zwx, vec2<u32>(93530u, 73932u)).a, !all(arg_1.a.zz), !(arg_0.c == arg_0.c), global1[_wgslsmith_index_u32(arg_0.b.x, 15u)]), !(!global2[_wgslsmith_index_u32(~abs(21430u), 29u)]), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(35633u, 15u)], true, true), select(!arg_1.a.xyz, arg_1.a.wwy, func_4(arg_0).a.a), false)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u | arg_0.b.x, func_5(Struct_2(arg_1.c), true).a.b.x), arg_1.c.b.x), 26u)];
    let var_3 = abs(arg_0.b.x);
    return Struct_3(select(arg_1.a, global2[_wgslsmith_index_u32(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.d.a.c, arg_0.c, arg_1.c.c))) - vec3<f32>(2002f, arg_1.d.a.c, arg_0.c)), Struct_2(func_6(vec3<f32>(arg_0.c, arg_1.c.c, arg_0.c), arg_1.d))).b.x, 29u)], select(arg_1.a, vec4<bool>(!global1[_wgslsmith_index_u32(var_3, 15u)], true, false, !var_2.b), vec4<bool>(true, true, arg_1.d.a.a && global1[_wgslsmith_index_u32(0u, 15u)], var_1.x | true))), -select(firstLeadingBit(vec4<i32>(arg_1.b.x, 44275i, 1i, 2147483647i)), reverseBits(u_input.c) >> (u_input.a % vec4<u32>(32u)), !global1[_wgslsmith_index_u32(~4294967295u, 15u)]), arg_0, func_4(Struct_1(true, u_input.a.yx, arg_0.c)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    let var_0 = Struct_1(all(vec3<bool>(false, arg_2.x, _wgslsmith_f_op_f32(-1527f * 1000f) <= _wgslsmith_f_op_f32(trunc(721f)))), min(vec2<u32>(_wgslsmith_sub_u32(max(u_input.a.x, u_input.a.x), firstLeadingBit(0u)), u_input.a.x), u_input.a.wz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f + 139f) - 231f));
    global1 = array<bool, 15>();
    var var_1 = func_7(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -870f, -438f)) - vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-449f + -1975f), 347f)), func_5(func_4(func_2(vec3<u32>(var_0.b.x, 4294967295u, u_input.a.x), vec2<u32>(2241u, var_0.b.x))), true)), Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], _wgslsmith_add_vec4_i32(abs(firstLeadingBit(u_input.c)), arg_0), Struct_1(true, ~abs(vec2<u32>(0u, var_0.b.x)), 1495f), func_5(Struct_2(func_4(Struct_1(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x), 487f)).a), all(select(arg_2.xy, arg_2.yy, arg_2.x)))));
    return global3[_wgslsmith_index_u32(var_0.b.x, 26u)];
}

fn func_8(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = select(!vec2<bool>(arg_1.b, false), select(!select(arg_2.yy, arg_2.yw, !vec2<bool>(arg_2.x, false)), arg_2.zw, true && ((global0.x ^ 2147483647i) <= -1i)), vec2<bool>(true, 9120u == firstTrailingBit(_wgslsmith_clamp_u32(0u, u_input.a.x, 1u))));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 29u)], _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-1i, -41307i, ~(-1i), _wgslsmith_add_i32(u_input.b.x, arg_1.a) >> (func_5(Struct_2(Struct_1(true, vec2<u32>(arg_0, u_input.a.x), 1767f)), false).a.b.x % 32u)), ~vec4<i32>(2147483647i ^ u_input.c.x, ~arg_1.a, _wgslsmith_add_i32(0i, -46090i), global0.x)), Struct_1(!arg_1.b, _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.yz, u_input.a.wz), ~vec2<u32>(0u, arg_0)), func_5(func_4(func_4(Struct_1(false, vec2<u32>(u_input.a.x, arg_0), -896f)).a), true).a.c), Struct_2(func_2(_wgslsmith_clamp_vec3_u32(u_input.a.ywx & vec3<u32>(u_input.a.x, 91701u, 4294967295u), ~vec3<u32>(25631u, u_input.a.x, 14986u), vec3<u32>(14142u, u_input.a.x, arg_0) ^ u_input.a.xzx), ~u_input.a.zx)));
    return vec3<u32>(~(~(~min(arg_0, arg_0))), _wgslsmith_div_u32(~func_5(var_1.d, all(global2[_wgslsmith_index_u32(2293u, 29u)])).a.b.x, ~(min(u_input.a.x, u_input.a.x) << (21139u % 32u))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 26>();
    let var_0 = -482f;
    var var_1 = global3[_wgslsmith_index_u32(u_input.a.x << (~u_input.a.x % 32u), 26u)];
    global3 = array<Struct_4, 26>();
    var var_2 = _wgslsmith_dot_vec3_u32(~func_8(max(u_input.a.x, u_input.a.x), func_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), u_input.b.x, vec3<bool>(false, false, false)), vec4<bool>(false, var_1.b, true, var_1.b)), u_input.a.yyw) | u_input.a.x;
    var_2 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(~_wgslsmith_mod_i32(global0.x, -10508i), 1i), 4294967295u, firstLeadingBit(vec3<u32>(u_input.a.x, func_8(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 26u)], !global2[_wgslsmith_index_u32(u_input.a.x, 29u)]).x, u_input.a.x ^ (u_input.a.x << (24463u % 32u)))));
}

