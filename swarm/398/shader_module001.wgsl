struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<f32>(147f, -728f, 1086f), 737f, true, vec2<i32>(2147483647i, 15423i)), Struct_1(vec3<f32>(663f, 411f, -144f), -1533f, false, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec3<f32>(774f, 431f, -826f), 111f, true, vec2<i32>(6056i, -22883i)), Struct_1(vec3<f32>(-1000f, 1413f, 456f), 2626f, true, vec2<i32>(-1i, -15094i)), Struct_1(vec3<f32>(662f, -1357f, -2220f), 307f, false, vec2<i32>(2147483647i, 43578i)), Struct_1(vec3<f32>(-402f, -862f, -1004f), -191f, false, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec3<f32>(1020f, -1322f, -310f), -436f, true, vec2<i32>(10209i, 503i)), Struct_1(vec3<f32>(223f, -105f, -685f), -508f, true, vec2<i32>(-4851i, 2147483647i)), Struct_1(vec3<f32>(-154f, 113f, -1014f), -1016f, false, vec2<i32>(-23791i, -32199i)), Struct_1(vec3<f32>(-1000f, 546f, 1779f), 622f, false, vec2<i32>(-23224i, -47099i)), Struct_1(vec3<f32>(995f, 268f, 1139f), 476f, true, vec2<i32>(21736i, -7812i)), Struct_1(vec3<f32>(1779f, 248f, 409f), -1027f, true, vec2<i32>(-1i, 53854i)), Struct_1(vec3<f32>(263f, -147f, 790f), -1094f, false, vec2<i32>(-1i, -1i)), Struct_1(vec3<f32>(795f, -871f, 591f), -1243f, false, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec3<f32>(659f, 1372f, -905f), 1000f, false, vec2<i32>(64045i, -34913i)), Struct_1(vec3<f32>(-503f, -1677f, 1854f), -1179f, true, vec2<i32>(-17700i, 52720i)), Struct_1(vec3<f32>(-1178f, -1793f, 1993f), -375f, false, vec2<i32>(i32(-2147483648), -10910i)), Struct_1(vec3<f32>(-830f, 1208f, 1000f), -1271f, true, vec2<i32>(24327i, 26242i)), Struct_1(vec3<f32>(897f, -279f, 781f), -494f, true, vec2<i32>(2147483647i, 38937i)), Struct_1(vec3<f32>(-849f, 340f, -546f), 1970f, false, vec2<i32>(41967i, 28024i)), Struct_1(vec3<f32>(470f, 1000f, 1000f), -494f, true, vec2<i32>(1i, -1i)), Struct_1(vec3<f32>(853f, -326f, -824f), 1000f, true, vec2<i32>(-1i, -39505i)), Struct_1(vec3<f32>(2183f, 1192f, 688f), 1070f, true, vec2<i32>(-1i, -20612i)), Struct_1(vec3<f32>(-343f, -677f, -470f), -1681f, false, vec2<i32>(-1i, -66299i)), Struct_1(vec3<f32>(677f, -625f, 698f), 728f, true, vec2<i32>(1i, -1i)), Struct_1(vec3<f32>(479f, -274f, 355f), 1040f, true, vec2<i32>(0i, 14236i)), Struct_1(vec3<f32>(198f, -1885f, -871f), 2157f, true, vec2<i32>(4557i, 2147483647i)), Struct_1(vec3<f32>(-760f, -1793f, -126f), -2368f, false, vec2<i32>(-1i, -1i)), Struct_1(vec3<f32>(-995f, 1000f, -1202f), -556f, false, vec2<i32>(7000i, 6814i)), Struct_1(vec3<f32>(348f, 684f, 424f), 368f, true, vec2<i32>(-10992i, i32(-2147483648))), Struct_1(vec3<f32>(1000f, 1573f, -483f), 120f, false, vec2<i32>(-945i, -34923i)), Struct_1(vec3<f32>(-1038f, -1832f, 305f), -390f, false, vec2<i32>(1i, 0i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = i32(-1i) * -_wgslsmith_sub_i32(abs(min(-25362i, u_input.a.x)), u_input.a.x);
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1335f, 344f, -907f), vec3<f32>(-583f, 345f, 1050f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -313f, 366f), vec3<f32>(1710f, -391f, -790f), arg_1.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, _wgslsmith_f_op_f32(-709f - 1149f), -1165f))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_div_f32(var_2.x, -723f), var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, var_2.x, var_2.x))), select(select(vec3<bool>(arg_1.x, true, arg_1.x), global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]), !vec3<bool>(arg_1.x, arg_1.x, false), !vec3<bool>(true, false, arg_1.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, var_2.x)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1371f), 1479f, _wgslsmith_f_op_f32(var_2.x + 1013f)));
    return global1[_wgslsmith_index_u32(countOneBits(arg_2) | ~54593u, 32u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(~max(arg_0.x, 1u), 32u)];
    var var_2 = func_1(arg_2.d, select(select(vec3<bool>(!var_1.c, var_1.d.x == var_1.d.x, true), !select(vec3<bool>(var_1.c, true, false), global0[_wgslsmith_index_u32(u_input.d.x, 28u)], vec3<bool>(true, true, true)), false), vec3<bool>(true, true, arg_2.c), var_1.c), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, reverseBits(u_input.d.x), ~4481u)), ~u_input.d.x), u_input.d);
    let var_3 = reverseBits(abs(arg_0.x));
    var var_4 = Struct_1(vec3<f32>(var_1.a.x, -1524f, -252f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(func_1(vec2<i32>(var_2.d.x, 2147483647i), vec3<bool>(false, arg_2.c, true), u_input.d.x, u_input.d).a.x - _wgslsmith_f_op_f32(min(arg_2.a.x, 1124f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) * arg_1.b)))), all(vec3<bool>(true, var_1.c, select(var_2.c, arg_2.c, var_1.c) & var_1.c)), ~arg_1.d);
    return -248f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, -714f, var_0.a.x, var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(-644f)), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -656f)))), _wgslsmith_div_f32(var_0.b, arg_1.b)), arg_1.c));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.d.yxz, func_1(_wgslsmith_sub_vec2_i32(arg_0.zz, arg_0.zy), select(vec3<bool>(false, var_0.c, false), global0[_wgslsmith_index_u32(u_input.d.x, 28u)], vec3<bool>(true, var_0.c, true)), 38572u, abs(u_input.d)), func_1(arg_0.xy, !global0[_wgslsmith_index_u32(u_input.d.x, 28u)], ~4294967295u, countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u))))) + _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + var_1.x), 674f) + _wgslsmith_f_op_f32(sign(398f))) * arg_1.b), var_1.x, 201f);
    var var_2 = func_1(abs(abs(func_1(u_input.c.wy, vec3<bool>(arg_1.c, false, false), u_input.d.x, vec4<u32>(0u, u_input.d.x, u_input.d.x, 83960u)).d)) & firstLeadingBit(~arg_0.zz), !global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.d.x, u_input.d ^ select(u_input.d, u_input.d, var_0.c));
    global1 = array<Struct_1, 32>();
    return select(4294967295u, u_input.d.x, any(!vec3<bool>(!arg_1.c, !arg_1.c, var_2.c || arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(func_2(u_input.a.zzw | u_input.c.yzz, func_1(u_input.c.xw, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], u_input.d.x, vec4<u32>(u_input.d.x, 12203u, 7697u, u_input.d.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.xwy, u_input.d.yzz), vec3<u32>(1u, 29089u, u_input.d.x)), _wgslsmith_add_u32(~u_input.d.x, 1u)), ~(~(u_input.d.ywy << (u_input.d.wxw % vec3<u32>(32u)))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(u_input.c), vec4<i32>(2147483647i, -8512i, abs(-1i) >> (firstTrailingBit(u_input.d.x) % 32u), func_1(u_input.a.wx, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), ~u_input.d.x, u_input.d).d.x)), _wgslsmith_mult_i32(select(2147483647i, u_input.b, all(vec3<bool>(false, false, false))), u_input.b) ^ -_wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.c.xx)), _wgslsmith_sub_i32(min(u_input.b, 0i), u_input.a.x) | u_input.a.x, u_input.b);
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 32u)];
    global1 = array<Struct_1, 32>();
    global0 = array<vec3<bool>, 28>();
    let var_3 = _wgslsmith_clamp_i32(1i | (~(~var_2.d.x) << (select(~1u, 1u, true) % 32u)), var_2.d.x, firstLeadingBit(29617i) | -(~(-1i ^ var_1.x)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -1i, 1i), vec3<i32>(u_input.b, -4228i, var_2.d.x)), (vec4<i32>(1i | u_input.a.x, _wgslsmith_add_i32(13639i, var_3), 1i, max(var_3, -1i)) | min(vec4<i32>(-43305i, -42886i, u_input.c.x, 41550i) << (vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.x) % vec4<u32>(32u)), u_input.a)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, var_0.x, max(13190u, var_0.x)), abs(vec4<u32>(u_input.d.x, 6873u, 36789u, u_input.d.x))) % vec4<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.wyx, u_input.a.xxy), ~(~countOneBits(u_input.c.xyz)), firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.c.zwz, vec3<i32>(var_2.d.x, var_2.d.x, 1i))) ^ vec3<i32>(-1i, -4660i, ~(-31765i))));
}

