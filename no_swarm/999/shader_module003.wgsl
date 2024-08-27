struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1258f, 482f, 1442f), vec3<f32>(-1283f, 268f, -1122f), vec3<f32>(-430f, 1000f, 575f), vec3<f32>(-347f, -503f, 619f), vec3<f32>(502f, -294f, 1000f), vec3<f32>(1224f, -1000f, -504f), vec3<f32>(264f, 1000f, -455f), vec3<f32>(648f, 1339f, 160f), vec3<f32>(-1000f, 1076f, -397f), vec3<f32>(278f, -919f, 953f), vec3<f32>(-684f, -1990f, -286f), vec3<f32>(-2277f, -361f, -672f), vec3<f32>(622f, 155f, -1000f), vec3<f32>(-1544f, -746f, -1742f), vec3<f32>(-586f, -2356f, 344f), vec3<f32>(-563f, 1202f, 1051f), vec3<f32>(705f, 1350f, 1613f), vec3<f32>(-1000f, 882f, 577f), vec3<f32>(-172f, -830f, -1159f), vec3<f32>(-693f, 1187f, 351f), vec3<f32>(-1071f, -1379f, -1023f), vec3<f32>(791f, 596f, 1585f), vec3<f32>(-542f, -1807f, 218f), vec3<f32>(-1000f, 553f, -998f), vec3<f32>(695f, 437f, -1753f), vec3<f32>(754f, -1053f, -888f), vec3<f32>(1000f, 392f, 422f));

var<private> global1: array<f32, 32> = array<f32, 32>(1813f, 264f, 1000f, 218f, -1135f, 1167f, 632f, 988f, -174f, -659f, -315f, -189f, -823f, -751f, 879f, 1197f, 1884f, 215f, -767f, -983f, 1193f, -1453f, -541f, 586f, 610f, 1305f, -333f, -210f, 538f, 186f, 897f, 439f);

