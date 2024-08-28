struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 64887u), ~vec3<u32>(~u_input.b, 1u, ~u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x << (1u % 32u), _wgslsmith_sub_u32(u_input.b, 1u), 43122u) >> (vec3<u32>(select(u_input.b, u_input.b, true), reverseBits(67691u), 5544u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, u_input.a.x, u_input.a.x | 22345u), firstLeadingBit(vec3<u32>(u_input.b, u_input.a.x, 15622u) | vec3<u32>(u_input.a.x, 4294967295u, u_input.b)))));
    var var_1 = _wgslsmith_dot_vec3_u32(select(~_wgslsmith_div_vec3_u32(vec3<u32>(32723u, 4294967295u, u_input.b), vec3<u32>(37090u, u_input.b, u_input.a.x)) ^ abs(vec3<u32>(u_input.a.x, 47433u, u_input.a.x) >> (vec3<u32>(4294967295u, 14169u, u_input.b) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, 9470u, firstLeadingBit(43918u)), vec3<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), false)), vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a.x), abs(u_input.b), ~u_input.b), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.b), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 4294967295u)))), 108974u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -111f), -1394f, false)));
}

fn func_2() -> u32 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(u_input.c.yzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(1024f * 490f)))) - _wgslsmith_f_op_f32(floor(688f))), vec4<u32>(~reverseBits(0u), 1u, ~36724u & u_input.b, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, u_input.b))), all(vec3<bool>(any(vec2<bool>(true, false)) && true, true, any(vec4<bool>(true, true, true, true)))), u_input.c.zx);
    global0 = array<vec3<i32>, 5>();
    var_1 = Struct_1(min(u_input.c.wyx, _wgslsmith_mult_vec3_i32(var_1.a, u_input.c.xzz) | ~_wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(-2147483647i, u_input.c.x, -24401i))), 847f, firstTrailingBit(var_1.c), !all(vec3<bool>(true, true, true)), _wgslsmith_mult_vec2_i32(var_1.a.zy, vec2<i32>(min(_wgslsmith_sub_i32(1i, var_1.e.x), firstLeadingBit(11196i)), _wgslsmith_sub_i32(69946i, 8579i))));
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(min(u_input.c.x, 63195i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-11239i, -2147483647i, u_input.c.x, u_input.d))) & ~(-u_input.c.x), var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x ^ 1i, var_1.a.x, -2147483647i, _wgslsmith_mod_i32(1i, u_input.c.x)), vec4<i32>(~u_input.d, u_input.c.x, 35135i, _wgslsmith_dot_vec3_i32(vec3<i32>(12446i, -1i, var_1.a.x), global0[_wgslsmith_index_u32(var_1.c.x, 5u)])))), var_1.b, ~(~firstTrailingBit(vec4<u32>(0u, 26726u, 1u, 19156u))), false, var_1.e);
    return 7763u;
}

