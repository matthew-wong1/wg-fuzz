struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: vec2<i32> = vec2<i32>(110253i, -26648i);

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec3<i32>(-48511i, 1i, 29761i), Struct_2(vec4<f32>(104f, -1174f, -188f, -1691f), 1000f), Struct_3(Struct_1(-1i, vec2<u32>(1u, 53137u), vec2<u32>(27037u, 43722u)), Struct_2(vec4<f32>(-750f, 860f, 1000f, 463f), 1190f), vec4<u32>(27722u, 22313u, 0u, 0u), Struct_1(1i, vec2<u32>(13472u, 19164u), vec2<u32>(73723u, 4294967295u)), vec4<u32>(12775u, 32023u, 1u, 4340u)), vec3<f32>(-766f, 383f, -1324f)));

var<private> global3: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(286f, Struct_2(vec4<f32>(473f, 169f, 382f, -1050f), -728f), vec2<u32>(1131u, 62909u)), Struct_5(-913f, Struct_2(vec4<f32>(-677f, 532f, -1000f, 978f), 876f), vec2<u32>(37955u, 0u)), Struct_5(2594f, Struct_2(vec4<f32>(-1042f, -2142f, 953f, -1817f), 1296f), vec2<u32>(28904u, 16844u)), Struct_5(328f, Struct_2(vec4<f32>(2493f, 366f, 272f, 1000f), -1648f), vec2<u32>(11310u, 58800u)), Struct_5(-1000f, Struct_2(vec4<f32>(-1392f, -811f, 1136f, 1742f), -312f), vec2<u32>(20404u, 1u)), Struct_5(-373f, Struct_2(vec4<f32>(550f, -2102f, 199f, 665f), 102f), vec2<u32>(0u, 1u)), Struct_5(-492f, Struct_2(vec4<f32>(1150f, -870f, -1036f, -527f), -671f), vec2<u32>(34962u, 0u)), Struct_5(184f, Struct_2(vec4<f32>(432f, -1388f, 533f, -633f), 1000f), vec2<u32>(76053u, 1u)), Struct_5(297f, Struct_2(vec4<f32>(617f, -232f, 1939f, 2465f), -858f), vec2<u32>(4294967295u, 73044u)), Struct_5(1000f, Struct_2(vec4<f32>(977f, -521f, -677f, -3823f), -793f), vec2<u32>(4294967295u, 44468u)), Struct_5(2859f, Struct_2(vec4<f32>(-1245f, -1009f, -1000f, 1322f), 1372f), vec2<u32>(46769u, 19604u)), Struct_5(-170f, Struct_2(vec4<f32>(-616f, 1048f, -1856f, -478f), -283f), vec2<u32>(0u, 1u)), Struct_5(910f, Struct_2(vec4<f32>(515f, 690f, -1000f, 672f), -1000f), vec2<u32>(11961u, 30524u)), Struct_5(314f, Struct_2(vec4<f32>(-404f, 921f, 429f, 2226f), 523f), vec2<u32>(4294967295u, 0u)), Struct_5(-1000f, Struct_2(vec4<f32>(-674f, -1767f, 313f, 639f), -855f), vec2<u32>(1u, 4165u)), Struct_5(-818f, Struct_2(vec4<f32>(-155f, -934f, -444f, 630f), -712f), vec2<u32>(45528u, 56301u)), Struct_5(-1312f, Struct_2(vec4<f32>(1896f, -1137f, 131f, -1111f), -918f), vec2<u32>(80820u, 40597u)), Struct_5(-957f, Struct_2(vec4<f32>(419f, -637f, -164f, -1000f), 867f), vec2<u32>(4294967295u, 1u)), Struct_5(-594f, Struct_2(vec4<f32>(995f, -236f, 2096f, 130f), -314f), vec2<u32>(53159u, 47076u)));

