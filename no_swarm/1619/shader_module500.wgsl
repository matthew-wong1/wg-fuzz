struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<i32>(0i, -3543i, 0i), vec4<i32>(66015i, 1i, 1i, -53317i), vec4<u32>(4294967295u, 0u, 0u, 52310u), vec4<bool>(true, false, true, true), vec3<i32>(-39329i, -1i, 35691i)), vec3<i32>(1i, -31825i, 19235i)), Struct_2(Struct_1(vec3<i32>(-5873i, i32(-2147483648), 1i), vec4<i32>(3888i, 4870i, -3288i, 2147483647i), vec4<u32>(4294967295u, 36420u, 0u, 1u), vec4<bool>(false, true, false, true), vec3<i32>(-27268i, 2147483647i, -19325i)), vec3<i32>(-25606i, -13126i, 1i)), Struct_2(Struct_1(vec3<i32>(1i, -15855i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 7847u, 1693u, 0u), vec4<bool>(true, true, true, false), vec3<i32>(-18513i, -35060i, 833i)), vec3<i32>(-1i, 37298i, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<u32>(123530u, 1u, 42182u, 22492u), vec4<bool>(true, false, true, false), vec3<i32>(-19240i, 17985i, i32(-2147483648))), vec3<i32>(i32(-2147483648), 43888i, -24542i)), Struct_2(Struct_1(vec3<i32>(-27610i, 0i, 2147483647i), vec4<i32>(-3940i, 0i, 1i, 43805i), vec4<u32>(4294967295u, 4294967295u, 13631u, 1u), vec4<bool>(true, true, true, false), vec3<i32>(23880i, 37249i, 2147483647i)), vec3<i32>(-1i, -36908i, 11914i)), Struct_2(Struct_1(vec3<i32>(44247i, 0i, 5020i), vec4<i32>(i32(-2147483648), -37207i, i32(-2147483648), -1i), vec4<u32>(1u, 4294967295u, 16346u, 0u), vec4<bool>(false, true, false, false), vec3<i32>(4342i, 4692i, 0i)), vec3<i32>(-1i, 0i, -1i)), Struct_2(Struct_1(vec3<i32>(-5869i, 50295i, 4084i), vec4<i32>(2147483647i, -42992i, i32(-2147483648), 0i), vec4<u32>(5757u, 1u, 34508u, 10947u), vec4<bool>(false, true, true, true), vec3<i32>(0i, 0i, 232i)), vec3<i32>(i32(-2147483648), -10530i, -5223i)), Struct_2(Struct_1(vec3<i32>(0i, 39912i, 48281i), vec4<i32>(0i, 50139i, 50002i, -59609i), vec4<u32>(0u, 0u, 11595u, 0u), vec4<bool>(true, true, false, true), vec3<i32>(0i, -7433i, -1i)), vec3<i32>(7267i, 1i, -25049i)), Struct_2(Struct_1(vec3<i32>(0i, 20371i, 31354i), vec4<i32>(1i, -27874i, -1i, -4261i), vec4<u32>(4294967295u, 2964u, 2075u, 1u), vec4<bool>(true, false, true, false), vec3<i32>(9512i, 0i, -37574i)), vec3<i32>(-29642i, 13632i, -48911i)), Struct_2(Struct_1(vec3<i32>(0i, -22376i, 2147483647i), vec4<i32>(-28065i, -1i, i32(-2147483648), 12298i), vec4<u32>(1u, 1u, 7947u, 552u), vec4<bool>(false, false, true, true), vec3<i32>(-1i, i32(-2147483648), -10012i)), vec3<i32>(-1i, 40733i, 1i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec4<i32>(-15668i, -1i, -1459i, 8588i), vec4<u32>(57546u, 1u, 1u, 44891u), vec4<bool>(true, false, true, true), vec3<i32>(1i, -18820i, -1i)), vec3<i32>(-17542i, 2147483647i, -11655i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -14630i, 0i), vec4<i32>(17027i, i32(-2147483648), -28799i, -2022i), vec4<u32>(0u, 1u, 16083u, 1739u), vec4<bool>(false, true, true, false), vec3<i32>(-45865i, -20338i, -23956i)), vec3<i32>(1i, 2147483647i, 2147483647i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -24156i), vec4<i32>(23530i, 2147483647i, -1i, 0i), vec4<u32>(0u, 11277u, 66819u, 53627u), vec4<bool>(true, true, false, true), vec3<i32>(-10100i, -1174i, -26055i)), vec3<i32>(0i, -1i, -63598i)), Struct_2(Struct_1(vec3<i32>(-13059i, -50870i, -16400i), vec4<i32>(-27018i, 1i, 0i, -15024i), vec4<u32>(0u, 57533u, 72433u, 22662u), vec4<bool>(false, true, false, true), vec3<i32>(-32561i, 26435i, 31626i)), vec3<i32>(57103i, -36795i, -1i)), Struct_2(Struct_1(vec3<i32>(0i, -1i, -52681i), vec4<i32>(1i, 1i, 2147483647i, 1i), vec4<u32>(1u, 4062u, 4294967295u, 1578u), vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, -67663i, 13594i)), vec3<i32>(50310i, -7180i, -41766i)), Struct_2(Struct_1(vec3<i32>(-1i, 15500i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -4945i), vec4<u32>(4294967295u, 43302u, 64936u, 71088u), vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, i32(-2147483648), -10914i)), vec3<i32>(74836i, 1i, 0i)), Struct_2(Struct_1(vec3<i32>(1396i, i32(-2147483648), -27226i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 53139i), vec4<u32>(13291u, 0u, 47082u, 24463u), vec4<bool>(true, true, false, false), vec3<i32>(-62035i, 2147483647i, -19389i)), vec3<i32>(0i, -31583i, -1i)), Struct_2(Struct_1(vec3<i32>(4382i, 2147483647i, 2147483647i), vec4<i32>(5711i, 60304i, 0i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 125u, 4294967295u), vec4<bool>(true, false, false, false), vec3<i32>(0i, 2147483647i, -46299i)), vec3<i32>(-57284i, 2147483647i, -63i)), Struct_2(Struct_1(vec3<i32>(2147483647i, -6476i, 12605i), vec4<i32>(1i, 3362i, 3032i, -69696i), vec4<u32>(24979u, 4294967295u, 87339u, 0u), vec4<bool>(true, true, true, false), vec3<i32>(1i, -34577i, 29616i)), vec3<i32>(38357i, 0i, -39228i)), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, -26857i), vec4<i32>(1i, 2147483647i, -1i, -1i), vec4<u32>(4294967295u, 4294967295u, 6658u, 0u), vec4<bool>(false, false, true, true), vec3<i32>(i32(-2147483648), 1i, 21437i)), vec3<i32>(1i, 74573i, -23947i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, 2127i), vec4<i32>(25702i, 20867i, 2789i, 61238i), vec4<u32>(32195u, 0u, 1u, 2075u), vec4<bool>(false, true, true, true), vec3<i32>(47834i, 4193i, 1i)), vec3<i32>(0i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(vec3<i32>(1i, 26286i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -36760i, 1i), vec4<u32>(1078u, 9523u, 85732u, 1u), vec4<bool>(false, false, false, false), vec3<i32>(15264i, 2147483647i, i32(-2147483648))), vec3<i32>(-1i, -1i, 1i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -23564i, -16646i), vec4<i32>(0i, -8825i, 1i, -19973i), vec4<u32>(41001u, 57174u, 1u, 2052u), vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, 24131i, 2147483647i)), vec3<i32>(i32(-2147483648), -11727i, 2147483647i)), Struct_2(Struct_1(vec3<i32>(-52260i, i32(-2147483648), -1i), vec4<i32>(0i, 12660i, -80511i, 2147483647i), vec4<u32>(1u, 28315u, 7080u, 1u), vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), vec3<i32>(19648i, -17884i, -16679i)), Struct_2(Struct_1(vec3<i32>(1i, -10577i, -64918i), vec4<i32>(-1i, 3983i, -1i, 21077i), vec4<u32>(0u, 1032u, 19690u, 4294967295u), vec4<bool>(false, false, true, true), vec3<i32>(-1i, -22284i, 15237i)), vec3<i32>(-3005i, -19671i, 14598i)), Struct_2(Struct_1(vec3<i32>(-23803i, -2083i, 1i), vec4<i32>(0i, 2147483647i, 0i, 19051i), vec4<u32>(81941u, 1u, 7856u, 4294967295u), vec4<bool>(false, false, true, false), vec3<i32>(-11309i, -7289i, 2147483647i)), vec3<i32>(38788i, -55585i, -48824i)), Struct_2(Struct_1(vec3<i32>(-1i, 1i, 8238i), vec4<i32>(0i, -16173i, -4318i, 12365i), vec4<u32>(31650u, 30536u, 4294967295u, 80667u), vec4<bool>(true, true, false, true), vec3<i32>(-12928i, 0i, 2147483647i)), vec3<i32>(16122i, i32(-2147483648), -37781i)), Struct_2(Struct_1(vec3<i32>(2006i, -1i, 2147483647i), vec4<i32>(-1i, 1610i, 0i, 1i), vec4<u32>(35191u, 10807u, 4294967295u, 21418u), vec4<bool>(true, false, true, true), vec3<i32>(0i, i32(-2147483648), -25079i)), vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec3<i32>(-32764i, i32(-2147483648), -49035i), vec4<i32>(31085i, 21439i, 44069i, -25727i), vec4<u32>(48918u, 33411u, 4294967295u, 1u), vec4<bool>(true, false, false, true), vec3<i32>(79082i, 2147483647i, 1i)), vec3<i32>(1i, 47323i, -1i)), Struct_2(Struct_1(vec3<i32>(-27395i, -57960i, 0i), vec4<i32>(-5515i, 0i, 8247i, i32(-2147483648)), vec4<u32>(1u, 0u, 1u, 23108u), vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), -1i, 56596i)), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_2(Struct_1(vec3<i32>(-8059i, -1i, -9177i), vec4<i32>(2147483647i, i32(-2147483648), -28783i, 0i), vec4<u32>(32192u, 0u, 0u, 4294967295u), vec4<bool>(false, false, false, false), vec3<i32>(i32(-2147483648), 0i, 0i)), vec3<i32>(-57742i, 2147483647i, i32(-2147483648))));

