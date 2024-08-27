struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<u32>(4294967295u, 0u), 0i, Struct_2(Struct_1(-528f, 0u, vec2<f32>(1727f, 362f), -32886i)), vec3<f32>(671f, -1615f, 441f)), Struct_3(vec2<u32>(6461u, 10194u), 63181i, Struct_2(Struct_1(569f, 16502u, vec2<f32>(493f, 1000f), 23924i)), vec3<f32>(2044f, 1249f, 575f)), Struct_3(vec2<u32>(33451u, 1u), 66040i, Struct_2(Struct_1(-1000f, 45203u, vec2<f32>(238f, 3305f), -1i)), vec3<f32>(-1817f, -418f, -1136f)), Struct_3(vec2<u32>(4294967295u, 4294967295u), -56514i, Struct_2(Struct_1(264f, 7820u, vec2<f32>(208f, 848f), -47275i)), vec3<f32>(1107f, -1511f, -795f)), Struct_3(vec2<u32>(9454u, 0u), 1i, Struct_2(Struct_1(1666f, 1u, vec2<f32>(173f, 1431f), -34546i)), vec3<f32>(-227f, 1000f, 518f)), Struct_3(vec2<u32>(7061u, 0u), 3859i, Struct_2(Struct_1(-183f, 53897u, vec2<f32>(-803f, -1065f), 1i)), vec3<f32>(943f, 117f, -1611f)), Struct_3(vec2<u32>(67163u, 69653u), -15692i, Struct_2(Struct_1(-927f, 11658u, vec2<f32>(110f, 1069f), 11384i)), vec3<f32>(1118f, -351f, 2240f)), Struct_3(vec2<u32>(1u, 4294967295u), 10749i, Struct_2(Struct_1(1030f, 0u, vec2<f32>(359f, 1087f), 1i)), vec3<f32>(-660f, -1581f, -677f)), Struct_3(vec2<u32>(0u, 92607u), -35622i, Struct_2(Struct_1(686f, 4294967295u, vec2<f32>(430f, -738f), 8184i)), vec3<f32>(-954f, 1139f, 568f)), Struct_3(vec2<u32>(4294967295u, 38380u), 4556i, Struct_2(Struct_1(2311f, 46190u, vec2<f32>(1033f, 128f), 2147483647i)), vec3<f32>(-294f, -2251f, 1054f)), Struct_3(vec2<u32>(4294967295u, 43856u), -2513i, Struct_2(Struct_1(431f, 30924u, vec2<f32>(-1541f, 699f), -92910i)), vec3<f32>(-581f, 1046f, -1000f)), Struct_3(vec2<u32>(4294967295u, 25192u), 2147483647i, Struct_2(Struct_1(253f, 1u, vec2<f32>(-848f, -2421f), 2147483647i)), vec3<f32>(526f, -135f, 687f)), Struct_3(vec2<u32>(4294967295u, 4294967295u), -1i, Struct_2(Struct_1(-1000f, 181410u, vec2<f32>(-577f, -405f), 2147483647i)), vec3<f32>(-922f, -263f, -1168f)), Struct_3(vec2<u32>(4294967295u, 0u), -43094i, Struct_2(Struct_1(-725f, 1u, vec2<f32>(-1248f, -1000f), -45548i)), vec3<f32>(-1838f, -405f, 276f)), Struct_3(vec2<u32>(13879u, 22287u), -17052i, Struct_2(Struct_1(-519f, 48247u, vec2<f32>(105f, 1027f), -11789i)), vec3<f32>(990f, -1739f, -385f)), Struct_3(vec2<u32>(1u, 1u), 37933i, Struct_2(Struct_1(-737f, 1u, vec2<f32>(487f, -1000f), 2147483647i)), vec3<f32>(1296f, -131f, 796f)), Struct_3(vec2<u32>(27098u, 1u), 7229i, Struct_2(Struct_1(849f, 17638u, vec2<f32>(-484f, -1359f), -1i)), vec3<f32>(-335f, 1715f, -541f)), Struct_3(vec2<u32>(64391u, 1u), i32(-2147483648), Struct_2(Struct_1(-996f, 4294967295u, vec2<f32>(1762f, -107f), 1i)), vec3<f32>(-516f, -201f, -300f)), Struct_3(vec2<u32>(1u, 61585u), -30743i, Struct_2(Struct_1(-792f, 0u, vec2<f32>(365f, -972f), 33140i)), vec3<f32>(-310f, 1095f, 1776f)), Struct_3(vec2<u32>(20291u, 0u), 1i, Struct_2(Struct_1(1795f, 29504u, vec2<f32>(163f, 1460f), -35243i)), vec3<f32>(-852f, 1520f, -481f)), Struct_3(vec2<u32>(4294967295u, 77178u), i32(-2147483648), Struct_2(Struct_1(1000f, 11064u, vec2<f32>(1431f, -1060f), i32(-2147483648))), vec3<f32>(-590f, 831f, 1701f)), Struct_3(vec2<u32>(7350u, 0u), -11842i, Struct_2(Struct_1(-1343f, 11915u, vec2<f32>(1513f, -1912f), -31841i)), vec3<f32>(978f, -452f, -589f)), Struct_3(vec2<u32>(39126u, 4294967295u), 2147483647i, Struct_2(Struct_1(-701f, 18197u, vec2<f32>(1066f, -1000f), 7089i)), vec3<f32>(529f, 340f, 1438f)), Struct_3(vec2<u32>(4294967295u, 42685u), -12568i, Struct_2(Struct_1(729f, 51287u, vec2<f32>(637f, -652f), 1i)), vec3<f32>(1000f, 1500f, 152f)), Struct_3(vec2<u32>(72090u, 122328u), 2147483647i, Struct_2(Struct_1(-719f, 6758u, vec2<f32>(2543f, 1000f), 20958i)), vec3<f32>(-1382f, 1505f, -730f)), Struct_3(vec2<u32>(41980u, 7606u), 2147483647i, Struct_2(Struct_1(-939f, 2182u, vec2<f32>(-603f, -117f), -20988i)), vec3<f32>(992f, 708f, -782f)), Struct_3(vec2<u32>(0u, 7265u), 0i, Struct_2(Struct_1(767f, 20512u, vec2<f32>(1000f, -259f), 44981i)), vec3<f32>(-228f, -576f, -2718f)), Struct_3(vec2<u32>(14276u, 54698u), -39757i, Struct_2(Struct_1(-1000f, 65524u, vec2<f32>(1404f, -990f), 402i)), vec3<f32>(524f, 177f, -1758f)), Struct_3(vec2<u32>(7402u, 30099u), 1i, Struct_2(Struct_1(288f, 0u, vec2<f32>(-404f, 1566f), 2147483647i)), vec3<f32>(-730f, -1635f, 249f)));

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(true, true, 2147483647i, 1i), Struct_4(false, false, 1i, 28111i), Struct_4(true, false, 14280i, i32(-2147483648)), Struct_4(true, true, 0i, 0i), Struct_4(true, true, 2147483647i, 68601i), Struct_4(true, true, i32(-2147483648), 42565i), Struct_4(false, false, 1i, -5760i), Struct_4(false, true, -16648i, -16986i), Struct_4(false, false, 2147483647i, 1i), Struct_4(true, false, -12586i, -1i));

