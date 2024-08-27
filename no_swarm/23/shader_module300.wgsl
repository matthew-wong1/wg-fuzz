struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-14402i, 2147483647i, 0i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(0i, 31831i, 37341i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(0i, -60599i, -1i), vec3<i32>(-17879i, 28775i, -1i), vec3<i32>(1i, 36910i, -36740i), vec3<i32>(-17891i, 16933i, 37109i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-14596i, -1i, 15290i), vec3<i32>(-45072i, i32(-2147483648), -10249i), vec3<i32>(i32(-2147483648), 26864i, 7244i), vec3<i32>(-45989i, -36079i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -16869i), vec3<i32>(17030i, 0i, 1i), vec3<i32>(2147483647i, 14006i, 2147483647i), vec3<i32>(7465i, -43053i, 33640i), vec3<i32>(13923i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 0i, 60681i), vec3<i32>(i32(-2147483648), 2147483647i, -50620i), vec3<i32>(0i, 47114i, -5576i), vec3<i32>(-1i, 4404i, 1i), vec3<i32>(16266i, 2147483647i, 2147483647i));

var<private> global2: array<Struct_1, 29>;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(max(u_input.b >> (u_input.b % 32u), 35289u)) ^ u_input.a, select(~88793u, 46489u, !any(vec3<bool>(true, true, true)))), 29u)];
    var var_1 = u_input.a;
    return _wgslsmith_div_vec3_u32(vec3<u32>(19546u, ~var_0.b, ~u_input.a), ~vec3<u32>(u_input.b | 17958u, _wgslsmith_sub_u32(1u, u_input.b), firstLeadingBit(59593u))) & ~max(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 163641u, var_0.b), vec3<u32>(var_0.b, var_0.b, 4294967295u) | vec3<u32>(1u, 7990u, var_0.b)), ~vec3<u32>(1u, 14367u, 103636u) << (~vec3<u32>(var_0.b, u_input.a, 48411u) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global1 = array<vec3<i32>, 23>();
    let var_0 = _wgslsmith_mod_vec3_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2037f)), vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 22579u, 0u, 1u), vec4<u32>(18115u, u_input.b, 1u, 1u)), firstTrailingBit(vec4<u32>(arg_0.d.c.b, 77094u, arg_1.c.b, 1u))), _wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(~select(u_input.b, 1u, false), ~(~arg_0.c))));
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(firstTrailingBit(55924u), min(u_input.a, var_0.x), 15622u) >> (var_0 % vec3<u32>(32u))), arg_0.d.c.b | 1u);
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(154f, arg_0.b.x)), 1000f);
}

fn func_1() -> Struct_4 {
    global1 = array<vec3<i32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(1803i, vec3<f32>(1805f, -120f, -2030f), u_input.a, Struct_3(vec3<bool>(false, true, true), 3882i, global2[_wgslsmith_index_u32(10832u, 29u)])), Struct_3(vec3<bool>(true, false, false), -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 29u)]))) - -237f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-178f, -1402f, any(vec3<bool>(true, true, false)))), -160f))));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0));
    var var_2 = _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(29906i, 0i, -12027i, -34549i), vec4<i32>(7907i, -59305i, 17960i, 1i), true), vec4<i32>(54463i, 0i, 25166i, -18307i)) << (vec4<u32>(firstTrailingBit(u_input.a), ~4294967295u, 1u, _wgslsmith_div_u32(11759u, u_input.a)) % vec4<u32>(32u)), -(~vec4<i32>(1i, -603i, -2147483647i, -29153i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(59006u, 4294967295u, 0u, u_input.b), vec4<u32>(u_input.b, 25854u, u_input.b, 1u)) % vec4<u32>(32u)))) | 2147483647i;
    var var_3 = min(global1[_wgslsmith_index_u32(4294967295u, 23u)], vec3<i32>(-((0i << (u_input.b % 32u)) >> (12718u % 32u)), firstTrailingBit(1i), 1i));
    return Struct_4(~(-_wgslsmith_div_i32(var_3.x ^ -16001i, -22627i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(-2062f, var_1))), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1758f))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4691u), vec2<u32>(u_input.b, u_input.a)), vec2<u32>(4294967295u, u_input.a)), 31742u) >> (u_input.b % 32u), Struct_3(vec3<bool>(false, true, true), var_3.x, Struct_1(-abs(var_3.zx), ~select(u_input.a, 35926u, true))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = ~arg_1;
    return Struct_3(vec3<bool>(arg_2.a.x | true, true, arg_0.b.x <= 756f), abs(606i >> (~arg_0.d.c.b % 32u)), func_1().d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(vec2<i32>(1i, 1i)) << ((~(~vec2<u32>(30811u, 1u)) >> (vec2<u32>(u_input.b & 27124u, countOneBits(u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ (_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-32835i, 1311i), ~vec2<i32>(-39219i, 0i)), ~vec2<i32>(-48009i, -51143i) << (vec2<u32>(64704u, u_input.a) % vec2<u32>(32u)), ~(-vec2<i32>(-8119i, 18888i))) & ~(-vec2<i32>(24766i, 13015i)));
    var var_1 = _wgslsmith_mod_u32(u_input.a, ~4294967295u) ^ u_input.a;
    global1 = array<vec3<i32>, 23>();
    var var_2 = func_4(func_1(), u_input.a, func_1().d, vec2<bool>((true == select(true, false, true)) && false, true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2546f - -341f), 1176f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-537f + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f), 1f), var_2.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(_wgslsmith_mod_i32(var_0.x, var_2.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1095f, 1673f, -749f)), _wgslsmith_sub_u32(60071u, u_input.a), func_1().d), Struct_3(vec3<bool>(true, true, var_2.a.x), -2147483647i, func_4(Struct_4(var_2.b, vec3<f32>(-828f, -2265f, -255f), u_input.a, Struct_3(var_2.a, 2147483647i, Struct_1(var_2.c.a, var_2.c.b))), 4294967295u, Struct_3(vec3<bool>(false, false, false), -1i, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(var_2.a.x, var_2.a.x)).c))) + -1055f));
    let var_4 = vec4<bool>(var_2.a.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(166f))))), var_2.a.x, var_2.a.x);
    var_0 = vec2<i32>(_wgslsmith_div_i32(~(_wgslsmith_mult_i32(var_2.b, -49616i) ^ var_2.c.a.x), func_4(func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(59210u, var_2.c.b), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b))), Struct_3(func_4(Struct_4(0i, vec3<f32>(-1000f, -322f, 1000f), u_input.a, Struct_3(var_2.a, var_0.x, Struct_1(vec2<i32>(var_0.x, -19267i), 0u))), var_2.c.b, Struct_3(var_4.yzw, var_2.b, Struct_1(var_2.c.a, 62410u)), var_2.a.zz).a, var_2.c.a.x, func_1().d.c), select(vec2<bool>(var_4.x, true), vec2<bool>(var_4.x, true), func_4(Struct_4(6937i, vec3<f32>(-168f, -153f, 1565f), 4294967295u, Struct_3(var_2.a, var_2.b, var_2.c)), u_input.b, Struct_3(vec3<bool>(true, var_4.x, true), -27804i, Struct_1(vec2<i32>(22457i, 2147483647i), u_input.b)), vec2<bool>(false, var_4.x)).a.xy)).b), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b, ~(~var_2.c.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-900f, _wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879f - -140f) * _wgslsmith_div_f32(279f, -545f)), 662f))));
}

