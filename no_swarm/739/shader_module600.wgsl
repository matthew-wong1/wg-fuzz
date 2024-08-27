struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1115f, _wgslsmith_f_op_f32(select(211f, 249f, true)), true)))));
    global0 = array<Struct_3, 22>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(783f * 279f) + _wgslsmith_f_op_f32(f32(-1f) * -231f)), false)) - _wgslsmith_f_op_f32(-298f + 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1595f - 1412f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(779f, -1636f, true)) + _wgslsmith_f_op_f32(ceil(443f)))));
    var var_1 = select(!vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, u_input.e.x >= u_input.e.x)), (true && any(vec2<bool>(false, true))) & all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) == true);
    global0 = array<Struct_3, 22>();
    return 2147483647i >> (_wgslsmith_div_u32(~_wgslsmith_div_u32(1u, u_input.b >> (18641u % 32u)), ~(~(~u_input.b))) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> i32 {
    var var_0 = vec3<i32>(arg_1.a.a.a.c, func_3(), arg_0.a.c << (~arg_0.b.a.x % 32u));
    var_0 = vec3<i32>(-7360i, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(1i, ~(-79377i)), u_input.a.x), countOneBits(_wgslsmith_sub_i32(-(~u_input.a.x), var_0.x)));
    var_0 = vec3<i32>(-1i) * -(~vec3<i32>(arg_1.e.b.c, -1i, -21394i) << (_wgslsmith_add_vec3_u32(arg_1.b.a.a, vec3<u32>(0u, 4294967295u, arg_1.e.a.a.x)) % vec3<u32>(32u)));
    let var_1 = Struct_1(arg_0.b.a, true, firstLeadingBit(-arg_0.a.c));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1120f, 1115f, -156f, 143f) + vec4<f32>(1741f, 1403f, 731f, 2262f)) * vec4<f32>(-2290f, -505f, -624f, 2197f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1463f, -599f, -1000f, -1062f)))), arg_0.b.b)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-534f)), _wgslsmith_f_op_f32(select(-708f, -1824f, true)), -113f, 1000f))));
    return u_input.a.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(~arg_2.zyz, vec3<u32>(u_input.b, arg_2.x, arg_2.x)), true || (0u > (52061u << (arg_2.x % 32u))), 1i), Struct_1(arg_2.wwz, any(vec3<bool>(any(vec2<bool>(true, false)), u_input.a.x > -6517i, any(vec4<bool>(false, false, false, false)))), 2147483647i << (_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(59068u, arg_2.x, arg_2.x, 1u) ^ vec4<u32>(91904u, u_input.d.x, 51382u, u_input.b)) % 32u)));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    var var_1 = firstTrailingBit(max(abs(~0u), 4294967295u));
    return var_0.a.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_3, 22>();
    var var_0 = vec4<bool>(true, any(vec2<bool>(true, true && arg_1.b)), arg_2.b, !(arg_1.a.x < (u_input.d.x >> (_wgslsmith_mult_u32(u_input.c, 50674u) % 32u))));
    var_0 = vec4<bool>(true, select(!((arg_0.c <= u_input.a.x) && true), true, !func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, -300f) * vec2<f32>(448f, 677f)), func_2(Struct_2(arg_0, Struct_1(vec3<u32>(arg_1.a.x, arg_0.a.x, arg_2.a.x), arg_0.b, -1i)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(arg_1.a.x, arg_2.a.x, 3930u), var_0.x, u_input.a.x), arg_2), Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.c, 1u), var_0.x, -21837i), arg_2), vec2<u32>(19470u, 26318u), vec4<i32>(arg_2.c, arg_1.c, arg_0.c, 1i)), Struct_2(arg_1, arg_0), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), -1i, Struct_2(arg_0, Struct_1(vec3<u32>(arg_2.a.x, arg_2.a.x, arg_1.a.x), arg_1.b, arg_0.c))), var_0.ywz), ~vec4<u32>(1u, arg_1.a.x, arg_2.a.x, 1u))), u_input.d.x == arg_0.a.x, !(true & var_0.x));
    let var_1 = -1i;
    let var_2 = _wgslsmith_mod_vec3_u32(~abs(arg_0.a), select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_0.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 6267u, u_input.b), vec3<u32>(1u, 1u, arg_2.a.x), vec3<u32>(77689u, 4294967295u, u_input.b))), u_input.d), ~firstLeadingBit(~vec3<u32>(arg_0.a.x, 41780u, arg_2.a.x)), !var_0.x));
    return firstLeadingBit(arg_0.a.x);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))));
    let var_1 = _wgslsmith_mod_i32(-u_input.a.x << (abs(arg_0) % 32u), max(~u_input.e.x >> ((max(arg_2.a.x, arg_3) & 38063u) % 32u), u_input.e.x));
    var var_2 = 76244u;
    let var_3 = global0[_wgslsmith_index_u32(~arg_0 & ~_wgslsmith_clamp_u32(~0u >> (~u_input.d.x % 32u), ~(~1u), min(~u_input.c, 33213u)), 22u)];
    var_2 = 0u;
    return vec3<i32>(max(1i, var_1), -_wgslsmith_dot_vec4_i32(select(var_3.d, var_3.d, vec4<bool>(arg_1.x, arg_2.b, arg_1.x, arg_2.b)), var_3.d), 1i) ^ abs(var_3.d.zww << (vec3<u32>(arg_3 | 0u, 4294967295u, ~arg_0) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.e.x, 10184i, 18670i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e.x, u_input.e.x ^ -15417i, u_input.a.x), func_5(~func_1(Struct_1(vec3<u32>(u_input.b, 86580u, 1u), true, u_input.a.x), Struct_1(u_input.d, false, u_input.a.x), Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), true, u_input.a.x)), vec2<bool>(select(true, true, true), false), Struct_1(reverseBits(vec3<u32>(u_input.b, 9822u, u_input.c)), true, u_input.e.x), max(firstTrailingBit(u_input.b), u_input.c))));
    var var_1 = global0[_wgslsmith_index_u32(abs(u_input.d.x), 22u)];
    let var_2 = reverseBits(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(25961u, 4294967295u, 0u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 7588u, 3029u, 58200u), ~vec4<u32>(var_1.c.x, 24186u, u_input.c, 9899u)), select(!vec4<bool>(var_1.a.a.b, false, true, var_1.a.b.b), select(vec4<bool>(false, var_1.a.a.b, true, true), vec4<bool>(false, true, var_1.a.a.b, var_1.a.a.b), var_1.b.a.b), var_1.b.b.b)), max(~(vec4<u32>(4294967295u, var_1.b.b.a.x, 1u, 724u) | vec4<u32>(u_input.d.x, var_1.b.a.a.x, 1u, u_input.c)), reverseBits(vec4<u32>(4294967295u, 54191u, u_input.b, u_input.d.x)) | vec4<u32>(3562u, 7130u, var_1.c.x, 1u)), reverseBits(min(~vec4<u32>(0u, 1u, 14140u, var_1.a.a.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.b.a.x, 54086u, 4294967295u, 4294967295u), vec4<u32>(var_1.a.a.a.x, 4047u, 60316u, var_1.b.a.a.x))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_add_i32(select(_wgslsmith_div_i32(2147483647i, 38095i), _wgslsmith_mult_i32(var_0.x, var_1.a.b.c), true), 79946i), -firstLeadingBit(var_1.a.a.c >> (var_2.x % 32u))) ^ _wgslsmith_add_i32(-2147483647i, 53524i);
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, 0u, 18394u) << (var_1.b.b.a % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(~var_1.a.a.a, vec3<u32>(1u, var_2.x, var_1.c.x))), false, func_3());
    var var_5 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.x, ~var_1.a.b.a.x, 0u), countOneBits(vec3<u32>(~var_1.b.a.a.x, _wgslsmith_dot_vec3_u32(var_4.a, ~vec3<u32>(15132u, 2737u, 74567u)), 66379u)));
    var var_6 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, 223f);
}

