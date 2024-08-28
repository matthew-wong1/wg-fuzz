struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1172f, 932f);

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 1u, 0u, 2629u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(5077u, 4294967295u, 0u, 33828u), vec4<u32>(9727u, 4294967295u, 58692u, 0u), vec4<u32>(4294967295u, 0u, 66739u, 38100u), vec4<u32>(4294967295u, 0u, 3462u, 16035u), vec4<u32>(43613u, 7637u, 20714u, 41908u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 65715u), vec4<u32>(47247u, 36636u, 20047u, 0u), vec4<u32>(2022u, 30891u, 87616u, 19001u), vec4<u32>(4294967295u, 0u, 14129u, 113804u), vec4<u32>(0u, 4294967295u, 73830u, 1u), vec4<u32>(6661u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 3130u, 1u), vec4<u32>(1u, 0u, 12269u, 1u), vec4<u32>(3468u, 18479u, 7506u, 25203u), vec4<u32>(3992u, 65982u, 1u, 4294967295u), vec4<u32>(1u, 13473u, 67962u, 1u), vec4<u32>(1u, 41135u, 0u, 0u), vec4<u32>(1u, 1u, 59055u, 14834u), vec4<u32>(1u, 28303u, 34911u, 0u), vec4<u32>(11561u, 0u, 38997u, 4294967295u));

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1622f, Struct_1(vec2<bool>(true, true), vec4<u32>(1270u, 1u, 27558u, 56500u), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<u32>(27189u, 76605u, 1u))), Struct_2(-1714f, Struct_1(vec2<bool>(true, false), vec4<u32>(110408u, 0u, 1u, 1u), vec3<i32>(-1i, 21918i, -1i), vec3<u32>(48921u, 63190u, 1u))), Struct_2(1245f, Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<u32>(11618u, 11779u, 67214u))), Struct_2(-1093f, Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 5758u, 40891u, 5481u), vec3<i32>(4601i, -27285i, 0i), vec3<u32>(4294967295u, 0u, 26739u))), Struct_2(-1000f, Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 64127u, 4294967295u, 4294967295u), vec3<i32>(-37874i, -12762i, 30346i), vec3<u32>(34476u, 4294967295u, 19332u))), Struct_2(1231f, Struct_1(vec2<bool>(true, false), vec4<u32>(11740u, 1u, 54648u, 0u), vec3<i32>(12286i, -7042i, 0i), vec3<u32>(8629u, 33714u, 3741u))), Struct_2(-1221f, Struct_1(vec2<bool>(false, false), vec4<u32>(21224u, 0u, 668u, 35574u), vec3<i32>(-1i, -36012i, 2147483647i), vec3<u32>(76155u, 4294967295u, 18035u))), Struct_2(543f, Struct_1(vec2<bool>(true, true), vec4<u32>(4719u, 54237u, 8684u, 98456u), vec3<i32>(-7108i, -33919i, i32(-2147483648)), vec3<u32>(1u, 11754u, 52760u))), Struct_2(-1300f, Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 1u, 5804u, 1u), vec3<i32>(1i, 0i, -30817i), vec3<u32>(1u, 0u, 7300u))), Struct_2(-592f, Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 39308u, 40636u), vec3<i32>(2147483647i, 21466i, -24369i), vec3<u32>(46405u, 67634u, 4294967295u))), Struct_2(520f, Struct_1(vec2<bool>(true, true), vec4<u32>(61081u, 15984u, 4294967295u, 1u), vec3<i32>(2147483647i, -1i, 0i), vec3<u32>(102824u, 1u, 4294967295u))), Struct_2(-803f, Struct_1(vec2<bool>(true, true), vec4<u32>(277u, 1066u, 0u, 51939u), vec3<i32>(0i, -15054i, -1i), vec3<u32>(1u, 9712u, 0u))), Struct_2(-977f, Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 0u, 8305u, 1u), vec3<i32>(6738i, i32(-2147483648), 47938i), vec3<u32>(16575u, 151190u, 4294967295u))), Struct_2(-2007f, Struct_1(vec2<bool>(false, false), vec4<u32>(7421u, 1u, 1u, 0u), vec3<i32>(-44647i, 2147483647i, i32(-2147483648)), vec3<u32>(48582u, 0u, 17481u))), Struct_2(-1253f, Struct_1(vec2<bool>(false, false), vec4<u32>(52439u, 81852u, 50963u, 31414u), vec3<i32>(13455i, 2147483647i, 23517i), vec3<u32>(31743u, 4294967295u, 4294967295u))), Struct_2(1391f, Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 51765u, 39269u, 98888u), vec3<i32>(i32(-2147483648), -4907i, 2147483647i), vec3<u32>(4294967295u, 22432u, 73229u))), Struct_2(-2540f, Struct_1(vec2<bool>(false, false), vec4<u32>(57136u, 1u, 0u, 17596u), vec3<i32>(1i, 56895i, 0i), vec3<u32>(2979u, 41338u, 34186u))), Struct_2(-752f, Struct_1(vec2<bool>(true, false), vec4<u32>(81427u, 4441u, 1u, 4294967295u), vec3<i32>(5369i, -50520i, i32(-2147483648)), vec3<u32>(13212u, 17924u, 0u))), Struct_2(459f, Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 1u, 36106u, 1u), vec3<i32>(-1i, -77692i, 0i), vec3<u32>(4294967295u, 22563u, 62983u))), Struct_2(-1323f, Struct_1(vec2<bool>(false, true), vec4<u32>(32032u, 0u, 0u, 3550u), vec3<i32>(-4869i, i32(-2147483648), 49575i), vec3<u32>(81222u, 0u, 24025u))), Struct_2(-435f, Struct_1(vec2<bool>(false, true), vec4<u32>(18956u, 0u, 4294967295u, 26303u), vec3<i32>(2147483647i, 0i, 0i), vec3<u32>(4294967295u, 1u, 1u))), Struct_2(598f, Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 1u, 13186u), vec3<i32>(2147483647i, 0i, 41964i), vec3<u32>(1u, 1u, 1u))), Struct_2(1340f, Struct_1(vec2<bool>(true, true), vec4<u32>(33682u, 49649u, 76713u, 61984u), vec3<i32>(-35967i, 9947i, 1i), vec3<u32>(4743u, 1u, 67053u))), Struct_2(150f, Struct_1(vec2<bool>(false, false), vec4<u32>(72149u, 4294967295u, 1u, 39023u), vec3<i32>(-1i, 0i, 23249i), vec3<u32>(0u, 25056u, 54756u))), Struct_2(-302f, Struct_1(vec2<bool>(false, false), vec4<u32>(67337u, 30564u, 1u, 61443u), vec3<i32>(-1i, -41136i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 32901u))), Struct_2(-1144f, Struct_1(vec2<bool>(true, false), vec4<u32>(40062u, 1u, 4294967295u, 446u), vec3<i32>(6567i, -3289i, 2147483647i), vec3<u32>(79025u, 15713u, 29118u))), Struct_2(-210f, Struct_1(vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, 53910u, 60304u), vec3<i32>(-1i, 27726i, -1i), vec3<u32>(4294967295u, 4294967295u, 1u))), Struct_2(-159f, Struct_1(vec2<bool>(false, true), vec4<u32>(31275u, 52672u, 6316u, 0u), vec3<i32>(-9021i, i32(-2147483648), -1851i), vec3<u32>(0u, 20627u, 43061u))), Struct_2(-882f, Struct_1(vec2<bool>(false, false), vec4<u32>(6419u, 33546u, 54237u, 46271u), vec3<i32>(-1i, -39051i, -1i), vec3<u32>(4294967295u, 1264u, 556u))), Struct_2(621f, Struct_1(vec2<bool>(true, true), vec4<u32>(11548u, 14765u, 55662u, 16441u), vec3<i32>(i32(-2147483648), 48893i, 2147483647i), vec3<u32>(0u, 2563u, 1u))), Struct_2(350f, Struct_1(vec2<bool>(false, false), vec4<u32>(36723u, 4294967295u, 4294967295u, 4294967295u), vec3<i32>(9259i, 0i, 1i), vec3<u32>(1u, 4294967295u, 4294967295u))), Struct_2(-1919f, Struct_1(vec2<bool>(false, true), vec4<u32>(19244u, 1u, 22356u, 4294967295u), vec3<i32>(-1i, -18175i, 0i), vec3<u32>(4294967295u, 14193u, 14641u))));

