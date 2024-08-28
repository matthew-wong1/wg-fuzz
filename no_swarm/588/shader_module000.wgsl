struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = ~vec3<i32>(min(_wgslsmith_mod_i32(-2147483647i, arg_1.b.x), ~1i), -_wgslsmith_add_i32(arg_0, 1i) | -(arg_1.b.x ^ arg_2.b), 57278i);
    var var_1 = Struct_1(true, arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-505f))));
    global0 = array<vec3<bool>, 13>();
    var var_2 = ~vec4<u32>(0u, ~min(~4294967295u, u_input.c.x), ~_wgslsmith_div_u32(1u ^ u_input.d.x, u_input.d.x), u_input.e);
    let var_3 = global0[_wgslsmith_index_u32((min(var_2.x, 5372u) & ~(max(var_2.x, var_2.x) | ~var_2.x)) & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(var_2.x), 0u, ~0u), ~var_2.xxx), var_2.xwx), 13u)];
    return var_1.a;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = Struct_3(-(~_wgslsmith_div_vec3_i32(-vec3<i32>(-58988i, -2147483647i, 34211i), -vec3<i32>(-32057i, -1i, -1i))), ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-33005i, 2852i), vec2<i32>(-35129i, -52764i)) >> (_wgslsmith_mod_vec2_u32(u_input.c.yy, countOneBits(u_input.d.zy)) % vec2<u32>(32u))));
    global0 = array<vec3<bool>, 13>();
    var var_1 = Struct_1(!func_3(i32(-1i) * -11402i, var_0, Struct_2(Struct_1(false, var_0.b.x, -1000f), -34844i, Struct_1(false, 1i, 1824f))), firstTrailingBit(var_0.a.x >> (~(54504u | u_input.d.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1754f - 1000f) * _wgslsmith_div_f32(-174f, -825f)) * 728f) + -962f));
    let var_2 = -18886i;
    return Struct_2(Struct_1(any(vec4<bool>(func_3(var_2, Struct_3(var_0.a, vec2<i32>(-7352i, var_0.a.x)), Struct_2(Struct_1(var_1.a, var_0.b.x, var_1.c), 0i, Struct_1(false, 40618i, var_1.c))), false, true, true)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c))) * -815f)), 15404i, Struct_1(any(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), -var_2, var_1.c));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_3(vec3<i32>(abs(1i), 2147483647i, max(_wgslsmith_add_i32(-var_0.c.b, var_0.a.b), ~var_0.c.b)), ~min(_wgslsmith_clamp_vec2_i32(~vec2<i32>(47358i, var_0.a.b), vec2<i32>(-38103i, -1i), -vec2<i32>(-2147483647i, 43909i)), min(-vec2<i32>(6749i, var_0.a.b), countOneBits(vec2<i32>(1i, 1i)))));
    let var_2 = Struct_4(vec2<bool>(var_0.c.a, any(!vec3<bool>(true, var_0.a.a, var_0.a.a))));
    let var_3 = _wgslsmith_dot_vec3_i32(-select(-vec3<i32>(1i, var_0.a.b, -2147483647i), -var_1.a, global0[_wgslsmith_index_u32(0u, 13u)]), ~(-vec3<i32>(var_1.a.x, -1i, var_0.c.b))) ^ var_1.a.x;
    var_0 = Struct_2(func_2().c, _wgslsmith_dot_vec2_i32(min(vec2<i32>(countOneBits(-32781i), _wgslsmith_mod_i32(2147483647i, var_0.a.b)), ~firstLeadingBit(vec2<i32>(var_0.a.b, var_1.b.x))), vec2<i32>(var_0.a.b, var_3)), func_2().c);
    return _wgslsmith_div_i32(countOneBits(var_3), -_wgslsmith_dot_vec2_i32(~var_1.a.xz, var_1.a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(-33536i, func_1(~u_input.c));
    let var_1 = any(!select(vec2<bool>(true, true), vec2<bool>(func_2().c.a, true), !select(false, true, true)));
    let var_2 = _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, -1i, -37116i) ^ -vec3<i32>(var_0, var_0, -48931i), vec3<i32>(-2147483647i, var_0 ^ var_0, var_0), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(var_0, 31528i, var_0) & vec3<i32>(var_0, var_0, -2147483647i), select(vec3<i32>(var_0, 2390i, 1i), vec3<i32>(var_0, 5883i, 2147483647i), vec3<bool>(var_1, var_1, var_1)))), abs(vec3<i32>(~(~var_0), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0, var_0), func_1(u_input.c)), _wgslsmith_sub_i32(0i, countOneBits(1i)))));
    let var_3 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(abs(1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(33241i, var_2.x, var_2.x), -vec3<i32>(1i, 51034i, var_0))), -1i);
    let var_4 = Struct_4(vec2<bool>(false, !var_1));
    let var_5 = firstTrailingBit(abs(firstTrailingBit(u_input.c.yww) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, 0u), ~vec3<u32>(4294967295u, 0u, 93941u), vec3<u32>(96862u, 0u, u_input.e))));
    global0 = array<vec3<bool>, 13>();
    let var_6 = firstLeadingBit(vec4<u32>(~(~_wgslsmith_clamp_u32(u_input.c.x, 47650u, 4294967295u)), 4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(reverseBits(u_input.e), u_input.c.x >> (var_5.x % 32u)), 19873u), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, _wgslsmith_f_op_f32(-1f), vec4<i32>(_wgslsmith_div_i32((var_3 >> (4294967295u % 32u)) >> (~46612u % 32u), ~var_0), _wgslsmith_mod_i32(func_1(_wgslsmith_clamp_vec4_u32(var_6, vec4<u32>(1u, 47976u, u_input.c.x, var_6.x), vec4<u32>(u_input.e, 75241u, 29953u, 1u))), min(var_3, var_0) | var_2.x), var_2.x & ~var_0, ~_wgslsmith_clamp_i32(var_2.x, var_3, -49126i)));
}