var<private> global2: u32 = 593u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, -2147483647i, select(2147483647i, -1i, true), ~7717i), ~countOneBits(vec4<i32>(-50043i, -21568i, 1i, 27671i))), _wgslsmith_add_i32(0i, ~(-13713i) & firstTrailingBit(54838i))));
    var var_1 = ~(~(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 79931u), vec4<u32>(47358u, u_input.b.x, u_input.a, 29914u)))) & 0u;
    var_1 = u_input.b.x;
    global0 = array<vec3<f32>, 27>();
    var var_2 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !vec4<bool>(select(true, false, true), true, true, all(vec4<bool>(true, false, true, false))));
    return select(var_2.yzz, vec3<bool>(all(vec2<bool>(all(vec3<bool>(true, var_2.x, false)), false)), var_2.x, any(!var_2.xww)), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = select(vec3<bool>(false, true, arg_1.x), select(vec3<bool>(true, select(arg_3, true, arg_1.x), false), vec3<bool>(-16304i >= _wgslsmith_mod_i32(arg_2.x, arg_0.a.x), true, false), func_3()), vec3<bool>(true, any(func_3().xz), arg_1.x));
    global0 = array<vec3<f32>, 27>();
    return Struct_2(vec3<bool>(any(var_1.yx), true, all(vec2<bool>(var_1.x, true))), 10775u, arg_0);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = func_2(arg_1, vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), (u_input.a > max(167077u, u_input.a)) || true), _wgslsmith_sub_vec3_i32(arg_1.a ^ _wgslsmith_mult_vec3_i32(arg_1.a | vec3<i32>(arg_1.c, 1i, arg_1.a.x), arg_1.a), arg_1.a), true);
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 32u)];
    global0 = array<vec3<f32>, 27>();
    let var_2 = var_0.a.xy;
    let var_3 = 1439f;
    return firstLeadingBit(arg_1.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global0 = array<vec3<f32>, 27>();
    var var_0 = Struct_1(func_1(vec4<f32>(_wgslsmith_f_op_f32(-785f + -294f), 1000f, 241f, _wgslsmith_f_op_f32(round(-399f))), func_2(func_2(Struct_1(vec3<i32>(arg_1, 0i, arg_1), vec2<u32>(4294967295u, 14502u), arg_1), vec2<bool>(false, false), vec3<i32>(arg_1, arg_1, 43509i), true).c, vec2<bool>(true, true), firstLeadingBit(vec3<i32>(1i, arg_1, arg_1)), true).c) & min(vec3<i32>(~arg_1, ~(-2147483647i), _wgslsmith_div_i32(1i, arg_1)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-46228i, 36157i, 37004i))), vec2<u32>(arg_0.x, ~arg_0.x), select(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-16592i, arg_1, arg_1, -12651i), vec4<i32>(-11760i, arg_1, arg_1, arg_1)), _wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 7075i, -2147483647i, -20217i), vec4<i32>(-101288i, 2147483647i, arg_1, arg_1)))), arg_1, true));
    global1 = array<f32, 32>();
    let var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(var_0.a, arg_0.zy, 0i), vec2<bool>(false, false), vec3<i32>(arg_1, var_0.a.x, arg_1), false).c, vec2<bool>(false, true), vec3<i32>(-694i, var_0.c, arg_1), all(vec2<bool>(false, true))).c, select(func_2(Struct_1(vec3<i32>(arg_1, 5419i, var_0.c), var_0.b, var_0.a.x), vec2<bool>(false, false), vec3<i32>(2147483647i, -57969i, 15233i), false).a.xy, vec2<bool>(false, true), vec2<bool>(true, true)), var_0.a, _wgslsmith_f_op_f32(floor(-124f)) >= -2790f).c, vec2<bool>(true, _wgslsmith_sub_i32(-2147483647i, arg_1) < arg_1), var_0.a >> (vec3<u32>(31970u, var_0.b.x, arg_0.x) % vec3<u32>(32u)), any(vec4<bool>(true, true, true, true))).c, !(!vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), firstLeadingBit(max(vec3<i32>(0i, ~(-1i), ~(-2147483647i)), var_0.a)), any(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), select(false, true, true))));
    var var_2 = ~reverseBits(~(abs(var_0.b.x) << (var_0.b.x % 32u)));
    return Struct_1(var_0.a, _wgslsmith_div_vec2_u32(max(vec2<u32>(~var_0.b.x, 1u), vec2<u32>(reverseBits(arg_0.x), abs(var_0.b.x))), firstLeadingBit(vec2<u32>(~u_input.a, 22720u))), var_1.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global1 = array<f32, 32>();
    global2 = 1u;
    let var_0 = func_4(vec4<u32>(1u, 0u, 0u, u_input.b.x), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 78217i, 1i), -vec3<i32>(2147483647i, 34666i, 2147483647i), select(vec3<i32>(14797i, 2147483647i, -1i), vec3<i32>(-41015i, 42262i, 12537i), false)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, -51395i, 3224i)), func_1(vec4<f32>(1206f, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], -1699f, -729f), Struct_1(vec3<i32>(-1i, -1i, -1i), vec2<u32>(1u, 78564u), 13210i)))));
    global0 = array<vec3<f32>, 27>();
    var var_1 = Struct_2(vec3<bool>(func_2(Struct_1(vec3<i32>(2147483647i, -2147483647i, 38859i), u_input.b, -2147483647i), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_div_vec3_i32(var_0.a, var_0.a), false).a.x, false, true), _wgslsmith_mod_u32(~4294967295u, ~((var_0.b.x ^ var_0.b.x) & var_0.b.x)), Struct_1(vec3<i32>(var_0.c, 15362i >> (var_0.b.x % 32u), reverseBits(var_0.c)) | ~vec3<i32>(-41188i, var_0.c, var_0.a.x), ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b)), var_0.c));
    var var_2 = countOneBits(abs(var_0.b)) ^ select(var_0.b, select(var_1.c.b, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.c.b.x), vec2<u32>(u_input.a, u_input.a)), !var_1.a.yz) | firstLeadingBit(firstTrailingBit(u_input.b)), true);
    let var_3 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(97045u, 32u)]))), vec2<i32>(var_1.c.c, countOneBits(func_1(vec4<f32>(1000f, -162f, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), var_0).x)), -min(vec3<i32>(var_1.c.a.x, 1i, _wgslsmith_dot_vec3_i32(var_1.c.a, vec3<i32>(-2147483647i, var_0.a.x, var_0.c))), -var_0.a));
}