var<private> global3: u32 = 1u;

var<private> global4: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = global0.x;
    let var_1 = 1u;
    global2 = array<Struct_2, 32>();
    let var_2 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2134f * global0.x), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(exp2(global0.x))))), 1891f, global0.x);
    var var_3 = Struct_5(all(vec4<bool>(any(vec3<bool>(false, true, true)) & any(vec3<bool>(true, false, true)), false, all(vec2<bool>(true, false)), true)), Struct_3(false, Struct_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.c.x, 23u)], -(~vec3<i32>(u_input.b, -27655i, arg_0)), ~reverseBits(u_input.c.wyx)), min(~4294967295u, _wgslsmith_mod_u32(u_input.a, var_1) << (u_input.c.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 670f, 168f, global0.x), var_2, vec4<bool>(true, true, true, false))))))));
    return var_3.b.b.c;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_3(!select(true, false, true), Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.c, func_3(3792i), u_input.c.xwx), ~4294967295u >> (_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(arg_0, 0u, ~75307u)) % 32u));
    var var_1 = ~arg_2;
    var var_2 = select(var_0.b.a, select(!var_0.b.a, !vec2<bool>(!var_0.b.a.x, true), !select(var_0.b.a.x, var_0.b.a.x, var_0.a) || true), all(!select(select(vec2<bool>(true, var_0.a), var_0.b.a, var_0.b.a.x), vec2<bool>(true, true), any(var_0.b.a))));
    global4 = max(u_input.c.x, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 1u), 2503u, ~1u), countOneBits(arg_2)));
    let var_3 = abs(var_0.b.c.x);
    return Struct_5(any(!var_0.b.a), Struct_3(true, Struct_1(vec2<bool>(all(vec4<bool>(false, var_2.x, var_2.x, var_0.b.a.x)), var_0.b.a.x & var_0.a), ~vec4<u32>(arg_2, arg_2, u_input.c.x, var_0.b.b.x), vec3<i32>(min(-15101i, 0i), ~33416i, 0i), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, arg_0, 1u), vec3<u32>(53304u, 4294967295u, arg_0))), 33597u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, global0.x, -225f, 1080f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-181f, global0.x, -1421f, arg_1.x)))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = select(vec2<u32>(26934u, arg_1.b.d.x), vec2<u32>(~min(~u_input.c.x, 0u), ~_wgslsmith_div_u32(~arg_1.b.d.x, u_input.c.x)), vec2<bool>(all(!vec3<bool>(arg_1.b.a.x, arg_0.b.a, true)), arg_1.b.a.x && true));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-206f, arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * -958f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a * 682f), arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.wyz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, -769f) - arg_0.c.zxz) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1752f, arg_0.c.x, -354f)))))));
    global4 = 43664u;
    global3 = 1u;
    let var_2 = false;
    return vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(46553u, 1u), 4294967295u)), ~select(arg_0.b.b.d.x, 1u | ~arg_1.b.b.x, true), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, firstLeadingBit(_wgslsmith_div_u32(arg_1.b.d.x, 3435u))), abs(arg_1.b.b.x)), _wgslsmith_mod_u32(max(max(arg_0.b.b.d.x, arg_1.b.b.x), ~arg_1.b.b.x), _wgslsmith_add_u32(var_0.x, var_0.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> bool {
    global3 = _wgslsmith_dot_vec4_u32(~(~(~max(vec4<u32>(u_input.c.x, u_input.a, 33374u, arg_1.x), global1[_wgslsmith_index_u32(u_input.a, 23u)]))), func_4(func_2(1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_0.zy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -1537f)), vec2<bool>(true, false))), firstLeadingBit(u_input.c.x), abs(vec3<i32>(u_input.b, u_input.b, -1898i) << (vec3<u32>(u_input.a, u_input.c.x, arg_1.x) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x), u_input.c.zzx), ~5432u), _wgslsmith_div_u32(~u_input.a, ~arg_1.x), true), 32u)], u_input.b));
    let var_0 = _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(-38718i, -2147483647i ^ u_input.b, abs(u_input.b), abs(u_input.b)), abs(vec4<i32>(-30830i, u_input.b, -8417i, u_input.b)), vec4<bool>(u_input.b < -26711i, true, true, true)), vec4<i32>(34619i, ~(_wgslsmith_mult_i32(19667i, 1i) >> (func_4(Struct_5(true, Struct_3(true, Struct_1(vec2<bool>(true, true), u_input.c, vec3<i32>(-2147483647i, -1i, u_input.b), u_input.c.wxw), 60192u), arg_0), Struct_2(arg_0.x, Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.c.x, arg_1.x, 4294967295u, 25295u), vec3<i32>(-14828i, -32649i, 24960i), vec3<u32>(u_input.a, u_input.c.x, 25854u))), u_input.b).x % 32u)), min(u_input.b, 20381i), ~u_input.b), firstLeadingBit(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b)) >> (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 19639u), 23u)] % vec4<u32>(32u)), vec4<i32>(u_input.b, abs(-2147483647i), u_input.b, 67749i))));
    global4 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(58948u, _wgslsmith_mult_u32(~0u, abs(u_input.a)), true), arg_1.x, arg_1.x, _wgslsmith_sub_u32(90449u, max(u_input.c.x, arg_1.x)) & u_input.c.x), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.c.yzy, u_input.c.wxx, vec3<bool>(false, true, true)), u_input.c.wyy), u_input.c.zyw), 23u)]);
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    global4 = 2822u;
    return var_1.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(false, true && func_1(vec4<f32>(504f, 614f, global0.x, -372f), vec2<u32>(0u, 0u)), false);
    var var_1 = _wgslsmith_f_op_f32(max(678f, _wgslsmith_f_op_f32(1062f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 624f))))));
    var_1 = global0.x;
    var var_2 = func_2(~abs(u_input.c.x), vec2<f32>(global0.x, global0.x), u_input.a, firstTrailingBit(vec3<i32>(-15795i, u_input.b, ~u_input.b))).b;
    global3 = var_2.c;
    var var_3 = Struct_3(all(!var_0), Struct_1(vec2<bool>(true, true), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(~32970u, abs(u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), var_2.b.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(max(17714i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, var_2.b.c.x, -14954i), vec4<i32>(var_2.b.c.x, 2147483647i, u_input.b, 64984i)), firstTrailingBit(-2147483647i)), -var_2.b.c), ~var_2.b.d | var_2.b.b.zxw), u_input.a);
    var var_4 = Struct_5(var_3.a | false, func_2(func_2(var_2.b.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, 950f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x)))), _wgslsmith_div_u32(var_2.c >> (var_2.b.b.x % 32u), u_input.a), ~var_3.b.c).b.b.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(22904u, vec2<f32>(global0.x, global0.x), var_2.c, var_2.b.c).c.xw) + vec2<f32>(_wgslsmith_f_op_f32(-1505f + global0.x), global0.x)), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.wzy), u_input.c.ywz), vec3<i32>(~(u_input.b << (u_input.a % 32u)), var_2.b.c.x, 2147483647i)).b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1014f, global0.x, 1525f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(178f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1401f - _wgslsmith_f_op_f32(round(var_4.c.x))) * var_4.c.x)), u_input.b);
}

