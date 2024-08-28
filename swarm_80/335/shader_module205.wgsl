struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(34977u, 9074u, 4294967295u));

var<private> global2: f32 = -479f;

var<private> global3: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(-1847f, vec3<u32>(4294967295u, 24491u, 16595u), Struct_1(vec3<u32>(4294967295u, 76526u, 19889u)), vec4<i32>(0i, -1i, 26300i, -15293i), vec4<u32>(4294967295u, 42001u, 4294967295u, 41177u)), Struct_3(1714f, vec3<u32>(18464u, 4294967295u, 62282u), Struct_1(vec3<u32>(24623u, 34765u, 2342u)), vec4<i32>(0i, 0i, -3284i, 2147483647i), vec4<u32>(0u, 3146u, 5239u, 14582u)), Struct_3(2081f, vec3<u32>(55052u, 49681u, 4294967295u), Struct_1(vec3<u32>(1u, 22848u, 22406u)), vec4<i32>(23499i, 2147483647i, 3519i, 2147483647i), vec4<u32>(1u, 39153u, 1u, 10124u)), Struct_3(-1105f, vec3<u32>(19701u, 24164u, 63697u), Struct_1(vec3<u32>(1u, 1u, 1u)), vec4<i32>(-13186i, -14265i, i32(-2147483648), -40526i), vec4<u32>(46295u, 0u, 121848u, 1u)), Struct_3(814f, vec3<u32>(55519u, 4294967295u, 1u), Struct_1(vec3<u32>(13252u, 1u, 63602u)), vec4<i32>(2147483647i, 9436i, -1i, 1i), vec4<u32>(39994u, 4294967295u, 2245u, 43806u)), Struct_3(-1000f, vec3<u32>(0u, 9324u, 4294967295u), Struct_1(vec3<u32>(34459u, 4294967295u, 6211u)), vec4<i32>(i32(-2147483648), -4315i, 11605i, 13147i), vec4<u32>(736u, 6396u, 0u, 10871u)), Struct_3(1015f, vec3<u32>(1u, 4294967295u, 48752u), Struct_1(vec3<u32>(17703u, 1u, 1u)), vec4<i32>(1i, 52170i, i32(-2147483648), i32(-2147483648)), vec4<u32>(124731u, 1u, 53900u, 1u)), Struct_3(368f, vec3<u32>(13189u, 1u, 32u), Struct_1(vec3<u32>(0u, 0u, 4294967295u)), vec4<i32>(-16273i, 0i, -81733i, 22986i), vec4<u32>(14130u, 0u, 77447u, 0u)), Struct_3(198f, vec3<u32>(1u, 0u, 0u), Struct_1(vec3<u32>(0u, 0u, 44199u)), vec4<i32>(6484i, 1i, 2147483647i, -48443i), vec4<u32>(23652u, 37655u, 57283u, 25902u)), Struct_3(-1724f, vec3<u32>(28477u, 30453u, 1u), Struct_1(vec3<u32>(23570u, 4294967295u, 0u)), vec4<i32>(12088i, -1i, 1i, i32(-2147483648)), vec4<u32>(0u, 86365u, 102793u, 1u)), Struct_3(-721f, vec3<u32>(1u, 59586u, 4294967295u), Struct_1(vec3<u32>(0u, 80801u, 4294967295u)), vec4<i32>(-1i, 9797i, -37314i, 1i), vec4<u32>(8704u, 33744u, 0u, 38838u)), Struct_3(278f, vec3<u32>(8784u, 4294967295u, 14236u), Struct_1(vec3<u32>(1u, 24107u, 26079u)), vec4<i32>(-23526i, -62085i, 51300i, -798i), vec4<u32>(21571u, 0u, 46928u, 7117u)), Struct_3(-1174f, vec3<u32>(1u, 0u, 0u), Struct_1(vec3<u32>(4294967295u, 58791u, 0u)), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<u32>(23980u, 9344u, 1u, 1u)), Struct_3(918f, vec3<u32>(1u, 0u, 21054u), Struct_1(vec3<u32>(21974u, 4294967295u, 18966u)), vec4<i32>(54983i, 0i, -23205i, 18144i), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_3(1000f, vec3<u32>(1u, 4294967295u, 80330u), Struct_1(vec3<u32>(12367u, 7864u, 46695u)), vec4<i32>(-27031i, i32(-2147483648), 2147483647i, 46217i), vec4<u32>(16908u, 0u, 48673u, 1u)), Struct_3(-840f, vec3<u32>(0u, 1u, 1346u), Struct_1(vec3<u32>(1u, 0u, 18949u)), vec4<i32>(3696i, -27238i, -498i, 0i), vec4<u32>(0u, 1u, 18303u, 0u)), Struct_3(757f, vec3<u32>(0u, 1u, 20414u), Struct_1(vec3<u32>(143160u, 4294967295u, 15584u)), vec4<i32>(-17510i, 28250i, 12165i, -42417i), vec4<u32>(6063u, 18986u, 25210u, 1u)), Struct_3(-1876f, vec3<u32>(46026u, 1u, 1u), Struct_1(vec3<u32>(1u, 100261u, 6289u)), vec4<i32>(53133i, -46047i, i32(-2147483648), -10329i), vec4<u32>(1u, 37570u, 1u, 8364u)), Struct_3(463f, vec3<u32>(4294967295u, 29398u, 61287u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec4<i32>(-32865i, -8395i, 0i, 1i), vec4<u32>(11193u, 39068u, 4294967295u, 4294967295u)), Struct_3(1213f, vec3<u32>(97380u, 6869u, 4500u), Struct_1(vec3<u32>(46506u, 53855u, 0u)), vec4<i32>(2147483647i, 0i, 14635i, -1i), vec4<u32>(1u, 4294967295u, 29092u, 5071u)), Struct_3(-600f, vec3<u32>(4294967295u, 48734u, 29239u), Struct_1(vec3<u32>(5719u, 0u, 6260u)), vec4<i32>(2147483647i, 42075i, -24i, -35855i), vec4<u32>(8778u, 1u, 66118u, 12183u)), Struct_3(225f, vec3<u32>(6275u, 1u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), vec4<i32>(i32(-2147483648), i32(-2147483648), -13892i, 275i), vec4<u32>(1u, 1u, 6249u, 31342u)), Struct_3(472f, vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec3<u32>(0u, 0u, 61473u)), vec4<i32>(1i, 2147483647i, 2147483647i, -1i), vec4<u32>(0u, 4294967295u, 17890u, 13842u)), Struct_3(-271f, vec3<u32>(1u, 56464u, 0u), Struct_1(vec3<u32>(1u, 77393u, 0u)), vec4<i32>(2147483647i, 17510i, -26071i, -16952i), vec4<u32>(1u, 4866u, 45473u, 7021u)), Struct_3(360f, vec3<u32>(1u, 1u, 31186u), Struct_1(vec3<u32>(8589u, 1u, 0u)), vec4<i32>(0i, -48918i, 35829i, -23155i), vec4<u32>(66525u, 38752u, 76394u, 53539u)), Struct_3(-863f, vec3<u32>(38645u, 48860u, 0u), Struct_1(vec3<u32>(74882u, 5065u, 45315u)), vec4<i32>(2147483647i, i32(-2147483648), -52453i, 2147483647i), vec4<u32>(1u, 1u, 0u, 48492u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(countOneBits(1u | _wgslsmith_mod_u32(~global0.a.x, 4294967295u | global1.a.x)), 0u);
    let var_1 = -2227f;
    return vec3<bool>(arg_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -1686f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(step(var_1, 943f))), _wgslsmith_f_op_f32(757f + _wgslsmith_f_op_f32(-816f * -977f)))), true);
}

