struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-1i, 71346i, 0i, i32(-2147483648), -75161i, 60658i, 29947i, 3551i, 2147483647i, -1i, -87198i, 0i, 2147483647i, 2147483647i, 2147483647i, 1i, -14893i, 0i, -1i, -1i, -12033i, 70136i, -17822i, -1i, -9024i, 0i, -46438i, 1i, i32(-2147483648), -66608i, i32(-2147483648));

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<i32>(2147483647i, -40064i, -13311i, -3831i), Struct_3(Struct_1(13435u, 833f, 0u), Struct_1(1u, 856f, 0u))));

var<private> global2: array<bool, 12> = array<bool, 12>(false, false, true, true, true, true, false, true, false, false, true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_3(arg_2, Struct_1(reverseBits(15722u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - 799f), _wgslsmith_dot_vec2_u32((u_input.a << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.c), vec2<u32>(u_input.c.x, arg_3.b.a.c))));
    global0 = array<i32, 31>();
    let var_1 = var_0;
    var var_2 = all(!arg_1) != true;
    var var_3 = global1[_wgslsmith_index_u32(72396u, 1u)];
    return -(~u_input.b);
}

fn func_2(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = max(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, 14689i), vec2<i32>(max(2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 31u)]), 1i), ~max(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], u_input.b), vec2<i32>(2147483647i, 5383i))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(5099i, -80156i)), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 14260i), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], -29296i)) | ~vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], -25851i))), vec2<i32>(_wgslsmith_mod_i32(min(global0[_wgslsmith_index_u32(arg_0.x, 31u)], func_3(-731f, vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(38173u, 12u)]), Struct_1(1u, 130f, 4294967295u), Struct_4(vec4<i32>(-2147483647i, 2147483647i, global0[_wgslsmith_index_u32(0u, 31u)], u_input.b), Struct_3(Struct_1(4294967295u, 216f, 28242u), Struct_1(1u, -434f, 43556u))))), 2147483647i), -41435i));
    global0 = array<i32, 31>();
    global2 = array<bool, 12>();
    var var_1 = arg_0 ^ vec4<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~abs(arg_0.x), ~u_input.c.x, _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(~arg_0.x, 0u, _wgslsmith_add_u32(0u, 1u))));
    let var_2 = 992f;
    return abs(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(global0[_wgslsmith_index_u32(52438u, 31u)], 0i, var_0.x, 1431i) << (arg_0 % vec4<u32>(32u))), -vec4<i32>(0i, -8377i, global0[_wgslsmith_index_u32(0u, 31u)], var_0.x), vec4<i32>(-global0[_wgslsmith_index_u32(u_input.c.x, 31u)], i32(-1i) * -8187i, firstLeadingBit(u_input.b), _wgslsmith_sub_i32(u_input.b, global0[_wgslsmith_index_u32(var_1.x, 31u)]))), vec4<i32>(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)], 0i, var_0.x, 1i)));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec2<i32>(43423i << (0u % 32u), arg_0.a.x);
    var var_1 = global1[_wgslsmith_index_u32(0u ^ u_input.a.x, 1u)];
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    let var_2 = ~max(4795u, select(1u, ~select(21159u, var_1.b.a.a, global2[_wgslsmith_index_u32(0u, 12u)]), !any(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.b.b.a, 12u)], global2[_wgslsmith_index_u32(13263u, 12u)], true))));
    return Struct_2(Struct_1(_wgslsmith_mod_u32(~var_2 ^ ~22609u, var_1.b.a.c >> (38662u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -380f), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), vec3<u32>(7327u, var_2, 30386u)), select(1u, 1u, false), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], true, false, true)) && (4294967295u <= var_2))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = func_4(Struct_4(vec4<i32>(_wgslsmith_dot_vec4_i32(func_2(vec4<u32>(arg_0.a, 12965u, arg_0.c, arg_0.c)), firstLeadingBit(vec4<i32>(2147483647i, u_input.b, 0i, global0[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_div_i32(-1i, firstTrailingBit(-1i)), ~_wgslsmith_add_i32(4070i, global0[_wgslsmith_index_u32(arg_0.a, 31u)]), -36667i), Struct_3(arg_0, arg_0)));
    return var_0.a.c >> (~max(select(1u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.a), global2[_wgslsmith_index_u32(~var_0.a.a, 12u)]), 66462u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 43592u;
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(10135u, ~u_input.c.x, 22031u >> (u_input.c.x % 32u)), ~u_input.c.x, 3975u)) ^ min(_wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(u_input.a.x), max(93190u, u_input.c.x)), ~u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(~4294967295u, func_1(Struct_1(u_input.c.x, 511f, 5198u), global2[_wgslsmith_index_u32(u_input.c.x, 12u)])))), 12u)];
    var var_2 = _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 2681u, 4294967295u, 27423u), vec4<u32>(19493u, 31846u, u_input.a.x, 1u)), select(vec4<u32>(u_input.c.x, 1u, 17816u, 1u), vec4<u32>(1u, u_input.c.x, 72158u, u_input.c.x), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(60157u, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 1u, u_input.a.x, 32756u)), ~7378u), 4294967295u, u_input.a.x)) ^ vec4<u32>(~22670u, 0u, u_input.c.x, u_input.c.x);
    let var_3 = Struct_1(_wgslsmith_clamp_u32(0u, var_2.x, ~(~_wgslsmith_mod_u32(0u, var_2.x))), 1f, ~19251u);
    global0 = array<i32, 31>();
    let var_4 = _wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(var_3.a, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1591f, ~0i, max(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(139720u, var_3.a, 4294967295u, 71432u), vec4<u32>(21800u, var_3.a, var_3.c, 1283u), vec4<u32>(1u, 63427u, u_input.c.x, u_input.a.x)), vec4<u32>(u_input.c.x, var_3.a, var_2.x, var_3.c)), vec4<u32>(4294967295u, var_3.a, var_2.x, var_3.c) & vec4<u32>(4294967295u, u_input.a.x, var_2.x, 27125u)), ~vec4<u32>(var_2.x, func_4(Struct_4(vec4<i32>(-2147483647i, 2147483647i, var_4, u_input.b), Struct_3(Struct_1(var_3.a, var_3.b, var_2.x), var_3))).a.a, var_2.x, u_input.c.x)));
}