var<private> global1: array<i32, 6> = array<i32, 6>(2147483647i, -1i, 28006i, -22151i, -43467i, i32(-2147483648));

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<bool, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.d.x, arg_0.a), _wgslsmith_f_op_f32(trunc(-1618f)))), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * arg_0.a)), vec3<f32>(308f, _wgslsmith_f_op_f32(max(arg_0.a, 316f)), _wgslsmith_f_op_f32(-1285f - _wgslsmith_f_op_f32(ceil(arg_0.d.x))))));
    let var_1 = arg_0.c.d.x != !(821f > _wgslsmith_f_op_f32(round(-874f)));
    global3 = array<bool, 24>();
    let var_2 = arg_0;
    return var_2.c.d.yxw;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_4) -> f32 {
    global0 = array<Struct_2, 31>();
    var var_0 = arg_1.c.b;
    var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-arg_3.c.b, arg_1.c.b | arg_3.c.b), -vec4<i32>(arg_1.c.a.x, 0i, 0i, 20207i))), vec4<i32>(-68968i, _wgslsmith_mult_i32(-2147483647i, ~_wgslsmith_dot_vec3_i32(arg_1.e, vec3<i32>(arg_1.e.x, 2147483647i, global1[_wgslsmith_index_u32(1u, 6u)]))), 1i, -(~(-2147483647i) & (-20474i & global1[_wgslsmith_index_u32(arg_3.b, 6u)]))));
    let var_1 = select(func_3(arg_1), arg_1.c.d.wyx, all(!vec2<bool>(arg_3.c.d.x, true)) && (arg_3.c.e.x != _wgslsmith_mod_i32(arg_3.c.b.x, _wgslsmith_mod_i32(-1i, arg_1.c.b.x))));
    var var_2 = vec2<u32>(u_input.a, 4294967295u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(u_input.b.www, ~vec3<u32>(~63063u, abs(19532u), 4294967295u) << (u_input.b.xyw % vec3<u32>(32u)));
    let var_1 = 42263u;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1651f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -152f), -466f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -238f)) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-417f, 1278f, global3[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_f_op_f32(func_2(-861f, Struct_3(1401f, var_0.x, global2[_wgslsmith_index_u32(var_0.x, 16u)], vec2<f32>(-742f, -1000f), vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 6u)], -7648i, -1i)), global3[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_4(-344f, 0u, Struct_1(vec3<i32>(-35967i, global1[_wgslsmith_index_u32(65988u, 6u)], -1i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 15865i, global1[_wgslsmith_index_u32(var_1, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), u_input.b, vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(9666u, 24u)]), vec3<i32>(23628i, global1[_wgslsmith_index_u32(4294967295u, 6u)], 8057i)), vec4<f32>(-1667f, 1125f, -1000f, -1010f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, 1525f)))));
    var var_3 = -411f;
    var_0 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(0u, 1u, u_input.a, 1u)), vec4<u32>(u_input.b.x, 16553u, var_1, var_1)), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(4294967295u, 59630u, u_input.b.x, 0u)) << ((u_input.b ^ u_input.b) % vec4<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x, 20405u), 4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(14535u, u_input.b.x), 36949u)), u_input.b.zwy, !select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], !global3[_wgslsmith_index_u32(0u, 24u)], all(vec2<bool>(global3[_wgslsmith_index_u32(37004u, 24u)], global3[_wgslsmith_index_u32(30663u, 24u)]))), select(!vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(var_1, 24u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 24u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(var_0.x, 24u)], true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 24u)], true, false))), !vec3<bool>(global3[_wgslsmith_index_u32(var_1, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(u_input.b.x, 24u)])));
    return global2[_wgslsmith_index_u32(var_1 | max(reverseBits(var_0.x), var_1), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !(!vec3<bool>(true, all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.d.x, global3[_wgslsmith_index_u32(34108u, 24u)], global3[_wgslsmith_index_u32(14456u, 24u)])), var_0.c.x < 1u));
    let var_2 = vec2<u32>(~countOneBits(~abs(var_0.c.x)), _wgslsmith_dot_vec4_u32((var_0.c & ~vec4<u32>(65293u, u_input.a, 0u, u_input.b.x)) & select(vec4<u32>(var_0.c.x, u_input.b.x, 0u, 4294967295u), ~var_0.c, var_0.d), func_1().c));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global3 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~3706i)));
}

