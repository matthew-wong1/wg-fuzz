struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(10593i, i32(-2147483648), -40309i, 1i, 37109i, i32(-2147483648), -1i, -1189i, i32(-2147483648), 30743i, 1i, 0i, i32(-2147483648), i32(-2147483648), -35034i, 1i, -31775i, 1i, -37947i, 1i, 2597i, -5856i, -34841i, -15458i, 0i, 22591i, 1i, -1i, 10111i, -39014i, 41415i, 0i);

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-max(global0[_wgslsmith_index_u32(13911u, 32u)], -2147483647i), abs(_wgslsmith_sub_i32(arg_1.c, u_input.c.x)), 1i), ~(vec3<i32>(35i, 1i, ~arg_1.c) << ((~vec3<u32>(0u, 22752u, u_input.b.x) >> (min(vec3<u32>(u_input.b.x, u_input.b.x, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, arg_1.a)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = Struct_2(arg_0, Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.d, _wgslsmith_mult_i32(64346i, arg_1.c), reverseBits(u_input.a), min(-2147483647i, arg_1.b)) << (((vec4<u32>(u_input.b.x, 4294967295u, 63203u, 4294967295u) & vec4<u32>(44597u, 0u, arg_1.a, 25528u)) << (select(vec4<u32>(4294967295u, 1u, 1u, 48576u), vec4<u32>(arg_1.a, 22913u, arg_1.a, u_input.b.x), true) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(round(arg_0));
    let var_4 = Struct_5(select(select(select(select(vec4<bool>(false, true, var_1.b.a.x, false), vec4<bool>(false, var_1.b.a.x, true, true), true), vec4<bool>(true, true, var_1.b.a.x, var_1.b.a.x), var_1.b.a.x), vec4<bool>(var_1.b.a.x, true, u_input.c.x < 33608i, true), all(vec3<bool>(var_1.b.a.x, var_1.b.a.x, true))), vec4<bool>(all(!vec4<bool>(true, var_1.b.a.x, var_1.b.a.x, false)), !(false & var_1.b.a.x), false, any(!vec3<bool>(var_1.b.a.x, false, var_1.b.a.x))), !(!vec4<bool>(true, var_1.b.a.x, false, var_1.b.a.x))), Struct_1(var_1.b.a, var_1.b.b), ~(~(~arg_1.a) & (_wgslsmith_mod_u32(arg_1.a, u_input.b.x) | _wgslsmith_mod_u32(arg_1.a, 4294967295u))), -4035i, var_1);
    return vec2<i32>(_wgslsmith_div_i32(var_1.b.b.x, arg_1.c), -global0[_wgslsmith_index_u32(var_4.c, 32u)]);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.d, arg_0.e), vec2<i32>(countOneBits(arg_0.c.b.x), reverseBits(16888i))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.c.b.zw, u_input.c) & firstLeadingBit(arg_0.c.b.wy), func_3(-2041f, Struct_4(36179u, -26768i, u_input.c.x, 1707f)) & (u_input.c | vec2<i32>(9244i, -2147483647i))), vec2<i32>(firstTrailingBit(2147483647i) | 20529i, u_input.c.x));
    var var_2 = Struct_3(vec2<u32>(~(~arg_0.b), arg_0.b), 0u, Struct_1(vec3<bool>(any(select(arg_0.c.a, vec3<bool>(true, false, arg_0.c.a.x), arg_0.c.a)), true, !any(vec4<bool>(true, true, false, true))), vec4<i32>(2147483647i, arg_0.c.b.x, u_input.c.x, 783i)), 1u, firstLeadingBit(-2147483647i));
    let var_3 = var_2.c;
    global1 = true;
    return Struct_1(!vec3<bool>(arg_0.c.a.x, var_2.c.a.x && var_2.c.a.x, true), vec4<i32>(~_wgslsmith_add_i32(1i & arg_0.e, u_input.a), reverseBits(global0[_wgslsmith_index_u32(1u, 32u)]), countOneBits(var_1.x >> (arg_0.b % 32u)), arg_0.e));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, Struct_1(vec3<bool>(arg_0.a.x, all(!arg_0.a.xz), true), arg_0.b >> (abs(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u))));
    global1 = all(!select(!vec3<bool>(var_0.b.a.x, arg_0.a.x, true), !select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(true, var_0.b.a.x, arg_0.a.x), var_0.b.a), vec3<bool>(!arg_0.a.x, 0u >= u_input.b.x, false)));
    global0 = array<i32, 32>();
    var var_1 = Struct_3(max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 41898u)) ^ _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)), countOneBits(firstLeadingBit(vec2<u32>(u_input.b.x, 52974u)))), u_input.b.x, Struct_1(var_0.b.a, min(arg_0.b, min(vec4<i32>(22448i, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(36635u, 32u)], -1i), var_0.b.b) & vec4<i32>(var_0.b.b.x, 1i, var_0.b.b.x, -53045i))), reverseBits(4294967295u), select(max(0i, abs(2147483647i)), 10955i, !var_0.b.a.x));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)))), func_2(Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 631u), vec2<u32>(u_input.b.x, 0u), u_input.b.zz), ~var_1.d ^ min(4294967295u, u_input.b.x), func_2(Struct_3(vec2<u32>(4294967295u, var_1.a.x), u_input.b.x, Struct_1(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec4<i32>(28590i, -2147483647i, -1i, arg_2)), 0u, 40252i)), u_input.b.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(26680i, arg_2), var_1.e))));
    return func_2(Struct_3(~(reverseBits(vec2<u32>(15173u, var_1.b)) & vec2<u32>(1u, var_1.d)), ((0u >> (var_1.d % 32u)) << (4294967295u % 32u)) | 61777u, var_0.b, 4294967295u, var_0.b.b.x));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1873f, -1048f, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-596f, -1000f, -536f, 311f), vec4<f32>(-1000f, 512f, 591f, 527f))))))));
    let var_1 = func_4(func_2(Struct_3(vec2<u32>(1u, arg_0) | vec2<u32>(445u, arg_0), select(11402u ^ u_input.b.x, 0u, true), Struct_1(vec3<bool>(true, true, true), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(arg_0, 32u)], -2147483647i, 378i)), u_input.b.x, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-720f)))), true & (var_0.x > var_0.x))) + -2305f), 45406i);
    return Struct_3(_wgslsmith_add_vec2_u32(~(~u_input.b.zz), vec2<u32>(u_input.b.x, u_input.b.x)) ^ firstTrailingBit(u_input.b.zy), ~(~(9205u >> (u_input.b.x % 32u))) >> (1u % 32u), var_1, _wgslsmith_add_u32(31866u, _wgslsmith_div_u32(countOneBits(0u << (u_input.b.x % 32u)), u_input.b.x)), ~(-(~var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(4226u);
    var var_1 = false;
    global0 = array<i32, 32>();
    let var_2 = 2147483647i;
    var var_3 = 8038u;
    var var_4 = vec3<f32>(871f, 273f, -222f);
    var var_5 = max(2895u, 1u);
    let var_6 = var_0.c.b;
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(select(var_4.x, 1031f, var_0.c.a.x))) + 312f), -584f), ~(0u >> (_wgslsmith_mod_u32(var_0.a.x << (0u % 32u), firstLeadingBit(u_input.b.x)) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_4.x, -1470f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.x, 1207f))) + _wgslsmith_f_op_vec2_f32(-var_4.zy))), 33440i);
}

