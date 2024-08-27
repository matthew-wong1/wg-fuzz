struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-24184i, -4957i);

var<private> global1: array<i32, 28> = array<i32, 28>(3116i, 0i, 1i, 7872i, 0i, 8782i, 2147483647i, -7952i, -1i, 1i, -101639i, 35353i, 1i, 15443i, -1i, -7387i, -1i, -1i, -34688i, 0i, i32(-2147483648), -41914i, 34757i, -868i, 54603i, 0i, -14617i, 38453i);

var<private> global2: i32;

var<private> global3: u32 = 23684u;

var<private> global4: array<Struct_4, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec4<f32> {
    global2 = -37103i;
    global4 = array<Struct_4, 4>();
    global2 = 55784i;
    global0 = arg_1;
    global1 = array<i32, 28>();
    return vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -115f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f - 1400f))), arg_2.x)), _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), 1f);
}

fn func_3() -> vec2<u32> {
    var var_0 = vec4<i32>(2147483647i, u_input.a, -1i, _wgslsmith_div_i32(1i, -(70281i >> (1u % 32u))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1657f), 1280f)), 1293f, 877f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, -996f, -793f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(select(1150f, 515f, true)), 1f)) * vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1(var_0.x, vec2<i32>(-25783i, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-138f, -1229f, 1723f, -1591f), vec4<f32>(604f, 569f, -143f, -736f)))).x, _wgslsmith_f_op_f32(624f + _wgslsmith_f_op_f32(ceil(-467f))), _wgslsmith_f_op_vec4_f32(func_1(1i, vec2<i32>(var_0.x, global0.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-255f, 218f, 239f, -2355f))))).x)));
    let var_2 = Struct_5(Struct_1(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(29634i, global1[_wgslsmith_index_u32(1u, 28u)], -2147483647i, global0.x), vec4<i32>(30578i, -2147483647i, -1i, -2147483647i)), ~(-vec4<i32>(global1[_wgslsmith_index_u32(9503u, 28u)], 10741i, -56918i, u_input.a))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1217i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 28u)], -13319i), countOneBits(vec4<i32>(52815i, global0.x, global0.x, 2147483647i)), -vec4<i32>(var_0.x, -1i, 1i, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), vec2<f32>(-639f, var_1.x), true)))));
    var var_3 = Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 12381u), vec4<u32>(1u, 14568u, 0u, 1476u)), vec4<u32>(0u, 0u, 3432u, 39242u)), 9258u), 28u)], 13545i, ~(-1i)), vec4<i32>(_wgslsmith_div_i32(5386i, _wgslsmith_add_i32(u_input.a << (0u % 32u), 2147483647i)), countOneBits(firstTrailingBit(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(3745u, 28u)], -28579i, var_2.a.a.x))), _wgslsmith_add_i32(abs(u_input.a) ^ -19516i, 18722i), firstTrailingBit(1i & var_2.a.b.x)));
    var_0 = var_2.a.b;
    return ~vec2<u32>(reverseBits(~select(4294967295u, 4294967295u, false)), ~abs(1u));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~14214u, 0u, _wgslsmith_mod_u32(4294967295u, 11227u), 1u), vec4<u32>(countOneBits(4294967295u), 65818u, reverseBits(4294967295u), 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 53324u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~(~reverseBits(vec4<u32>(4294967295u, 88205u, 65588u, 0u)))), ~(_wgslsmith_sub_u32(firstTrailingBit(15212u), 4294967295u >> (0u % 32u)) >> (~(~4294967295u) % 32u)), 60342u);
    let var_1 = Struct_1(vec4<i32>(arg_2.b.a, ~2147483647i, arg_2.b.a, countOneBits(~(-1i))) >> (vec4<u32>(~firstTrailingBit(36864u), 1u, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, ~_wgslsmith_add_i32(0i, 18138i), abs(_wgslsmith_add_i32(arg_2.a.b.x, -434i)), global0.x), vec4<i32>(1i, 6356i, -_wgslsmith_sub_i32(u_input.a, 70398i), ~_wgslsmith_dot_vec4_i32(arg_2.c.b, vec4<i32>(8378i, 19663i, global0.x, -27979i))), arg_2.c.b), vec2<f32>(568f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(arg_1.x * 790f)), -1961f)));
    var var_2 = var_1.a.yw;
    var var_3 = (select(abs(~vec2<i32>(-1i, var_2.x)), vec2<i32>(-2147483647i, -var_1.a.x), vec2<bool>(arg_2.d, all(vec4<bool>(arg_0, true, true, arg_2.d)))) >> (countOneBits(func_3()) % vec2<u32>(32u))) >> (var_0.zy % vec2<u32>(32u));
    let var_4 = vec3<u32>(~4294967295u, ~_wgslsmith_add_u32(47516u, 1u), ~_wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(44755u, _wgslsmith_clamp_u32(var_0.x, 0u, var_0.x))));
    return ~(i32(-1i) * -_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 28u)], 15716i, var_1.a.x, 7740i), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2235f + _wgslsmith_f_op_f32(f32(-1f) * -226f)), -1030f);
    let var_2 = vec4<i32>(func_2(true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -354f)), _wgslsmith_f_op_vec4_f32(func_1(global0.x, vec2<i32>(46717i, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, var_1, var_1, -1319f)))))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(30018u, 124520u, 14221u), vec3<u32>(12001u, 75005u, 59337u), vec3<bool>(false, false, false)), ~vec3<u32>(1u, 54342u, 0u)), 4u)]), -1788i, u_input.a, u_input.a);
    var_0 = _wgslsmith_mult_i32(-34709i, firstTrailingBit(-_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(var_2.x, global0.x)))));
    var var_3 = !(var_1 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(select(1023f, -687f, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xyz, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_1(-277i, vec2<i32>(0i, u_input.a), vec4<f32>(var_1, -2072f, var_1, -1772f))).x, var_1)), -614f, true)));
}

