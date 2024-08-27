struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-1000f, 511f, 1000f), vec3<f32>(1741f, 725f, 413f), vec3<f32>(210f, 1719f, 150f), vec3<f32>(-296f, -1084f, 741f), vec3<f32>(-1132f, -1459f, -884f), vec3<f32>(-166f, 613f, -1628f), vec3<f32>(331f, -637f, 1039f), vec3<f32>(-788f, -1000f, 913f), vec3<f32>(431f, -1264f, 1365f), vec3<f32>(166f, -260f, -1257f), vec3<f32>(-1464f, -601f, -1358f), vec3<f32>(-793f, 1000f, -1744f), vec3<f32>(2449f, 724f, -831f), vec3<f32>(-1639f, -810f, -1953f), vec3<f32>(-392f, -287f, 1574f));

var<private> global1: array<i32, 10> = array<i32, 10>(21994i, -11730i, -586i, 0i, 75285i, i32(-2147483648), 21697i, 1i, 71996i, -54384i);

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(900f, 969f, -368f, -295f), vec4<f32>(338f, -1316f, -298f, 1000f), vec4<f32>(-1192f, -486f, 220f, 1947f), vec4<f32>(-289f, 686f, 1943f, 243f), vec4<f32>(1000f, -728f, 383f, -1000f), vec4<f32>(1310f, 1000f, -437f, 1305f), vec4<f32>(1100f, -1062f, 501f, 636f), vec4<f32>(-432f, 993f, -706f, 2157f), vec4<f32>(-307f, 987f, -1555f, 1283f), vec4<f32>(-156f, -1148f, 1877f, 1088f), vec4<f32>(-1239f, 160f, 1000f, 216f), vec4<f32>(-1798f, -594f, -478f, -319f), vec4<f32>(520f, 180f, -301f, 947f), vec4<f32>(179f, -625f, -1000f, 362f), vec4<f32>(-1000f, -1051f, 1354f, -881f), vec4<f32>(-529f, -955f, -2474f, -145f), vec4<f32>(-1066f, -973f, 139f, -749f), vec4<f32>(1429f, -471f, -175f, 612f), vec4<f32>(-936f, 470f, -301f, -1000f), vec4<f32>(-353f, -367f, -462f, -1066f), vec4<f32>(1288f, 685f, -115f, 421f), vec4<f32>(-387f, 569f, -224f, 690f), vec4<f32>(278f, -1000f, -562f, -1000f), vec4<f32>(-2379f, -331f, -127f, -1000f), vec4<f32>(107f, 1119f, 165f, -394f), vec4<f32>(388f, -916f, 449f, -116f), vec4<f32>(998f, 127f, 1247f, 2554f), vec4<f32>(-326f, 1497f, -1883f, -1182f), vec4<f32>(1688f, -457f, 407f, -565f), vec4<f32>(1180f, 402f, 1367f, 1000f));

