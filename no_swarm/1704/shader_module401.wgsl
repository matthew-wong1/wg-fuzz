struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1332f, 843f, 163f, 229f), vec4<f32>(102f, 1807f, -190f, -972f), vec4<f32>(-368f, 683f, -1434f, -409f), vec4<f32>(-854f, 1000f, 1471f, 216f), vec4<f32>(-1000f, 917f, 515f, -396f), vec4<f32>(-462f, 325f, 302f, -864f), vec4<f32>(-1313f, 403f, -1548f, -389f), vec4<f32>(1461f, 172f, -104f, 543f), vec4<f32>(1146f, -219f, 555f, -771f), vec4<f32>(1584f, 249f, -871f, 1255f), vec4<f32>(-375f, -377f, 1998f, 1588f), vec4<f32>(1000f, -453f, 1301f, 482f), vec4<f32>(352f, -943f, -1028f, -1582f), vec4<f32>(-1447f, 971f, -755f, -1362f), vec4<f32>(262f, 199f, 370f, -634f), vec4<f32>(-1653f, 1134f, -797f, -873f), vec4<f32>(244f, -459f, -1102f, -1083f), vec4<f32>(400f, 158f, -542f, 1054f), vec4<f32>(842f, -2647f, -394f, 2695f), vec4<f32>(-710f, 634f, 362f, 468f), vec4<f32>(1385f, -430f, 2859f, -1131f), vec4<f32>(444f, 617f, -723f, 149f), vec4<f32>(1000f, 1760f, -322f, 1460f), vec4<f32>(525f, 360f, -1000f, -1000f), vec4<f32>(1727f, 469f, 1128f, 423f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1.e.d.zy << (vec2<u32>(~u_input.a, max(abs(u_input.a), 74193u)) % vec2<u32>(32u));
    global1 = array<vec4<f32>, 25>();
    let var_1 = arg_1;
    var var_2 = vec4<bool>(arg_1.a.c.x, !select(all(var_1.d.c.zx), var_1.d.c.x, arg_1.a.c.x), false, any(select(select(vec4<bool>(true, false, true, var_1.d.c.x), vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, true), arg_1.c == global0.x), !(!vec4<bool>(arg_1.d.c.x, true, arg_1.d.c.x, var_1.a.c.x)), all(select(var_1.d.c, vec3<bool>(var_1.d.c.x, arg_1.a.c.x, var_1.d.c.x), var_1.d.c.x)))));
    var var_3 = all(vec4<bool>(~var_1.b == ~firstTrailingBit(arg_1.a.b.d.x), any(vec2<bool>(arg_1.d.c.x | var_2.x, any(vec4<bool>(true, false, var_1.d.c.x, arg_1.d.c.x)))), !all(select(var_2.yzy, var_1.a.c, true)), var_2.x));
    return -((i32(-1i) * -(1i >> (var_1.a.b.b % 32u))) | _wgslsmith_clamp_i32(23749i, firstTrailingBit(0i), -11824i));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    global0 = vec2<i32>(-global0.x, global0.x);
    var var_0 = Struct_3(arg_3, arg_1.d.x, arg_0 << (countOneBits(arg_1.b) % 32u), arg_3, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(376f)))), arg_1.c)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -162f)), vec4<u32>(arg_1.d.x, select(_wgslsmith_clamp_u32(arg_3.b.b, arg_3.b.d.x, 18015u), 4955u, arg_3.c.x | arg_3.c.x), arg_1.d.x, 4294967295u)));
    global1 = array<vec4<f32>, 25>();
    var var_1 = vec2<i32>(global0.x, ~func_3(vec3<i32>(arg_0, global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0, 24140i), vec3<i32>(-1i, -1i, var_0.c))), Struct_3(Struct_2(vec2<f32>(396f, 307f), Struct_1(arg_3.a.x, arg_3.b.d.x, arg_2.x, vec4<u32>(arg_3.b.d.x, u_input.a, 67355u, 1u)), arg_3.c, vec3<f32>(-671f, arg_1.a, -1770f)), u_input.a, var_0.c ^ arg_0, Struct_2(arg_2.zx, arg_1, arg_3.c, vec3<f32>(1469f, -688f, -866f)), Struct_1(-1437f, u_input.a, -525f, vec4<u32>(arg_3.b.b, 0u, 0u, 62297u)))));
    let var_2 = var_0.d;
    return var_2.a.x;
}