fn func_2() -> Struct_4 {
    let var_0 = 10579u;
    global3 = array<Struct_3, 26>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1579f - -861f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, var_1))) * vec2<f32>(_wgslsmith_f_op_f32(select(857f, var_1, true)), -921f))));
    return Struct_4(Struct_1(u_input.a), Struct_1(select(u_input.a, global1.a, func_3(Struct_4(Struct_1(global1.a), Struct_1(vec3<u32>(1u, global0.a.x, global0.a.x))), true))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global3 = array<Struct_3, 26>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(103f, _wgslsmith_f_op_f32(1019f + arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 982f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, -929f) + vec2<f32>(-368f, -1269f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -1013f))))));
    let var_2 = vec3<u32>(var_0.a.a.x, var_0.b.a.x, global0.a.x);
    var var_3 = 411f;
    return Struct_2(~(~max(vec3<u32>(u_input.a.x, 36018u, 31094u), min(vec3<u32>(var_2.x, 20242u, global0.a.x), vec3<u32>(arg_0.a.x, var_2.x, u_input.d)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = func_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = func_1(Struct_1(_wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(1u, 46665u, _wgslsmith_div_u32(27649u, 4294967295u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(ceil(1071f)))), -432f));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1456f, 342f, false)) * -279f)))), max(vec3<u32>(5710u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(arg_1.a.x, var_0.a.x)), 45388u), arg_0.a), func_2().a, max(u_input.c, select(countOneBits(countOneBits(vec4<i32>(34661i, u_input.b.x, -2147483647i, u_input.c.x))), countOneBits(max(vec4<i32>(u_input.c.x, -2147483647i, -1i, 23709i), vec4<i32>(-1i, arg_2, u_input.c.x, arg_2))), false)), ~firstLeadingBit(vec4<u32>(4294967295u, 9028u, var_0.a.x, u_input.d) ^ vec4<u32>(45171u, 27273u, 62503u, 0u)) >> (~select(~vec4<u32>(1u, 4294967295u, 0u, arg_1.a.x), vec4<u32>(var_1.a.x, 0u, 4294967295u, 40516u), true) % vec4<u32>(32u)));
    var var_3 = 16948i;
    let var_4 = abs(countOneBits(abs(-3297i))) & countOneBits(arg_2);
    return 44770u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x & global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.c.x | -12375i, 1i, 28285i) ^ u_input.c.yzy, 76125u, ~firstLeadingBit(4294967295u) << (~func_4(func_1(Struct_1(vec3<u32>(u_input.a.x, 0u, 1u)), -183f), func_2().b, ~u_input.c.x) % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1543f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, 1244f) - vec2<f32>(-1165f, 875f))))))));
}

