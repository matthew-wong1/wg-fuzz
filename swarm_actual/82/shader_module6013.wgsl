struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(1000f, -554f, 32742u, 1059f, vec4<u32>(83144u, 36541u, 4294967295u, 1u)), vec4<u32>(28147u, 15025u, 16850u, 0u), vec4<bool>(false, false, true, true), vec4<f32>(360f, 357f, 1408f, 1517f)), Struct_2(Struct_1(-2513f, -1000f, 1u, 159f, vec4<u32>(4294967295u, 39135u, 1u, 45449u)), vec4<u32>(40978u, 47398u, 91349u, 25728u), vec4<bool>(true, false, false, true), vec4<f32>(-392f, -1234f, -161f, 208f)), Struct_2(Struct_1(-1099f, -1024f, 1u, 1230f, vec4<u32>(4294967295u, 0u, 0u, 0u)), vec4<u32>(4294967295u, 4294967295u, 1u, 2003u), vec4<bool>(false, false, true, false), vec4<f32>(475f, 488f, -330f, 222f)), Struct_2(Struct_1(-496f, -1000f, 0u, 1000f, vec4<u32>(951u, 4294967295u, 1u, 20067u)), vec4<u32>(37700u, 46293u, 4294967295u, 7333u), vec4<bool>(true, true, false, true), vec4<f32>(262f, -867f, 527f, 1027f)), Struct_2(Struct_1(857f, 425f, 1u, 310f, vec4<u32>(58046u, 1u, 4294967295u, 29930u)), vec4<u32>(1u, 5824u, 3940u, 1u), vec4<bool>(true, true, true, false), vec4<f32>(-1086f, 763f, -194f, 707f)), Struct_2(Struct_1(-669f, -2304f, 1792u, 1000f, vec4<u32>(0u, 14855u, 0u, 0u)), vec4<u32>(1u, 1u, 8194u, 1013u), vec4<bool>(false, true, true, false), vec4<f32>(-1227f, 469f, 1026f, 251f)), Struct_2(Struct_1(-155f, 427f, 4294967295u, 1248f, vec4<u32>(1u, 4294967295u, 4294967295u, 76756u)), vec4<u32>(1u, 11337u, 22035u, 1u), vec4<bool>(true, false, true, true), vec4<f32>(-780f, 964f, -1953f, 199f)), Struct_2(Struct_1(-1790f, 588f, 11499u, 517f, vec4<u32>(27096u, 44042u, 4294967295u, 20197u)), vec4<u32>(0u, 0u, 42645u, 93042u), vec4<bool>(false, false, true, true), vec4<f32>(1739f, 197f, -1217f, 1212f)), Struct_2(Struct_1(-296f, -2066f, 29951u, -1000f, vec4<u32>(0u, 29903u, 36361u, 28204u)), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<bool>(true, true, true, false), vec4<f32>(-700f, 611f, 914f, 1257f)), Struct_2(Struct_1(1476f, 785f, 0u, 1627f, vec4<u32>(4294967295u, 63629u, 24303u, 25508u)), vec4<u32>(4294967295u, 0u, 0u, 12989u), vec4<bool>(true, false, true, false), vec4<f32>(-941f, -181f, -112f, -2139f)), Struct_2(Struct_1(555f, 1350f, 4294967295u, 312f, vec4<u32>(28656u, 67513u, 0u, 0u)), vec4<u32>(55562u, 80479u, 4294967295u, 1u), vec4<bool>(false, true, false, true), vec4<f32>(978f, -442f, 1467f, 1868f)), Struct_2(Struct_1(-2235f, 1000f, 20427u, 1644f, vec4<u32>(0u, 15117u, 1u, 1u)), vec4<u32>(4294967295u, 0u, 0u, 3518u), vec4<bool>(false, false, true, true), vec4<f32>(591f, -552f, -876f, 856f)), Struct_2(Struct_1(-624f, -728f, 4294967295u, 707f, vec4<u32>(39556u, 4294967295u, 23754u, 1u)), vec4<u32>(4294967295u, 0u, 4294967295u, 69672u), vec4<bool>(true, true, true, false), vec4<f32>(-612f, -382f, -1135f, -385f)), Struct_2(Struct_1(992f, 834f, 24915u, -1840f, vec4<u32>(4294967295u, 4860u, 68858u, 4248u)), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<bool>(false, true, true, true), vec4<f32>(1649f, 446f, -804f, 802f)), Struct_2(Struct_1(-595f, -263f, 56371u, 400f, vec4<u32>(0u, 4294967295u, 1u, 26107u)), vec4<u32>(4294967295u, 4294967295u, 1u, 16397u), vec4<bool>(false, false, true, true), vec4<f32>(642f, -912f, 1457f, -1619f)), Struct_2(Struct_1(-1591f, -528f, 0u, -1175f, vec4<u32>(0u, 37733u, 32242u, 0u)), vec4<u32>(112471u, 0u, 21246u, 13319u), vec4<bool>(true, false, true, true), vec4<f32>(544f, 2093f, 902f, 1000f)), Struct_2(Struct_1(376f, -1284f, 1u, 852f, vec4<u32>(4294967295u, 30023u, 119407u, 22326u)), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<bool>(false, true, false, false), vec4<f32>(-385f, 404f, -1349f, -239f)), Struct_2(Struct_1(2332f, 1092f, 42708u, -1840f, vec4<u32>(3187u, 4294967295u, 0u, 1u)), vec4<u32>(70348u, 39115u, 60188u, 4294967295u), vec4<bool>(true, false, false, false), vec4<f32>(-805f, -467f, 123f, 1000f)), Struct_2(Struct_1(-1000f, 740f, 36589u, -344f, vec4<u32>(57380u, 44957u, 0u, 4294967295u)), vec4<u32>(109427u, 47135u, 0u, 1u), vec4<bool>(false, true, false, true), vec4<f32>(-508f, 1214f, 1544f, -1822f)), Struct_2(Struct_1(-1526f, 1270f, 1u, -1019f, vec4<u32>(1u, 97611u, 1498u, 75873u)), vec4<u32>(106847u, 7567u, 0u, 2117u), vec4<bool>(true, true, false, true), vec4<f32>(-1000f, 1882f, -785f, -485f)), Struct_2(Struct_1(-926f, 1867f, 0u, -710f, vec4<u32>(1u, 6443u, 0u, 0u)), vec4<u32>(4294967295u, 0u, 39922u, 4294967295u), vec4<bool>(false, false, false, true), vec4<f32>(535f, -2456f, -1433f, -1196f)));

