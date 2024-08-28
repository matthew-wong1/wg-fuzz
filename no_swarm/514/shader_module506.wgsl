struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(740f, vec2<bool>(true, false), true, -213f, -38656i), Struct_1(-1142f, vec2<bool>(true, true), true, -1110f, -52284i), Struct_1(-621f, vec2<bool>(true, true), false, -444f, 46334i), true), Struct_2(Struct_1(-1873f, vec2<bool>(false, false), false, 1338f, -8847i), Struct_1(272f, vec2<bool>(true, false), true, 913f, 0i), Struct_1(-1566f, vec2<bool>(false, false), true, 1000f, -45763i), true), Struct_2(Struct_1(783f, vec2<bool>(true, false), true, 255f, 0i), Struct_1(1000f, vec2<bool>(false, true), true, 2671f, 2147483647i), Struct_1(-1000f, vec2<bool>(false, false), true, 508f, 28401i), true), Struct_2(Struct_1(-285f, vec2<bool>(false, false), false, 536f, 1i), Struct_1(-739f, vec2<bool>(false, false), true, -584f, 19695i), Struct_1(-400f, vec2<bool>(true, false), true, 774f, 2147483647i), true), Struct_2(Struct_1(258f, vec2<bool>(false, false), false, -262f, -18994i), Struct_1(-113f, vec2<bool>(false, true), true, 992f, -1i), Struct_1(-1000f, vec2<bool>(true, true), false, -276f, 1i), false), Struct_2(Struct_1(430f, vec2<bool>(true, false), true, -1000f, 1i), Struct_1(451f, vec2<bool>(false, false), false, 1186f, 0i), Struct_1(798f, vec2<bool>(true, false), true, -1236f, -16163i), false), Struct_2(Struct_1(761f, vec2<bool>(false, false), true, -987f, 0i), Struct_1(-803f, vec2<bool>(true, true), true, 1083f, -1i), Struct_1(-268f, vec2<bool>(false, true), true, 161f, i32(-2147483648)), true), Struct_2(Struct_1(-580f, vec2<bool>(false, true), true, 1278f, -1i), Struct_1(-1706f, vec2<bool>(false, true), true, 814f, 30536i), Struct_1(-837f, vec2<bool>(false, true), true, -114f, 1i), false), Struct_2(Struct_1(1000f, vec2<bool>(true, false), false, -252f, -17841i), Struct_1(1398f, vec2<bool>(false, true), true, 553f, 45493i), Struct_1(648f, vec2<bool>(true, false), false, -1121f, -4531i), false), Struct_2(Struct_1(-168f, vec2<bool>(false, false), false, -676f, -25632i), Struct_1(1144f, vec2<bool>(true, false), true, 1642f, 35556i), Struct_1(-1815f, vec2<bool>(false, false), false, 586f, 1i), false), Struct_2(Struct_1(-788f, vec2<bool>(false, true), false, 172f, -27648i), Struct_1(-1198f, vec2<bool>(false, true), true, 787f, -1i), Struct_1(-1000f, vec2<bool>(true, true), true, -1000f, 2147483647i), false), Struct_2(Struct_1(-1133f, vec2<bool>(true, false), false, 2063f, -1i), Struct_1(-963f, vec2<bool>(true, false), false, 2570f, 3299i), Struct_1(890f, vec2<bool>(false, false), true, -848f, 33216i), true), Struct_2(Struct_1(281f, vec2<bool>(false, false), false, -999f, 43762i), Struct_1(-481f, vec2<bool>(true, false), true, 612f, -63972i), Struct_1(-517f, vec2<bool>(true, true), false, 1170f, 13490i), true), Struct_2(Struct_1(370f, vec2<bool>(true, true), true, 1000f, 23379i), Struct_1(398f, vec2<bool>(true, true), false, 702f, 38748i), Struct_1(-239f, vec2<bool>(true, true), false, -699f, 2226i), true), Struct_2(Struct_1(-842f, vec2<bool>(false, true), true, -1000f, 64862i), Struct_1(1002f, vec2<bool>(true, false), false, 1041f, -72257i), Struct_1(188f, vec2<bool>(true, true), true, 1044f, -52976i), true), Struct_2(Struct_1(-410f, vec2<bool>(true, true), false, -1000f, 61683i), Struct_1(-235f, vec2<bool>(false, true), false, 299f, -5427i), Struct_1(-364f, vec2<bool>(false, false), true, 1410f, -23510i), false), Struct_2(Struct_1(760f, vec2<bool>(true, true), true, -1000f, i32(-2147483648)), Struct_1(-1329f, vec2<bool>(true, true), true, -164f, -19408i), Struct_1(-575f, vec2<bool>(false, false), true, -823f, 0i), true), Struct_2(Struct_1(-248f, vec2<bool>(true, true), false, -1000f, -1i), Struct_1(-403f, vec2<bool>(false, true), true, 359f, -38918i), Struct_1(-1000f, vec2<bool>(true, true), false, 918f, -2905i), true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec2<bool>(u_input.b != ~_wgslsmith_div_u32(0u, min(u_input.b, arg_0)), any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_div_i32(firstLeadingBit(max(-u_input.d.x, -2147483647i) & -u_input.e), -abs(reverseBits(1i) | select(-1i, -8450i, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-871f, 842f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, 530f)) + vec2<f32>(466f, -122f))));
    let var_3 = vec4<u32>(4294967295u, ~abs(arg_0), ~arg_0, (_wgslsmith_sub_u32(1u, u_input.b) ^ u_input.c) | 1u) ^ ~firstLeadingBit(select(vec4<u32>(u_input.c, 0u, 924u, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.c, arg_0), var_0.x));
    global0 = array<Struct_2, 18>();
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(!func_3(u_input.b), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), 86914u < u_input.c), true)), true);
    var var_1 = ~(~vec3<u32>(u_input.b, firstTrailingBit(8350u), firstLeadingBit(abs(u_input.c))));
    var var_2 = !var_0.x;
    global0 = array<Struct_2, 18>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1556f, 984f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-245f)) + _wgslsmith_f_op_f32(f32(-1f) * -2613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-149f, -1157f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)), _wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(f32(-1f) * -1608f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(max(-1039f, var_3.x))) + _wgslsmith_f_op_f32(min(-1417f, var_3.x))), select(!vec2<bool>(var_0.x, false), var_0.yx, var_0.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + 546f) * var_3.x) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-777f, 1017f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.x)), 1049f))), -reverseBits(-2147483647i)), Struct_1(754f, var_0.zx, true, _wgslsmith_f_op_f32(floor(265f)), arg_0.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), -225f, true)) - 1949f), select(select(var_0.yy, select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), false), select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), vec2<bool>(false, true))), var_0.yz, !(var_1.x >= u_input.b)), false || all(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(-var_3.x), arg_0.x), !(4524i > -(u_input.d.x ^ -2147483647i)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_2(u_input.a << (abs(vec3<u32>(reverseBits(u_input.b), 1u, u_input.b << (u_input.c % 32u))) % vec3<u32>(32u)));
    let var_1 = Struct_4(0i, ~abs(firstTrailingBit(select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(28316u, 4294967295u), var_0.b.b))), 22372i, _wgslsmith_sub_vec2_u32(~vec2<u32>(4710u, u_input.b), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(57922u, u_input.c), vec2<u32>(14511u, u_input.c)))) & ~(~firstLeadingBit(vec2<u32>(u_input.c, 44139u))));
    var var_2 = var_0.c;
    let var_3 = var_0.a.e;
    var var_4 = false;
    return global0[_wgslsmith_index_u32(~abs(var_1.d.x), 18u)];
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = func_1(~firstLeadingBit(~(-vec4<i32>(u_input.a.x, u_input.e, u_input.d.x, 0i))));
    let var_1 = func_2(-abs(vec3<i32>(48594i, var_0.a.e, u_input.a.x)) ^ vec3<i32>(-25620i, u_input.a.x, -var_0.a.e));
    var var_2 = (u_input.b << (~8093u % 32u)) ^ (u_input.c | _wgslsmith_mod_u32(~u_input.c, u_input.c ^ ~58027u));
    var var_3 = 25376i;
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1630f - arg_0.b.a) + -1000f), -473f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-410f)))), -909f))));
    return vec4<bool>(true, arg_0.d, all(vec2<bool>(arg_0.b.c, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec4<bool>(all(vec2<bool>(false, false)), true, true, true)));
    let var_1 = !func_4(func_1(-(~vec4<i32>(u_input.a.x, u_input.a.x, -12217i, -7203i))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~max(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.b, 16264u)), vec2<u32>(4294967295u, 0u)), vec2<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(u_input.c, u_input.b, u_input.b)))), u_input.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1483f, -109f, -578f, -146f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-404f, -326f, -1466f, 1049f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, _wgslsmith_f_op_f32(abs(-344f)), _wgslsmith_f_op_f32(sign(-1009f)), -1442f))));
    var var_4 = select(vec3<bool>(true, false, !(var_0.x | true)), select(var_1.zwz, select(var_1.wyx, !vec3<bool>(true, var_1.x, true), vec3<bool>(true, !var_0.x, true)), false), var_1.x);
    let var_5 = _wgslsmith_f_op_f32(trunc(var_3.x));
    global0 = array<Struct_2, 18>();
    let var_6 = Struct_4(abs(u_input.e) | -1i, select(countOneBits(firstLeadingBit(vec2<u32>(702u, u_input.c))), abs(vec2<u32>(abs(u_input.b), u_input.c)), var_1.x), reverseBits(u_input.d.x), _wgslsmith_sub_vec2_u32(firstTrailingBit(~(vec2<u32>(u_input.c, var_2) >> (vec2<u32>(u_input.c, 64270u) % vec2<u32>(32u)))), vec2<u32>(~38606u, countOneBits(countOneBits(u_input.c)))));
    var var_7 = abs(~_wgslsmith_clamp_vec2_i32(u_input.a.zy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x) | u_input.d, vec2<i32>(50908i, -25270i)), vec2<i32>(u_input.e, _wgslsmith_sub_i32(-26562i, 35306i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(4294967295u, min(var_6.b.x, 1746u)), ~var_2));
}

