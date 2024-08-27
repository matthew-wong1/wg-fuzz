struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-158f, -489f, 168f, -889f), vec4<f32>(741f, -1461f, -844f, -365f), vec4<f32>(414f, -341f, 1613f, -1026f), vec4<f32>(420f, 914f, -1393f, 443f), vec4<f32>(-2154f, -897f, 492f, -1070f), vec4<f32>(-336f, 1601f, -707f, -1508f), vec4<f32>(238f, 521f, -427f, 1006f), vec4<f32>(454f, 101f, -510f, 404f), vec4<f32>(-285f, 1099f, -774f, -1000f), vec4<f32>(-117f, 1159f, -653f, -386f), vec4<f32>(1103f, -401f, 1315f, -471f), vec4<f32>(-684f, -715f, 799f, 1220f), vec4<f32>(861f, 829f, 808f, 441f), vec4<f32>(1707f, -1000f, 1540f, -1054f), vec4<f32>(-575f, 410f, 568f, 915f), vec4<f32>(1175f, 1366f, -513f, -2312f), vec4<f32>(-359f, 284f, 873f, 956f), vec4<f32>(-1474f, 1713f, -1196f, -1114f), vec4<f32>(1235f, 140f, 652f, -1113f), vec4<f32>(1337f, 304f, 402f, -1144f), vec4<f32>(-386f, 1747f, 1620f, -1652f), vec4<f32>(1024f, -856f, -375f, -556f), vec4<f32>(-1000f, 174f, -1695f, -670f), vec4<f32>(661f, 1593f, 683f, 743f), vec4<f32>(-997f, -1757f, -987f, 442f), vec4<f32>(551f, -1875f, -1932f, 1008f), vec4<f32>(-169f, 383f, -1339f, -288f), vec4<f32>(436f, -666f, 327f, -1000f), vec4<f32>(-746f, 395f, -1834f, 248f), vec4<f32>(-1000f, -803f, 644f, -1162f), vec4<f32>(-565f, -148f, 1903f, 773f));

var<private> global1: array<f32, 17> = array<f32, 17>(833f, 2055f, 752f, -1574f, -361f, -2382f, -2472f, -397f, -383f, 1189f, 799f, -227f, -1000f, -1461f, -1477f, 482f, -1673f);

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, false));

