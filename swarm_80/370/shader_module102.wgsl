struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<i32, 22> = array<i32, 22>(-3828i, 0i, 12054i, -50104i, 26149i, 61208i, -20650i, i32(-2147483648), 27795i, i32(-2147483648), -34539i, i32(-2147483648), 76502i, i32(-2147483648), i32(-2147483648), -7850i, 1i, 0i, -1i, -20678i, 1i, -7765i);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 31>;

var<private> global4: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = (!select(false, any(vec2<bool>(false, false)), true) && !(!any(vec4<bool>(false, true, false, true)))) || false;
    global2 = Struct_1(2704f);
    global4 = -1039f;
    var var_1 = vec4<bool>(var_0, var_0, var_0, !var_0);
    var var_2 = Struct_2(29050i, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(255f)))), global2.a))), firstLeadingBit(firstTrailingBit(~arg_1)) << ((~(~u_input.c) << (arg_1 % 32u)) % 32u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~49897u, 1u, u_input.c & 52089u, 4294967295u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 39529u, arg_1), vec4<u32>(37050u, arg_1, 71649u, arg_1)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 34215u), vec4<u32>(u_input.c, arg_1, 42107u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.c, countOneBits(arg_1), firstTrailingBit(4294967295u), 0u))), 31u)], Struct_1(global2.a));
    return Struct_1(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-var_2.d.a))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec4<i32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_f32(1452f + _wgslsmith_div_f32(-721f, 691f))))));
    global1 = array<i32, 22>();
    var var_0 = 2124f;
    let var_1 = Struct_2(_wgslsmith_div_i32(1i, -35217i), Struct_1(arg_0.x), u_input.c, func_2(~vec4<i32>(-10306i, 29750i, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(7024u, 5u)]) & vec4<i32>(19148i, -global0[_wgslsmith_index_u32(u_input.c, 5u)], reverseBits(u_input.b), u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, ~0u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 6894u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, u_input.c)))), Struct_1(func_2(~(vec4<i32>(-2147483647i, 0i, 1i, -1i) ^ vec4<i32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], 0i, -1i)), u_input.c).a));
    global1 = array<i32, 22>();
    return _wgslsmith_sub_vec4_i32(select(vec4<i32>(-u_input.b, 14856i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(29635u, 5u)], u_input.b), var_1.a) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1i, global0[_wgslsmith_index_u32(var_1.c, 5u)], var_1.a) >> (vec4<u32>(0u, 1u, 0u, 56438u) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, var_1.a, 2147483647i, -15867i))), select(vec4<i32>(22268i, 6066i, 21914i, 0i) | ~vec4<i32>(u_input.b, var_1.a, -8612i, u_input.a), vec4<i32>(-26704i, ~2147483647i, global1[_wgslsmith_index_u32(36684u, 22u)] | global0[_wgslsmith_index_u32(4294967295u, 5u)], -1i), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, false))), true), -(~(-vec4<i32>(global0[_wgslsmith_index_u32(var_1.c, 5u)], 0i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 22u)]) | vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], 1i, var_1.a, global0[_wgslsmith_index_u32(u_input.c, 5u)]))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    global0 = array<i32, 5>();
    let var_0 = Struct_1(arg_1.x);
    let var_1 = ~u_input.c;
    let var_2 = 1000f;
    let var_3 = Struct_2(-_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-20943i, u_input.b), -2920i)), func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-42860i ^ global0[_wgslsmith_index_u32(74188u, 5u)], -global0[_wgslsmith_index_u32(1u, 5u)], u_input.b, _wgslsmith_div_i32(-2147483647i, arg_0)), vec4<i32>(-1775i, abs(arg_0), -23012i, global1[_wgslsmith_index_u32(u_input.c, 22u)])), 23311u), min((var_1 ^ 25386u) ^ u_input.c, firstTrailingBit(var_1)) ^ u_input.c, func_2(-func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 1206f) + vec2<f32>(var_2, arg_1.x)), vec2<f32>(-348f, -814f)), abs(~4294967295u)), var_0);
    return firstLeadingBit(var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(firstTrailingBit(~4294967295u) ^ _wgslsmith_mod_u32(u_input.c, func_1(-global0[_wgslsmith_index_u32(u_input.c, 5u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(736f, -236f) + vec2<f32>(global2.a, global2.a)), ~u_input.a))), 22u)];
    var_0 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec4<u32>(58461u, 4294967295u, 1u, u_input.c)), u_input.a, global0[_wgslsmith_index_u32(u_input.c & u_input.c, 5u)], global0[_wgslsmith_index_u32(max(~(~firstLeadingBit(19162u)), ~(~u_input.c) << (~0u % 32u)), 5u)], 4294967295u);
}

