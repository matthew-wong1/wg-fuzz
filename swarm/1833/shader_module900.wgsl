struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(68425u, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), 4827u, vec4<u32>(4294967295u, 33269u, 1u, 4294967295u)), Struct_1(44540u, vec4<u32>(1555u, 4294967295u, 36925u, 1u), 73725u, vec4<u32>(0u, 0u, 1u, 1u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 0u, vec4<u32>(0u, 12093u, 23134u, 43452u)), Struct_1(19800u, vec4<u32>(28711u, 0u, 4294967295u, 0u), 40195u, vec4<u32>(1u, 21058u, 0u, 0u)), Struct_1(14718u, vec4<u32>(1u, 27527u, 6787u, 11906u), 1u, vec4<u32>(0u, 9186u, 50576u, 4294967295u)), Struct_1(20922u, vec4<u32>(1u, 13618u, 24555u, 1u), 1u, vec4<u32>(66536u, 64265u, 2524u, 38677u)), Struct_1(1u, vec4<u32>(1u, 89126u, 0u, 0u), 2870u, vec4<u32>(6624u, 0u, 4294967295u, 34712u)), Struct_1(0u, vec4<u32>(8738u, 4294967295u, 81599u, 10008u), 0u, vec4<u32>(4294967295u, 1u, 16892u, 80130u)), Struct_1(4294967295u, vec4<u32>(24413u, 53464u, 12678u, 0u), 0u, vec4<u32>(30960u, 1u, 0u, 21066u)), Struct_1(4294967295u, vec4<u32>(29214u, 1u, 22566u, 20813u), 4294967295u, vec4<u32>(1u, 1u, 62314u, 1u)), Struct_1(1u, vec4<u32>(72266u, 0u, 1u, 64761u), 4294967295u, vec4<u32>(81982u, 79511u, 51344u, 1u)), Struct_1(49086u, vec4<u32>(0u, 4294967295u, 69645u, 4294967295u), 4294967295u, vec4<u32>(23902u, 12586u, 0u, 40265u)), Struct_1(0u, vec4<u32>(51802u, 1u, 71996u, 1u), 93612u, vec4<u32>(8915u, 26609u, 62611u, 20360u)), Struct_1(41951u, vec4<u32>(1u, 77371u, 21041u, 12905u), 56741u, vec4<u32>(0u, 64208u, 1103u, 1u)), Struct_1(4294967295u, vec4<u32>(0u, 1u, 0u, 12149u), 34290u, vec4<u32>(1965u, 35342u, 14057u, 1u)), Struct_1(0u, vec4<u32>(0u, 18517u, 1u, 4294967295u), 23105u, vec4<u32>(0u, 17630u, 24031u, 25396u)));

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(2147483647i, 0i, 1682i), vec3<i32>(-14209i, 5946i, 9506i), vec3<i32>(-1i, -6074i, 1i), vec3<i32>(0i, -1466i, i32(-2147483648)), vec3<i32>(-42655i, -1i, 37756i), vec3<i32>(16815i, 6084i, -34250i), vec3<i32>(i32(-2147483648), -30438i, 1i), vec3<i32>(33455i, -14471i, -54888i), vec3<i32>(35722i, i32(-2147483648), 2147483647i), vec3<i32>(-405i, i32(-2147483648), -1i), vec3<i32>(-1i, -33606i, i32(-2147483648)));

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 9915i;
    let var_1 = Struct_1(arg_0.d.x, arg_0.b, _wgslsmith_mod_u32(countOneBits(_wgslsmith_mod_u32(~arg_0.a, abs(arg_0.c))), 10230u), vec4<u32>(~1u, abs(arg_0.a), arg_0.b.x, _wgslsmith_mod_u32(arg_0.d.x, 1u)));
    global1 = array<Struct_1, 16>();
    let var_2 = Struct_1(arg_0.b.x, reverseBits(~select(abs(vec4<u32>(arg_0.d.x, 61317u, var_1.b.x, 66959u)), arg_0.b, vec4<bool>(true, true, false, true))), ~62589u, firstLeadingBit(abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0.b.x, 37161u, 0u), vec4<u32>(0u, 38832u, 17963u, 124977u))))));
    var var_3 = ~select(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, arg_0.a), var_2.b.x | var_2.a, ~27601u, max(34998u, 28175u)), _wgslsmith_mod_vec4_u32(var_2.d, var_2.b)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(firstTrailingBit(var_2.b)), vec4<u32>(118357u, 14197u, 0u, firstLeadingBit(var_2.c)), vec4<u32>(_wgslsmith_sub_u32(81802u, 38145u), var_2.c, 4202u ^ u_input.a.x, ~u_input.a.x)), false);
    return reverseBits(~41377i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = (1i >> (arg_0.a % 32u)) == func_3(Struct_1(u_input.a.x, _wgslsmith_div_vec4_u32(vec4<u32>(17889u, 75557u, 1u, u_input.a.x) ^ arg_0.b, ~arg_0.b), ~1u, firstLeadingBit(~arg_0.d)));
    global2 = array<vec3<i32>, 11>();
    global2 = array<vec3<i32>, 11>();
    global1 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_dot_vec3_u32(reverseBits(~(~vec3<u32>(0u, 3841u, arg_0.d.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_0.c, 4294967295u) >> (~vec3<u32>(u_input.a.x, 0u, arg_0.c) % vec3<u32>(32u)), ~vec3<u32>(1u, arg_0.c, 1u) << (arg_0.b.yyz % vec3<u32>(32u)))) ^ _wgslsmith_sub_u32(24141u ^ (4294967295u >> (_wgslsmith_mult_u32(arg_0.a, 23231u) % 32u)), 17239u);
    return Struct_1(u_input.a.x, ~vec4<u32>(u_input.a.x & arg_0.b.x, ~0u, ~(~34129u), _wgslsmith_mod_u32(1u, 21438u)), 35039u, vec4<u32>(0u, u_input.a.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.b.x), arg_0.b.wy)), countOneBits(vec3<u32>(arg_0.c, 0u, 27040u) ^ vec3<u32>(4294967295u, 1u, u_input.a.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(7881u, 16u)];
    let var_1 = func_2(Struct_1(~u_input.a.x, vec4<u32>(var_0.d.x, 66667u, ~1u, 46459u), 1u, vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 34136u), ~u_input.a.x), var_0.d.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -553f), 900f)), _wgslsmith_f_op_f32(trunc(-1081f)), _wgslsmith_f_op_f32(2169f + _wgslsmith_f_op_f32(f32(-1f) * -706f))))));
    global3 = array<Struct_1, 1>();
    global2 = array<vec3<i32>, 11>();
    var var_2 = func_2(func_2(func_2(Struct_1(_wgslsmith_mod_u32(1352u, var_0.b.x), var_0.d, ~var_1.a, var_0.d), vec4<f32>(_wgslsmith_f_op_f32(1206f + -1457f), 1355f, -1000f, _wgslsmith_f_op_f32(639f * -169f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-523f, -1909f)) * 554f), _wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1959f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(2003f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, 1000f, -350f, -1360f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2201f, 1122f, -1142f, 869f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-566f, -319f, 789f, 970f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(753f, 207f, -1642f, -2308f)))))));
    return global1[_wgslsmith_index_u32(reverseBits(var_0.a), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 1>();
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, true)), true, true)));
    let var_1 = var_0.zx;
    var var_2 = func_1();
    let var_3 = Struct_1(22169u, var_2.b, _wgslsmith_div_u32(var_2.a, _wgslsmith_mod_u32(2595u >> (_wgslsmith_dot_vec3_u32(var_2.d.wzy, vec3<u32>(var_2.c, 4294967295u, u_input.a.x)) % 32u), ~(~38189u))), vec4<u32>(1u, func_1().a, firstLeadingBit(select(var_2.d.x, ~39551u, false | var_0.x)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.b.x, 4294967295u, 73760u), vec4<u32>(0u, 1u, u_input.a.x, 1u)) ^ _wgslsmith_mod_u32(u_input.a.x, 4294967295u))));
    var var_4 = !(!var_0.x);
    var var_5 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a << (u_input.a.x % 32u), var_3.d.x, abs(var_2.d.x)), (var_2.d.zzz << (var_3.b.xzw % vec3<u32>(32u))) >> (func_2(global1[_wgslsmith_index_u32(var_3.d.x, 16u)], vec4<f32>(134f, -888f, -758f, 1283f)).b.zxw % vec3<u32>(32u))), min(var_2.d.zww, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, var_3.b.x), countOneBits(0u), u_input.a.x), ~vec3<u32>(18289u, 1u, u_input.a.x)))), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(abs(-1589f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1472f, -660f)), _wgslsmith_f_op_f32(-530f - 1840f), -307f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, -494f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1837f, -1377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-209f))))));
}

