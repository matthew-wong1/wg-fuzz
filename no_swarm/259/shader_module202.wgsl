struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(61529i, 21071i), vec2<i32>(-1872i, -21561i), vec2<i32>(-8402i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(60214i, i32(-2147483648)), vec2<i32>(0i, 39993i), vec2<i32>(13392i, 2147483647i), vec2<i32>(-37011i, 4303i), vec2<i32>(-4560i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(42203i, 0i));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true, vec3<i32>(1i, -1i, 1i), true, vec3<f32>(-796f, -1928f, 1406f), vec4<u32>(0u, 71976u, 33328u, 21673u)), Struct_1(false, vec3<i32>(-38868i, -1i, i32(-2147483648)), true, vec3<f32>(-2149f, 1300f, 107f), vec4<u32>(0u, 52982u, 1u, 4294967295u)), Struct_1(false, vec3<i32>(0i, 70967i, -15927i), true, vec3<f32>(779f, 138f, -763f), vec4<u32>(0u, 5892u, 0u, 36899u)), Struct_1(true, vec3<i32>(0i, -1i, -37477i), false, vec3<f32>(-1497f, -964f, 121f), vec4<u32>(61156u, 18017u, 10161u, 1u)), Struct_1(true, vec3<i32>(16711i, -32261i, -34609i), true, vec3<f32>(-220f, 1625f, 1035f), vec4<u32>(28429u, 62130u, 4294967295u, 38414u)), Struct_1(false, vec3<i32>(-27004i, 48444i, 28342i), false, vec3<f32>(844f, 1000f, -125f), vec4<u32>(38967u, 0u, 1u, 0u)), Struct_1(true, vec3<i32>(25733i, -66627i, i32(-2147483648)), false, vec3<f32>(-2128f, -655f, -700f), vec4<u32>(0u, 33301u, 87967u, 1u)), Struct_1(false, vec3<i32>(-26944i, -40507i, 2147483647i), true, vec3<f32>(329f, 241f, -1543f), vec4<u32>(6934u, 4005u, 42335u, 65811u)), Struct_1(true, vec3<i32>(-8896i, 2147483647i, -46580i), true, vec3<f32>(1000f, -670f, -428f), vec4<u32>(4294967295u, 2877u, 31500u, 91503u)), Struct_1(true, vec3<i32>(11061i, 1i, -1i), true, vec3<f32>(-773f, -2197f, 580f), vec4<u32>(4294967295u, 1u, 4294967295u, 22086u)), Struct_1(false, vec3<i32>(i32(-2147483648), -29983i, 2147483647i), true, vec3<f32>(967f, -320f, -1000f), vec4<u32>(29304u, 24186u, 1u, 28431u)), Struct_1(true, vec3<i32>(-1262i, -1i, -1i), true, vec3<f32>(-1369f, -1228f, -1230f), vec4<u32>(4294967295u, 4294967295u, 57517u, 50622u)), Struct_1(true, vec3<i32>(-78310i, -1i, 2147483647i), true, vec3<f32>(-766f, -1213f, 1726f), vec4<u32>(21201u, 1u, 8793u, 44171u)), Struct_1(true, vec3<i32>(0i, 53485i, -1i), false, vec3<f32>(534f, 1229f, 666f), vec4<u32>(97298u, 53109u, 5794u, 25633u)), Struct_1(true, vec3<i32>(-24715i, i32(-2147483648), 5506i), false, vec3<f32>(1000f, 268f, 405f), vec4<u32>(1u, 76658u, 0u, 2445u)), Struct_1(true, vec3<i32>(-1i, 2147483647i, 23720i), false, vec3<f32>(2442f, 1371f, -1237f), vec4<u32>(0u, 0u, 45522u, 7444u)), Struct_1(true, vec3<i32>(13456i, 28096i, 0i), true, vec3<f32>(-874f, -782f, -828f), vec4<u32>(52782u, 4294967295u, 30827u, 92323u)), Struct_1(false, vec3<i32>(1i, -1i, 0i), false, vec3<f32>(-558f, -621f, 1775f), vec4<u32>(11638u, 30315u, 0u, 12979u)), Struct_1(false, vec3<i32>(-32748i, 3069i, -1i), true, vec3<f32>(-147f, -514f, 268f), vec4<u32>(0u, 19923u, 4294967295u, 0u)), Struct_1(false, vec3<i32>(40442i, 27761i, -1i), false, vec3<f32>(-255f, 599f, -649f), vec4<u32>(29009u, 1u, 6034u, 1u)), Struct_1(true, vec3<i32>(-1i, -1i, 15171i), true, vec3<f32>(-630f, 220f, -1579f), vec4<u32>(4294967295u, 4294967295u, 0u, 30911u)), Struct_1(true, vec3<i32>(1i, 23357i, 2476i), true, vec3<f32>(823f, 1832f, 236f), vec4<u32>(16801u, 0u, 29337u, 47892u)), Struct_1(true, vec3<i32>(i32(-2147483648), 50670i, 2147483647i), true, vec3<f32>(349f, -425f, -512f), vec4<u32>(1u, 4294967295u, 13681u, 107673u)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(countOneBits(select(select(vec4<u32>(u_input.a, u_input.a, 91713u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 1u), false), vec4<u32>(u_input.a, u_input.a, 22896u, u_input.a), all(vec3<bool>(false, false, false)))), select(~vec4<u32>(u_input.a, 2263u, 26575u, u_input.a) & ~vec4<u32>(u_input.a, 25703u, u_input.a, 39344u), vec4<u32>(_wgslsmith_add_u32(51463u, u_input.a), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 57438u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~u_input.a), true || all(vec4<bool>(true, false, false, true))));
    global2 = array<Struct_1, 23>();
    let var_1 = Struct_3(Struct_1(reverseBits(global1.x) == -(~global1.x), global1.wwy, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(ceil(-1144f)), -1186f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, -2090f, 693f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2662f, -2003f, 190f)))), max(var_0, var_0)), vec3<f32>(-272f, _wgslsmith_f_op_f32(floor(-316f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1612f, -781f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(2147483647i, global1.x, global1.x, 26284i)), vec4<i32>(global1.x, 17232i, _wgslsmith_mult_i32(~(-11526i), global1.x), countOneBits(reverseBits(global1.x)))));
    var var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1((_wgslsmith_div_i32(global1.x, 2147483647i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 57179u), var_1.a.e.zw) % 32u)) >= var_1.a.b.x, abs(~global1.zyx), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x + 206f), _wgslsmith_f_op_f32(round(var_2.d.x)), 771f)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(21398u, 20850u, 51330u, 4294967295u), ~vec4<u32>(0u, u_input.a, var_0.x, var_0.x), reverseBits(vec4<u32>(var_0.x, var_2.e.x, var_1.a.e.x, 14936u))), vec4<u32>(60014u, u_input.a, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(24111u, var_2.e.x), vec2<u32>(14665u, u_input.a))))), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.x, var_1.c, 0i, global1.x), vec4<i32>(-1i, 68103i, global1.x, 2147483647i)), max(0i, firstLeadingBit(-36282i))) & -(var_2.b.xx | vec2<i32>(18964i, 4993i)), global2[_wgslsmith_index_u32(var_0.x, 23u)], var_0, vec2<i32>(-2147483647i, firstLeadingBit(~var_2.b.x)));
    return -reverseBits(~(_wgslsmith_div_i32(var_2.b.x, 33018i) << (min(var_0.x, var_2.e.x) % 32u)));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec4<bool> {
    global1 = select(-firstLeadingBit(select(vec4<i32>(global1.x, arg_1, arg_1, -2147483647i), vec4<i32>(global1.x, arg_1, global1.x, 1i), arg_0)) | vec4<i32>(-2147483647i, _wgslsmith_mult_i32(firstLeadingBit(2147483647i), -arg_1), arg_1, 50881i | (39484i >> (u_input.a % 32u))), vec4<i32>(2147483647i, func_3(), -13733i, ~(-_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 13u)], vec2<i32>(-212i, arg_1)))), !vec4<bool>(true, true, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)) && any(vec3<bool>(true, arg_0, false)), !all(vec2<bool>(arg_0, true))));
    let var_0 = _wgslsmith_div_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(25793i, 2147483647i, arg_1, -2147483647i), abs(vec4<i32>(arg_1, 9618i, 1i, 18523i)))), vec4<i32>(~global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-13351i, 1i) ^ ~global1.wz, firstLeadingBit(global0[_wgslsmith_index_u32(min(51052u, u_input.a), 13u)])), 11161i, max(-2147483647i, ~arg_1) | 0i));
    var var_1 = -reverseBits(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, 1i), 20814i, 1i, _wgslsmith_add_i32(arg_1, var_0.x) << (~42354u % 32u)));
    var var_2 = 0u;
    global2 = array<Struct_1, 23>();
    return vec4<bool>(arg_0, select(abs(37001u ^ u_input.a) < ~u_input.a, true, arg_0), !(!arg_0), false);
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    global2 = array<Struct_1, 23>();
    var var_0 = !func_2(true, 1i);
    let var_1 = reverseBits(-_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.x, arg_1, -2147483647i, 2147483647i)), min(vec4<i32>(-16672i, 7857i, global1.x, -2147483647i), vec4<i32>(arg_1, arg_1, global1.x, -1835i)), reverseBits(vec4<i32>(-15706i, 0i, 45083i, arg_1))), vec4<i32>(34003i, _wgslsmith_mod_i32(-42413i, -1i), -1i, global1.x)));
    let var_2 = Struct_1(all(select(!var_0.wyx, !vec3<bool>(var_0.x, var_0.x, false), select(!var_0.zyz, func_2(true, var_1.x).xzw, true))), ~vec3<i32>(2147483647i, ~(i32(-1i) * -26319i), _wgslsmith_sub_i32(global1.x, global1.x)), any(select(vec3<bool>(var_0.x, var_0.x, !var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), !(arg_0 != arg_0))), vec3<f32>(-2389f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1067f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1529f, -1171f)))) * _wgslsmith_f_op_f32(select(-121f, _wgslsmith_div_f32(1574f, -562f), var_0.x)))), ~vec4<u32>(_wgslsmith_mod_u32(5330u, 4294967295u), ~select(u_input.a, 5077u, true), u_input.a, u_input.a));
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(17004u, 23u)], _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, max(56103i, -7065i)), ~select(var_1.wx, vec2<i32>(arg_1, var_2.b.x), var_0.xx)), firstTrailingBit(var_2.b.zz)), global2[_wgslsmith_index_u32(max(firstLeadingBit(abs(_wgslsmith_clamp_u32(var_2.e.x, 18226u, 23977u))), _wgslsmith_mod_u32(var_2.e.x, 1u)), 23u)], _wgslsmith_div_vec4_u32(select(abs(vec4<u32>(var_2.e.x, arg_0, 25752u, 4294967295u)), min(vec4<u32>(var_2.e.x, arg_0, 1u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(72354u, 1u, 4294967295u, u_input.a), var_2.e)), var_0.x), var_2.e), vec2<i32>(_wgslsmith_mult_i32(~global1.x ^ arg_1, -global1.x & var_1.x), global1.x));
    return ~(-32179i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(min(~_wgslsmith_mod_i32(global1.x, -50352i), abs(25750i)), global1.x, 56379i), global1.yxw);
    global1 = countOneBits(vec4<i32>(1i, ~6542i, abs(var_0.x & ~(-1i)), select(reverseBits(-global1.x), var_0.x, 4294967295u > u_input.a)));
    global0 = array<vec2<i32>, 13>();
    var_0 = vec3<i32>(_wgslsmith_add_i32(reverseBits(max(1i, ~18165i)), firstTrailingBit(_wgslsmith_add_i32(38148i, -2147483647i << (0u % 32u)))), (global1.x >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.a, 11115u)), abs(vec3<u32>(u_input.a, 4294967295u, u_input.a))) % 32u)) >> (u_input.a % 32u), -(var_0.x & -70019i));
    var_0 = -(global1.ywy & countOneBits(vec3<i32>(global1.x, -var_0.x, global1.x)));
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(i32(-1i) * -69439i), var_0.x, ~(~8888i)), vec3<i32>(countOneBits(var_0.x), global1.x, func_1(~1u, -global1.x))), global1.x, global1.x);
    global0 = array<vec2<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, select(-39986i, -13370i, false)), ~global1.x, firstLeadingBit(global1.x)));
}

