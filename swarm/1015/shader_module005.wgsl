struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
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

var<private> global0: array<f32, 24> = array<f32, 24>(1363f, -1000f, -266f, -1431f, -1565f, -1000f, -1000f, -624f, 1163f, 1243f, -1000f, 2358f, 1000f, -322f, 249f, 1061f, 714f, 729f, 626f, -899f, 327f, 1934f, -1112f, -557f);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(758f, -1498f, 2877f, 1648f), vec4<bool>(true, false, false, true), 90086u, 526f, true), Struct_1(vec4<f32>(-367f, -1809f, 1582f, 229f), vec4<bool>(true, false, false, false), 0u, 1021f, true), Struct_1(vec4<f32>(2331f, -1397f, 1434f, 1000f), vec4<bool>(false, true, false, true), 17160u, -507f, true), Struct_1(vec4<f32>(578f, -1631f, -129f, 147f), vec4<bool>(true, true, false, true), 1u, 1000f, true), Struct_1(vec4<f32>(1219f, 1038f, 488f, 1000f), vec4<bool>(true, true, true, false), 47172u, 840f, true), Struct_1(vec4<f32>(-1201f, 886f, -544f, 589f), vec4<bool>(false, true, true, false), 47944u, -673f, true), Struct_1(vec4<f32>(-555f, 436f, -1659f, 966f), vec4<bool>(false, false, true, true), 14336u, 508f, true), Struct_1(vec4<f32>(-866f, 1343f, 801f, 751f), vec4<bool>(false, false, true, false), 1u, 1000f, true), Struct_1(vec4<f32>(-1150f, -222f, -149f, 196f), vec4<bool>(false, true, true, false), 22538u, -422f, true), Struct_1(vec4<f32>(1120f, 909f, -817f, 1077f), vec4<bool>(false, false, true, true), 0u, -281f, false), Struct_1(vec4<f32>(608f, -797f, 1994f, -2584f), vec4<bool>(true, false, false, false), 31332u, -736f, true), Struct_1(vec4<f32>(1806f, 1319f, 439f, -1000f), vec4<bool>(false, false, false, true), 4294967295u, -164f, false), Struct_1(vec4<f32>(-482f, 1385f, 736f, 386f), vec4<bool>(true, false, false, false), 92055u, 1305f, true), Struct_1(vec4<f32>(1000f, -804f, -311f, -310f), vec4<bool>(true, false, false, true), 1u, -164f, true), Struct_1(vec4<f32>(840f, 300f, -1556f, 718f), vec4<bool>(false, false, false, true), 1u, 1000f, true), Struct_1(vec4<f32>(-1000f, -2288f, -807f, -1559f), vec4<bool>(false, true, true, false), 39554u, 1738f, true), Struct_1(vec4<f32>(-1154f, 944f, -762f, -606f), vec4<bool>(true, true, false, false), 14616u, 1718f, true), Struct_1(vec4<f32>(-513f, -759f, -915f, 733f), vec4<bool>(true, true, false, true), 22112u, -212f, true), Struct_1(vec4<f32>(-738f, 1824f, 382f, -456f), vec4<bool>(false, true, true, true), 0u, 1276f, false));

var<private> global2: f32 = 812f;