var<private> global3: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) * vec3<f32>(2099f, 1813f, -1026f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1577f, arg_2, 273f))))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2, 1233f)))), 1160f, -253f)));
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(countOneBits(_wgslsmith_div_u32(4294967295u, arg_1.b)), arg_1.b)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(arg_1.b, arg_1.b)), ~arg_1.b) ^ ~(~select(arg_1.b, 6780u, global1.x)));
    var var_2 = Struct_5(~vec3<u32>(1u, 1u, _wgslsmith_add_u32(arg_1.b, arg_1.b)));
    global3 = vec2<i32>(_wgslsmith_mod_i32(0i, arg_1.d), u_input.a.x);
    var var_3 = global1.x;
    return select(vec4<bool>(global1.x, all(vec2<bool>(any(vec3<bool>(false, true, false)), true)), !((var_2.a.x < 2217u) && global1.x), any(vec3<bool>(global1.x, select(true, false, global1.x), false))), !(!vec4<bool>(false, global1.x, true, arg_1.b >= arg_1.b)), global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<i32> {
    global1 = select(arg_3.xxz, vec3<bool>(true, !any(select(vec3<bool>(arg_3.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, arg_3.x), arg_3.zxz)), any(arg_3.zxx)), select(arg_0.d, -2147483647i, all(arg_3.wxy)) == select(2147483647i, reverseBits(firstLeadingBit(global3.x)), true));
    var var_0 = -2147483647i;
    var var_1 = Struct_5(_wgslsmith_mod_vec3_u32(arg_1, ~(~(~arg_1))));
    var_0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.yx), u_input.a.xy) >> (57344u % 32u), ~(u_input.a.x | ~global3.x));
    let var_2 = global1.yx;
    return ~_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 2147483647i, global3.x, arg_0.d), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_0.d, arg_0.d, 1i), vec4<i32>(46268i, arg_2.b, global3.x, arg_0.d))), ~vec4<i32>(arg_0.d, u_input.a.x, 75933i, global3.x) << (abs(~vec4<u32>(arg_0.b, 109159u, 21760u, arg_2.a.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec3<bool> {
    global2 = array<Struct_4, 10>();
    var var_0 = firstTrailingBit(abs(func_4(Struct_1(1692f, arg_1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), vec2<f32>(794f, -945f), vec2<bool>(false, false))), -23269i), min(~vec3<u32>(arg_1.x, 0u, arg_1.x), arg_1.zxx ^ vec3<u32>(1u, arg_1.x, 8557u)), Struct_3(arg_1.yx, -38598i, Struct_2(Struct_1(-1761f, arg_1.x, vec2<f32>(-1156f, 437f), 79462i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-358f, 135f, -1955f)))), func_3(-7461i, Struct_1(432f, 0u, vec2<f32>(-829f, 196f), arg_0.x), -389f))));
    var var_1 = vec2<u32>(~arg_1.x, arg_1.x);
    let var_2 = ~arg_0;
    var var_3 = !any(global1.xz);
    return !(!(!select(!vec3<bool>(false, global1.x, true), !vec3<bool>(global1.x, global1.x, true), true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5) -> f32 {
    let var_0 = max(arg_1.a.x, _wgslsmith_mod_u32(~17090u, _wgslsmith_clamp_u32(min(1u, arg_1.a.x), ~111504u, 0u))) < firstLeadingBit(0u);
    var var_1 = Struct_5(arg_1.a << (arg_1.a % vec3<u32>(32u)));
    var_1 = arg_1;
    var_1 = Struct_5(var_1.a);
    global0 = array<Struct_3, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1821f)), 824f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_2, arg_2)), vec2<u32>(_wgslsmith_sub_u32(arg_2, 0u), arg_2)) << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_2, 6045u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 27848u), vec2<u32>(arg_2, 75250u)) >> (~vec2<u32>(1u, arg_2) % vec2<u32>(32u))) % 32u)), 29u)];
    global3 = countOneBits(firstLeadingBit(-arg_0));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(133f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(func_5(!select(vec3<bool>(true, global1.x, global1.x), func_2(arg_0, vec4<u32>(4294967295u, var_0.a.x, arg_2, var_0.a.x)), !vec3<bool>(global1.x, true, global1.x)), Struct_5(~(~vec3<u32>(var_0.a.x, arg_2, 0u))))), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1969f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1111f)))))));
    global0 = array<Struct_3, 29>();
    let var_2 = var_0.c;
    return Struct_2(var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(min(countOneBits(~vec2<u32>(108324u, 1u)), ~firstLeadingBit(vec2<u32>(0u, 1u))), u_input.a.x, func_1(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(global3.x, -26312i), -u_input.a.zx, -u_input.a.yz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(826f, -1594f)))))), 2974u, any(!(!vec4<bool>(false, false, false, global1.x)))), vec3<f32>(1068f, -1110f, -736f));
    var var_1 = Struct_5(~firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.c.a.b, var_0.a.x, var_0.a.x))) & _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.a.x, var_0.c.a.b, 0u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c.a.b, 24795u, 33948u), select(vec3<u32>(var_0.c.a.b, var_0.c.a.b, var_0.c.a.b), vec3<u32>(var_0.c.a.b, var_0.c.a.b, var_0.c.a.b), false))));
    global0 = array<Struct_3, 29>();
    let var_2 = var_1.a.x;
    let var_3 = !(!(global1.x || func_2(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_sub_vec4_u32(vec4<u32>(16852u, var_1.a.x, 22441u, 3295u), vec4<u32>(0u, var_0.a.x, 44003u, var_1.a.x))).x));
    var_0 = Struct_3(min(~_wgslsmith_sub_vec2_u32(min(var_1.a.zy, var_0.a), var_0.a), var_1.a.xy), _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-37817i, 11592i)), max(u_input.a.xx, vec2<i32>(1i, 42282i)))), u_input.a.x), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(78479i, countOneBits(50167i)), select(abs(u_input.a.zx), max(u_input.a.yy, u_input.a.xx), true)), vec2<f32>(_wgslsmith_f_op_f32(-860f + var_0.c.a.a), 1f), 4294967295u, select(any(vec4<bool>(global1.x, true, var_3, true)), select(global1.x & true, !var_3, var_3), !var_3 | false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-476f, var_0.c.a.a, var_0.c.a.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, -620f, 2420f), vec3<f32>(var_0.c.a.c.x, var_0.d.x, var_0.c.a.c.x)))))), var_0.d)));
    var var_4 = Struct_3(abs(var_1.a.zx), -14131i, Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-327f)), var_1.a.x, vec2<f32>(_wgslsmith_f_op_f32(-493f * var_0.d.x), _wgslsmith_f_op_f32(trunc(var_0.d.x))), 1i)), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.d.x), u_input.a.x, 25166i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1468f, -483f, 781f, 379f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, var_4.c.a.a, 1331f, var_0.d.x) + vec4<f32>(-448f, var_0.d.x, var_4.c.a.a, -780f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 120f, var_4.c.a.c.x, 253f)) - vec4<f32>(-743f, var_4.d.x, 1441f, var_4.d.x)))));
}

