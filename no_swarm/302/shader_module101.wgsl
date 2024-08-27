struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-872f, vec4<u32>(23886u, 0u, 1u, 1u), vec3<bool>(true, true, false), vec4<u32>(38436u, 46338u, 46981u, 1u), -1222f), Struct_1(1177f, vec4<u32>(9910u, 1u, 4294967295u, 62620u), vec3<bool>(true, false, false), vec4<u32>(16176u, 59021u, 4294967295u, 32174u), 881f), Struct_1(-527f, vec4<u32>(20812u, 47618u, 1u, 36579u), vec3<bool>(true, true, false), vec4<u32>(21934u, 4294967295u, 36141u, 4294967295u), 2263f), Struct_1(122f, vec4<u32>(21282u, 4294967295u, 51610u, 11540u), vec3<bool>(false, true, true), vec4<u32>(13351u, 106023u, 38191u, 15114u), -572f), Struct_1(-900f, vec4<u32>(1u, 0u, 13221u, 1u), vec3<bool>(false, false, true), vec4<u32>(0u, 7950u, 15591u, 0u), -1463f), Struct_1(-274f, vec4<u32>(0u, 33390u, 4294967295u, 29709u), vec3<bool>(true, true, true), vec4<u32>(1u, 15290u, 4294967295u, 0u), -712f), Struct_1(-307f, vec4<u32>(4294967295u, 14745u, 108174u, 4507u), vec3<bool>(true, false, false), vec4<u32>(0u, 51443u, 33940u, 8114u), -1000f), Struct_1(1096f, vec4<u32>(6979u, 8638u, 12626u, 210u), vec3<bool>(false, true, true), vec4<u32>(56379u, 30030u, 65375u, 43860u), -741f), Struct_1(-277f, vec4<u32>(32366u, 2531u, 0u, 0u), vec3<bool>(true, true, true), vec4<u32>(1u, 41810u, 0u, 91738u), 2057f), Struct_1(1000f, vec4<u32>(0u, 53104u, 36487u, 1u), vec3<bool>(false, true, false), vec4<u32>(9151u, 1945u, 0u, 39852u), -1827f), Struct_1(1478f, vec4<u32>(41561u, 28920u, 1u, 117032u), vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 26208u, 32932u), 131f), Struct_1(-1317f, vec4<u32>(27146u, 11241u, 89328u, 48324u), vec3<bool>(false, false, true), vec4<u32>(17722u, 1u, 6983u, 99543u), 1175f), Struct_1(1297f, vec4<u32>(0u, 1u, 14332u, 1u), vec3<bool>(false, false, true), vec4<u32>(30632u, 47984u, 4294967295u, 1u), -1000f), Struct_1(267f, vec4<u32>(1u, 4294967295u, 25831u, 1u), vec3<bool>(true, false, true), vec4<u32>(1u, 133u, 1u, 1u), -1168f), Struct_1(-703f, vec4<u32>(20659u, 0u, 85277u, 69398u), vec3<bool>(false, true, false), vec4<u32>(11680u, 1u, 4294967295u, 12807u), -1283f), Struct_1(1273f, vec4<u32>(66331u, 28345u, 9776u, 97470u), vec3<bool>(false, false, true), vec4<u32>(33789u, 67515u, 13163u, 69780u), -1229f), Struct_1(822f, vec4<u32>(1u, 0u, 21350u, 4294967295u), vec3<bool>(false, false, false), vec4<u32>(25338u, 23701u, 73076u, 1u), -628f), Struct_1(-1162f, vec4<u32>(40804u, 4294967295u, 12407u, 6017u), vec3<bool>(false, true, true), vec4<u32>(0u, 1u, 0u, 27954u), 453f), Struct_1(880f, vec4<u32>(17869u, 4294967295u, 0u, 4294967295u), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 1351u, 9086u, 0u), 1471f), Struct_1(-1762f, vec4<u32>(0u, 59098u, 59117u, 1u), vec3<bool>(false, true, true), vec4<u32>(0u, 0u, 4294967295u, 18596u), -413f), Struct_1(-1079f, vec4<u32>(0u, 4294967295u, 31079u, 3650u), vec3<bool>(false, false, true), vec4<u32>(61550u, 80051u, 0u, 47616u), 526f), Struct_1(-457f, vec4<u32>(63839u, 15241u, 4708u, 114623u), vec3<bool>(false, true, false), vec4<u32>(68205u, 0u, 6232u, 0u), 477f), Struct_1(639f, vec4<u32>(45685u, 0u, 27659u, 0u), vec3<bool>(false, false, true), vec4<u32>(324u, 4294967295u, 0u, 54107u), -911f), Struct_1(850f, vec4<u32>(0u, 51795u, 1u, 76801u), vec3<bool>(true, true, false), vec4<u32>(0u, 28187u, 0u, 4294967295u), 1260f), Struct_1(1683f, vec4<u32>(26340u, 4294967295u, 45344u, 23986u), vec3<bool>(true, true, false), vec4<u32>(24312u, 23897u, 43418u, 0u), -1216f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = 34932u;
    var var_1 = global2[_wgslsmith_index_u32(~u_input.d.x, 25u)];
    var var_2 = vec4<f32>(-1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1195f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.e)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(var_1.a - -483f)))), 754f, _wgslsmith_f_op_f32(-var_1.a));
    var_0 = ~_wgslsmith_add_u32(106456u, firstTrailingBit(~var_1.d.x));
    var var_3 = vec2<u32>(select(~1u, 32461u, true), var_1.d.x);
    return 16539u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>) -> bool {
    global1 = vec4<bool>(arg_2.x, (true || !all(vec2<bool>(false, global1.x))) & global1.x, true, _wgslsmith_dot_vec2_i32(arg_1 | vec2<i32>(0i, -2284i), select(vec2<i32>(1i, 1i), vec2<i32>(arg_1.x, -1i), global1.x)) > (2147483647i | _wgslsmith_mult_i32(max(arg_1.x, arg_1.x), -2147483647i)));
    let var_0 = Struct_1(529f, arg_0.d, !arg_0.c, vec4<u32>(_wgslsmith_mult_u32(~select(arg_0.d.x, 0u, arg_2.x), (arg_0.d.x >> (arg_0.d.x % 32u)) >> (~u_input.a % 32u)), 1u ^ u_input.c, func_2(), u_input.c), arg_0.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1395f - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(step(-392f, _wgslsmith_f_op_f32(step(-833f, var_0.a)))), var_0.a) + vec3<f32>(-731f, arg_0.a, var_0.a))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -268f, -173f) + vec3<f32>(986f, var_0.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, var_1.x, 1821f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(min(111f, -1316f)), _wgslsmith_f_op_f32(528f + -228f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-618f, _wgslsmith_f_op_f32(-var_1.x), 1f), vec3<f32>(_wgslsmith_div_f32(var_1.x, var_0.e), _wgslsmith_f_op_f32(round(var_0.e)), _wgslsmith_f_op_f32(min(560f, var_1.x))), any(vec2<bool>(var_0.c.x, true)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e, var_0.e, 592f) * vec3<f32>(-445f, 813f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1280f, var_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(162f, arg_0.a, var_0.e) + vec3<f32>(var_0.a, var_0.e, var_1.x)))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(arg_0.e - -765f), 596f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -1145f, arg_0.e)))))))));
    return global1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 25u)];
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.a))))) * _wgslsmith_f_op_f32(var_0.a + var_0.e)), _wgslsmith_f_op_f32(max(var_0.a, var_0.a)));
    var var_1 = select(vec4<bool>(any(vec4<bool>(!global1.x, global1.x, all(var_0.c), any(global1.yy))), var_0.c.x, true, true), vec4<bool>(true, var_0.c.x, (-22494i >> (func_2() % 32u)) < 7923i, func_3(global2[_wgslsmith_index_u32(~0u, 25u)], vec2<i32>(1i, 1i), !(!vec4<bool>(true, true, var_0.c.x, false)))), !select(!(!vec4<bool>(global1.x, false, true, false)), vec4<bool>(!arg_0.x, !var_0.c.x, true, all(vec4<bool>(global1.x, arg_0.x, true, false))), !(!var_0.c.x)));
    var_0 = global2[_wgslsmith_index_u32(arg_1.x, 25u)];
    var var_2 = global2[_wgslsmith_index_u32(55172u, 25u)];
    return vec3<bool>(true, all(vec2<bool>(true, var_0.c.x)), false || any(vec4<bool>(var_1.x, var_1.x, var_0.c.x | true, select(var_1.x, global1.x, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(146f, u_input.d | _wgslsmith_clamp_vec4_u32(~u_input.d, firstTrailingBit(~vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u)), u_input.d), select(!global1.zzx, global1.zwz, func_1(vec2<bool>(true, all(vec4<bool>(true, true, global1.x, global1.x))), u_input.d.zxz | _wgslsmith_sub_vec3_u32(u_input.d.zyz, vec3<u32>(u_input.b.x, 11305u, 0u)))), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.c & _wgslsmith_dot_vec3_u32(vec3<u32>(8122u, 4294967295u, 0u), u_input.d.xwy), ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 47162u, 28417u), vec3<u32>(4294967295u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f - -196f)))));
    global1 = select(!select(vec4<bool>(!global1.x, var_0.c.x && false, all(global1.xx), true), select(select(vec4<bool>(false, false, var_0.c.x, false), vec4<bool>(global1.x, var_0.c.x, true, true), vec4<bool>(false, var_0.c.x, false, var_0.c.x)), !vec4<bool>(var_0.c.x, true, global1.x, false), false), var_0.c.x), vec4<bool>(func_3(global2[_wgslsmith_index_u32(~var_0.d.x, 25u)], _wgslsmith_div_vec2_i32(vec2<i32>(-25456i, 10502i), ~vec2<i32>(2147483647i, 1i)), vec4<bool>(global1.x, global1.x == global1.x, global1.x, any(var_0.c.yy))), any(var_0.c.yz), true | !(var_0.a < var_0.e), _wgslsmith_clamp_u32(max(1319u, u_input.b.x), 4294967295u, firstLeadingBit(var_0.d.x)) != reverseBits(countOneBits(52356u))), global1.x);
    let var_1 = 31958i;
    global1 = !(!vec4<bool>(true, false, !select(var_0.c.x, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1, 46729i, 2147483647i), vec4<i32>(var_1, var_1, 879i, var_1)))), abs(vec4<i32>(0i, ~var_1, 52875i, var_1))));
}

