struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(227f, 1000f), vec2<f32>(-573f, 966f), vec2<f32>(227f, -719f), vec2<f32>(-1538f, -283f), vec2<f32>(-1454f, -1464f), vec2<f32>(-616f, 995f), vec2<f32>(-326f, -627f), vec2<f32>(1057f, -1000f), vec2<f32>(1019f, 901f), vec2<f32>(-407f, 1012f), vec2<f32>(-1028f, -1496f));

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec3<i32>(2147483647i, -50079i, 27919i)), Struct_3(vec3<i32>(-1i, 1i, 1948i)), Struct_3(vec3<i32>(-47577i, 1i, -29023i)), Struct_3(vec3<i32>(-18455i, 1i, 1i)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    global4 = array<Struct_3, 4>();
    global1 = array<vec3<f32>, 21>();
    global1 = array<vec3<f32>, 21>();
    let var_0 = Struct_2(vec3<u32>(firstLeadingBit(~_wgslsmith_mod_u32(arg_2.b, u_input.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.b, arg_2.b), ~(~vec4<u32>(u_input.d, u_input.b, u_input.c, 4294967295u))), u_input.d), u_input.d);
    global3 = arg_1;
    return _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(reverseBits(min(-1i, u_input.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(10575i, u_input.a, 154i, arg_0.x), vec4<i32>(u_input.a, 764i, 0i, 0i)), select(vec4<i32>(u_input.a, u_input.a, -16488i, arg_0.x), arg_0, vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 2u)], false, global0[_wgslsmith_index_u32(var_0.a.x, 2u)], true))) >> (arg_2.b % 32u), -2147483647i), abs(vec3<i32>(_wgslsmith_div_i32(abs(2147483647i), -2147483647i), _wgslsmith_mult_i32(-21268i, u_input.a), 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = all(select(select(vec2<bool>(!global0[_wgslsmith_index_u32(14725u, 2u)], true), select(vec2<bool>(false, global3.x), vec2<bool>(false, global3.x), true), any(!vec3<bool>(global3.x, false, arg_0.x))), vec2<bool>(79258i > u_input.a, global0[_wgslsmith_index_u32(~u_input.c, 2u)] | (-1i < u_input.a)), arg_0));
    let var_1 = ~(-vec3<i32>(-1856i, u_input.a, -u_input.a) << (abs(~reverseBits(vec3<u32>(u_input.b, u_input.c, 1u))) % vec3<u32>(32u)));
    var var_2 = abs(var_1.x);
    var var_3 = Struct_2(abs(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.d, 4294967295u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.b, 20583u, u_input.d), vec4<u32>(1u, u_input.b, u_input.c, 1u))), u_input.c)), u_input.c);
    var var_4 = Struct_2(_wgslsmith_sub_vec3_u32(var_3.a, vec3<u32>(~u_input.d, _wgslsmith_clamp_u32(max(var_3.b, var_3.a.x), var_3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, u_input.b, 4294967295u), var_3.a)), 1u)), abs(98377u));
    return -firstTrailingBit(vec4<i32>(-1i) * -abs(vec4<i32>(23979i, u_input.a, -21343i, 2147483647i)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global4 = array<Struct_3, 4>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(floor(1000f)), true)) - -449f));
    global0 = array<bool, 2>();
    var var_1 = firstTrailingBit(~(-func_3(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.b, 2u)]), global0[_wgslsmith_index_u32(4294967295u, 2u)]))));
    var_0 = Struct_1(-352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-var_0.b)));
    return Struct_2(~firstTrailingBit(~(~vec3<u32>(u_input.c, u_input.b, u_input.b))), u_input.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<u32> {
    global3 = select(!select(vec2<bool>(true, true), !(!vec2<bool>(global3.x, false)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.b, 2u)]), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false), vec2<bool>(global3.x, global0[_wgslsmith_index_u32(4294967295u, 2u)])), vec2<bool>(global3.x, true))), select(vec2<bool>(true, true), !select(select(vec2<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.d, 2u)]), vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(~11995u, 2u)]), !(!global3.x | all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global3.x, global3.x)))), -47105i >= max(_wgslsmith_mult_i32(5410i, arg_0.x) << (max(24064u, 8003u) % 32u), 2147483647i));
    let var_0 = select(true, all(select(!vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), !global3.x)), true) & global0[_wgslsmith_index_u32(func_2(Struct_1(1563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-867f + 1941f)))).a.x, 2u)];
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(186f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f - -195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1821f * -571f))))));
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-223f))) != 1000f, global3.x && !global3.x, global0[_wgslsmith_index_u32(~0u << ((~4294967295u << (var_1.a.x % 32u)) % 32u), 2u)]);
    return ~(_wgslsmith_mult_vec4_u32(arg_3, arg_3) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 1u, 14436u, 1u), arg_3 << (vec4<u32>(var_1.a.x, arg_2.a.x, var_1.b, var_1.a.x) % vec4<u32>(32u)), ~vec4<u32>(arg_3.x, var_1.a.x, 0u, arg_2.a.x)) ^ arg_3));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1612f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f - 1105f))))), arg_0);
    let var_1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(40568u, u_input.d, 1u, u_input.c)), vec4<u32>(func_2(Struct_1(933f, 1009f)).b, ~(u_input.b ^ 16294u), u_input.d, 87170u)) | reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(52713u, u_input.c, 20081u, 46762u), vec4<u32>(reverseBits(1u), ~u_input.b, ~21217u, 0u)));
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec3_u32(abs(var_1.wyz), ~var_1.wyz >> (~var_1.yyw % vec3<u32>(32u)))), var_1.x & abs(~1u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.b)), arg_0);
    return Struct_1(-1086f, _wgslsmith_f_op_f32(min(arg_0, -344f)));
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = -(~max(reverseBits(~vec2<i32>(u_input.a, 0i)), func_1(vec4<i32>(u_input.a, -2147483647i, u_input.a, -49189i), !vec2<bool>(true, global3.x), func_2(arg_0), select(false, global0[_wgslsmith_index_u32(52762u, 2u)], global3.x)).zz));
    let var_1 = global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~u_input.b, u_input.d)), 4u)];
    var var_2 = global4[_wgslsmith_index_u32(69545u, 4u)];
    let var_3 = Struct_3(var_1.a);
    let var_4 = arg_0;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_i32(~(-func_1(vec4<i32>(-2147483647i, u_input.a, 10552i, u_input.a), vec2<bool>(true, false), Struct_2(vec3<u32>(1u, u_input.c, u_input.d), u_input.c), false)), vec3<i32>(~u_input.a >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u), u_input.a, u_input.a)));
    let var_1 = 389f;
    global1 = array<vec3<f32>, 21>();
    global1 = array<vec3<f32>, 21>();
    global2 = array<vec2<f32>, 11>();
    let var_2 = true;
    let var_3 = var_0.a.x;
    let var_4 = func_6(func_5(var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(25u, u_input.c, 41191u, u_input.b) << (vec4<u32>(1u, 0u, u_input.d, u_input.c) % vec4<u32>(32u)), select(vec4<u32>(77554u, 42357u, 0u, 803u), vec4<u32>(u_input.b, 18432u, u_input.c, 37421u), vec4<bool>(var_2, false, global3.x, false))), func_4(max(vec2<i32>(23528i, var_3), vec2<i32>(var_0.a.x, 48468i)), vec2<i32>(26094i, u_input.a) >> (vec2<u32>(42377u, u_input.b) % vec2<u32>(32u)), func_2(Struct_1(1000f, 458f)), select(vec4<u32>(u_input.b, 5683u, u_input.b, 1u), vec4<u32>(4294967295u, u_input.b, 0u, u_input.c), vec4<bool>(true, var_2, false, var_2)))), vec3<bool>(!any(vec2<bool>(false, global3.x)), false, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(62488u, u_input.d, var_4, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_4, 24547u) | vec4<u32>(u_input.b, 1u, 4294967295u, var_4), vec4<u32>(u_input.b, 1u, 13260u, 93347u), vec4<u32>(18953u, 31114u, 35694u, 11234u))), vec4<u32>(~(~u_input.c), ~(~var_4), ~(~u_input.c), _wgslsmith_add_u32(u_input.c, ~u_input.d))));
}

