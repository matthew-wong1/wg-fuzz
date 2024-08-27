struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(i32(-2147483648), -14746i, 0i, 0i, 1i, 35729i, 7894i, -15618i, 22956i, 4747i, 1i, 45941i, 56776i, 25320i, -1786i, 1i, -25618i, 0i, -1i, 0i, -27691i);

var<private> global1: array<bool, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_4(arg_3);
    let var_1 = Struct_1(u_input.a.x, var_0.a.x, select(vec2<u32>(~reverseBits(0u), max(1u, arg_2.b.x & arg_2.c.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 1u)), abs(arg_2.b.x >> (1u % 32u))), all(arg_0) && (arg_0.x & true)), _wgslsmith_add_u32(countOneBits(abs(abs(9444u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, min(arg_2.c.x, 1u)), ~1u, ~u_input.a.x)), ~vec4<i32>(_wgslsmith_mod_i32(53366i, -1i | arg_2.a), -2147483647i, _wgslsmith_div_i32(arg_2.a, ~arg_3.x), _wgslsmith_dot_vec4_i32(~var_0.a, _wgslsmith_div_vec4_i32(vec4<i32>(16763i, arg_1.b.b, 10190i, 40691i), vec4<i32>(0i, u_input.d, 21131i, var_0.a.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1010f, 463f, -921f), vec3<f32>(-663f, 2441f, 1670f), true)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(904f, -244f)) + _wgslsmith_f_op_f32(floor(-390f))), _wgslsmith_div_f32(-1219f, _wgslsmith_f_op_f32(min(-878f, -645f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2998f * -791f), _wgslsmith_f_op_f32(454f + 824f)))));
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    return _wgslsmith_div_i32(-_wgslsmith_div_i32(var_0.a.x, ~u_input.b) & _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, -3237i, -2147483647i), arg_1.b.e)), 2147483647i), -1i);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 9>();
    global0 = array<i32, 21>();
    var var_0 = Struct_2(u_input.a.x, Struct_1(12442u, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 21u)], -2147483647i), ~(~(arg_0.yy >> (arg_0.zx % vec2<u32>(32u)))), arg_0.x, ~vec4<i32>(func_3(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(arg_0.x, 9u)], global1[_wgslsmith_index_u32(arg_0.x, 9u)]), Struct_2(47098u, Struct_1(arg_1.x, u_input.c, vec2<u32>(arg_1.x, 67521u), arg_1.x, vec4<i32>(-1i, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 687i)), u_input.a.x), Struct_3(13701i, vec2<u32>(26612u, arg_0.x), vec2<u32>(arg_1.x, arg_1.x)), vec4<i32>(0i, global0[_wgslsmith_index_u32(23857u, 21u)], 34842i, u_input.d)), u_input.c, _wgslsmith_mult_i32(-21635i, -1i), _wgslsmith_clamp_i32(u_input.d, u_input.c, 26455i))), 33513u & arg_1.x);
    var var_1 = -(~u_input.c) ^ u_input.b;
    let var_2 = Struct_2(4294967295u, var_0.b, ~firstLeadingBit(4294967295u));
    return Struct_1(4294967295u, _wgslsmith_add_i32(1i, abs(~min(-1878i, 1i))), ~vec2<u32>(47570u, _wgslsmith_mult_u32(1u, var_2.c)), u_input.a.x, ~select(var_2.b.e, reverseBits(min(vec4<i32>(-31934i, 20654i, -1i, -1i), vec4<i32>(2147483647i, -1599i, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(arg_0.x, 21u)]))), !global1[_wgslsmith_index_u32(~var_2.b.c.x, 9u)]));
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_2(u_input.a.x, func_2(_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 71598u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(46312u, 88798u, 114104u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a & ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), u_input.a)), _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(1u, ~u_input.a.x)));
    var var_1 = global0[_wgslsmith_index_u32(28837u, 21u)];
    var var_2 = Struct_1(1u, u_input.d, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~u_input.a.x, reverseBits(var_0.c)), 33530u), func_2(~(~vec3<u32>(4294967295u, u_input.a.x, 10183u)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(7241u, var_0.c, 46765u, var_0.c), vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)))).c), ~u_input.a.x, firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.b.e.wz, var_0.b.e.zw), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.b.d, u_input.a.x), 21u)], _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, -2147483647i, 11005i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec4<i32>(var_0.b.b, -9339i, var_0.b.b, 0i)), -10894i), vec4<i32>(-u_input.b, ~1i, 1266i, 1i))));
    global1 = array<bool, 9>();
    let var_3 = ((~var_2.d < (var_0.b.a >> (~1u % 32u))) && true) | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~var_2.c.x), 9u)];
    return ~abs(reverseBits(select(firstTrailingBit(vec3<u32>(24659u, 1u, 790u)), vec3<u32>(30594u, var_2.d, 16014u), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_3, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(~(-_wgslsmith_div_vec4_i32(vec4<i32>(7366i, 1i, u_input.b, 0i) & vec4<i32>(-37637i, 8226i, global0[_wgslsmith_index_u32(46342u, 21u)], 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 50556i, -29298i, u_input.b), vec4<i32>(arg_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -21684i, u_input.b), vec4<i32>(-22984i, 0i, 22889i, -1i)))));
    var var_1 = arg_1;
    global0 = array<i32, 21>();
    var var_2 = Struct_1(_wgslsmith_add_u32(~47449u, ~(~firstLeadingBit(arg_1.b.x))), _wgslsmith_mult_i32(arg_1.a, -(~(-2147483647i))), ~var_1.c, ~func_1().x, vec4<i32>(max(~(-2147483647i), ~(-41374i)), -u_input.d, global0[_wgslsmith_index_u32(~2139u, 21u)], var_0.a.x));
    let var_3 = Struct_4(~var_2.e);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!global1[_wgslsmith_index_u32(~4294967295u, 9u)], Struct_3(0i << (_wgslsmith_dot_vec3_u32(func_1(), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 15274u))) % 32u), ~u_input.a, select(u_input.a << (vec2<u32>(4184u, 25230u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 11450u), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)])) << (vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x) % vec2<u32>(32u))));
    let var_1 = Struct_1(abs(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), -7289i, u_input.a, _wgslsmith_mult_u32(firstTrailingBit(1u), ~110288u), vec4<i32>(firstLeadingBit(~var_0.a.x >> (min(7171u, 4294967295u) % 32u)), 0i | var_0.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x ^ 0u) ^ _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 21u)], reverseBits(u_input.c) ^ 0i));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1572f), 2255f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-836f, var_2)))), var_2)))));
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-956f)), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(14547u, 21u)], min(-var_0.a.x << (firstTrailingBit(1u) % 32u), 0i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - -511f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2760f, var_3), 130f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -993f)))));
}

