struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(vec3<u32>(32283u, 5967u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 25044u, 4294967295u)), Struct_5(vec3<u32>(98187u, 6908u, 51067u), vec4<u32>(14606u, 53861u, 15180u, 33406u)), Struct_5(vec3<u32>(38276u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 82211u, 33008u)), Struct_5(vec3<u32>(20824u, 14788u, 16391u), vec4<u32>(1u, 49099u, 1u, 63422u)), Struct_5(vec3<u32>(102075u, 4294967295u, 18752u), vec4<u32>(0u, 61620u, 1u, 79913u)), Struct_5(vec3<u32>(37451u, 63131u, 1u), vec4<u32>(19484u, 63050u, 25288u, 144662u)), Struct_5(vec3<u32>(40161u, 67620u, 75691u), vec4<u32>(85364u, 4294967295u, 1u, 0u)), Struct_5(vec3<u32>(0u, 0u, 4294967295u), vec4<u32>(4294967295u, 29082u, 1195u, 1u)), Struct_5(vec3<u32>(12394u, 33903u, 79458u), vec4<u32>(20339u, 1u, 20474u, 10912u)), Struct_5(vec3<u32>(53368u, 1u, 4294967295u), vec4<u32>(114595u, 24767u, 28397u, 1u)), Struct_5(vec3<u32>(61545u, 34087u, 15795u), vec4<u32>(90614u, 0u, 1u, 0u)), Struct_5(vec3<u32>(23624u, 6974u, 9292u), vec4<u32>(35977u, 72696u, 4294967295u, 1u)), Struct_5(vec3<u32>(1u, 39585u, 1u), vec4<u32>(0u, 20551u, 0u, 4294967295u)), Struct_5(vec3<u32>(35626u, 105600u, 31724u), vec4<u32>(57498u, 0u, 34486u, 0u)));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = Struct_3(arg_1.zy, vec3<bool>(true, false && global1.x, global1.x));
    var var_1 = ~select(vec4<i32>(_wgslsmith_clamp_i32(-34250i, arg_0, -1i), -15441i, select(0i, global4.x, false), _wgslsmith_mod_i32(-1i, arg_0)) << (vec4<u32>(u_input.c, u_input.a.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), u_input.b)) % vec4<u32>(32u)), vec4<i32>(~(~(-5486i)), ~global4.x ^ ~global2.x, _wgslsmith_add_i32(global4.x, global4.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-56807i, -49346i), -vec2<i32>(-2147483647i, global4.x))), select(!select(vec4<bool>(true, false, global1.x, var_0.a.x), vec4<bool>(var_0.b.x, var_0.b.x, false, arg_1.x), var_0.a.x), select(select(vec4<bool>(true, true, global1.x, var_0.b.x), vec4<bool>(false, global1.x, global1.x, var_0.a.x), vec4<bool>(var_0.b.x, false, true, var_0.b.x)), vec4<bool>(false, true, true, arg_1.x), !vec4<bool>(var_0.b.x, false, global1.x, global1.x)), true));
    var var_2 = u_input.b ^ vec3<u32>(reverseBits(0u), 50876u, countOneBits(1u));
    let var_3 = Struct_5(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(34964u, var_2.x), 26671u, u_input.a.x), ~u_input.b), ~(~vec3<u32>(1u, var_2.x, u_input.a.x))), _wgslsmith_mult_vec4_u32(~countOneBits(~vec4<u32>(var_2.x, 1u, u_input.c, u_input.d)), vec4<u32>(u_input.d, max(2839u, 4294967295u), u_input.d, ~var_2.x >> (var_2.x % 32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2043f - _wgslsmith_f_op_f32(-1852f * 209f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f - 234f)), -1620f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-797f, 1385f, true)), _wgslsmith_div_f32(330f, 280f), _wgslsmith_f_op_f32(max(-920f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -423f))))), false);
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = arg_3;
    let var_1 = u_input.c;
    var var_2 = 49676u;
    let var_3 = arg_0;
    var var_4 = arg_1.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e.x, -943f) * _wgslsmith_f_op_f32(-var_3.e.x)), -309f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.e.x), var_3.e.x))), _wgslsmith_f_op_f32(exp2(arg_0.e.x)))));
}

