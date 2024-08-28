struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, 826f, 38096u), Struct_1(72080i, -324f, 80660u), Struct_1(1i, -1013f, 28353u), Struct_1(0i, 679f, 0u), Struct_1(-1i, -1000f, 1u), Struct_1(2147483647i, 542f, 61996u), Struct_1(-34186i, -150f, 1u), Struct_1(i32(-2147483648), -119f, 4294967295u), Struct_1(i32(-2147483648), -715f, 1u), Struct_1(-15660i, 1322f, 29489u), Struct_1(i32(-2147483648), -126f, 1u), Struct_1(-28229i, 1500f, 27635u), Struct_1(2147483647i, 1000f, 18618u), Struct_1(2147483647i, -135f, 0u), Struct_1(40198i, 171f, 29782u), Struct_1(-1i, 1464f, 38618u), Struct_1(i32(-2147483648), -729f, 32611u), Struct_1(2147483647i, 471f, 26242u), Struct_1(-1i, -326f, 63109u), Struct_1(9347i, 1109f, 4294967295u), Struct_1(-6100i, 1062f, 1u), Struct_1(-16569i, 925f, 12676u), Struct_1(i32(-2147483648), 1561f, 89772u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(35057u, 0u), vec2<u32>(global1.c, u_input.b))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(41582u, 47783u, global1.c, global1.c), vec4<u32>(0u, 21286u, 12007u, u_input.b)), u_input.b)) ^ global1.c, 23u)];
    global0 = array<Struct_1, 29>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(0u ^ (abs(u_input.b) & (global1.c & 1u)))), 23u)];
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstTrailingBit(global1.c), u_input.b), 29u)], (1i > global1.a) & true, !vec4<bool>(all(arg_0.zz), arg_0.x, global1.a >= _wgslsmith_sub_i32(global1.a, -9665i), max(u_input.b, 4294967295u) != abs(0u)), vec3<u32>(global1.c, ~firstLeadingBit(_wgslsmith_mult_u32(u_input.b, 64784u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.c), vec2<u32>(u_input.b, global1.c)), 1u)), Struct_1(-_wgslsmith_sub_i32(u_input.a.x << (u_input.b % 32u), -u_input.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(172f)))), global1.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), var_0.e.b, var_0.e.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1131f, global1.b, var_0.a.b), vec3<f32>(var_0.e.b, -446f, global1.b))))));
    return !(!vec3<bool>(arg_1, true, !(!arg_1)));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 23>();
    let var_0 = 681f;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(min(reverseBits(u_input.a), ~u_input.a), u_input.a) & _wgslsmith_clamp_i32(i32(-1i) * -1i, firstLeadingBit(63350i), -u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-680f + var_0))))), _wgslsmith_clamp_u32(u_input.b, global1.c, ~_wgslsmith_mod_u32(30741u, min(34662u, 16455u))));
    var_1 = global2[_wgslsmith_index_u32(abs(var_1.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_1.c) << (reverseBits(vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), vec2<u32>(4294967295u, global1.c) & vec2<u32>(u_input.b, u_input.b)) % 32u)), 23u)];
    var var_2 = func_3(vec3<bool>(_wgslsmith_div_f32(-1750f, _wgslsmith_f_op_f32(-global1.b)) == _wgslsmith_f_op_f32(-global1.b), false, true), false);
    return Struct_1(countOneBits(_wgslsmith_add_i32(global1.a, -2147483647i) << (0u % 32u)), var_0, var_1.c);
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = vec3<u32>(_wgslsmith_div_u32(func_2().c, func_2().c), func_2().c, _wgslsmith_add_u32(13422u, max(abs(1u), _wgslsmith_clamp_u32(1u, global1.c, 0u)) | 4294967295u));
    var var_2 = arg_0.b;
    let var_3 = arg_0.d;
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, reverseBits(~(~12425i))), -2147483647i, _wgslsmith_div_i32(u_input.a.x, -1i), 19264i);
    return -347f;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_1, 29>();
    let var_0 = Struct_1(max(14556i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(round(1527f)))), global1.c);
    var var_1 = -855f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_2(), !select(false, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), ~(~vec3<u32>(global1.c, var_0.c, global1.c)), Struct_1(31461i, 414f, u_input.b ^ global1.c)))));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(global1.c, 29u)], true, !vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), 2147483647i > _wgslsmith_clamp_i32(var_0.a, 0i, -2147483647i), true), vec3<u32>(~global1.c | 25470u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 1u, 80773u), vec4<u32>(u_input.b, 68787u, 1u, 20912u)), firstTrailingBit(vec4<u32>(31654u, global1.c, 4294967295u, global1.c))), ~_wgslsmith_mult_u32(var_0.c, 9446u)) | ~vec3<u32>(_wgslsmith_div_u32(119668u, 1u), ~var_0.c, u_input.b), global0[_wgslsmith_index_u32(global1.c, 29u)]);
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_1(select(reverseBits(vec3<i32>(arg_1.a, global1.a, arg_2.a)), (vec3<i32>(global1.a, -2147483647i, 0i) & vec3<i32>(arg_1.a, arg_2.a, 1i)) | ~vec3<i32>(-78679i, u_input.a.x, arg_2.a), any(vec2<bool>(true, true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(20114u, ~31408u, u_input.b ^ 33191u), countOneBits(vec3<u32>(0u, arg_1.c, u_input.b) | vec3<u32>(1u, 0u, arg_1.c))) > ~u_input.b, vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), false, true, arg_0 > -679f), ~(~vec3<u32>(u_input.b, global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(32137u, arg_1.c, 11319u), vec3<u32>(4294967295u, arg_1.c, 4082u)))), func_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(12945i, 11170i, 8932i) >> (vec3<u32>(global1.c, arg_2.c, global1.c) % vec3<u32>(32u)), -vec3<i32>(arg_2.a, 2147483647i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 6899i, global1.a), vec3<i32>(arg_1.a, 0i, -1i))))));
    let var_1 = var_0.c;
    var var_2 = Struct_1(~(-40139i), -188f, 1u);
    global1 = func_2();
    var var_3 = 2641i;
    return Struct_1(-u_input.a.x ^ -2147483647i, -263f, min(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~1u), max(4294967295u, 2947u)) | var_2.c);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = true;
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(412f, -644f)));
    let var_2 = !vec2<bool>(false, abs(reverseBits(arg_0.a.c)) > ~arg_0.d.x);
    global2 = array<Struct_1, 23>();
    return Struct_2(func_1(select(~vec3<i32>(global1.a, -1i, global1.a), vec3<i32>(u_input.a.x >> (1u % 32u), u_input.a.x, -arg_1), var_2.x)), all(vec3<bool>(!(global1.c >= global1.c), arg_0.c.x, true | func_3(arg_0.c.xxz, true).x)), !(!(!vec4<bool>(arg_0.c.x, var_2.x, arg_0.b, arg_0.b))), ~_wgslsmith_add_vec3_u32(select(arg_0.d, arg_0.d, arg_0.c.zww), vec3<u32>(u_input.b, 0u, 4080u)) >> (arg_0.d % vec3<u32>(32u)), Struct_1(-1i, global1.b, firstLeadingBit(74590u)));
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 29>();
    let var_0 = arg_0;
    global2 = array<Struct_1, 23>();
    global1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.a, global1.a, -4708i), vec3<i32>(arg_0.a.a, arg_0.e.a, -4225i))).b)), ~_wgslsmith_add_u32(arg_0.d.x, _wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(arg_0.e.c, 0u))));
    var var_1 = func_6(func_6(Struct_2(arg_0.e, select(select(arg_0.c.x, false, true), var_0.a.a > var_0.e.a, arg_0.c.x), vec4<bool>(any(var_0.c.zxx), !arg_0.b, false, func_6(arg_0, arg_0.a.a, vec3<bool>(var_0.c.x, arg_0.b, false), vec4<f32>(arg_0.e.b, 894f, var_0.e.b, var_0.e.b)).b), vec3<u32>(var_0.e.c, u_input.b, ~global1.c), func_6(Struct_2(global0[_wgslsmith_index_u32(arg_0.d.x, 29u)], false, vec4<bool>(arg_0.c.x, true, false, false), var_0.d, Struct_1(-36475i, 1000f, global1.c)), _wgslsmith_add_i32(global1.a, global1.a), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(448f, var_0.e.b, -597f, -982f) * vec4<f32>(var_0.a.b, 257f, global1.b, arg_0.e.b))).a), ~func_1(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a, var_0.e.a, -16359i), vec3<i32>(-1i, var_0.e.a, u_input.a.x))).a, !arg_0.c.yyy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.b, 386f, global1.b, 496f)))))), ~(abs(-u_input.a.x) >> (66121u % 32u)), select(func_6(Struct_2(func_2(), false, vec4<bool>(var_0.c.x, true, false, false), arg_0.d, func_6(arg_0, 0i, arg_0.c.yww, vec4<f32>(global1.b, global1.b, -802f, arg_0.a.b)).a), _wgslsmith_mult_i32(~u_input.a.x, reverseBits(-1i)), var_0.c.wzz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b, var_0.e.b, arg_0.a.b, var_0.a.b))))).c.zxw, !arg_0.c.wzy, select(vec3<bool>(arg_0.c.x, true, false), arg_0.c.yxx, arg_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, var_0.a.b, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b, -366f, var_0.a.b, -952f))) + vec4<f32>(arg_0.e.b, global1.b, 359f, global1.b)), !arg_0.c))));
    return func_6(Struct_2(func_2(), true, select(!vec4<bool>(var_0.c.x, arg_0.c.x, arg_0.c.x, false), arg_0.c, var_0.c), vec3<u32>(func_1(reverseBits(vec3<i32>(u_input.a.x, 2337i, 1i))).c, min(0u, ~global1.c), var_0.d.x), func_1(vec3<i32>(-u_input.a.x, var_0.e.a, u_input.a.x))), abs(-12075i), var_1.c.yww, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.b, var_0.e.b, global1.b, 1437f) * vec4<f32>(global1.b, var_1.a.b, arg_0.e.b, var_1.a.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 1000f, var_0.e.b, -191f) * vec4<f32>(var_0.a.b, var_1.e.b, arg_0.a.b, arg_0.a.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1310f, 1000f, var_0.a.b, var_0.a.b)))) + vec4<f32>(_wgslsmith_div_f32(-1244f, _wgslsmith_f_op_f32(max(arg_0.e.b, arg_0.a.b))), var_0.e.b, _wgslsmith_f_op_f32(func_4(var_0)), arg_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    let var_0 = func_7(func_6(Struct_2(func_5(global1.b, func_1(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), func_1(vec3<i32>(u_input.a.x, global1.a, -2147483647i))), true, vec4<bool>(true, true, true, true), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41709u, global1.c, 28203u), vec3<u32>(global1.c, 78402u, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(u_input.b, global1.c, u_input.b))), global0[_wgslsmith_index_u32(global1.c, 29u)]), 2147483647i, select(func_3(vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), func_3(vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 645f, global1.b, global1.b) - vec4<f32>(global1.b, global1.b, global1.b, global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b, -1249f, 471f, -235f), vec4<f32>(global1.b, -166f, -490f, global1.b))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b, -2092f, 1643f, global1.b), vec4<f32>(global1.b, 921f, 862f, 1000f))))))));
    global1 = func_7(var_0).a;
    let var_1 = func_6(var_0, u_input.a.x, !var_0.c.zyx, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.b, var_0.a.b, var_0.e.b, global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, global1.b, -132f, var_0.a.b)), func_3(vec3<bool>(var_0.b, var_0.b, false), var_0.b).x)))))).d.yz;
    var var_2 = -1773f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-global1.b)))), 1000f, _wgslsmith_div_f32(-1924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - var_0.e.b)))), _wgslsmith_f_op_f32(round(-690f)), ~(~select(vec4<u32>(1u, var_1.x, var_1.x, 4294967295u), ~vec4<u32>(1u, var_0.d.x, u_input.b, u_input.b), select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(true, false, var_0.b, var_0.c.x), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.c.x)))), vec4<u32>(global1.c, ~1u, var_0.a.c, 1u));
}