var<private> global4: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec2<i32> {
    global2 = array<Struct_4, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-332f, 397f))) - -847f)), 1764f);
    return abs(-vec2<i32>(u_input.a | global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(15633u, u_input.b), 24u)]) ^ vec2<i32>(-(-2147483647i ^ global1.x), min(_wgslsmith_dot_vec2_i32(vec2<i32>(26396i, 0i), vec2<i32>(u_input.a, -2147483647i)), ~u_input.c)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<u32> {
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.x, arg_1), 19640i >> (arg_0 % 32u)), (-2147483647i ^ global1.x) >> (~4294967295u % 32u)), ~(-vec2<i32>(-1i, -30397i))) << (vec2<u32>(4294967295u, firstLeadingBit(~(u_input.d >> (u_input.d % 32u)))) % vec2<u32>(32u));
    global4 = firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17856i, 2147483647i, global1.x, 7042i), vec4<i32>(-8927i, u_input.a, 3085i, 1436i)), ~_wgslsmith_clamp_i32(2007i, u_input.a, 0i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 53713u), vec2<u32>(arg_0, arg_0)), 63278u), 24u)], _wgslsmith_mod_i32(min(u_input.a, u_input.c), abs(u_input.c))), -select(vec4<i32>(0i, -2147483647i, 0i, arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, arg_1, -34713i, u_input.a), vec4<i32>(24907i, 2147483647i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)])), vec4<bool>(true, true, false, false))));
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1i), -func_3());
    let var_0 = Struct_3(Struct_1(max(firstTrailingBit(-14534i), firstLeadingBit(arg_1)) >> (27459u % 32u), _wgslsmith_div_vec2_u32(~vec2<u32>(76685u, arg_0) | vec2<u32>(u_input.b, arg_0), ~vec2<u32>(1u, 1u)), max(~(~vec2<u32>(arg_0, u_input.d)), countOneBits(vec2<u32>(arg_0, u_input.b)))), Struct_2(arg_2.a, arg_2.b), ~(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.d, arg_0, u_input.d), ~vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) << (abs(vec4<u32>(arg_0, 93489u, 6532u, u_input.b)) % vec4<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 24u)], ~vec2<u32>(arg_0, arg_0), vec2<u32>(u_input.d | 23420u, ~u_input.b) << (vec2<u32>(~u_input.b, countOneBits(4294967295u)) % vec2<u32>(32u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0, ~u_input.b, u_input.b, abs(u_input.b)), vec4<u32>(arg_0 ^ arg_0, 14238u ^ arg_0, 1u, ~u_input.d), true), (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 59866u, arg_0, arg_0), vec4<u32>(4294967295u, 28267u, 1u, 0u)) >> (~vec4<u32>(69647u, arg_0, arg_0, 30757u) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, arg_0, 4294967295u, 1u)));
    global1 = max(select(vec2<i32>(-var_0.d.a, -global1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], arg_1), ~vec2<i32>(global0[_wgslsmith_index_u32(43160u, 24u)], 0i), vec2<i32>(3370i, arg_1) >> (var_0.d.c % vec2<u32>(32u))), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, var_0.d.b.x), vec2<u32>(15905u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(0i, global1.x))), _wgslsmith_add_vec2_i32(max(vec2<i32>(10085i, 1i), vec2<i32>(1i, global0[_wgslsmith_index_u32(1u, 24u)])), vec2<i32>(5054i, 35375i))), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-1i), arg_1), vec2<i32>(~var_0.a.a, i32(-1i) * -1i))));
    return var_0.e;
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, arg_0, arg_1.a, arg_0) - vec4<f32>(arg_1.a, -1062f, arg_0, 988f)), arg_1.b.a)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), _wgslsmith_f_op_f32(-184f * 913f), -1000f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - _wgslsmith_f_op_f32(362f + 940f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f + arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -571f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.b))))));
    var var_2 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.x, 0u, 0u, u_input.d) >> (vec4<u32>(u_input.d, 26496u, arg_1.c.x, 1u) % vec4<u32>(32u)), func_2(42716u, global1.x, Struct_2(arg_1.b.a, -472f), var_0.a.wx), abs(vec4<u32>(25902u, arg_1.c.x, u_input.b, 0u))), min(vec4<u32>(u_input.b, arg_1.c.x, arg_1.c.x, 29637u), ~vec4<u32>(u_input.b, arg_1.c.x, u_input.d, arg_1.c.x))), ~vec4<u32>(~u_input.d << (reverseBits(u_input.d) % 32u), func_2(1u, -19177i, Struct_2(var_0.a, -733f), _wgslsmith_f_op_vec2_f32(var_0.a.yw * arg_1.b.a.zx)).x, countOneBits(firstTrailingBit(4294967295u)), max(u_input.d, 18297u)));
    var var_3 = 51326i;
    global3 = array<Struct_5, 19>();
    return arg_1;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b;
    let var_1 = vec4<f32>(2042f, -642f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1231f, -1319f)), _wgslsmith_f_op_f32(f32(-1f) * -571f))) * 411f), _wgslsmith_f_op_f32(trunc(arg_1.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(-arg_0.b.a.x))), -923f)));
    let var_2 = 4294967295u;
    var_0 = arg_3.b;
    var var_3 = func_1(-1592f, Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + arg_0.b.b), arg_3.b) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(124f, 191f, true))))), Struct_2(arg_1.a, arg_3.b), arg_0.c));
    return Struct_1(_wgslsmith_div_i32(-global1.x, ~(global1.x ^ global0[_wgslsmith_index_u32(413u, 24u)])) | -53201i, ~var_3.c, firstTrailingBit(~vec2<u32>(1u, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b, 24u)];
    let var_1 = -1234f;
    let var_2 = _wgslsmith_dot_vec2_i32(select(countOneBits(vec2<i32>(-global1.x, i32(-1i) * -2444i)), ~max(vec2<i32>(u_input.a, global1.x), vec2<i32>(global1.x, u_input.c) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, -41171i), vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.d, 24u)])), vec2<i32>(u_input.a, 1i)) ^ -vec2<i32>(reverseBits(1i), _wgslsmith_mult_i32(global1.x, global1.x)));
    var var_3 = func_4(func_1(var_1, global3[_wgslsmith_index_u32(9279u, 19u)]), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, 1000f, true)) + -1107f), global3[_wgslsmith_index_u32(~countOneBits(4294967295u), 19u)]).b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.d, 34060u) & vec2<u32>(85315u, 1u)), vec2<u32>(max(4294967295u, 63574u), min(979u, 0u))), vec2<u32>(u_input.b, func_1(var_1, Struct_5(-1000f, Struct_2(vec4<f32>(var_1, var_1, var_1, -775f), var_1), vec2<u32>(1u, u_input.d))).c.x | ~u_input.b)), func_1(var_1, global3[_wgslsmith_index_u32(u_input.d, 19u)]).b);
    let var_4 = abs(var_3.c.x);
    global3 = array<Struct_5, 19>();
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-776f, var_1))))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, 271f, var_1, 1068f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 122f, -197f))))));
}