fn func_2() -> vec2<i32> {
    global0 = array<Struct_5, 14>();
    let var_0 = Struct_1(vec4<f32>(-1178f, -127f, _wgslsmith_f_op_f32(func_4(Struct_4(global1.x & global1.x, global1.x, any(vec4<bool>(global1.x, false, global1.x, true)), Struct_3(vec2<bool>(false, global1.x), vec3<bool>(global1.x, global1.x, true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(353f, 689f)))), Struct_4(!global1.x, !global1.x, func_3(global2.x, vec3<bool>(global1.x, global1.x, global1.x)), Struct_3(vec2<bool>(false, global1.x), vec3<bool>(true, global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, -287f))), Struct_2(Struct_1(vec4<f32>(2076f, -621f, -429f, 1922f), true), global1.x, _wgslsmith_f_op_f32(-1000f - 213f), Struct_1(vec4<f32>(235f, -816f, -881f, 373f), true), -1153f), _wgslsmith_add_u32(1u, 53578u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) * _wgslsmith_f_op_f32(-1f))), true);
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(min(_wgslsmith_mult_i32(global4.x, global2.x), global2.x), ~_wgslsmith_add_i32(global2.x, 76036i)), global2.x, 1i));
    var_1 = ~_wgslsmith_div_vec3_i32(select(~(-vec3<i32>(global2.x, -41967i, global2.x)), (vec3<i32>(global4.x, global4.x, -32356i) ^ vec3<i32>(global2.x, -19432i, 35219i)) ^ (vec3<i32>(global4.x, var_1.x, global2.x) >> (vec3<u32>(16069u, 0u, 47843u) % vec3<u32>(32u))), vec3<bool>(true, var_0.b, all(vec2<bool>(true, var_0.b)))), vec3<i32>(5514i, 0i, 8505i));
    let var_2 = global0[_wgslsmith_index_u32(~(~(~max(1u, 89243u))), 14u)];
    return ~_wgslsmith_add_vec2_i32(var_1.yz, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i & global4.x), vec2<i32>(global2.x, global2.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(232f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, 706f)));
    var var_1 = u_input.d;
    global2 = func_2();
    global1 = select(!select(vec2<bool>(true, true), !(!vec2<bool>(arg_0.x, true)), vec2<bool>(u_input.c != 4294967295u, global1.x)), select(vec2<bool>(all(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(global1.x, arg_0.x, arg_0.x, false), vec4<bool>(global1.x, arg_0.x, true, global1.x))), true), arg_0, (select(u_input.c, u_input.d, global1.x) | firstLeadingBit(28901u)) > u_input.c), !select(select(vec2<bool>(arg_0.x, true), !vec2<bool>(arg_0.x, true), select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true))), select(arg_0, select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, false), true), false), vec2<bool>(func_3(-865i, vec3<bool>(global1.x, arg_0.x, true)), true)));
    var var_2 = Struct_2(Struct_1(var_0, all(!select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(global1.x, false, false, false)))), true, arg_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.x, 396f, 487f))), true), var_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f * -2131f) * _wgslsmith_f_op_f32(abs(var_0.x))) * _wgslsmith_f_op_f32(var_2.c - 2863f)))) - 696f);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = arg_3.a;
    var_0 = arg_0;
    global1 = select(select(!select(select(vec2<bool>(var_0.b, arg_3.d.b), vec2<bool>(false, false), arg_3.d.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, true)), vec2<bool>(global1.x, false)), vec2<bool>(!var_0.b, !var_0.b), global2.x > 41075i), !vec2<bool>(!(true | var_0.b), !all(vec3<bool>(true, false, global1.x))), select(select(vec2<bool>(true, true), vec2<bool>(!arg_3.d.b, !var_0.b), !vec2<bool>(global1.x, var_0.b)), select(select(select(vec2<bool>(arg_0.b, global1.x), vec2<bool>(true, false), var_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, false), vec2<bool>(false, arg_0.b)), true), select(select(vec2<bool>(var_0.b, false), vec2<bool>(arg_0.b, arg_0.b), global1.x), select(vec2<bool>(true, false), vec2<bool>(true, arg_0.b), vec2<bool>(true, false)), all(vec2<bool>(false, true))), true | (global4.x >= arg_2)), vec2<bool>(all(vec4<bool>(arg_0.b, var_0.b, true, true)), true)));
    var var_1 = 4294967295u;
    let var_2 = arg_3;
    return Struct_5(max(~(~vec3<u32>(1u, 24011u, 24313u)), u_input.b << (u_input.b % vec3<u32>(32u))), (firstLeadingBit(min(vec4<u32>(arg_1, 78970u, u_input.d, u_input.b.x), vec4<u32>(5996u, 0u, u_input.c, 21326u))) & ~vec4<u32>(4294967295u, arg_1, 61769u, 1u)) & ~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 39988u, arg_1, u_input.d), vec4<u32>(34814u, 21295u, 5257u, 6043u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(global1.x, true);
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, _wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, global1.x), vec4<f32>(915f, -729f, 246f, 2109f))), _wgslsmith_div_f32(-2182f, -260f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1169f, -213f, -1037f, -1000f) - vec4<f32>(-590f, 823f, -1251f, -377f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, 131f, 109f, -1313f)))), true), _wgslsmith_mod_u32(u_input.b.x, ~select(u_input.b.x, 9158u, false)), 0i, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 721f, 425f, -814f)))), any(select(vec4<bool>(false, true, true, false), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, true, global1.x, global1.x)))), true, _wgslsmith_f_op_f32(min(-1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1524f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, 2319f, 190f, 659f)), true), -1000f));
    var var_1 = Struct_4(select(-14348i, _wgslsmith_clamp_i32(-2684i, ~1i, 10853i), true) <= reverseBits(~(~global4.x)), true, true, Struct_3(vec2<bool>(global1.x, select(!global1.x, global1.x, any(vec4<bool>(global1.x, true, false, false)))), !select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), vec3<bool>(false, global1.x, false), !global1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, -1018f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, 753f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, 129f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, 2346f)), vec2<f32>(-1596f, -715f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1150f, -150f))))));
    let var_2 = ~(~var_0.b.x >> (_wgslsmith_sub_u32(abs(1u), ~firstLeadingBit(var_0.a.x)) % 32u));
    global1 = vec2<bool>(global1.x, !(!any(var_1.d.a)));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(~49121u), 14u)];
    var_1 = Struct_4(global1.x, false, false, Struct_3(var_1.d.b.zx, select(select(select(var_1.d.b, var_1.d.b, vec3<bool>(var_1.a, var_1.d.a.x, global1.x)), !vec3<bool>(var_1.d.a.x, var_1.a, false), !var_1.d.b), !var_1.d.b, !vec3<bool>(false, var_1.b, global1.x))), vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.e.x, var_1.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(99290u, var_3.a.x, select(23204u, var_0.a.x, var_1.d.a.x)), ~vec3<u32>(5991u, var_0.b.x, u_input.d) ^ select(vec3<u32>(4294967295u, var_2, 4294967295u), u_input.b, var_1.a)), u_input.b.x, abs(1132i), ~min(~(~vec3<u32>(4294967295u, 0u, 58091u)), ~countOneBits(vec3<u32>(var_0.b.x, u_input.d, 47868u))), firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(51456u, u_input.d), vec2<u32>(86124u, 0u) | vec2<u32>(var_0.a.x, 63404u))));
}

