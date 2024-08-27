struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(vec3<i32>(9146i, 41677i, -11535i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), 0u), vec2<bool>(false, true), Struct_3(vec3<i32>(i32(-2147483648), 24901i, 22135i), -1342f, 0u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(335u, 4294967295u, 29617u, 0u), vec3<f32>(-115f, -407f, -401f), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), Struct_4(Struct_2(vec3<i32>(2147483647i, 2147483647i, -40916i), vec4<i32>(-522i, i32(-2147483648), 23042i, 0i), 11241u), vec2<bool>(false, false), Struct_3(vec3<i32>(2147483647i, 2147483647i, 33026i), 467f, 41855u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 14381u, 4294967295u), vec3<f32>(-1790f, -421f, -2012f), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), Struct_4(Struct_2(vec3<i32>(43253i, -2763i, -45053i), vec4<i32>(-41366i, 1i, -1i, 0i), 52664u), vec2<bool>(true, false), Struct_3(vec3<i32>(i32(-2147483648), -9203i, 1i), -725f, 3568u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(26765u, 18025u, 9277u, 9324u), vec3<f32>(1129f, 1186f, 126f), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), Struct_4(Struct_2(vec3<i32>(42199i, -7525i, 26850i), vec4<i32>(12714i, -29288i, -49698i, -1968i), 84357u), vec2<bool>(false, false), Struct_3(vec3<i32>(618i, -1i, -1i), -332f, 4294967295u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(22599u, 64356u, 74040u, 0u), vec3<f32>(1666f, 561f, -958f), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), Struct_4(Struct_2(vec3<i32>(2727i, 63932i, 36990i), vec4<i32>(-1i, i32(-2147483648), 1i, -5912i), 34370u), vec2<bool>(false, true), Struct_3(vec3<i32>(-4587i, -59325i, 29080i), 174f, 4294967295u, Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 1u, 1u, 33233u), vec3<f32>(486f, 834f, 1510f), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), Struct_4(Struct_2(vec3<i32>(-4838i, 4016i, 0i), vec4<i32>(-25330i, 0i, i32(-2147483648), 36148i), 4294967295u), vec2<bool>(true, false), Struct_3(vec3<i32>(-13434i, 29401i, -1i), -1000f, 2102u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(25183u, 0u, 4127u, 24486u), vec3<f32>(1116f, 772f, -1400f), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), Struct_4(Struct_2(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, -31154i, 0i, -47015i), 15582u), vec2<bool>(false, false), Struct_3(vec3<i32>(10127i, -27437i, -7245i), -214f, 4358u, Struct_1(vec3<bool>(false, false, false), vec4<u32>(0u, 48299u, 1u, 12141u), vec3<f32>(440f, -601f, -298f), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), Struct_4(Struct_2(vec3<i32>(27222i, 0i, 1i), vec4<i32>(-39683i, 40243i, 2147483647i, 42839i), 0u), vec2<bool>(true, true), Struct_3(vec3<i32>(1i, 19173i, 7122i), -605f, 4294967295u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(0u, 22583u, 4294967295u, 1u), vec3<f32>(-160f, 903f, -1295f), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), Struct_4(Struct_2(vec3<i32>(2147483647i, -1i, -6545i), vec4<i32>(-1i, -1i, -41303i, -29333i), 20258u), vec2<bool>(true, true), Struct_3(vec3<i32>(i32(-2147483648), 71689i, 2147483647i), -1202f, 33351u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(13930u, 53823u, 4294967295u, 0u), vec3<f32>(-333f, 399f, 383f), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));

var<private> global2: array<Struct_3, 31>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(u_input.b & -(~(u_input.b >> (u_input.a.yxw % vec3<u32>(32u)))), -1000f, u_input.c, Struct_1(vec3<bool>(!all(vec3<bool>(true, false, false)), true, true), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, 62934u, u_input.c), vec4<u32>(u_input.a.x, u_input.d.x, 31657u, 28438u)), u_input.d << (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, -538f, 237f)), vec3<f32>(1058f, -295f, 694f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2326f, 1397f, -596f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, -1000f, 1984f) * vec3<f32>(-147f, -459f, -478f)))), any(vec3<bool>(true, false, true)) && true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, select(false, true, false)), true)));
    global0 = ~u_input.b.x;
    let var_1 = u_input.c;
    var var_2 = !select(select(vec4<bool>(var_0.d.a.x, true, var_0.a.x < 2147483647i, any(var_0.d.e)), select(!vec4<bool>(var_0.d.e.x, var_0.d.a.x, var_0.d.e.x, var_0.d.d.x), !vec4<bool>(false, var_0.d.e.x, var_0.d.a.x, true), var_0.d.d.x), select(!vec4<bool>(var_0.d.a.x, false, false, var_0.d.a.x), !vec4<bool>(var_0.d.d.x, false, var_0.d.a.x, var_0.d.a.x), select(vec4<bool>(true, var_0.d.d.x, var_0.d.a.x, true), vec4<bool>(var_0.d.a.x, var_0.d.a.x, false, false), vec4<bool>(false, true, var_0.d.a.x, false)))), vec4<bool>(all(vec4<bool>(var_0.d.a.x, true, var_0.d.a.x, var_0.d.a.x)), any(vec2<bool>(true, var_0.d.e.x)), true, true & select(var_0.d.d.x, false, var_0.d.a.x)), false);
    var_2 = !vec4<bool>(false, var_0.d.e.x, true, var_2.x);
    return firstLeadingBit(~(-(~vec4<i32>(-2147483647i, u_input.b.x, var_0.a.x, var_0.a.x))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b.x, -28431i, u_input.b.x, 0i)), firstLeadingBit(vec4<i32>(252i, 2147483647i, u_input.b.x, u_input.b.x))), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.x, var_0.a.x))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = !vec2<bool>(!arg_0, arg_0);
    var var_1 = reverseBits(-_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 2147483647i, u_input.b.x, -2147483647i) | (vec4<i32>(u_input.b.x, 0i, u_input.b.x, -19585i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(countOneBits(-1i), 1i, u_input.b.x ^ u_input.b.x, ~u_input.b.x)));
    var_1 = func_3() << ((u_input.a >> (countOneBits(~vec4<u32>(arg_1.x, u_input.c, 66914u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = vec3<u32>(~arg_1.x, min(arg_1.x, 50045u), _wgslsmith_add_u32(0u, 0u));
    var var_3 = Struct_5(min(var_2.x, 4294967295u), ~(~vec2<u32>(arg_1.x, 73619u) << (countOneBits(select(arg_1.xy, vec2<u32>(var_2.x, arg_1.x), false)) % vec2<u32>(32u))), Struct_1(!select(vec3<bool>(arg_0, false, true), vec3<bool>(false, false, var_0.x), !var_0.x), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1050f, 1000f, 601f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-539f, 1000f, 718f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -636f, -762f) - vec3<f32>(-483f, 1536f, -321f)))), vec3<bool>(true, true, !select(arg_0, true, false)), vec3<bool>(false, arg_0, any(vec4<bool>(false, false, var_0.x, var_0.x)))), vec2<i32>(-((var_1.x & 0i) >> (firstTrailingBit(arg_1.x) % 32u)), ~2147483647i));
    return ~vec4<i32>(~var_1.x, var_1.x, var_1.x, 1i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec4<bool> {
    global1 = array<Struct_4, 9>();
    var var_0 = (-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, 1i, -47935i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, arg_1.x, arg_1.x)), -vec4<i32>(arg_1.x, u_input.b.x, -11280i, 3693i)) | vec4<i32>(select(max(u_input.b.x, 22256i), _wgslsmith_dot_vec2_i32(vec2<i32>(75989i, arg_1.x), vec2<i32>(-2147483647i, arg_1.x)), u_input.d.x != u_input.c), arg_1.x, arg_1.x, -1i)) ^ -vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(arg_1.x, -5549i, abs(u_input.b.x)), u_input.b.x | u_input.b.x, arg_1.x);
    let var_1 = ~(i32(-1i) * -20906i);
    global0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(func_2(false, select(_wgslsmith_mod_vec3_u32(u_input.a.xww, u_input.a.xwx), min(u_input.a.zwz, u_input.d.yxy), vec3<bool>(true, true, true)))), -vec4<i32>(i32(-1i) * -u_input.b.x, -1i, arg_1.x, -1i));
    global1 = array<Struct_4, 9>();
    return !vec4<bool>(true, true, !any(vec4<bool>(false, false, false, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false), func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(588f, 853f, -1531f), vec3<f32>(-958f, -1313f, 357f))), -vec2<i32>(u_input.b.x, u_input.b.x)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), all(vec3<bool>(false, false, true)))), !vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -353f), -127f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1419f))), _wgslsmith_f_op_f32(floor(-1000f))))));
    let var_2 = vec3<bool>(true, !(true && any(vec2<bool>(true, true))), true);
    let var_3 = vec2<u32>(_wgslsmith_div_u32(~firstTrailingBit(_wgslsmith_mult_u32(u_input.c, 16705u)), 10635u), ~u_input.a.x);
    var var_4 = Struct_3(firstTrailingBit(u_input.b), -468f, ~4294967295u, Struct_1(var_2, abs(~(u_input.d ^ u_input.d)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, -1207f, true)), _wgslsmith_f_op_f32(181f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f * -483f) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -144f))), var_2, func_1(vec3<f32>(394f, _wgslsmith_f_op_f32(f32(-1f) * -1392f), _wgslsmith_f_op_f32(var_1.x + -1317f)), select(_wgslsmith_mult_vec2_i32(u_input.b.zy, u_input.b.yy), vec2<i32>(u_input.b.x, u_input.b.x), 749f != var_1.x)).zzz));
    let var_5 = var_4.d;
    var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(63768u), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-873f, _wgslsmith_f_op_f32(-126f * -1592f), !var_5.a.x))), -173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_4.b, 831f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.a.yyy, vec2<i32>(-1i, var_4.a.x), vec3<f32>(var_1.x, 1031f, -301f));
}