var<private> global1: array<u32, 27>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_2, 21>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_3.a.c, 4294967295u), 531u << (_wgslsmith_div_u32(0u, 4294967295u) % 32u)), 21u)];
    let var_1 = arg_3.a;
    let var_2 = !select(arg_3.c.ywz, var_0.c.yxx, all(vec4<bool>(arg_3.c.x, var_0.c.x, arg_2, true)) && true);
    let var_3 = !any(var_2.xy);
    return 22728i;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1120f - 580f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, 864f), 307f)))), arg_1.b, _wgslsmith_mod_u32(~(~global1[_wgslsmith_index_u32(arg_1.c, 27u)]), 20202u), -702f, vec4<u32>(0u | arg_1.c, ~arg_1.e.x, ~_wgslsmith_dot_vec4_u32(~arg_1.e, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.e.x, 27u)], 27u)], 42282u, 4294967295u, u_input.c.x) >> (arg_1.e % vec4<u32>(32u))), ~abs(~25600u)));
    global0 = array<Struct_2, 21>();
    var var_1 = var_0;
    let var_2 = Struct_1(-1162f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1141f)))), arg_1.c >> ((81135u << (abs(var_1.e.x) % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1359f))), _wgslsmith_f_op_f32(floor(-105f))))), reverseBits(var_0.e & _wgslsmith_clamp_vec4_u32(vec4<u32>(61832u, var_0.c, var_1.c, 78071u), vec4<u32>(var_0.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], var_1.e.x, u_input.d.x), var_0.e)) & ~var_1.e);
    var var_3 = _wgslsmith_mult_vec2_u32(countOneBits(~(~var_2.e.zw)), ~(var_2.e.wz << ((var_1.e.xx ^ vec2<u32>(var_1.c, 1u)) % vec2<u32>(32u))));
    return -78344i;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = true;
    global1 = array<u32, 27>();
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-reverseBits(u_input.b.x), _wgslsmith_mod_i32(func_2(arg_2.xy, Struct_2(Struct_1(-401f, arg_0.x, 4294967295u, -864f, arg_2), arg_2, vec4<bool>(true, true, false, false), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 262f)), false, Struct_2(Struct_1(160f, 629f, 4294967295u, arg_1, arg_2), vec4<u32>(u_input.d.x, 42724u, u_input.d.x, 63923u), vec4<bool>(true, false, false, false), vec4<f32>(arg_1, arg_1, 1811f, 768f))), u_input.b.x & 1i), u_input.b.x), _wgslsmith_div_vec3_i32(~(u_input.b & u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -55050i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x)))), vec3<i32>(i32(-1i) * -17476i, _wgslsmith_mod_i32(u_input.b.x, func_3(241f, Struct_1(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0.x, arg_2))), 31434i)) & vec3<i32>(firstLeadingBit(1i), u_input.b.x >> (~global1[_wgslsmith_index_u32(54915u, 27u)] % 32u), u_input.b.x);
    let var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(4294967295u, arg_2.x)), 21u)];
    global1 = array<u32, 27>();
    return vec2<i32>(_wgslsmith_div_i32(min(_wgslsmith_add_i32(var_1.x, ~var_1.x), _wgslsmith_add_i32(u_input.b.x, var_1.x) | _wgslsmith_mult_i32(1i, var_1.x)), u_input.b.x), abs(-_wgslsmith_mult_i32(abs(-74509i), -17226i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -func_1(vec3<f32>(-510f, _wgslsmith_f_op_f32(f32(-1f) * -179f), -925f), -1081f, vec4<u32>(~19792u, ~global1[_wgslsmith_index_u32(u_input.a.x, 27u)], ~2518u, 73219u));
    var_0 = ~u_input.b.xy;
    global1 = array<u32, 27>();
    var_0 = -vec2<i32>(_wgslsmith_mult_i32(~(~var_0.x), -2147483647i), var_0.x);
    global1 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(753f, ~(-_wgslsmith_add_i32(-1i, -2147483647i)), ~u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-712f, 374f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -149f)), 1187f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(356f - -513f), -1060f)), -403f))), ~firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(32382u, 27u)], 51820u, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.e.x)));
}

