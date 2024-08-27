struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(250f, 646f, 1008f), vec3<f32>(597f, 771f, -962f), vec3<f32>(-157f, -1081f, -144f), vec3<f32>(-618f, -679f, 705f), vec3<f32>(-709f, 590f, -1000f), vec3<f32>(-759f, -2268f, -1330f), vec3<f32>(171f, -186f, -1775f), vec3<f32>(718f, -1000f, -350f), vec3<f32>(1090f, 102f, 828f), vec3<f32>(-1000f, 790f, -1102f), vec3<f32>(383f, -1878f, 1206f), vec3<f32>(217f, -2753f, -266f), vec3<f32>(-1424f, -1068f, -1757f));

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_1 = Struct_1(-135f, 214f, 1000f, vec3<bool>(false, false, false));

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1310f)), 495f, 180f, !global3.d.d);
    global4 = arg_1;
    let var_1 = u_input.b;
    let var_2 = Struct_2(~global4.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, arg_1.d.a, -353f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(265f, global2.c, arg_0.x)))), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 13u)] - _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(var_1, 13u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-737f - -1076f), arg_1.b.x), global2.a)), arg_1.d, global3.c);
    let var_3 = global3.d;
    return ~(~u_input.b);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = !(!vec2<bool>(!global4.c.d.x, false));
    let var_2 = global1[_wgslsmith_index_u32(func_3(vec2<f32>(global3.c.b, global4.b.x), Struct_2(global3.a, _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(~(~1u), 13u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b, 13u)])))), global3.c, global3.c)), 31u)];
    var var_3 = -1i;
    let var_4 = Struct_2(16544i, global4.b, Struct_1(-2923f, _wgslsmith_f_op_f32(ceil(global4.d.a)), -653f, !(!vec3<bool>(false, var_1.x, true))), global4.c);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1119f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-396f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(313f, global2.c)) * -720f), _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-global4.d.c)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(global2.a))) + var_2.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_4.d.c))))), global3.c.d);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(~global4.a, vec4<u32>(~0u, ~u_input.b, select(~abs(12387u), ~(u_input.b ^ u_input.b), 4294967295u <= abs(u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, countOneBits(41921u), u_input.b), select(vec3<u32>(38559u, 4294967295u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(global3.c.d.x, true, true)))));
    var var_1 = global3.d;
    var var_2 = -((1i << (_wgslsmith_mod_u32(u_input.b, func_3(vec2<f32>(-169f, -645f), Struct_2(u_input.c, vec3<f32>(-1184f, global3.c.a, var_0.b), global1[_wgslsmith_index_u32(u_input.b, 31u)], Struct_1(var_1.a, 2425f, var_1.a, global2.d)))) % 32u)) << (_wgslsmith_add_u32(u_input.b, max(42658u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 43425u), vec2<u32>(1u, u_input.b)))) % 32u));
    let var_3 = Struct_2(i32(-1i) * -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b) * global0[_wgslsmith_index_u32(~2222u, 13u)]), _wgslsmith_f_op_vec3_f32(-global4.b))), func_2(min(-13103i, reverseBits(_wgslsmith_clamp_i32(2022i, 1i, -44420i))), ~_wgslsmith_add_vec4_u32(vec4<u32>(21158u, 4294967295u, 0u, 49535u), select(vec4<u32>(3694u, 9172u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true))), global3.d);
    global4 = Struct_2(countOneBits(global4.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, global4.c.a, -827f) + var_3.b))))), Struct_1(460f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(var_3.a, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)).b, -361f)), vec3<bool>(true, true, any(vec4<bool>(global2.d.x, global2.d.x, var_0.d.x, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(global3.b.x + -1393f)) + var_0.b), 232f, var_1.c, global4.d.d));
    return global1[_wgslsmith_index_u32(~(~(2447u << ((~u_input.b ^ u_input.b) % 32u))), 31u)];
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~min(vec3<u32>(91362u, _wgslsmith_div_u32(101269u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b)) >> (~(vec3<u32>(0u, 48315u, u_input.b) << (vec3<u32>(75629u, 0u, 52276u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(max(1u, 1u), ~19554u, _wgslsmith_mod_u32(56225u, 11476u))));
    var var_1 = global4.c;
    var_0 = ~vec3<u32>(46004u, ~(1u ^ u_input.b), 1u);
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(83753i, global3.a, -36143i) >> (vec3<u32>(4294967295u, var_0.x, u_input.b) % vec3<u32>(32u))), max(~vec3<i32>(14844i, global4.a, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global4.a, arg_0.a), vec3<i32>(u_input.c, 2147483647i, u_input.a)))), vec3<i32>(arg_0.a, ~(~(-6973i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 0i, 2147483647i), firstTrailingBit(vec3<i32>(arg_0.a, -42559i, global3.a))))) >> (abs(vec3<u32>(_wgslsmith_sub_u32(16840u, u_input.b | 66182u), u_input.b, 35466u)) % vec3<u32>(32u));
    var var_3 = global4.b;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec3<f32>, 13>();
    global2 = global4.d;
    global4 = arg_0;
    let var_0 = Struct_1(-565f, -143f, _wgslsmith_div_f32(global4.b.x, _wgslsmith_f_op_f32(trunc(global3.d.c))), !select(global3.d.d, global2.d, !arg_0.d.d.x));
    let var_1 = u_input.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(func_4(Struct_2(global4.a, global3.b, global4.c, func_1())), func_4(func_4(Struct_2(~(-41686i), _wgslsmith_f_op_vec3_f32(-global4.b), global4.c, global3.c))));
    global3 = Struct_2(_wgslsmith_div_i32(global3.a, select(i32(-1i) * -u_input.a, 0i, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2212f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-438f + global2.b), global2.c)), global3.d.b, func_1().d), global4.d);
    global0 = array<vec3<f32>, 13>();
    let var_0 = global2.d.xx;
    global3 = func_5(func_5(Struct_2(29987i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.c, global2.b, global3.c.a)), global4.c, global4.d), Struct_2(min(1i, 0i), global3.b, Struct_1(_wgslsmith_f_op_f32(-global4.c.c), global4.c.a, _wgslsmith_f_op_f32(global4.c.b + -931f), global4.d.d), Struct_1(func_2(51905i, vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)).a, -1492f, global3.d.b, vec3<bool>(true, true, true)))), Struct_2(global3.a, _wgslsmith_f_op_vec3_f32(trunc(func_4(func_4(Struct_2(-5469i, global0[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(global4.b.x, 581f, global4.d.a, vec3<bool>(true, true, false)), global3.c))).b)), func_4(func_5(Struct_2(global4.a, vec3<f32>(global3.d.b, 992f, global3.b.x), Struct_1(-577f, 469f, 829f, global3.d.d), Struct_1(global3.b.x, 346f, 1892f, vec3<bool>(global2.d.x, true, true))), func_4(Struct_2(38854i, vec3<f32>(-1849f, global3.d.c, global3.c.c), global4.d, global4.c)))).d, func_2(-1i, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(1u, 1u, u_input.b, 1u))))));
    let var_1 = global1[_wgslsmith_index_u32(func_3(global4.b.yz, func_5(Struct_2(1i, vec3<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(max(global2.b, 1000f)), _wgslsmith_div_f32(global2.c, -1087f)), func_1(), Struct_1(218f, _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(trunc(-134f)), !vec3<bool>(global2.d.x, false, true))), func_5(func_5(Struct_2(-41715i, global4.b, global4.d, Struct_1(-153f, 449f, global2.a, global2.d)), func_5(Struct_2(-9920i, global0[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(0u, 31u)], Struct_1(global3.d.c, -658f, -291f, vec3<bool>(false, global3.c.d.x, true))), Struct_2(global4.a, global0[_wgslsmith_index_u32(u_input.b, 13u)], global4.c, Struct_1(993f, global3.b.x, -684f, vec3<bool>(global2.d.x, true, global3.c.d.x))))), func_4(func_5(Struct_2(u_input.a, vec3<f32>(319f, global2.c, 148f), Struct_1(global3.c.a, 1069f, -468f, vec3<bool>(true, true, false)), global1[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_2(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(global3.b.x, -559f, 563f, vec3<bool>(false, var_0.x, var_0.x)), global3.d)))))), 31u)];
    global2 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_2 = max(vec3<u32>(u_input.b, _wgslsmith_mod_u32(~u_input.b, 76868u), 22245u) >> (~(~countOneBits(vec3<u32>(u_input.b, 70077u, u_input.b))) % vec3<u32>(32u)), ~vec3<u32>(~(~11709u), 58681u ^ u_input.b, ~(0u & u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(select(func_5(Struct_2(global3.a, vec3<f32>(1465f, global3.c.a, 899f), Struct_1(385f, -730f, var_1.a, vec3<bool>(true, global3.d.d.x, var_0.x)), global1[_wgslsmith_index_u32(24527u, 31u)]), Struct_2(-31601i, global3.b, Struct_1(-548f, 891f, -267f, vec3<bool>(false, global3.d.d.x, global2.d.x)), global4.d)).a, 51194i, func_5(Struct_2(16104i, vec3<f32>(global2.a, global2.c, global3.b.x), Struct_1(1355f, var_1.c, -938f, global4.d.d), global3.c), Struct_2(global3.a, vec3<f32>(global3.c.c, var_1.c, var_1.c), Struct_1(var_1.b, 1925f, 848f, var_1.d), Struct_1(global4.b.x, var_1.c, global3.c.a, global2.d))).c.d.x)), ~abs(vec3<u32>(var_2.x, var_2.x, 19589u)) >> (vec3<u32>(u_input.b | ~var_2.x, ~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.b), _wgslsmith_div_vec2_u32(var_2.yz, vec2<u32>(u_input.b, 18265u)))) % vec3<u32>(32u)), vec4<i32>(global4.a, abs(_wgslsmith_div_i32(global3.a, global3.a) >> (~4294967295u % 32u)), countOneBits(46748i), _wgslsmith_mod_i32(u_input.a, global4.a)));
}

