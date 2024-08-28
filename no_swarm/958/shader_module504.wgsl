struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_2(vec2<i32>(27943i, i32(-2147483648)), false, Struct_1(vec4<u32>(31275u, 107392u, 16776u, 54503u)), Struct_1(vec4<u32>(4294967295u, 1u, 22088u, 4321u))), vec4<i32>(-44670i, -15684i, 2147483647i, 46856i)), Struct_4(Struct_2(vec2<i32>(-1i, -29639i), true, Struct_1(vec4<u32>(1u, 4294967295u, 14064u, 1u)), Struct_1(vec4<u32>(1u, 10322u, 1u, 76419u))), vec4<i32>(18824i, 29675i, 31326i, 47007i)), Struct_4(Struct_2(vec2<i32>(0i, -1i), false, Struct_1(vec4<u32>(1u, 0u, 37381u, 32216u)), Struct_1(vec4<u32>(1u, 1u, 0u, 4294967295u))), vec4<i32>(1i, 51505i, 0i, -17439i)), Struct_4(Struct_2(vec2<i32>(2147483647i, -1i), false, Struct_1(vec4<u32>(4294967295u, 1u, 7379u, 32888u)), Struct_1(vec4<u32>(1u, 4294967295u, 11636u, 9420u))), vec4<i32>(2147483647i, -59388i, -32601i, i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(8158i, 2147483647i), true, Struct_1(vec4<u32>(0u, 22242u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 42086u, 1u))), vec4<i32>(i32(-2147483648), i32(-2147483648), -51848i, -7557i)), Struct_4(Struct_2(vec2<i32>(24320i, -1i), true, Struct_1(vec4<u32>(0u, 35365u, 0u, 4294967295u)), Struct_1(vec4<u32>(110315u, 31211u, 93145u, 2538u))), vec4<i32>(0i, -33921i, -13890i, -1i)), Struct_4(Struct_2(vec2<i32>(-33432i, i32(-2147483648)), false, Struct_1(vec4<u32>(40817u, 62095u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 17431u, 1u, 4294967295u))), vec4<i32>(-5811i, 42879i, -1i, -1i)), Struct_4(Struct_2(vec2<i32>(-1i, -1i), false, Struct_1(vec4<u32>(28750u, 13674u, 1u, 48469u)), Struct_1(vec4<u32>(0u, 96143u, 23395u, 4294967295u))), vec4<i32>(2147483647i, 19449i, 16742i, 92359i)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), 8072i), true, Struct_1(vec4<u32>(5818u, 38675u, 1u, 0u)), Struct_1(vec4<u32>(75993u, 4294967295u, 0u, 0u))), vec4<i32>(-1i, -1i, -67058i, 1i)), Struct_4(Struct_2(vec2<i32>(-1i, 1i), false, Struct_1(vec4<u32>(19077u, 1u, 42081u, 62086u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 14227u, 36416u))), vec4<i32>(2147483647i, 28947i, -1i, -1i)), Struct_4(Struct_2(vec2<i32>(5371i, 40224i), true, Struct_1(vec4<u32>(34474u, 1u, 20143u, 27042u)), Struct_1(vec4<u32>(22746u, 31121u, 16683u, 45426u))), vec4<i32>(30839i, 0i, -18539i, i32(-2147483648))), Struct_4(Struct_2(vec2<i32>(-1i, 1i), false, Struct_1(vec4<u32>(54941u, 6172u, 29406u, 1u)), Struct_1(vec4<u32>(74622u, 84643u, 39922u, 101681u))), vec4<i32>(-5040i, -11335i, 2147483647i, -14330i)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), -1916i), true, Struct_1(vec4<u32>(206u, 67019u, 1u, 31269u)), Struct_1(vec4<u32>(6268u, 5576u, 1u, 0u))), vec4<i32>(-17984i, 30471i, 8939i, 0i)), Struct_4(Struct_2(vec2<i32>(8923i, 2147483647i), true, Struct_1(vec4<u32>(26612u, 68207u, 4294967295u, 0u)), Struct_1(vec4<u32>(42358u, 49149u, 37801u, 19652u))), vec4<i32>(2147483647i, -19488i, -27199i, 41511i)), Struct_4(Struct_2(vec2<i32>(2147483647i, -1i), false, Struct_1(vec4<u32>(4294967295u, 92111u, 1u, 0u)), Struct_1(vec4<u32>(72725u, 18102u, 14543u, 0u))), vec4<i32>(-47835i, -1600i, -1i, -28155i)), Struct_4(Struct_2(vec2<i32>(0i, -18474i), true, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 61078u)), Struct_1(vec4<u32>(87055u, 75587u, 97054u, 4294967295u))), vec4<i32>(-17556i, 2147483647i, 10692i, 2147483647i)), Struct_4(Struct_2(vec2<i32>(49544i, 17215i), true, Struct_1(vec4<u32>(1u, 26098u, 53849u, 4294967295u)), Struct_1(vec4<u32>(1u, 76159u, 4294967295u, 1u))), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 20938i)), Struct_4(Struct_2(vec2<i32>(1i, 16110i), false, Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 4365u, 31185u, 1u))), vec4<i32>(0i, 2053i, 3761i, -40564i)), Struct_4(Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), false, Struct_1(vec4<u32>(1u, 0u, 16743u, 41202u)), Struct_1(vec4<u32>(0u, 0u, 56868u, 1u))), vec4<i32>(-43209i, i32(-2147483648), -14943i, 1i)), Struct_4(Struct_2(vec2<i32>(i32(-2147483648), 4200i), true, Struct_1(vec4<u32>(75931u, 4294967295u, 118551u, 4294967295u)), Struct_1(vec4<u32>(44970u, 12385u, 18292u, 4294967295u))), vec4<i32>(-21086i, 3851i, i32(-2147483648), 5403i)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 31>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    var var_0 = select(vec3<bool>(global1.b != true, false, any(!select(arg_0.yz, arg_0.zy, vec2<bool>(arg_0.x, global1.b)))), !(!arg_0), true | !(_wgslsmith_f_op_f32(step(arg_2.x, -984f)) <= _wgslsmith_f_op_f32(-arg_2.x)));
    global1 = Struct_2(global1.a, true | var_0.x, Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_1, 25172u, ~u_input.a, ~u_input.a), global1.d.a & ~vec4<u32>(u_input.a, arg_1, 14896u, global1.c.a.x))), Struct_1(vec4<u32>(firstLeadingBit(0u), ~(~u_input.a), _wgslsmith_add_u32(arg_1, 40307u) & _wgslsmith_div_u32(u_input.a, arg_3), ~arg_1 | (82511u >> (arg_3 % 32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(833f, arg_2.x, -1293f), vec3<f32>(-1131f, arg_2.x, 1128f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, 100f, arg_2.x))))));
    global0 = array<Struct_4, 20>();
    var_0 = arg_0;
    return _wgslsmith_add_i32(1i, global1.a.x);
}

