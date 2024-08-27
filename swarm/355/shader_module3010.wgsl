struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(44436u, i32(-2147483648), vec3<i32>(-15361i, 4557i, 13225i), true), vec2<f32>(1834f, 666f), Struct_1(12292u, -6540i, vec3<i32>(i32(-2147483648), -22690i, -15993i), false)), Struct_2(vec2<i32>(-163i, 30847i), Struct_1(1u, -1i, vec3<i32>(2147483647i, -63695i, -1i), false), vec2<f32>(234f, 369f), Struct_1(17165u, 0i, vec3<i32>(i32(-2147483648), -38256i, 0i), false)), Struct_2(vec2<i32>(-26452i, 8231i), Struct_1(4294967295u, -34570i, vec3<i32>(-7512i, 1470i, 1i), true), vec2<f32>(-1875f, -296f), Struct_1(0u, -37720i, vec3<i32>(-9138i, 0i, 15587i), true)), Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(43292u, i32(-2147483648), vec3<i32>(0i, i32(-2147483648), -34948i), true), vec2<f32>(903f, -1628f), Struct_1(0u, i32(-2147483648), vec3<i32>(29149i, 9629i, -17212i), true)), Struct_2(vec2<i32>(i32(-2147483648), -15251i), Struct_1(74222u, -5357i, vec3<i32>(-43327i, 75641i, i32(-2147483648)), false), vec2<f32>(-343f, 110f), Struct_1(50579u, 2147483647i, vec3<i32>(2147483647i, i32(-2147483648), -12821i), false)), Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(44029u, -7720i, vec3<i32>(-2208i, -1i, 0i), true), vec2<f32>(-1668f, 464f), Struct_1(37585u, 1i, vec3<i32>(-48896i, 7752i, 61350i), false)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(32070u, -12362i, vec3<i32>(-3848i, -56045i, i32(-2147483648)), false), vec2<f32>(-369f, -553f), Struct_1(4294967295u, 2189i, vec3<i32>(-13373i, 2147483647i, -29565i), true)), Struct_2(vec2<i32>(-63861i, 45179i), Struct_1(24293u, 6286i, vec3<i32>(-8939i, -8045i, 32675i), false), vec2<f32>(723f, -828f), Struct_1(4294967295u, -62789i, vec3<i32>(0i, 5169i, -1i), false)), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(68313u, 76i, vec3<i32>(9313i, -50183i, 1i), false), vec2<f32>(895f, 711f), Struct_1(0u, 2147483647i, vec3<i32>(49337i, -20511i, -21425i), true)), Struct_2(vec2<i32>(16477i, 2147483647i), Struct_1(0u, -31510i, vec3<i32>(-9429i, 2147483647i, 3445i), false), vec2<f32>(415f, 1267f), Struct_1(35139u, 1i, vec3<i32>(23753i, 0i, -1i), true)), Struct_2(vec2<i32>(2147483647i, -13197i), Struct_1(0u, i32(-2147483648), vec3<i32>(18821i, i32(-2147483648), i32(-2147483648)), false), vec2<f32>(-478f, 1177f), Struct_1(60144u, 14435i, vec3<i32>(1220i, 86376i, 28875i), true)), Struct_2(vec2<i32>(17291i, -9877i), Struct_1(4294967295u, 0i, vec3<i32>(2147483647i, 23991i, 2147483647i), true), vec2<f32>(-217f, -199f), Struct_1(0u, 2147483647i, vec3<i32>(432i, 0i, 2147483647i), false)), Struct_2(vec2<i32>(7349i, 41436i), Struct_1(1u, 20343i, vec3<i32>(17687i, 0i, 0i), false), vec2<f32>(1159f, 518f), Struct_1(1u, 19134i, vec3<i32>(46948i, 2147483647i, -8102i), false)), Struct_2(vec2<i32>(-34918i, -1440i), Struct_1(0u, i32(-2147483648), vec3<i32>(i32(-2147483648), -11795i, 1i), true), vec2<f32>(198f, 796f), Struct_1(40777u, -23395i, vec3<i32>(12123i, 52939i, -4433i), false)), Struct_2(vec2<i32>(11851i, 0i), Struct_1(1u, 1i, vec3<i32>(0i, 42002i, -46940i), true), vec2<f32>(1522f, -191f), Struct_1(1u, -4905i, vec3<i32>(1i, 20838i, 2147483647i), true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    let var_0 = vec2<i32>(5609i, ~(-10440i));
    global1 = array<Struct_2, 15>();
    var var_1 = ~(~(~(~(vec4<u32>(arg_0.b, 6138u, global0.x, 25999u) << (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))));
    var_1 = firstTrailingBit(~vec4<u32>(var_1.x, abs(4294967295u), abs(arg_0.b), min(var_1.x, 4294967295u)) & _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.c.x, 82976u), vec4<u32>(global0.x, u_input.b, var_1.x, arg_0.b)), ~vec4<u32>(arg_0.b, u_input.a, var_1.x, 27669u)), vec4<u32>(global0.x, var_1.x, 1u, _wgslsmith_add_u32(global0.x, arg_0.b))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f + 889f));
    return arg_0;
}