var<private> global4: array<f32, 4> = array<f32, 4>(-557f, -793f, -1000f, 701f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = i32(-1i) * -(~(1i | -u_input.c));
    let var_1 = -238f;
    global2 = array<vec2<bool>, 15>();
    var var_2 = Struct_1(global3.a, global3.a.yzy);
    let var_3 = -_wgslsmith_sub_i32(-u_input.c, ~(~14847i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(20319i, 19087i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a, u_input.c) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    return abs(_wgslsmith_dot_vec4_u32(vec4<u32>(select(0u, u_input.b, global3.b.x), 1u, select(u_input.b, 62638u, var_2.b.x), reverseBits(u_input.b)) << (~vec4<u32>(u_input.b, u_input.b, 0u, 0u) % vec4<u32>(32u)), countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(4981u, 4294967295u, 40915u, 21168u), vec4<u32>(6197u, u_input.b, 4294967295u, u_input.b)))));
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    var var_0 = vec2<i32>(select(3697i, ~(~(-u_input.d)), global3.a.x), u_input.d);
    let var_1 = _wgslsmith_add_vec3_i32(select(-_wgslsmith_add_vec3_i32(vec3<i32>(19459i, 36266i, var_0.x) << (vec3<u32>(17989u, arg_0.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.d, var_0.x, -2147483647i) ^ vec3<i32>(var_0.x, u_input.a, var_0.x)), ~(-vec3<i32>(u_input.d, u_input.a, 3454i)), select(select(vec3<bool>(false, global3.a.x, global3.b.x), !global3.a.zxy, false), !vec3<bool>(true, global3.b.x, global3.a.x), true)), ~(vec3<i32>(u_input.d, _wgslsmith_sub_i32(u_input.c, 0i), var_0.x) | vec3<i32>(countOneBits(8205i), var_0.x, var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~78495u, 0u), 17u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) + _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(122854u, 4u)]))), _wgslsmith_f_op_f32(-1977f - _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 4u)] - global4[_wgslsmith_index_u32(u_input.b, 4u)])))), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(u_input.b, arg_0.x, 0u, 44225u)), ~8484u) >> (_wgslsmith_add_u32(3266u, firstTrailingBit(arg_0.x)) % 32u), 17u)], -383f)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_sub_vec4_u32(arg_0, arg_0)), 17u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(104f + global1[_wgslsmith_index_u32(u_input.b, 17u)]))), global4[_wgslsmith_index_u32(~arg_0.x, 4u)], global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(0u, 83199u, 0u)), 4u)])), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 768f, 258f)) - _wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(var_2.x, 514f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)))));
    global1 = array<f32, 17>();
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_0.x & var_0.x, -1i, -2147483647i)), -var_0.x), ~(-1i), -15196i);
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.b), func_3(), ~u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 1809u), _wgslsmith_sub_u32(44575u, 1u), u_input.b >> (u_input.b % 32u), 3315u), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(14376u, u_input.b, u_input.b, 4263u), vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u))))));
    global2 = array<vec2<bool>, 15>();
    let var_1 = -countOneBits(reverseBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, -1i, arg_0.x, 2147483647i), vec4<i32>(26601i, arg_0.x, -18095i, arg_0.x), vec4<bool>(false, true, global3.a.x, global3.b.x)), ~vec4<i32>(115746i, -39947i, -410i, 22944i))));
    global4 = array<f32, 4>();
    global1 = array<f32, 17>();
    return !(!select(select(vec2<bool>(global3.a.x, global3.a.x), !global2[_wgslsmith_index_u32(4294967295u, 15u)], vec2<bool>(global3.a.x, true)), select(select(global3.a.ww, vec2<bool>(global3.a.x, true), vec2<bool>(false, false)), select(vec2<bool>(global3.a.x, true), vec2<bool>(global3.b.x, global3.a.x), true), !vec2<bool>(true, global3.b.x)), true != all(vec3<bool>(true, global3.a.x, false))));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    global4 = array<f32, 4>();
    global4 = array<f32, 4>();
    var var_1 = !any(!select(select(var_0.a, vec4<bool>(arg_0.x, false, arg_3.b.x, arg_0.x), var_0.a), arg_2.a, select(vec4<bool>(false, arg_2.b.x, true, arg_3.b.x), vec4<bool>(global3.b.x, arg_0.x, arg_3.a.x, arg_3.b.x), true)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -599f);
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(517f * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b, 17u)], 998f, true))), _wgslsmith_f_op_f32(-944f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 17u)] * 464f))))) + 1f);
    let var_1 = vec2<bool>(all(select(!select(global2[_wgslsmith_index_u32(5369u, 15u)], vec2<bool>(global3.b.x, false), true), global2[_wgslsmith_index_u32(reverseBits(u_input.b), 15u)], global3.b.x)), !select(global3.b.x, func_5(func_2(vec3<i32>(-22434i, 1i, -2850i)), true, Struct_1(global3.a, global3.a.yxx), Struct_1(vec4<bool>(false, false, true, global3.b.x), vec3<bool>(global3.b.x, global3.a.x, global3.b.x))), any(vec2<bool>(true, global3.b.x))));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(1u, u_input.b, u_input.b) ^ vec3<u32>(0u, u_input.b, u_input.b))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(97933u, 24961u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(12042u, 10925u, u_input.b) % vec3<u32>(32u))), max(vec3<u32>(62772u, 72612u, 4294967295u), firstLeadingBit(vec3<u32>(u_input.b, 1u, u_input.b))))), 17u)];
    let var_3 = Struct_1(!(!(!global3.a)), select(vec3<bool>(!global3.b.x, true, global3.b.x), !(!vec3<bool>(false, var_1.x, true)), true));
    var var_4 = _wgslsmith_add_vec4_i32(~select(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-27555i, 1i, -16133i, -1i)), countOneBits(vec4<i32>(0i, 38587i, u_input.a, 9644i)), firstTrailingBit(vec4<i32>(-60754i, 49023i, u_input.d, u_input.d))), ~(~vec4<i32>(-6762i, u_input.c, 11672i, u_input.c)), (u_input.b <= u_input.b) && global3.b.x), (min(vec4<i32>(-2147483647i, u_input.c, u_input.a, u_input.c) << (vec4<u32>(4294967295u, u_input.b, 0u, 49820u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 2147483647i, 32548i, u_input.a)) & vec4<i32>(0i, 1i, min(-2147483647i, u_input.a), 2147483647i)) | vec4<i32>(-_wgslsmith_mod_i32(-15332i, u_input.a), u_input.d, u_input.a, firstLeadingBit(u_input.a)));
    return Struct_1(global3.a, !(!select(var_3.b, select(vec3<bool>(true, false, var_3.b.x), var_3.a.zwx, global3.a.x), var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 15>();
    var var_0 = max(u_input.b, ~u_input.b) << (0u % 32u);
    var var_1 = global3.b;
    let var_2 = func_1();
    var_0 = _wgslsmith_sub_u32(u_input.b, 36162u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-523f, global1[_wgslsmith_index_u32(u_input.b, 17u)]), _wgslsmith_div_f32(1000f, 727f))) + _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(70998u, 4u)], _wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(1u, 17u)])))))));
}

