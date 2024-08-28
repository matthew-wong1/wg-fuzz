struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<f32>(-1000f, -2097f, 173f, 598f), vec4<f32>(-2346f, 970f, -678f, 1194f), 16948i, vec2<bool>(false, true), false), vec3<f32>(-725f, -1288f, 213f), Struct_1(vec4<f32>(661f, -1239f, 1338f, -1041f), vec4<f32>(224f, -582f, -277f, -308f), 6121i, vec2<bool>(true, false), false), vec2<i32>(-1i, 4340i), vec2<u32>(89020u, 0u)), Struct_2(Struct_1(vec4<f32>(-1728f, 805f, -944f, 2320f), vec4<f32>(109f, 566f, 565f, -311f), -1i, vec2<bool>(false, false), true), vec3<f32>(246f, 625f, -1006f), Struct_1(vec4<f32>(895f, -1536f, -1058f, -1075f), vec4<f32>(-2245f, -785f, 779f, 790f), -2420i, vec2<bool>(true, true), true), vec2<i32>(1i, 0i), vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(329f, -511f, 326f, 337f), vec4<f32>(-792f, 1216f, -347f, -1987f), -5049i, vec2<bool>(false, false), false), vec3<f32>(925f, 819f, 1154f), Struct_1(vec4<f32>(715f, -2149f, 1360f, -1000f), vec4<f32>(2387f, -683f, 271f, -722f), i32(-2147483648), vec2<bool>(true, false), true), vec2<i32>(-57730i, 2147483647i), vec2<u32>(4870u, 32260u)), Struct_2(Struct_1(vec4<f32>(224f, 404f, -1454f, -148f), vec4<f32>(651f, 1085f, -648f, 1000f), i32(-2147483648), vec2<bool>(true, true), true), vec3<f32>(493f, 686f, -1000f), Struct_1(vec4<f32>(-542f, -1587f, -1000f, -535f), vec4<f32>(-311f, -462f, 1000f, 1498f), 2147483647i, vec2<bool>(false, false), true), vec2<i32>(-2072i, -46455i), vec2<u32>(15766u, 0u)), Struct_2(Struct_1(vec4<f32>(2007f, 1796f, 408f, -711f), vec4<f32>(-563f, 1174f, -844f, 793f), -1i, vec2<bool>(true, false), false), vec3<f32>(-1077f, -1879f, -114f), Struct_1(vec4<f32>(119f, 308f, 1770f, 670f), vec4<f32>(-1000f, -257f, -148f, -504f), i32(-2147483648), vec2<bool>(false, false), false), vec2<i32>(0i, -17939i), vec2<u32>(10839u, 22810u)), Struct_2(Struct_1(vec4<f32>(-1000f, -229f, 144f, 615f), vec4<f32>(-2151f, 711f, -544f, 449f), i32(-2147483648), vec2<bool>(false, false), true), vec3<f32>(497f, 616f, 1000f), Struct_1(vec4<f32>(540f, -385f, 790f, -2208f), vec4<f32>(-519f, 450f, -1596f, -1000f), 8634i, vec2<bool>(false, false), true), vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(9351u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-738f, 657f, -159f, -262f), vec4<f32>(1225f, -173f, 942f, 1170f), -39151i, vec2<bool>(true, false), true), vec3<f32>(142f, -1793f, 749f), Struct_1(vec4<f32>(1133f, -391f, 277f, -752f), vec4<f32>(1000f, 372f, -342f, -983f), 1i, vec2<bool>(true, true), false), vec2<i32>(4519i, 12388i), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec4<f32>(-2374f, 1000f, -1444f, -286f), vec4<f32>(615f, -1023f, -710f, -256f), -36351i, vec2<bool>(true, false), true), vec3<f32>(740f, 174f, -1367f), Struct_1(vec4<f32>(449f, -355f, 498f, 2524f), vec4<f32>(1483f, 543f, 348f, -637f), 0i, vec2<bool>(false, false), true), vec2<i32>(7236i, 0i), vec2<u32>(79314u, 0u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec2_u32(select(vec2<u32>(firstLeadingBit(arg_1.e.x), _wgslsmith_clamp_u32(arg_2.e.x, 64485u, 151u)), ~_wgslsmith_mod_vec2_u32(arg_0.e, arg_1.e), any(!vec3<bool>(false, arg_2.c.e, false))) ^ select(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.e.x, 1u), ~arg_1.e), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1.e.x), vec2<u32>(48453u, 4294967295u), vec2<u32>(arg_2.e.x, arg_2.e.x)), true), arg_1.e);
    return all(!select(vec4<bool>(false, arg_0.c.e, any(vec2<bool>(arg_1.c.d.x, arg_0.c.e)), arg_2.a.e), !(!vec4<bool>(false, true, arg_2.c.d.x, arg_2.a.e)), select(select(vec4<bool>(arg_0.c.e, arg_0.c.e, false, arg_0.a.d.x), vec4<bool>(arg_1.c.e, true, true, false), arg_2.c.d.x), select(vec4<bool>(arg_0.c.e, true, false, arg_2.a.d.x), vec4<bool>(false, arg_0.a.e, true, false), true), all(vec2<bool>(true, false)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 8>();
    var var_0 = arg_3.c;
    let var_1 = vec4<bool>(true | arg_3.a.d.x, any(vec3<bool>(arg_2.x, var_0.d.x, (0i << (1u % 32u)) > ~var_0.c)), true, !func_3(Struct_2(arg_3.c, _wgslsmith_f_op_vec3_f32(round(arg_3.c.b.yzy)), func_2(arg_0.a, -9074i, vec4<f32>(-510f, -257f, var_0.b.x, 2169f)), ~vec2<i32>(u_input.c, var_0.c), arg_0.e), arg_0, arg_0));
    var var_2 = arg_3.a;
    global0 = array<Struct_2, 8>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(387f, arg_0.a.b.x, var_0.a.x, -1245f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, arg_3.a.b.x, 1000f, -225f) + vec4<f32>(411f, var_0.b.x, 1290f, -1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-883f, -474f, arg_0.c.b.x, 389f))), _wgslsmith_sub_u32(4294967295u, arg_3.e.x) == (arg_3.e.x & arg_0.e.x))), _wgslsmith_f_op_vec4_f32(floor(arg_0.c.b)), select(select(select(vec4<bool>(arg_2.x, true, arg_2.x, arg_3.a.e), var_1, vec4<bool>(arg_3.a.d.x, false, arg_0.a.d.x, var_0.e)), !var_1, true), !vec4<bool>(var_2.e, false, true, var_0.d.x), vec4<bool>(true, arg_3.c.b.x == 679f, func_2(Struct_1(vec4<f32>(985f, arg_1, var_2.b.x, -1094f), arg_3.c.a, var_2.c, arg_0.a.d, arg_2.x), var_0.c, vec4<f32>(1182f, var_2.a.x, arg_0.c.a.x, arg_3.b.x)).d.x, true)))), _wgslsmith_f_op_vec4_f32(-arg_0.c.b), _wgslsmith_add_i32(4875i, var_0.c) | -1930i, select(select(select(var_1.yz, vec2<bool>(false, arg_3.a.d.x), any(vec2<bool>(var_1.x, var_0.d.x))), vec2<bool>(var_1.x, func_2(arg_3.a, -17755i, var_0.b).e), arg_0.c.e), arg_2, func_3(global0[_wgslsmith_index_u32(arg_0.e.x, 8u)], Struct_2(Struct_1(arg_3.c.a, vec4<f32>(220f, -791f, -535f, var_2.b.x), -11984i, var_0.d, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.b.x, arg_3.c.b.x, var_2.a.x) * var_0.b.ywy), Struct_1(var_0.a, arg_0.c.a, -1i, vec2<bool>(false, var_2.e), false), ~vec2<i32>(arg_3.a.c, 1i), ~vec2<u32>(arg_0.e.x, 52291u)), Struct_2(Struct_1(var_0.a, arg_0.c.a, -25i, vec2<bool>(arg_0.a.e, false), true), vec3<f32>(arg_1, -389f, -1924f), func_2(Struct_1(vec4<f32>(arg_3.b.x, 1000f, -1000f, var_0.b.x), vec4<f32>(arg_3.c.b.x, -1101f, arg_3.c.a.x, -1000f), 2147483647i, arg_3.c.d, arg_3.a.e), 1i, var_0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c, -47523i), vec2<i32>(-18407i, -2147483647i)), reverseBits(arg_0.e)))), any(vec4<bool>(var_2.d.x, arg_3.e.x >= 0u, arg_3.c.d.x, false & all(vec4<bool>(var_0.e, true, arg_3.a.d.x, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_mult_vec4_u32(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_3.e.x, 61985u, 18515u), vec4<u32>(arg_3.e.x, 18365u, 55407u, arg_3.e.x)))), firstLeadingBit(vec4<u32>(7878u, min(arg_2.x, _wgslsmith_mod_u32(arg_3.e.x, 58693u)), arg_3.e.x, firstLeadingBit(~1u))));
    global0 = array<Struct_2, 8>();
    var_0 = vec4<u32>(_wgslsmith_div_u32(abs(~arg_3.e.x), 3225u), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, var_0.x, abs(0u), _wgslsmith_mult_u32(arg_2.x, arg_2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 72741u, 0u) << (vec4<u32>(4294967295u, arg_3.e.x, var_0.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(65878u, 0u, arg_3.e.x, 44983u))), 58154u, ~(~1u)) >> ((~firstTrailingBit(~vec4<u32>(var_0.x, arg_2.x, 1u, 36950u)) >> (reverseBits(~vec4<u32>(54263u, var_0.x, 4294967295u, var_0.x) | vec4<u32>(arg_3.e.x, 1u, arg_2.x, 62575u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = var_0.zww;
    return 4294967295u;
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.a.zxz;
    global0 = array<Struct_2, 8>();
    var var_1 = !(!vec3<bool>(true, arg_0.a.e, arg_0.a.e));
    var_1 = !(!(!(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, arg_0.c.d.x, var_1.x)))));
    var_1 = vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~60844i), (vec2<i32>(2147483647i, u_input.a.x) ^ arg_0.d) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.e.x, arg_0.e.x), arg_0.e) % vec2<u32>(32u))) != _wgslsmith_clamp_i32(abs(abs(7923i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, arg_0.c.c, 1452i) << (vec4<u32>(arg_0.e.x, 27903u, 0u, 0u) % vec4<u32>(32u)), -vec4<i32>(29309i, u_input.a.x, arg_0.a.c, -42989i)), _wgslsmith_clamp_i32(-2147483647i, -57555i, 1i)), all(vec3<bool>(func_2(Struct_1(vec4<f32>(439f, 1197f, arg_0.c.a.x, 1864f), arg_0.a.a, arg_0.d.x, arg_0.a.d, false), 15521i, vec4<f32>(405f, 566f, 898f, -2700f)).d.x, arg_0.c.e & (2147483647i >= arg_0.a.c), !var_1.x | (var_0.x > arg_0.c.c))), true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(i32(-1i) * -u_input.d.x), u_input.b, true);
    var_0 = u_input.d.x;
    let var_1 = func_5(global0[_wgslsmith_index_u32(~func_4(true, func_1(Struct_2(Struct_1(vec4<f32>(707f, 695f, -1692f, -1553f), vec4<f32>(354f, 286f, -351f, 1000f), 0i, vec2<bool>(true, true), true), vec3<f32>(320f, -656f, -152f), Struct_1(vec4<f32>(1000f, 468f, 2147f, -1390f), vec4<f32>(535f, -1062f, -2172f, -626f), -7988i, vec2<bool>(false, false), false), u_input.a.xx, vec2<u32>(55882u, 0u)), 1000f, vec2<bool>(false, false), Struct_2(Struct_1(vec4<f32>(260f, -1470f, 1180f, -210f), vec4<f32>(-673f, -610f, 495f, 444f), -1i, vec2<bool>(false, true), true), vec3<f32>(877f, -1678f, -556f), Struct_1(vec4<f32>(-1507f, 491f, 759f, -1000f), vec4<f32>(-703f, 749f, 945f, 1143f), u_input.d.x, vec2<bool>(true, true), false), vec2<i32>(1i, 36787i), vec2<u32>(29748u, 951u))), vec2<u32>(0u, 4294967295u), global0[_wgslsmith_index_u32(0u, 8u)]), 8u)]) | 1u;
    var_0 = -39442i;
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(922f)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2107f + 444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2779f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1984f, -618f, 254f, -1180f))))), 2147483647i, select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(func_3(Struct_2(Struct_1(vec4<f32>(1380f, 137f, 1222f, 1170f), vec4<f32>(2922f, 1467f, 1000f, 1871f), 28984i, vec2<bool>(false, true), false), vec3<f32>(125f, 122f, 1743f), Struct_1(vec4<f32>(894f, 1118f, -1228f, 1699f), vec4<f32>(-187f, 1415f, 470f, 400f), u_input.a.x, vec2<bool>(true, false), false), u_input.d.zx, vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec4<f32>(-450f, 482f, -1015f, -1272f), vec4<f32>(-551f, 798f, 448f, 669f), u_input.b, vec2<bool>(false, true), true), vec3<f32>(1458f, -1159f, 528f), Struct_1(vec4<f32>(475f, -821f, 554f, -475f), vec4<f32>(-1080f, -472f, 2357f, 1384f), -48115i, vec2<bool>(false, false), false), u_input.a.zw, vec2<u32>(var_1, var_1)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), vec2<u32>(var_1, 0u)), 8u)]), ~u_input.d.x <= 2147483647i, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(713f))), 891f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -153f))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(func_1(global0[_wgslsmith_index_u32(var_1, 8u)], 146f, vec2<bool>(false, true), Struct_2(Struct_1(vec4<f32>(-546f, 1868f, 1129f, -2547f), vec4<f32>(-1340f, 237f, 596f, -1512f), u_input.d.x, vec2<bool>(false, true), true), vec3<f32>(-1073f, 926f, 1785f), Struct_1(vec4<f32>(1342f, -1663f, -2201f, 577f), vec4<f32>(-201f, 422f, 951f, 354f), 1i, vec2<bool>(false, true), true), u_input.a.xy, vec2<u32>(var_1, var_1))).a.x, 762f, _wgslsmith_f_op_f32(-505f - -1424f), -634f), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(998f + 1609f), _wgslsmith_div_f32(1585f, -698f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.c, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, 1162f, 718f, 1213f)), vec4<f32>(606f, -627f, 648f, -812f), ~(-39043i), vec2<bool>(true, true), true), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1081f, -648f, -1660f, -1787f))) * vec4<f32>(-1000f, 354f, 593f, 744f))).d, var_1 <= (~var_1 ^ 20994u)), vec2<i32>(firstTrailingBit(-u_input.d.x), func_1(global0[_wgslsmith_index_u32(var_1, 8u)], _wgslsmith_f_op_f32(-406f + 443f), vec2<bool>(false, false), global0[_wgslsmith_index_u32(~var_1, 8u)]).c) | abs(u_input.d.zy), select(~(~vec2<u32>(18198u, 9794u) >> (vec2<u32>(23401u, var_1) % vec2<u32>(32u))), ~vec2<u32>(var_1, 11597u) >> ((vec2<u32>(1u, 1u) << (vec2<u32>(var_1, 58944u) % vec2<u32>(32u))) % vec2<u32>(32u)), !(!all(vec4<bool>(true, false, false, false)))));
    var_0 = u_input.a.x;
    var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4668u, ~(~var_1)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(21814i), vec2<i32>(-firstLeadingBit(firstTrailingBit(u_input.a.x)), -(u_input.c >> (var_2.e.x % 32u)) >> (0u % 32u)), vec3<i32>(func_2(var_2.a, 0i, var_2.a.a).c ^ _wgslsmith_dot_vec2_i32(u_input.a.xx, var_2.d), -1i, func_2(func_1(Struct_2(var_2.a, var_2.a.b.xww, var_2.c, vec2<i32>(-1i, 17737i), var_2.e), 756f, var_2.c.d, global0[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_add_i32(1i, u_input.b), _wgslsmith_f_op_vec4_f32(var_2.c.b - vec4<f32>(-632f, 776f, 737f, var_2.a.a.x))).c) & _wgslsmith_add_vec3_i32(abs(u_input.a.yxw) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(20866i, var_2.a.c, 29557i), vec3<i32>(u_input.a.x, -8285i, u_input.b)), countOneBits(min(vec3<i32>(u_input.d.x, -1i, var_2.a.c), vec3<i32>(-2147483647i, -5870i, u_input.d.x)))));
}

