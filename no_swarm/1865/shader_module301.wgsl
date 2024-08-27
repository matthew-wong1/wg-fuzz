struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, false), vec3<bool>(true, false, false));

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-139f, 750f, -939f, -285f), vec4<f32>(-501f, 884f, 521f, -557f), vec4<f32>(1205f, 104f, -1168f, 1624f), vec4<f32>(1214f, 523f, 1016f, 594f), vec4<f32>(668f, -1883f, 1046f, 424f), vec4<f32>(822f, 306f, -295f, 890f), vec4<f32>(588f, 639f, -172f, 579f), vec4<f32>(-1073f, 1170f, -728f, -1259f), vec4<f32>(711f, -1000f, 1553f, -2814f), vec4<f32>(-217f, -388f, -707f, -165f), vec4<f32>(912f, 829f, -1630f, 200f), vec4<f32>(518f, 2190f, 2076f, -969f), vec4<f32>(-408f, -517f, -1141f, 1867f), vec4<f32>(1579f, 700f, -234f, 1262f), vec4<f32>(1809f, 492f, -1000f, 163f), vec4<f32>(309f, -168f, -519f, -850f), vec4<f32>(190f, -578f, 253f, 776f), vec4<f32>(1388f, -660f, -1832f, -301f), vec4<f32>(-2053f, -1907f, -1318f, -306f), vec4<f32>(2188f, -742f, 596f, -321f), vec4<f32>(145f, 2234f, 669f, -894f), vec4<f32>(-1000f, -2121f, 898f, -430f), vec4<f32>(-727f, 560f, -381f, 279f), vec4<f32>(735f, 378f, -240f, 334f), vec4<f32>(1000f, 2086f, 137f, -466f), vec4<f32>(-137f, 669f, 1830f, -1815f), vec4<f32>(-167f, -828f, -175f, 798f), vec4<f32>(1243f, -655f, 1653f, -589f), vec4<f32>(603f, -123f, 1378f, -962f), vec4<f32>(347f, -1000f, 158f, 134f), vec4<f32>(359f, -541f, -1638f, -278f));