var<private> global3: array<Struct_3, 6>;

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = vec2<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-34575i, 0i, -2147483647i)), vec3<i32>(-45590i, u_input.c.x, 0i) & vec3<i32>(-25186i, u_input.c.x, u_input.c.x)), 15381i)) ^ u_input.c;
    global1 = array<Struct_1, 19>();
    global4 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, ~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), vec3<u32>(countOneBits(u_input.b.x), 0u, 26659u)), 25888u);
    var var_1 = _wgslsmith_sub_vec2_u32(~(~u_input.b), ~(~vec2<u32>(37721u, arg_1.c) & select(vec2<u32>(57538u, arg_1.c), vec2<u32>(4294967295u, arg_1.c), false))) & (countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(4294967295u, arg_1.c, 73511u)), 2970u)) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.c, 1u), max(firstTrailingBit(vec2<u32>(63332u, u_input.a.x)), u_input.a.yz), vec2<u32>(_wgslsmith_sub_u32(6810u, 0u), select(u_input.b.x, 2940u, arg_1.e))));
    global4 = ~44490u;
    return select(select(select(select(select(arg_1.b, vec4<bool>(false, arg_2, false, true), arg_2), !arg_1.b, !arg_0.b.x), select(select(vec4<bool>(arg_2, arg_0.e, false, false), arg_0.b, arg_0.b), !vec4<bool>(true, arg_0.b.x, arg_1.b.x, arg_1.e), vec4<bool>(true, true, arg_0.b.x, arg_1.b.x)), arg_1.b.x), vec4<bool>(all(vec3<bool>(false, arg_1.b.x, arg_0.b.x)), true, arg_1.c == ~var_1.x, arg_1.e), false), !(!arg_1.b), select(!select(select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(true, arg_1.b.x, arg_2, arg_1.e), true), select(arg_0.b, vec4<bool>(true, arg_0.e, true, false), false), any(vec4<bool>(arg_0.b.x, arg_2, true, arg_1.b.x))), !select(arg_0.b, !vec4<bool>(arg_0.e, true, arg_2, arg_1.b.x), any(arg_1.b.zxz)), -55065i > _wgslsmith_sub_i32(u_input.c.x, -2147483647i)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.x;
    global1 = array<Struct_1, 19>();
    var var_1 = firstLeadingBit(u_input.b.x);
    return Struct_1(vec4<f32>(-854f, _wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(520f + -1215f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, 940f, global0[_wgslsmith_index_u32(19665u, 24u)], -146f)), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, false), ~(~1u), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], !any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -643f) - vec4<f32>(673f, 1000f, 1135f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true), 4294967295u, _wgslsmith_f_op_f32(1834f + 388f), false), true), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(41642u, u_input.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(~49129u, ~82342u), _wgslsmith_mod_vec2_u32(u_input.b & vec2<u32>(u_input.a.x, 0u), u_input.a.yy))), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(abs(~1149u), 24u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0 << (u_input.a.x % 32u), 24u)]) * _wgslsmith_f_op_f32(trunc(-236f))), -923f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))))), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)] == global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true, all(vec3<bool>(false, false, false)), true)), u_input.b.x, 1566f, true);
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(7086u, 24u)], var_0.a.x, true))));
    let var_1 = ~max(_wgslsmith_add_vec3_i32(select(~vec3<i32>(-2147483647i, -11128i, 30835i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -20607i), vec3<i32>(u_input.c.x, -2147483647i, 18212i)), !vec3<bool>(var_0.b.x, false, var_0.b.x)), vec3<i32>(u_input.c.x, 4951i, u_input.c.x >> (58044u % 32u))), ~select(vec3<i32>(u_input.c.x, u_input.c.x, 1i) | vec3<i32>(0i, u_input.c.x, -22558i), ~vec3<i32>(u_input.c.x, 24622i, -56045i), !var_0.b.wxz));
    var var_2 = func_2(var_1);
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(~61136u, arg_0, _wgslsmith_div_u32(var_0.c, var_0.c)) | var_0.c, abs(u_input.b.x)), 19u)];
    return Struct_4(var_1.x, 2147483647i, _wgslsmith_clamp_vec4_u32(min(u_input.a, ~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c, 4294967295u, var_0.c, arg_0), u_input.a), ~vec4<u32>(var_2.c, 12960u, u_input.a.x, 1u)) | vec4<u32>(~23574u, min(0u, u_input.b.x), ~20363u, 85022u & u_input.b.x), (_wgslsmith_sub_vec4_u32(vec4<u32>(25136u, 39035u, arg_0, var_2.c), u_input.a) ^ ~u_input.a) & ~(~u_input.a)), var_0);
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global2 = arg_0.d.d;
    global1 = array<Struct_1, 19>();
    let var_0 = ~vec3<u32>(~arg_0.c.x, ~firstLeadingBit(~1u), reverseBits(_wgslsmith_div_u32(arg_0.d.c ^ arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), arg_0.c.yz))));
    return Struct_5(vec4<u32>(max(_wgslsmith_div_u32(102763u, arg_0.c.x), _wgslsmith_clamp_u32(arg_0.d.c, arg_0.d.c, arg_0.c.x)), 1u, ~0u, (var_0.x & 119200u) | firstLeadingBit(u_input.b.x)) & ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.d.c), u_input.b), var_0.x << (4294967295u % 32u), 1u, ~u_input.a.x), func_1(var_0.x).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(4294967295u, u_input.a.x), 24u)] - 1f) >= global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(117239u, u_input.b.x), 24u)], false, !any(vec2<bool>(true, true)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true)));
    var var_1 = var_0.xyx;
    var var_2 = func_4(func_1(0u));
    global1 = array<Struct_1, 19>();
    var var_3 = (u_input.c & vec2<i32>(u_input.c.x, ~firstTrailingBit(0i))) & firstTrailingBit(countOneBits(u_input.c << (~vec2<u32>(var_2.a.x, 30434u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(vec3<i32>(var_3.x, var_3.x, u_input.c.x)).d))));
}