fn func_3(arg_0: Struct_3) -> Struct_3 {
    global1 = array<Struct_2, 15>();
    let var_0 = arg_0.a;
    let var_1 = Struct_3(var_0);
    let var_2 = func_1(func_1(Struct_4(func_1(Struct_4(var_1, global0.x, var_1, Struct_3(var_1.a))).a, global0.x, Struct_3(_wgslsmith_f_op_f32(1357f * var_0)), func_1(func_1(Struct_4(Struct_3(var_0), global0.x, Struct_3(1000f), var_1))).d))).a;
    let var_3 = min(countOneBits(u_input.e), u_input.e);
    return arg_0;
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.c.a + -608f)), _wgslsmith_f_op_f32(trunc(-675f)));
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_4(Struct_3(-554f), arg_0.b, func_3(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1250f, 1361f)))), func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) + _wgslsmith_f_op_f32(select(arg_0.d.a, arg_0.a.a, true))))));
    var var_2 = u_input.c.zx;
    var var_3 = ~u_input.e.x;
    return ~(arg_0.b | var_2.x);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec2<bool> {
    global0 = max(~(~vec4<u32>(0u, 0u, 0u, arg_3) << (min(vec4<u32>(arg_3, arg_0, arg_3, arg_3), vec4<u32>(arg_3, 1u, global0.x, 1u)) % vec4<u32>(32u))), vec4<u32>(0u, 0u, ~arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(global0.x, arg_0)), u_input.c.zy >> (global0.yw % vec2<u32>(32u))))) | (vec4<u32>(_wgslsmith_dot_vec3_u32(~global0.xyx, global0.wzz), 1u, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global0.x, 1u), u_input.c), min(u_input.b, u_input.c.x))) & countOneBits(vec4<u32>(20970u, u_input.b, ~arg_0, arg_0)));
    let var_0 = _wgslsmith_mod_vec4_u32(min(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_3, arg_3, 0u, 77136u)), ~vec4<u32>(arg_0, 0u, arg_0, 4294967295u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 4294967295u, 1u, 1u), ~vec4<u32>(global0.x, global0.x, u_input.c.x, 10942u))), ~((select(vec4<u32>(30604u, global0.x, global0.x, arg_3), vec4<u32>(arg_3, global0.x, arg_3, arg_3), vec4<bool>(true, false, false, true)) | abs(vec4<u32>(0u, global0.x, arg_0, 37092u))) ^ ~(vec4<u32>(arg_3, global0.x, 0u, 1215u) & vec4<u32>(0u, arg_0, global0.x, 25005u))));
    global0 = ~reverseBits(var_0);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-258f * 140f))), -1135f))))));
    return !select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(false, true, true)), vec2<bool>(true, all(vec4<bool>(true, false, true, true))), true && (683f < var_2));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = all(arg_1);
    let var_1 = vec2<i32>(abs((-1i >> (_wgslsmith_add_u32(global0.x, u_input.a) % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 27135i, 9224i, u_input.e.x) | vec4<i32>(u_input.e.x, 0i, 2147483647i, 0i), vec4<i32>(2147483647i, u_input.e.x, -4746i, -1i) | vec4<i32>(u_input.e.x, 33851i, 1i, u_input.e.x))), reverseBits(countOneBits(2147483647i)));
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, ~u_input.c.x << (u_input.c.x % 32u)), u_input.a);
    let var_3 = !all(select(arg_1, select(vec3<bool>(arg_1.x, arg_2.x, true), arg_1, arg_1), !arg_1)) | arg_2.x;
    let var_4 = vec4<i32>(10863i, var_1.x, -37349i, -var_1.x);
    return Struct_1(14009u, u_input.e.x, -vec3<i32>(var_1.x, u_input.e.x, _wgslsmith_div_i32(-2147483647i, -1i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, 6092i) >> (var_2 % 32u), 15087i) == _wgslsmith_div_i32(_wgslsmith_div_i32(~1i, var_4.x), ~_wgslsmith_mult_i32(var_4.x, u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = firstLeadingBit(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 4294967295u)) | ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.c.x, u_input.c.x), vec4<u32>(1u, global0.x, global0.x, global0.x))));
    var var_1 = func_5(vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, !any(vec2<bool>(var_0, var_0))), func_4(~func_2(func_1(Struct_4(Struct_3(-248f), 56064u, Struct_3(2081f), Struct_3(758f))), all(vec2<bool>(true, var_0))), ~(~abs(vec4<i32>(-19642i, u_input.e.x, u_input.e.x, -1i))), _wgslsmith_div_vec3_i32(u_input.e, -vec3<i32>(50460i, -20628i, u_input.e.x)), global0.x));
    var var_2 = !any(select(!vec4<bool>(var_0, var_1.d, var_1.d, var_1.d), vec4<bool>(true && var_0, true, var_0, !var_0), true | var_1.d));
    let var_3 = _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(-33900i, 43594i)), select(var_1.b, _wgslsmith_div_i32(-9390i, 34174i), !func_4(1u | var_1.a, vec4<i32>(var_1.b, var_1.b, 2147483647i, var_1.c.x) << (vec4<u32>(1u, 65825u, 1u, 62302u) % vec4<u32>(32u)), abs(vec3<i32>(var_1.c.x, -2147483647i, var_1.c.x)), abs(1u)).x));
    var var_4 = vec3<i32>(var_3, ~var_3, 0i);
    var var_5 = vec4<i32>(abs(min(min(1i, 26246i), 47262i << (var_1.a % 32u))), select(_wgslsmith_add_i32(~(-3272i), ~0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-17057i, var_3, var_1.c.x, -54166i), vec4<i32>(var_3, 1i, var_1.b, 0i)), abs(vec4<i32>(40071i, 0i, var_4.x, var_3))), false), u_input.e.x, -1i) >> (~(~min(~vec4<u32>(var_1.a, 1u, u_input.a, global0.x), ~vec4<u32>(4294967295u, 91851u, global0.x, var_1.a))) % vec4<u32>(32u));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1141f))), _wgslsmith_f_op_f32(-1243f - _wgslsmith_f_op_f32(select(145f, 629f, var_0))), -391f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-319f, 1568f, 1000f) + vec3<f32>(-647f, 250f, 535f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2179f, -1442f, -782f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-271f, 1198f, -1678f) - vec3<f32>(1141f, 1351f, -1000f)), vec3<f32>(-2052f, 1000f, 1057f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