var<private> global3: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(0i, 1i, -1i), vec3<i32>(0i, 0i, -41915i), vec3<i32>(-40591i, -23175i, 27093i), vec3<i32>(0i, 36428i, 2147483647i), vec3<i32>(5684i, 7993i, -17339i), vec3<i32>(-46066i, -1i, i32(-2147483648)), vec3<i32>(3359i, -1i, 48130i), vec3<i32>(63519i, 1i, 2147483647i), vec3<i32>(0i, -1i, -6872i), vec3<i32>(0i, -24893i, 16042i), vec3<i32>(2147483647i, -29342i, -38959i), vec3<i32>(-42570i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, -4457i, 1i), vec3<i32>(9805i, -28238i, i32(-2147483648)), vec3<i32>(479i, i32(-2147483648), -35928i), vec3<i32>(i32(-2147483648), 51654i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -1i, 7242i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(-1i, 1i, -39430i), vec3<i32>(1974i, 0i, 50959i), vec3<i32>(24746i, 2147483647i, 13646i), vec3<i32>(-63922i, 0i, 12512i), vec3<i32>(-1i, 33496i, -1i), vec3<i32>(1i, -21004i, 28045i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(25833i, -1i, -1i), vec3<i32>(1i, 0i, -23807i), vec3<i32>(-19770i, -76992i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(2147483647i, 1i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_sub_u32(arg_0.a, 1u);
    let var_1 = countOneBits(_wgslsmith_div_i32(-24859i, i32(-1i) * -42693i));
    let var_2 = Struct_2(Struct_1(~4294967295u), 2147483647i, ~41711i, _wgslsmith_f_op_f32(arg_1.d + 1f));
    var_0 = var_2.a.a;
    global3 = array<vec3<i32>, 32>();
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(~(u_input.c.x & ~func_2(arg_2.a, arg_2, arg_2)), 32u)] >> (vec3<u32>(u_input.a, 29369u, arg_2.a.a) % vec3<u32>(32u));
    return u_input.d.x;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(max(vec4<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 10u)], u_input.b.x, -2147483647i), vec4<i32>(arg_1.c, arg_0, 39967i, arg_1.b) >> (vec4<u32>(86471u, 4294967295u, 8244u, arg_1.a.a) % vec4<u32>(32u))), vec4<i32>(-arg_0, -2147483647i, countOneBits(arg_1.c), 19873i)), ~vec4<i32>(_wgslsmith_div_i32(-global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -arg_0), -1i, ~u_input.b.x, -2147483647i), ~_wgslsmith_add_vec4_i32(abs(~vec4<i32>(-2147483647i, arg_1.b, -1i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, 60361i, arg_0), vec4<i32>(1i, arg_1.c, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 9092i)) << (firstLeadingBit(u_input.c) % vec4<u32>(32u))));
    let var_1 = select(vec4<u32>(48336u, 11382u, 1u, 13169u), vec4<u32>(40649u, u_input.a, 19114u, _wgslsmith_clamp_u32(~(u_input.a << (arg_1.a.a % 32u)), ~(arg_1.a.a << (u_input.d.x % 32u)), func_1(!arg_3.wyz, select(vec2<bool>(arg_3.x, true), vec2<bool>(false, arg_3.x), true), arg_1))), vec4<bool>(!(_wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]) >= (global1[_wgslsmith_index_u32(arg_1.a.a, 10u)] & 44385i)), true, arg_2, any(arg_3.zzy) | !arg_2));
    var var_2 = 1167f;
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(1u), u_input.d.x), u_input.c.ww), u_input.d.xy);
    var var_4 = Struct_1(~28156u);
    return ~max(_wgslsmith_div_vec4_u32(vec4<u32>(~arg_1.a.a, 33764u, func_2(arg_1.a, Struct_2(Struct_1(0u), arg_1.b, global1[_wgslsmith_index_u32(arg_1.a.a, 10u)], 1000f), arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 14486u), vec2<u32>(2718u, arg_1.a.a))), ~vec4<u32>(var_4.a, 1u, 88127u, var_1.x)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstLeadingBit(abs(func_1(vec3<bool>(false, false, true), vec2<bool>(false, false), Struct_2(Struct_1(1u), global1[_wgslsmith_index_u32(u_input.d.x, 10u)], -35333i, -896f)) ^ _wgslsmith_sub_u32(29354u, u_input.d.x))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(select(u_input.d.x, 62304u, false), ~21309u), u_input.a)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, 1u), vec4<u32>(u_input.d.x, 71309u, u_input.d.x, var_0.x)), func_3(global1[_wgslsmith_index_u32(54847u, 10u)], Struct_2(Struct_1(var_0.x), -1i, -6142i, -1000f), false, vec4<bool>(true, false, true, true))) >> (u_input.a % 32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 10u)], 1i, 1i), ~110352i), vec3<i32>(u_input.e.x >> (var_0.x % 32u), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 22104i), _wgslsmith_mod_i32(2147483647i, u_input.b.x))), 51532i), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1154f + -575f), -776f, all(vec3<bool>(true, true, false)))))));
    var var_2 = var_1;
    let var_3 = Struct_2(Struct_1(~1330u), -23148i, global1[_wgslsmith_index_u32(78385u << (u_input.a % 32u), 10u)] << (28247u % 32u), _wgslsmith_f_op_f32(ceil(266f)));
    let var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32((u_input.d << (max(vec3<u32>(1u, var_2.a.a, 13516u), vec3<u32>(39307u, 1u, var_2.a.a)) % vec3<u32>(32u))) << (countOneBits(~u_input.d) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(59380u, _wgslsmith_mod_u32(var_0.x, 53912u), max(12460u, var_1.a.a)), reverseBits(~u_input.d))), firstTrailingBit(~func_1(vec3<bool>(false, false, false), vec2<bool>(false, false), var_3)) >> (0u % 32u), 16003u);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~vec2<u32>(0u, 31402u)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(10751u, u_input.a), u_input.d.xy, vec2<u32>(62471u, 77955u)), vec2<u32>(var_3.a.a, var_2.a.a))) >> (vec2<u32>(41470u, 1u) % vec2<u32>(32u)), u_input.d.x);
}