fn func_1() -> Struct_1 {
    var var_0 = ~func_2();
    var var_1 = Struct_1(firstTrailingBit(~vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 51353i), 35997i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(592f, _wgslsmith_f_op_f32(sign(-1878f)), (u_input.a.x < u_input.a.x) & true))), select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 31012u, 53819u, u_input.a.x), vec4<u32>(u_input.b, 1u, 74303u, 1u))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 20826u, 108906u, u_input.b), vec4<u32>(u_input.b, 20537u, u_input.b, u_input.b) & vec4<u32>(4294967295u, u_input.b, 123026u, u_input.b), vec4<u32>(u_input.b, 1u, 14123u, u_input.b) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 37171u) % vec4<u32>(32u))), all(vec2<bool>(false, all(vec2<bool>(true, false))))), _wgslsmith_clamp_u32(1797u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 56402u)) ^ _wgslsmith_clamp_u32(80931u, u_input.b, u_input.b), u_input.b) >= u_input.b, u_input.c.wy);
    var_1 = Struct_1(countOneBits(~vec3<i32>(2147483647i, 7833i, -2147483647i) | var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))), var_1.b)), var_1.c, all(!select(vec4<bool>(false, var_1.d, false, true), select(vec4<bool>(false, var_1.d, false, true), vec4<bool>(var_1.d, var_1.d, var_1.d, true), vec4<bool>(var_1.d, false, var_1.d, var_1.d)), true)), u_input.c.xw);
    var_0 = ~abs(1u ^ u_input.a.x) << (~(~(_wgslsmith_add_u32(u_input.b, u_input.b) << (var_1.c.x % 32u))) % 32u);
    var var_2 = Struct_2(var_1.b, Struct_1(var_1.a, -737f, abs(~(~vec4<u32>(u_input.a.x, 85586u, var_1.c.x, u_input.b))), false, min(max(u_input.c.zw >> (vec2<u32>(var_1.c.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(0i, 0i)), _wgslsmith_mod_vec2_i32(u_input.c.wx, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.e.x, var_1.e.x), u_input.c.zw)))), Struct_1(select(var_1.a, select(-vec3<i32>(u_input.d, -68336i, var_1.a.x), _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(var_1.c.x, 5u)], u_input.c.xxy), !vec3<bool>(true, var_1.d, var_1.d)), any(!vec4<bool>(true, var_1.d, var_1.d, var_1.d))), _wgslsmith_f_op_f32(floor(var_1.b)), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(12438u, 1u, 4294967295u), vec3<u32>(var_1.c.x, 32133u, var_1.c.x)), abs(u_input.a.x), var_1.c.x, 68144u), -334f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1880f - var_1.b))), -(~vec2<i32>(var_1.e.x, u_input.d) | vec2<i32>(1i, var_1.e.x))), false, Struct_1(countOneBits(_wgslsmith_sub_vec3_i32(abs(var_1.a), var_1.a)), var_1.b, vec4<u32>(countOneBits(u_input.b), u_input.b, u_input.a.x, abs(var_1.c.x >> (var_1.c.x % 32u))), false, vec2<i32>(~u_input.c.x, ~u_input.d)));
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    let var_0 = Struct_2(223f, func_1(), func_1(), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(~abs(-vec3<i32>(-29816i, u_input.c.x, 14374i)), _wgslsmith_f_op_f32(round(1f)), countOneBits(~vec4<u32>(u_input.a.x, u_input.b, 0u, 1u)) >> (((vec4<u32>(22527u, u_input.a.x, 1u, 0u) << (vec4<u32>(1u, 35645u, u_input.a.x, u_input.b) % vec4<u32>(32u))) & vec4<u32>(6687u, u_input.a.x, 29597u, 4294967295u)) % vec4<u32>(32u)), false, vec2<i32>(32969i, 29447i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.e.b) - _wgslsmith_f_op_f32(floor(var_0.e.b))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(379f)))))) + _wgslsmith_div_f32(-567f, -114f));
    var_1 = var_0.a;
    global0 = array<vec3<i32>, 5>();
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.d, 2147483647i), _wgslsmith_clamp_i32(var_2.c.e.x, firstTrailingBit(-79707i), 82654i)), vec2<i32>(_wgslsmith_mod_i32(-4866i, -4689i), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(var_0.e.a.xz, max(_wgslsmith_sub_vec2_i32(var_0.e.e | vec2<i32>(u_input.c.x, 12552i), u_input.c.yy | var_0.e.e), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.a.x, var_3.x), vec2<i32>(var_0.e.e.x, var_2.c.e.x)), reverseBits(u_input.c.xy), countOneBits(vec2<i32>(var_3.x, var_0.c.a.x))))), ~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1().b, _wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(var_2.c.b * _wgslsmith_f_op_f32(max(var_0.a, var_0.a))), _wgslsmith_f_op_f32(-var_2.e.b))), 17143u, var_0.c.c.x);
}