fn func_2() -> u32 {
    global1 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(global1.a.x, func_3(!vec3<bool>(true, global1.b, false), global1.d.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(173f, -442f), vec2<f32>(-1194f, 207f)), ~0u)), _wgslsmith_div_i32(abs(max(-1i, -35242i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a.x, -1i, -58715i, global1.a.x), ~vec4<i32>(global1.a.x, -1i, 1i, 2147483647i)))), (select(countOneBits(1i), abs(global1.a.x), global1.b) & 21341i) == global1.a.x, global1.c, Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(global1.c.a, global1.d.a, ~vec4<u32>(21099u, global1.c.a.x, u_input.a, u_input.a)))));
    let var_0 = Struct_2(reverseBits(-_wgslsmith_add_vec2_i32(abs(global1.a), firstLeadingBit(global1.a))), false, global1.d, Struct_1(vec4<u32>(~1u, 4294967295u | (global1.c.a.x & 26234u), _wgslsmith_mult_u32(0u, reverseBits(4294967295u)), 77368u)));
    let var_1 = !vec3<bool>(false, true, (_wgslsmith_f_op_f32(round(-1360f)) > _wgslsmith_f_op_f32(131f * -1059f)) | all(vec2<bool>(var_0.b, false)));
    let var_2 = true;
    global1 = var_0;
    return global1.d.a.x;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = global1.c;
    global0 = array<Struct_4, 20>();
    var var_1 = Struct_1(abs(vec4<u32>(108138u, ~(var_0.a.x & var_0.a.x), 46179u, ~func_2())));
    global2 = array<Struct_4, 31>();
    return all(!select(select(vec4<bool>(global1.b, global1.b, true, global1.b), vec4<bool>(false, global1.b, true, false), global1.b), !vec4<bool>(global1.b, false, true, true), !vec4<bool>(false, true, global1.b, true))) | (((_wgslsmith_mod_u32(var_1.a.x, u_input.a) >> (21780u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(15083u, var_1.a.x), _wgslsmith_clamp_vec2_u32(var_0.a.wx, vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a))) % 32u)) >= _wgslsmith_mod_u32(42326u & global1.c.a.x, ~(0u ^ var_0.a.x)));
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_2 {
    global0 = array<Struct_4, 20>();
    return Struct_2(global1.a, any(select(vec3<bool>(true, false, any(vec4<bool>(false, arg_0, global1.b, false))), select(!vec3<bool>(global1.b, arg_0, true), vec3<bool>(global1.b, false, true), !vec3<bool>(false, true, arg_1)), func_1(_wgslsmith_f_op_f32(ceil(-774f))))), Struct_1(vec4<u32>(u_input.a, ~(~52694u), ~_wgslsmith_dot_vec2_u32(global1.d.a.yz, vec2<u32>(u_input.a, global1.d.a.x)), abs(1u & global1.c.a.x))), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(global1.b | (true || global1.b), func_1(-410f));
    global0 = array<Struct_4, 20>();
    var var_0 = ~func_4(!all(vec4<bool>(false, false, true, global1.b)), any(!vec4<bool>(false, global1.b, false, true))).d.a.wzx >> ((vec3<u32>(~(~global1.c.a.x), ~reverseBits(0u), firstTrailingBit(u_input.a)) << (global1.d.a.wzx % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_mult_vec3_u32(~countOneBits(global1.c.a.zxx) ^ firstLeadingBit(min(global1.c.a.zxy, vec3<u32>(62u, 1u, 22699u))), ~min(firstLeadingBit(global1.d.a.wzy), max(global1.d.a.yzy, global1.d.a.xxy))) >> (~vec3<u32>(_wgslsmith_clamp_u32(global1.d.a.x | 23u, u_input.a, 1u), 4294967295u, (global1.d.a.x << (var_0.x % 32u)) >> (var_0.x % 32u)) % vec3<u32>(32u));
    var_0 = global1.c.a.wyz;
    var var_1 = Struct_1(~(~vec4<u32>(u_input.a, 1u, u_input.a, 0u) >> (vec4<u32>(_wgslsmith_clamp_u32(14102u, var_0.x, u_input.a), _wgslsmith_mult_u32(var_0.x, global1.d.a.x), u_input.a, select(1u, 4294967295u, global1.b)) % vec4<u32>(32u))));
    global0 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-632f + -1359f), _wgslsmith_f_op_f32(f32(-1f) * -465f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-963f, -1813f))))), vec4<i32>(_wgslsmith_sub_i32(min(2147483647i, 18323i), ~(-1i)), global1.a.x, global1.a.x, 5074i), _wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2837f + -1332f)))), global1.a, 1i);
}