var<private> global2: array<vec4<f32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-1170f * -692f) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-485f - -304f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1196f)) * 1383f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-374f, -171f)) * _wgslsmith_f_op_f32(ceil(1000f))))));
    global2 = array<vec4<f32>, 22>();
    let var_1 = Struct_3(-1417f, Struct_1(~u_input.c.x, abs(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.b, vec2<i32>(arg_0.b.x, arg_0.b.x)), -arg_0.b))));
    var_0 = all(vec2<bool>(false, (abs(0i) & _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x)) <= 1i));
    global2 = array<vec4<f32>, 22>();
    return u_input.a.xzy;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = -vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_2.a.b.x, arg_3), vec3<i32>(-2244i, arg_2.a.b.x, arg_3)), arg_3, select(~arg_2.d.x, _wgslsmith_div_i32(arg_3, arg_2.d.x), any(vec3<bool>(true, arg_0.x, arg_0.x)))) >> (_wgslsmith_div_vec3_u32(func_3(Struct_1(1u, vec2<i32>(2147483647i, arg_2.a.b.x) ^ arg_2.a.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(min(arg_1, 1u), countOneBits(4294967295u), arg_2.b.x), ~u_input.a.zwz >> (~vec3<u32>(65512u, arg_2.a.a, 4294967295u) % vec3<u32>(32u)), ~(~vec3<u32>(0u, arg_1, 4736u)))) % vec3<u32>(32u));
    global1 = array<vec4<f32>, 31>();
    global2 = array<vec4<f32>, 22>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(126f)), _wgslsmith_div_f32(1f, 1f)))) == _wgslsmith_f_op_f32(505f + _wgslsmith_f_op_f32(-arg_2.c.x));
    let var_2 = u_input.a;
    return Struct_1(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(4294967295u, arg_2.a.a)) & 1u, -firstLeadingBit(arg_2.a.b) & (-(vec2<i32>(arg_3, 20470i) ^ var_0.zx) << ((countOneBits(vec2<u32>(4294967295u, arg_1)) ^ (arg_2.b >> (var_2.wz % vec2<u32>(32u)))) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(22248u, select(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-1i, -11937i)), arg_1.c.a.b, vec2<i32>(arg_1.c.a.b.x, 81672i)), arg_1.b.b.b), select(~_wgslsmith_mod_vec2_i32(arg_1.c.d.xx, vec2<i32>(-38265i, arg_2)), -vec2<i32>(-21621i, -21013i), true), vec2<bool>(true, true)));
    var var_1 = arg_1.c;
    let var_2 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a ^ 0u, 64217u, 4294967295u, func_2(vec2<bool>(true, false), 4294967295u, arg_1.c, var_0.b.x).a), reverseBits(u_input.a)) | (_wgslsmith_mult_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_0.a, var_0.a, arg_1.c.a.a, 1u))) | ~min(u_input.a, u_input.a)), u_input.a, any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)));
    global0 = array<vec3<bool>, 2>();
    global2 = array<vec4<f32>, 22>();
    return vec2<i32>(-10634i, -26609i);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(~reverseBits(~u_input.b.x), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1372f, 267f) - vec2<f32>(-324f, 1099f)), Struct_4(func_2(vec2<bool>(false, false), 74253u, Struct_2(Struct_1(u_input.a.x, vec2<i32>(-53602i, 2147483647i)), vec2<u32>(4294967295u, 0u), vec2<f32>(-1000f, 473f), vec3<i32>(1i, -2147483647i, -21104i)), -7594i), Struct_3(-880f, Struct_1(8422u, vec2<i32>(1i, -2147483647i))), Struct_2(Struct_1(0u, vec2<i32>(34958i, -2147483647i)), u_input.b, vec2<f32>(-888f, -1000f), vec3<i32>(-1i, -19261i, -55224i))), -1i >> ((u_input.b.x << (13904u % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-435f, 439f, -1312f), vec3<f32>(-144f, 572f, 1955f))))))), Struct_3(286f, func_2(vec2<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, false))), 2518u, Struct_2(func_2(vec2<bool>(true, false), 1u, Struct_2(Struct_1(u_input.b.x, vec2<i32>(-2147483647i, -2147483647i)), u_input.c, vec2<f32>(331f, -247f), vec3<i32>(8372i, 0i, -32489i)), 2147483647i), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, -153f) + vec2<f32>(-1000f, -132f)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_i32(1i, 1i))), Struct_2(func_2(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(true, false, false)), ~u_input.a.x, Struct_2(func_2(vec2<bool>(true, true), u_input.b.x, Struct_2(Struct_1(u_input.a.x, vec2<i32>(-2147483647i, 17662i)), vec2<u32>(49342u, 15095u), vec2<f32>(-1152f, -640f), vec3<i32>(2147483647i, 1i, -39372i)), 101914i), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, -1000f) - vec2<f32>(-1169f, 654f)), vec3<i32>(-1i, 1i, 0i)), firstLeadingBit(-41039i)), select(~u_input.a.yx, max(~u_input.b, u_input.b), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1362f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, -174f) + vec2<f32>(468f, 790f)))), firstTrailingBit(~vec3<i32>(4179i, 9114i, 14329i) << (vec3<u32>(6762u, u_input.c.x, 4294967295u) % vec3<u32>(32u)))));
    global0 = array<vec3<bool>, 2>();
    global2 = array<vec4<f32>, 22>();
    let var_1 = 11479i;
    var var_2 = true;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(0u, countOneBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(-7622i, -21130i), vec2<i32>(-2147483647i, 0i)))), vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 160456u), u_input.a, select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), _wgslsmith_sub_vec4_u32(func_1(), countOneBits(u_input.a))), min(u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, -1976f)), vec2<f32>(789f, 419f), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -480f)))))), vec3<i32>(43530i, ~abs(~0i), 1i));
    var var_1 = select(u_input.c.x >= var_0.b.x, all(select(select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36944u, 887u, u_input.a.x), 2u)], global0[_wgslsmith_index_u32(~10686u, 2u)], vec3<bool>(true, false, true)), !(!global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), global0[_wgslsmith_index_u32(~u_input.b.x << (u_input.c.x % 32u), 2u)])), ~(~u_input.b.x << (1u % 32u)) != (~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >> (4294967295u % 32u)));
    global0 = array<vec3<bool>, 2>();
    var var_2 = var_0;
    let var_3 = select(all(vec2<bool>(!any(vec2<bool>(true, false)), false)), false, true);
    let var_4 = vec3<u32>(max(min(466u, _wgslsmith_clamp_u32(0u, 30985u, 5165u)), var_2.a.a) >> ((u_input.a.x & ~abs(u_input.a.x)) % 32u), 4294967295u << ((u_input.b.x | func_3(func_2(vec2<bool>(var_3, var_3), 1u, var_0, -2147483647i)).x) % 32u), 19750u);
    global2 = array<vec4<f32>, 22>();
    global1 = array<vec4<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~vec2<u32>(var_4.x, var_0.a.a), u_input.b), abs(vec2<u32>(var_4.x & 50436u, abs(var_2.a.a))), select(!select(vec2<bool>(false, true), vec2<bool>(true, var_3), vec2<bool>(true, true)), vec2<bool>(true, var_3), true)), var_2.b >> (u_input.c % vec2<u32>(32u)), max(var_4.x, 30826u));
}

