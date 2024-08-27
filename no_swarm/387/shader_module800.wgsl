struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -693f;

var<private> global1: array<f32, 1> = array<f32, 1>(-643f);

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec2<f32>(-667f, 537f), -1i, vec4<bool>(false, false, true, false), vec3<i32>(-3611i, 34991i, 21047i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(83197u, 18206u, 16233u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u))), Struct_5(vec2<f32>(670f, 2127f), 3928i, vec4<bool>(true, true, false, false), vec3<i32>(-47974i, 1i, 18802i), Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(1u, 0u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1495u))), Struct_5(vec2<f32>(-1512f, -1163f), 19096i, vec4<bool>(false, false, true, true), vec3<i32>(0i, 0i, -2156i), Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(22715u, 1u, 50005u), vec4<u32>(1u, 41168u, 1u, 4294967295u))), Struct_5(vec2<f32>(781f, -1121f), 0i, vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 0i, -1i), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 96425u, 27169u), vec4<u32>(1u, 0u, 64821u, 3122u))), Struct_5(vec2<f32>(1147f, -458f), 53920i, vec4<bool>(false, false, true, false), vec3<i32>(1i, 2147483647i, i32(-2147483648)), Struct_4(vec4<bool>(true, true, true, true), vec3<u32>(40513u, 19001u, 15855u), vec4<u32>(27615u, 4294967295u, 4294967295u, 4294967295u))), Struct_5(vec2<f32>(-440f, 303f), i32(-2147483648), vec4<bool>(false, false, false, true), vec3<i32>(-10525i, 41318i, 1694i), Struct_4(vec4<bool>(false, true, true, true), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 62686u, 1u, 4294967295u))), Struct_5(vec2<f32>(-844f, 1000f), 1828i, vec4<bool>(true, false, true, true), vec3<i32>(20919i, 41008i, 10274i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(57377u, 4294967295u, 4294967295u), vec4<u32>(53451u, 24202u, 4294967295u, 1u))), Struct_5(vec2<f32>(683f, 767f), 0i, vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, -19506i, 2147483647i), Struct_4(vec4<bool>(false, false, false, false), vec3<u32>(69051u, 1u, 1u), vec4<u32>(41705u, 103187u, 0u, 114332u))), Struct_5(vec2<f32>(-459f, 656f), 0i, vec4<bool>(true, false, false, false), vec3<i32>(-12099i, -4435i, -55498i), Struct_4(vec4<bool>(false, true, false, false), vec3<u32>(28983u, 1u, 4294967295u), vec4<u32>(4156u, 37064u, 33287u, 0u))), Struct_5(vec2<f32>(-494f, -556f), 10487i, vec4<bool>(true, false, true, false), vec3<i32>(44200i, 1i, -643i), Struct_4(vec4<bool>(true, false, true, false), vec3<u32>(1u, 33471u, 0u), vec4<u32>(0u, 4294967295u, 20136u, 91011u))), Struct_5(vec2<f32>(1061f, 2116f), -1i, vec4<bool>(true, false, false, false), vec3<i32>(0i, -4942i, -5911i), Struct_4(vec4<bool>(true, true, false, true), vec3<u32>(9148u, 1u, 11237u), vec4<u32>(1u, 12192u, 42399u, 1u))), Struct_5(vec2<f32>(583f, 817f), 33176i, vec4<bool>(false, true, false, true), vec3<i32>(68838i, -1i, 2147483647i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 0u, 35996u), vec4<u32>(88504u, 4294967295u, 0u, 2706u))), Struct_5(vec2<f32>(627f, -1258f), 43656i, vec4<bool>(false, false, false, false), vec3<i32>(18632i, 0i, -1i), Struct_4(vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 4294967295u, 9562u), vec4<u32>(23466u, 36237u, 38412u, 4294967295u))), Struct_5(vec2<f32>(-2896f, 379f), 2914i, vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 1i, -36899i), Struct_4(vec4<bool>(false, false, true, false), vec3<u32>(100886u, 1u, 99191u), vec4<u32>(0u, 0u, 1622u, 4294967295u))), Struct_5(vec2<f32>(-1527f, -1520f), -58294i, vec4<bool>(false, true, false, true), vec3<i32>(-9946i, 31654i, 15024i), Struct_4(vec4<bool>(true, false, false, true), vec3<u32>(0u, 0u, 1u), vec4<u32>(95162u, 6793u, 58595u, 1u))), Struct_5(vec2<f32>(-508f, -425f), 0i, vec4<bool>(true, false, false, true), vec3<i32>(-22497i, 40850i, -9413i), Struct_4(vec4<bool>(false, true, false, true), vec3<u32>(0u, 29999u, 4294967295u), vec4<u32>(8879u, 0u, 1u, 1733u))), Struct_5(vec2<f32>(-209f, 119f), 2147483647i, vec4<bool>(true, true, false, false), vec3<i32>(i32(-2147483648), 10066i, 0i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(52999u, 59374u, 139811u), vec4<u32>(0u, 0u, 20056u, 0u))), Struct_5(vec2<f32>(706f, -702f), -1i, vec4<bool>(true, true, true, true), vec3<i32>(16570i, 2147483647i, 11259i), Struct_4(vec4<bool>(false, false, true, false), vec3<u32>(0u, 40439u, 0u), vec4<u32>(4294967295u, 5782u, 1u, 4294967295u))), Struct_5(vec2<f32>(-1827f, 812f), 1i, vec4<bool>(false, true, true, true), vec3<i32>(-10333i, -38208i, 41591i), Struct_4(vec4<bool>(false, false, true, false), vec3<u32>(1u, 30333u, 1261u), vec4<u32>(1u, 4294967295u, 98853u, 35957u))), Struct_5(vec2<f32>(-334f, -596f), -50505i, vec4<bool>(false, false, true, false), vec3<i32>(0i, i32(-2147483648), 15611i), Struct_4(vec4<bool>(false, false, true, true), vec3<u32>(1u, 4294967295u, 1u), vec4<u32>(4294967295u, 75056u, 1u, 11198u))), Struct_5(vec2<f32>(561f, -373f), i32(-2147483648), vec4<bool>(true, true, false, true), vec3<i32>(i32(-2147483648), -12478i, -1i), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(0u, 0u, 0u), vec4<u32>(4294967295u, 3402u, 21405u, 10039u))), Struct_5(vec2<f32>(343f, -530f), -1i, vec4<bool>(true, true, true, false), vec3<i32>(-27942i, 19813i, 1i), Struct_4(vec4<bool>(true, false, true, true), vec3<u32>(0u, 23104u, 6279u), vec4<u32>(0u, 36595u, 71109u, 46341u))), Struct_5(vec2<f32>(509f, 678f), 1i, vec4<bool>(true, true, true, true), vec3<i32>(-20909i, 0i, -4926i), Struct_4(vec4<bool>(true, false, true, false), vec3<u32>(61132u, 4294967295u, 0u), vec4<u32>(52703u, 37167u, 1u, 52447u))), Struct_5(vec2<f32>(352f, -1046f), -13175i, vec4<bool>(true, true, false, false), vec3<i32>(1i, 2147483647i, -1i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(0u, 0u, 0u), vec4<u32>(1u, 116828u, 62370u, 1u))), Struct_5(vec2<f32>(2007f, -425f), -6475i, vec4<bool>(false, false, true, true), vec3<i32>(-41101i, -46187i, -15162i), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(45419u, 48111u, 19511u), vec4<u32>(1u, 29929u, 4294967295u, 4294967295u))), Struct_5(vec2<f32>(1871f, 1140f), 47701i, vec4<bool>(false, true, false, false), vec3<i32>(0i, 20579i, 0i), Struct_4(vec4<bool>(true, true, true, false), vec3<u32>(27689u, 1u, 33784u), vec4<u32>(63113u, 9243u, 31273u, 10797u))), Struct_5(vec2<f32>(1094f, 906f), i32(-2147483648), vec4<bool>(false, true, false, true), vec3<i32>(-1i, 0i, -1i), Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(0u, 1u, 13052u), vec4<u32>(1u, 16537u, 0u, 4294967295u))), Struct_5(vec2<f32>(-227f, 1449f), 1i, vec4<bool>(false, true, true, true), vec3<i32>(21347i, 0i, 2147483647i), Struct_4(vec4<bool>(false, false, false, true), vec3<u32>(52106u, 47451u, 1u), vec4<u32>(4294967295u, 90752u, 35762u, 10255u))), Struct_5(vec2<f32>(1729f, -969f), i32(-2147483648), vec4<bool>(true, false, true, false), vec3<i32>(0i, 930i, -18715i), Struct_4(vec4<bool>(true, true, true, false), vec3<u32>(1u, 1u, 0u), vec4<u32>(42695u, 1u, 1u, 1u))));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = select(!arg_2.yx, arg_2.yy, !(!(!vec2<bool>(false, arg_1.b))));
    let var_1 = Struct_2(~(abs(~1u) >> (u_input.a % 32u)), vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(22353u, abs(4294967295u)), 1u)], arg_0)), -1042f, 1790f), _wgslsmith_dot_vec3_u32(max(u_input.c, u_input.c) << (_wgslsmith_add_vec3_u32(u_input.c, ~u_input.c) % vec3<u32>(32u)), abs(vec3<u32>(~104382u, ~arg_1.a, _wgslsmith_sub_u32(u_input.a, u_input.b)))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c) & 3123u, _wgslsmith_mod_u32(~arg_1.a, min(1u, 65495u) >> (min(u_input.b, arg_1.a) % 32u)), reverseBits(u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.b.xy);
    var var_3 = var_0.x;
    global1 = array<f32, 1>();
    return max(max(vec3<u32>(_wgslsmith_mod_u32(55683u, ~arg_1.a), 15064u, ~2639u), ~countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, var_1.d.x, var_1.c), vec3<u32>(arg_1.a, 38247u, 37713u), vec3<u32>(u_input.b, var_1.d.x, 1u)))), vec3<u32>(~(u_input.b | firstLeadingBit(66746u)), ~3864u, u_input.c.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> Struct_4 {
    global1 = array<f32, 1>();
    var var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(31283u, arg_0.b.d.x, arg_0.c.c), arg_0.c.d.yxx, vec3<bool>(true, true, false)), ~(~vec3<u32>(arg_0.c.a, 4294967295u, arg_0.c.d.x))), 44021u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-407f, -603f, global1[_wgslsmith_index_u32(u_input.b, 1u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1691f, 346f, 343f)))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~arg_0.c.d.ywz << (~arg_0.b.d.zyz % vec3<u32>(32u)), func_3(_wgslsmith_f_op_f32(-860f + global1[_wgslsmith_index_u32(69855u, 1u)]), Struct_1(u_input.c.x, false), vec3<bool>(true, true, true))), 7412u), countOneBits(select(arg_0.b.d, vec4<u32>(arg_0.c.c, min(u_input.a, 4294967295u), 0u, countOneBits(arg_0.c.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(35447i), -arg_1.x, -35594i, arg_1.x), _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_1.x, arg_1.x, 0i, -2147483647i), vec4<i32>(0i, 1i, arg_2, -2147483647i), vec4<bool>(true, true, true, false)), -vec4<i32>(arg_1.x, arg_2, arg_2, arg_2))), -vec4<i32>(arg_1.x << (var_0.a % 32u), -arg_2, -arg_2, -2147483647i), true), ~reverseBits(vec4<i32>(~(-16204i), firstTrailingBit(arg_2), 2147483647i & arg_2, -arg_2)));
    let var_3 = ~((~(~vec3<u32>(15197u, u_input.c.x, var_0.c)) >> (~_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(1u, 0u, 66806u), vec3<u32>(u_input.b, 18209u, 1u)) % vec3<u32>(32u))) << (func_3(-190f, Struct_1(14341u ^ var_0.d.x, all(vec2<bool>(true, true))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    return Struct_4(vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true)), false, true), _wgslsmith_sub_vec3_u32(var_0.d.xyw, func_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_1(~4294967295u, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), var_1.d);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = -(~(-1i));
    var var_1 = func_2(arg_0, vec2<i32>(var_0, var_0), ~var_0);
    var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) - _wgslsmith_f_op_f32(315f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28747u, 1u)]))), arg_0.c, arg_0.c), -vec2<i32>(~var_0, var_0 >> (arg_0.c.c % 32u)) << (reverseBits(~(vec2<u32>(arg_0.b.c, 0u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))) % vec2<u32>(32u)), 1i);
    let var_2 = var_1.b.x;
    global2 = array<Struct_5, 29>();
    return Struct_1(0u, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(1u, arg_0.a), 1u) | func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 1u)], Struct_2(arg_0.a, vec3<f32>(244f, global1[_wgslsmith_index_u32(u_input.b, 1u)], 1418f), 20442u, vec4<u32>(var_0.a, u_input.a, arg_0.a, u_input.c.x)), Struct_2(41635u, vec3<f32>(-1412f, 923f, 185f), 34644u, vec4<u32>(4294967295u, arg_0.a, arg_0.a, u_input.c.x))), vec2<i32>(1i, 1i), firstLeadingBit(42027i)).b.x, 1u)] * -1677f)));
    global0 = _wgslsmith_f_op_f32(max(-441f, -2541f));
    var var_2 = _wgslsmith_div_i32(25613i, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(-28816i, -2147483647i, -48819i), vec3<i32>(20237i, 1i, -2147483647i)), -vec3<i32>(0i, -2147483647i, -4337i))) ^ 0i;
    global0 = -706f;
    return Struct_2(34200u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, 142993u, u_input.a), vec4<u32>(1u, var_0.a, 4294967295u, var_0.a)), 1u)], _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 1u)]), _wgslsmith_f_op_f32(abs(1000f)), false || var_0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(104360u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))))), firstLeadingBit(firstLeadingBit(~max(0u, 1u))), min(func_2(Struct_3(-933f, Struct_2(0u, vec3<f32>(887f, global1[_wgslsmith_index_u32(u_input.c.x, 1u)], global1[_wgslsmith_index_u32(arg_0.a, 1u)]), 62114u, vec4<u32>(4294967295u, 1u, var_0.a, arg_0.a)), Struct_2(arg_0.a, vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], -1093f), 1u, vec4<u32>(0u, 1u, 4294967295u, 850u))), vec2<i32>(1i, 1i), 8477i).c, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 36496u, 5431u, arg_0.a), vec4<u32>(var_0.a, 0u, 105724u, 4294967295u), vec4<u32>(var_0.a, var_0.a, arg_0.a, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 52297u, var_0.a, 1u), vec4<u32>(arg_0.a, 4294967295u, 44174u, arg_0.a))) << (reverseBits(abs(vec4<u32>(4294967295u, 0u, var_0.a, 0u))) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.c.d.x, u_input.c.x)), vec2<u32>(1u, 23474u)), 1u)] - _wgslsmith_f_op_f32(min(-2972f, 1f)))), ~(arg_1 | -arg_1), select(!vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), true | !func_1(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_2(1u, vec3<f32>(-1061f, global1[_wgslsmith_index_u32(23823u, 1u)], 1183f), 4294967295u, arg_0.b.d), arg_0.c), -492f, vec2<bool>(false, false), arg_0.c.b).b), _wgslsmith_add_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, arg_1, 0i)), vec3<i32>(arg_1, -1i, arg_1)), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1, arg_1, arg_1), -vec3<i32>(arg_1, arg_1, arg_1))) << (vec3<u32>(arg_0.c.d.x, 53466u, arg_0.b.d.x) % vec3<u32>(32u)), func_2(arg_0, firstTrailingBit(firstTrailingBit(~vec2<i32>(arg_1, 14532i))), _wgslsmith_sub_i32(arg_1, -54445i)));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~(u_input.b | (13207u & u_input.a)), 1u)];
    global1 = array<f32, 1>();
    var var_0 = false;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(-357f, func_4(func_1(Struct_3(global1[_wgslsmith_index_u32(1u, 1u)], Struct_2(u_input.c.x, vec3<f32>(-1122f, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), 0u, vec4<u32>(1u, 8672u, 4294967295u, 16461u)), Struct_2(u_input.b, vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], -182f, 751f), 4294967295u, vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u))), 1575f, vec2<bool>(false, false), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], -391f, 1000f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), func_2(Struct_3(1000f, Struct_2(u_input.c.x, vec3<f32>(-270f, 1000f, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), 12613u, vec4<u32>(u_input.c.x, 0u, 1u, u_input.b)), Struct_2(1u, vec3<f32>(-1000f, -1719f, -247f), u_input.c.x, vec4<u32>(22683u, u_input.c.x, u_input.b, u_input.c.x))), vec2<i32>(0i, 1i), -1i).a), func_4(func_1(Struct_3(255f, Struct_2(15233u, vec3<f32>(-521f, global1[_wgslsmith_index_u32(u_input.c.x, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), u_input.c.x, vec4<u32>(u_input.a, 1u, u_input.c.x, u_input.c.x)), Struct_2(0u, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], -581f, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), u_input.b, vec4<u32>(u_input.b, 1u, u_input.c.x, 1u))), -1440f, vec2<bool>(true, true), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)], -726f)), vec3<bool>(true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), 1i)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~abs(u_input.a), 1u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(34804u, 1u)]) + global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u)]))));
    var var_1 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(-1440f, Struct_2(u_input.b, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], 2687f, 1386f), u_input.c.x, vec4<u32>(22700u, u_input.a, u_input.b, u_input.b)), Struct_2(8307u, vec3<f32>(global1[_wgslsmith_index_u32(23597u, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]), 0u, vec4<u32>(1u, 46509u, u_input.b, 23025u))), -1i)) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 1u)]))) * -1000f), Struct_2(1u, _wgslsmith_f_op_vec3_f32(-func_4(Struct_1(u_input.a, true), vec3<bool>(false, false, true), vec4<bool>(true, false, false, true)).b), 4294967295u, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.a, 10489u, u_input.a)), vec4<u32>(1u, u_input.c.x, 35798u, u_input.b) | vec4<u32>(9223u, 1u, 72588u, 1u))), Struct_2(countOneBits(4294967295u), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]), -1000f, _wgslsmith_f_op_f32(ceil(-884f))), u_input.a, vec4<u32>(u_input.a & 25746u, 51589u, ~u_input.a, 0u))), vec2<i32>(i32(-1i) * -1i, i32(-1i) * -2736i), -29003i);
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(-13790i << (var_1.b.x % 32u), ~26330i), 0i), vec2<i32>(firstLeadingBit(~(~3261i)), ~(i32(-1i) * -2229i)));
    global0 = -1000f;
    let var_3 = var_1.a.zyw;
    let var_4 = vec2<i32>(countOneBits(abs(~(-2147483647i))), -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(u_input.b, u_input.c.x)), 20972u), var_1.c.x));
}

