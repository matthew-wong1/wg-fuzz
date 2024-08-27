struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18>;

var<private> global1: array<vec4<bool>, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(u_input.c, u_input.b, u_input.c) >> (vec3<u32>(702u, 22030u, u_input.c) % vec3<u32>(32u))), u_input.b), ~51176u), 18u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_div_f32(151f, var_0.b.x)))))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~36802u | _wgslsmith_add_u32(4294967295u, ~u_input.c)), 18u)];
    var var_2 = ~u_input.b;
    var var_3 = var_0.c.a.c;
    return countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a, u_input.a ^ u_input.a, var_0.c.a.b)), -countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.a.a, u_input.a, -48048i, 39624i), vec4<i32>(1i, -1i, 42532i, var_0.c.a.b))), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a.c, 19765i, 0i, var_0.c.a.c), vec4<i32>(var_0.c.a.c, u_input.a, -53312i, var_0.c.a.a)) | 69027i, u_input.a, countOneBits(i32(-1i) * -2147483647i))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec3<i32> {
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    var var_0 = -_wgslsmith_add_vec4_i32(firstLeadingBit(func_3()), _wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(-53189i, 11855i, u_input.a, u_input.a)), countOneBits(min(vec4<i32>(u_input.a, 1733i, u_input.a, 0i), vec4<i32>(u_input.a, -17795i, arg_2, 11084i)))));
    let var_1 = Struct_2(Struct_1(-(~arg_2), _wgslsmith_mod_i32(reverseBits(arg_2), -(i32(-1i) * -2147483647i)), -3136i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(-arg_0)), Struct_1(u_input.a, -(countOneBits(u_input.a) | select(arg_2, 49153i, true)), max(-(~(-2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2, u_input.a, u_input.a), -vec4<i32>(arg_2, var_0.x, u_input.a, -2147483647i)))), u_input.b);
    var var_2 = _wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 0i, 1i, -71188i)) >> ((vec4<u32>(52013u, 4294967295u, var_1.e, 0u) << (vec4<u32>(0u, 50307u, 0u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(var_1.d.a, _wgslsmith_sub_i32(u_input.a, arg_2), 15263i, _wgslsmith_dot_vec3_i32(var_0.wzz, vec3<i32>(u_input.a, var_0.x, -1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(31588i, 0i, -28516i, -11456i), vec4<i32>(var_0.x, -7199i, 12434i, -1i)) << (firstTrailingBit(vec4<u32>(11760u, u_input.c, 1u, u_input.c)) % vec4<u32>(32u))), vec4<i32>(var_0.x, ~(-1i), min(arg_2, 2147483647i) << (~1u % 32u), -616i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, var_1.a.b, arg_2, _wgslsmith_dot_vec3_i32(var_0.www, vec3<i32>(arg_2, var_1.d.b, arg_2))), (vec4<i32>(var_0.x, 12072i, -14721i, arg_2) << (vec4<u32>(u_input.c, u_input.b, var_1.e, 74052u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b, u_input.c, var_1.e, var_1.e) % vec4<u32>(32u))));
    return -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(75587i, u_input.a, -1i)) & ((vec3<i32>(16400i, var_0.x, var_2.x) & vec3<i32>(-32622i, 2147483647i, u_input.a)) ^ _wgslsmith_mult_vec3_i32(var_2.www, vec3<i32>(arg_2, var_0.x, -27262i))), abs(abs(vec3<i32>(var_2.x, 1i, var_0.x))) << (vec3<u32>(~var_1.e, ~var_1.e, 0u) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    global1 = array<vec4<bool>, 14>();
    var var_0 = func_2(_wgslsmith_f_op_f32(select(1804f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 531f), _wgslsmith_f_op_f32(-1533f * -780f))), true)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1727f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(231f + -132f), _wgslsmith_f_op_f32(arg_0 * 1373f), true)) * 982f)), select(0i, _wgslsmith_mod_i32(arg_1.x, reverseBits(arg_1.x)), false), arg_0);
    var var_1 = _wgslsmith_sub_u32(u_input.c, firstLeadingBit(u_input.c));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(global1[_wgslsmith_index_u32(u_input.c, 14u)]) & (1438f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(func_1(-270f, vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))))));
    global0 = array<Struct_5, 18>();
    global1 = array<vec4<bool>, 14>();
    let var_1 = Struct_1(u_input.a, 2147483647i, -2147483647i);
    var var_2 = Struct_3(var_1, vec3<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, 17010u, 0u, 14714u)), vec4<u32>(abs(4294967295u), countOneBits(u_input.c), countOneBits(4294967295u), ~u_input.b)), max(~_wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_clamp_u32(~67005u, u_input.b, u_input.c)), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.b, u_input.c), _wgslsmith_add_u32(54046u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c))))));
    var_0 = true;
    var var_3 = Struct_3(Struct_1(u_input.a, u_input.a, u_input.a << (u_input.c % 32u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_2.b.x, 1u), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c), ~u_input.c, select(var_2.b.x, 4294967295u, true))));
    let var_4 = Struct_3(var_1, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(min(var_3.b, var_3.b), var_2.b | vec3<u32>(20247u, var_3.b.x, u_input.b)), var_2.b), ~var_2.b, select(vec3<u32>(~var_2.b.x, var_2.b.x, var_3.b.x), vec3<u32>(countOneBits(var_2.b.x), var_2.b.x, 1u), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~75652u, var_3.b.xy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_div_f32(1154f, _wgslsmith_f_op_f32(f32(-1f) * -452f))))));
}

