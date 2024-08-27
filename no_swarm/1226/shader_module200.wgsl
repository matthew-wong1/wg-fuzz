struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, false);

var<private> global1: array<Struct_4, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<Struct_4, 2>();
    var var_0 = Struct_1(vec4<u32>(1u, select(~(~0u), ~(~42638u), global0[_wgslsmith_index_u32(73506u, 3u)]), ~1u, abs(_wgslsmith_add_u32(0u, ~23401u))), ~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(0i, u_input.a, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 18227i, u_input.a) >> (vec3<u32>(0u, 4294967295u, 64002u) % vec3<u32>(32u)), select(vec3<i32>(53931i, u_input.a, u_input.a), vec3<i32>(-10251i, u_input.a, u_input.a), true), vec3<i32>(3779i, u_input.a, 5672i) & vec3<i32>(u_input.a, 48509i, u_input.a))), vec3<i32>(-1i) * -firstLeadingBit(firstLeadingBit(vec3<i32>(2147483647i, u_input.a, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-172f)) - 1061f)))));
    let var_1 = Struct_2(Struct_1(reverseBits(firstTrailingBit(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))) >> (reverseBits(vec4<u32>(var_0.a.x, 60186u, 0u, 556u)) % vec4<u32>(32u)), var_0.c, -firstTrailingBit(vec3<i32>(-16946i, 24731i, 48887i)) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, u_input.a), vec3<i32>(u_input.a, var_0.b.x, u_input.a), var_0.c), reverseBits(var_0.c), vec3<i32>(u_input.a, -2147483647i, 63837i)), -1000f), var_0.b, Struct_1(select(var_0.a & vec4<u32>(var_0.a.x, var_0.a.x, 30615u, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x), global0[_wgslsmith_index_u32(abs(var_0.a.x), 3u)]) << ((~vec4<u32>(99123u, 0u, 93613u, var_0.a.x) | var_0.a) % vec4<u32>(32u)), _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(5450i, _wgslsmith_mod_i32(1i, -2147483647i), var_0.b.x)), countOneBits(-(~var_0.b)), var_0.d), Struct_1(reverseBits(var_0.a), ~var_0.c, vec3<i32>(38389i, countOneBits(u_input.a), firstTrailingBit(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + -885f)), select(vec2<bool>(!global0[_wgslsmith_index_u32(var_0.a.x, 3u)], !any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 3u)], false, false))), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(var_0.a.x, 3u)]), vec2<bool>(false, false))), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(35567u, 3u)]), vec2<bool>(false, 4294967295u == var_0.a.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(7035u), 12129u), 3u)])));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1324f, var_1.c.d, 865f, -676f)) + vec4<f32>(var_0.d, -243f, 1000f, var_1.a.d)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(366f, var_0.d, var_0.d, var_1.c.d)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, -474f, -180f, var_1.d.d), vec4<f32>(-338f, -1316f, var_1.c.d, -902f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, var_0.d, -1000f, -559f)))) - vec4<f32>(_wgslsmith_f_op_f32(1533f + -1745f), -1564f, -348f, var_1.d.d))));
    var var_3 = abs(var_1.d.a.x);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, _wgslsmith_add_i32(var_1.b.x & var_0.c.x, var_0.c.x), _wgslsmith_mult_i32(-37906i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.b.x, u_input.a, -96633i), vec4<i32>(u_input.a, 14614i, u_input.a, 0i))), -1i), -vec4<i32>(-1i, ~var_1.b.x, abs(0i), -1i)) << (1870u % 32u);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = ~vec4<u32>(~32681u, 4294967295u, 1u, abs(~(~0u)));
    let var_1 = 1i & arg_0.x;
    var var_2 = Struct_3(max(_wgslsmith_mod_u32(abs(var_0.x), var_0.x), 1u), Struct_2(Struct_1(~_wgslsmith_div_vec4_u32(var_0, var_0), vec3<i32>(u_input.a << (var_0.x % 32u), func_3(), ~var_1), vec3<i32>(27661i, -44519i, arg_0.x) ^ vec3<i32>(arg_0.x, var_1, 1578i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-672f)))), vec3<i32>(_wgslsmith_clamp_i32(2364i, arg_0.x << (4294967295u % 32u), var_1), ~func_3(), _wgslsmith_mult_i32(-8833i, var_1)), Struct_1(vec4<u32>(_wgslsmith_add_u32(var_0.x, 47609u), 0u, ~var_0.x, reverseBits(var_0.x)), -(~vec3<i32>(var_1, 1i, -4536i)), firstLeadingBit(vec3<i32>(arg_0.x, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-640f * -323f))), Struct_1(vec4<u32>(_wgslsmith_add_u32(4294967295u, var_0.x), max(var_0.x, 66687u), reverseBits(var_0.x), 27463u), vec3<i32>(u_input.a, min(-16128i, arg_0.x), ~arg_0.x), min(abs(arg_0), countOneBits(vec3<i32>(2147483647i, -15843i, u_input.a))), _wgslsmith_f_op_f32(-117f - 557f)), vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)])), var_0.x == ~0u)), vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(42757u, 1u), var_0.x), ~var_0.x), vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), var_0)), ~min(var_0.x, ~98667u), ~(~4294967295u)), _wgslsmith_f_op_f32(-414f - _wgslsmith_div_f32(-944f, -139f)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.d.d * 529f), -1000f);
    global1 = array<Struct_4, 2>();
    return var_2.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(8856u, 4294967295u, 4294967295u, 18102u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), -(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, 30948i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, u_input.a))), select(vec3<i32>(~_wgslsmith_div_i32(15841i, 6795i), -(1i << (1u % 32u)), u_input.a), -(vec3<i32>(u_input.a, u_input.a, 12543i) & (vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = var_0.c.zx;
    var var_2 = func_2(-_wgslsmith_clamp_vec3_i32(var_0.c, -var_0.c >> ((vec3<u32>(11290u, 1913u, 0u) | var_0.a.xxw) % vec3<u32>(32u)), -(~var_0.b)));
    let var_3 = ~(~(~select(_wgslsmith_mod_vec2_u32(var_0.a.yy, vec2<u32>(var_2.d.a.x, 1u)), ~var_0.a.yy, !var_2.e)));
    let var_4 = global0[_wgslsmith_index_u32((1u | ~min(~var_3.x, _wgslsmith_mod_u32(var_3.x, var_3.x))) >> (0u % 32u), 3u)];
    return ~_wgslsmith_mult_u32(~(0u & var_0.a.x), _wgslsmith_sub_u32(abs(~var_2.d.a.x), max(max(var_2.c.a.x, var_2.c.a.x), abs(var_2.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(~(~4294967295u)), _wgslsmith_div_u32(~51962u, func_1(vec2<f32>(-254f, -1012f), vec4<f32>(-326f, 697f, -1650f, 2243f))) >> (4294967295u % 32u), 1u, ~_wgslsmith_add_u32(countOneBits(4294967295u), firstTrailingBit(0u))), reverseBits(~_wgslsmith_mult_vec4_u32(func_2(vec3<i32>(u_input.a, 1i, -80579i)).c.a, abs(vec4<u32>(0u, 1u, 50598u, 4294967295u)))));
    let var_1 = -11907i;
    var var_2 = func_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(~14599i, -u_input.a, _wgslsmith_sub_i32(var_1, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, var_1, u_input.a) & vec3<i32>(var_1, u_input.a, u_input.a), -vec3<i32>(var_1, var_1, 0i))))).d.b.x;
    var_2 = var_1;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(firstLeadingBit(~var_0.x), firstLeadingBit(109574u))), u_input.a, 0u);
}

