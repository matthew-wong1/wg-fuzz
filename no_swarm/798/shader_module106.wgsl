struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(61132i, -3324i, 1143i, -74140i);

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<u32, 11>;

var<private> global3: vec2<bool>;

var<private> global4: array<f32, 16> = array<f32, 16>(-1525f, 167f, -333f, -1802f, 1127f, -1000f, -606f, -105f, 477f, -464f, 2187f, -452f, 322f, -278f, 156f, -354f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))), _wgslsmith_f_op_vec4_f32(-arg_0.b)));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 69286u, 16886u, arg_0.d.a.x)), abs(vec4<u32>(u_input.b.x, arg_0.d.a.x, 63881u, 110034u))), ~global2[_wgslsmith_index_u32(abs(13179u), 11u)], ~arg_0.d.b.a.x, ~(~global2[_wgslsmith_index_u32(1u, 11u)]));
    global2 = array<u32, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-294f, global4[_wgslsmith_index_u32(arg_0.d.a.x & ~global2[_wgslsmith_index_u32(var_1.x, 11u)], 16u)])));
    var_2 = -1036f;
    return reverseBits(40586u);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> vec4<u32> {
    global1 = array<Struct_2, 16>();
    let var_0 = 26246u;
    var var_1 = false;
    global3 = select(arg_2, vec2<bool>(false, false), 702f < global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 11u)]), 4294967295u, func_2(Struct_4(-1297f, vec4<f32>(arg_0.x, global4[_wgslsmith_index_u32(36884u, 16u)], global4[_wgslsmith_index_u32(29378u, 16u)], arg_0.x), 12534i, Struct_3(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], var_0, var_0), global1[_wgslsmith_index_u32(42267u, 16u)], Struct_1(u_input.a, false, vec2<i32>(29489i, 34248i), global3.x), false, u_input.a)))), 16u)]);
    let var_2 = _wgslsmith_f_op_f32(1199f - arg_0.x);
    return (firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(32442u, var_0, 4294967295u, global2[_wgslsmith_index_u32(0u, 11u)]), vec4<u32>(u_input.c, 90071u, var_0, u_input.b.x)), reverseBits(vec4<u32>(29557u, 1u, 15939u, u_input.c)), vec4<u32>(global2[_wgslsmith_index_u32(72221u, 11u)], 41124u, 1u, 1u))) ^ ~vec4<u32>(u_input.c, ~global2[_wgslsmith_index_u32(u_input.c, 11u)], var_0, 14491u)) | min(vec4<u32>(_wgslsmith_mult_u32(var_0, global2[_wgslsmith_index_u32(14526u, 11u)]), ~var_0, u_input.d.x, ~62817u) << (vec4<u32>(88050u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 11u)], 11u)], 1u ^ u_input.c, 25364u, _wgslsmith_sub_u32(0u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(~(~var_0), 4294967295u, ~(~50594u), var_0));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = !(!(!arg_0));
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 0u), vec2<u32>(u_input.d.x, 26778u)), 1u, true), 16u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(1u, 16u)], 372f)), _wgslsmith_f_op_f32(498f * -2568f), -377f, global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(30021u, 11u)], 16u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 11u)], 16u)], 1000f, global4[_wgslsmith_index_u32(0u, 16u)], 446f) + vec4<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43124u, 11u)], 16u)], -760f, 297f, 734f)))), abs(firstLeadingBit(firstLeadingBit(-7809i))), Struct_3(u_input.d, Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], 1u, 0u)), Struct_1(max(vec4<i32>(1i, 74100i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, global0.x, 2147483647i, 1i)), arg_0.x, vec2<i32>(2147483647i, u_input.a.x), arg_0.x), var_0.x, u_input.a)), false, vec4<u32>(select(global2[_wgslsmith_index_u32(4294967295u, 11u)] ^ func_2(Struct_4(1149f, vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], 588f, 1085f, 185f), -1i, Struct_3(u_input.d, global1[_wgslsmith_index_u32(11521u, 16u)], Struct_1(arg_1.a, arg_0.x, global0.xy, true), var_0.x, u_input.a))), 7104u, arg_1.d & any(vec4<bool>(false, arg_0.x, var_0.x, arg_1.b))), 4911u, 4294967295u, func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(u_input.d.x, 16u)], global4[_wgslsmith_index_u32(11364u, 16u)])))), _wgslsmith_dot_vec4_i32(arg_1.a, firstLeadingBit(vec4<i32>(-33966i, global0.x, 1i, arg_1.c.x))), select(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, false), vec2<bool>(false, true)), vec2<bool>(arg_0.x, global3.x), vec2<bool>(global3.x, arg_1.d))).x));
    let var_2 = min(-arg_1.a.x, var_1.a.d.e.x);
    var var_3 = _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, ~var_1.c.yzz), countOneBits(vec3<u32>(4294967295u, u_input.c, 26851u) | var_1.c.xzx)), var_1.c.xwy);
    var var_4 = -36146i;
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(countOneBits(abs(1i)), ~_wgslsmith_add_i32(-75194i >> ((0u >> (u_input.d.x % 32u)) % 32u), -u_input.a.x), -max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 0i), global0.x), abs(global0.x) ^ 1i), u_input.a.x);
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(125815u, 4324u, 27924u, 43915u) | ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 63964u, u_input.d.x, 0u), (vec4<u32>(50125u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], u_input.d.x, 111945u) | vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 11u)], 18004u, 1u, 4294967295u)) << (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 11u)]) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(29729u, abs(37639u)), abs(vec2<u32>(u_input.d.x, u_input.c) << (vec2<u32>(61171u, 54470u) % vec2<u32>(32u)))), u_input.c, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.d.x, 11u)], _wgslsmith_dot_vec4_u32(func_1(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 2052f, 644f, global4[_wgslsmith_index_u32(u_input.d.x, 16u)]), var_0.x | var_0.x, vec2<bool>(true, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 71807u, 1u, u_input.d.x), vec4<u32>(u_input.d.x, 18784u, 1u, global2[_wgslsmith_index_u32(2232u, 11u)]) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)], u_input.b.x, 71154u, global2[_wgslsmith_index_u32(44737u, 11u)])))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1700f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1127f)))) * 983f) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-453f, global4[_wgslsmith_index_u32(~abs(48562u), 16u)]));
    var_1 = ~vec4<u32>(55305u, global2[_wgslsmith_index_u32(var_1.x, 11u)], global2[_wgslsmith_index_u32(min(~31909u, global2[_wgslsmith_index_u32(32103u, 11u)]), 11u)], _wgslsmith_mod_u32(var_1.x << (1u % 32u), u_input.c));
    var var_3 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(func_3(vec4<bool>(global3.x, global3.x, global3.x, global3.x), Struct_1(vec4<i32>(-2147483647i, 1i, 34670i, 0i), true, vec2<i32>(0i, -15554i), global3.x)), 16u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, 1468f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 16u)], 2655f)))), 2147483647i, Struct_3(u_input.d, Struct_2(vec3<u32>(30567u, u_input.b.x, 41273u)), Struct_1(abs(vec4<i32>(u_input.a.x, -1i, 0i, 12018i)), select(global3.x, true, global3.x), countOneBits(vec2<i32>(2147483647i, u_input.a.x)), true), (u_input.a.x | 0i) == 2147483647i, _wgslsmith_mult_vec4_i32(reverseBits(u_input.a), u_input.a))), true, ~select(vec4<u32>(var_1.x, 1u, var_1.x, 0u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(56947u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], global2[_wgslsmith_index_u32(var_1.x, 11u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 11u)], 1u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.c, 0u), vec4<u32>(36512u, 1317u, var_1.x, u_input.c)), vec4<bool>(global3.x & global3.x, true & global3.x, true, global3.x | global3.x)));
    let var_4 = vec3<u32>(~_wgslsmith_dot_vec3_u32(var_3.a.d.b.a, ~(~var_3.c.wxx)), ~(~34544u ^ (0u & (24903u >> (var_1.x % 32u)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-441f, -718f, 336f, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(abs(var_1.x), 16u)], var_3.a.a)));
}