fn func_1() -> Struct_2 {
    global1 = array<vec4<f32>, 25>();
    let var_0 = false;
    global1 = array<vec4<f32>, 25>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1800f, _wgslsmith_f_op_f32(func_2(global0.x, Struct_1(499f, 4294967295u, -1000f, vec4<u32>(4294967295u, 0u, u_input.b, u_input.b)), vec3<f32>(933f, 170f, 1632f), Struct_2(vec2<f32>(453f, -538f), Struct_1(-1000f, u_input.a, -1039f, vec4<u32>(u_input.b, 1u, 22036u, u_input.a)), vec3<bool>(false, var_0, var_0), vec3<f32>(524f, -1263f, 753f))))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-59935i, Struct_1(-783f, 42456u, -563f, vec4<u32>(u_input.b, 8733u, 48471u, 14026u)), vec3<f32>(1000f, 1051f, 255f), Struct_2(vec2<f32>(287f, -719f), Struct_1(1309f, 47882u, 285f, vec4<u32>(21217u, 4294967295u, 0u, u_input.b)), vec3<bool>(false, var_0, false), vec3<f32>(303f, 1000f, 547f)))) * 643f))), select(~vec4<u32>(1u, 33347u, u_input.a, u_input.b), min(~vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.b, u_input.a, 4294967295u) | vec4<u32>(0u, 1u, u_input.a, 4294967295u)), select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, var_0, var_0), true), select(vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, true, var_0)), true))), select(!vec3<bool>(global0.x == -1i, all(vec3<bool>(true, var_0, false)), var_0), select(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, var_0), false), select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, false, false), vec3<bool>(true, var_0, true)), var_0), select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, var_0)), vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, false, false), vec3<bool>(true, var_0, false), vec3<bool>(false, true, true)))), !var_0), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-151f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2057f + -1206f) * _wgslsmith_f_op_f32(275f + 1200f))), _wgslsmith_f_op_f32(abs(1344f)), _wgslsmith_f_op_f32(183f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1755f)), _wgslsmith_f_op_f32(min(1010f, 820f))))));
    let var_2 = global0.x;
    return Struct_2(var_1.a, Struct_1(var_1.a.x, ~1u, _wgslsmith_f_op_f32(max(-149f, var_1.a.x)), ~max(var_1.b.d, firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b)))), select(select(vec3<bool>(true, var_0, true), !select(vec3<bool>(false, var_0, true), vec3<bool>(false, var_0, var_0), true), var_1.c), select(!var_1.c, vec3<bool>(1i < global0.x, var_0, any(vec4<bool>(var_1.c.x, var_1.c.x, false, false))), var_1.c), any(select(select(vec3<bool>(var_0, var_0, var_0), var_1.c, var_1.c), vec3<bool>(var_1.c.x, var_0, false), true))), var_1.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = func_1().d;
    var var_1 = !func_1().c.zy;
    global0 = min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(-51007i, 1i, global0.x)), ~global0.x) & vec2<i32>(global0.x, countOneBits(-29689i)), abs(countOneBits(-vec2<i32>(-1i, -1i)))) & -(~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global0.x, -27246i)), vec2<i32>(global0.x, global0.x) | vec2<i32>(2147483647i, global0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1380f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = ~reverseBits(1u);
    var var_2 = _wgslsmith_f_op_f32(1026f - _wgslsmith_f_op_f32(func_4(func_1(), select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(371f, -464f))))), func_1().b, vec3<bool>(true, any(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, 153f, -863f) - vec3<f32>(-1531f, 1276f, 178f)))))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, _wgslsmith_f_op_f32(1590f - 320f))), func_1().b, vec3<bool>(true, true, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(244f, -487f, 328f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-107f, -590f, 1411f)))))), max(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0, var_0, 42665u), vec4<u32>(0u, 43813u, var_0, 3u) >> (vec4<u32>(12568u, 1u, u_input.b, 15297u) % vec4<u32>(32u)))), var_0), reverseBits(global0.x), func_1(), Struct_1(1f, _wgslsmith_add_u32(u_input.a, 1578u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, u_input.a), vec4<u32>(var_0, u_input.a, 2112u, 4294967295u), vec4<u32>(var_0, 21862u, var_0, u_input.a)))));
    var_1 = 1u;
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.a.x), 639f)), Struct_1(-1624f, (30005u >> (1u % 32u)) << (_wgslsmith_sub_u32(0u, var_0) % 32u), -1450f, reverseBits(vec4<u32>(39716u, u_input.b, u_input.b, u_input.b))), !vec3<bool>(var_3.d.c.x, 4294967295u >= u_input.a, var_3.d.b.d.x < var_0), var_3.a.d), 8431u, -var_3.c, var_3.a, var_3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global0.x, (_wgslsmith_add_i32(-1i, global0.x) << (1u % 32u)) & firstTrailingBit(0i >> (0u % 32u))));
}

