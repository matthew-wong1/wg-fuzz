struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 5>;

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<bool, 23>;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_u32(select(~(~firstLeadingBit(vec2<u32>(global0.c, 10141u))), ~vec2<u32>(36617u, u_input.b.x ^ u_input.b.x), global1[_wgslsmith_index_u32(arg_0.x, 5u)]), vec2<u32>(global0.c, 7650u));
    let var_1 = Struct_4(Struct_1(global0.a.a), Struct_3(Struct_1(vec2<i32>(2147483647i, 2147483647i)), -1483f, u_input.b.x, global0.a), Struct_2(vec4<u32>(~u_input.b.x, 57431u, 1u, 65395u), Struct_1(_wgslsmith_clamp_vec2_i32(global0.a.a & global0.d.a, vec2<i32>(global0.d.a.x, u_input.a), -vec2<i32>(u_input.a, u_input.a)))), u_input.a);
    var var_2 = _wgslsmith_clamp_i32(~(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(18078i, var_1.c.b.a.x, -2147483647i), vec3<i32>(var_1.a.a.x, 2742i, 27027i)), select(vec3<i32>(u_input.a, 1i, 27288i), vec3<i32>(0i, -23989i, 1i), global3[_wgslsmith_index_u32(1u, 23u)]))), reverseBits(var_1.b.d.a.x), var_1.b.a.a.x);
    return global0.d;
}

fn func_1() -> Struct_1 {
    global4 = !(!vec2<bool>(select(true, 0u <= global0.c, any(vec4<bool>(false, global4.x, true, global1[_wgslsmith_index_u32(0u, 5u)]))), all(vec2<bool>(true, global1[_wgslsmith_index_u32(global0.c, 5u)]))));
    global4 = !(!vec2<bool>(_wgslsmith_f_op_f32(global0.b * global0.b) != _wgslsmith_f_op_f32(global0.b - global0.b), true));
    var var_0 = func_2(~vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(4294967295u, ~4294967295u)));
    var var_1 = Struct_3(global0.a, _wgslsmith_f_op_f32(floor(global0.b)), global0.c, global0.a);
    var var_2 = global0.c;
    return Struct_1(~(vec2<i32>(-1i, 1i) >> (vec2<u32>(u_input.b.x, 22342u) % vec2<u32>(32u))) & var_0.a);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = -1221f;
    var var_1 = min(_wgslsmith_add_u32(global0.c, ~(~countOneBits(u_input.b.x))), 4294967295u);
    let var_2 = _wgslsmith_dot_vec2_u32(~u_input.b.xz, ~(~u_input.b.xz));
    global2 = array<Struct_3, 13>();
    let var_3 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 90655u), (global0.c ^ ~31058u) ^ ~(~70171u), var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(~(var_2 << (var_2 % 32u)), ~4294967295u, select(~1u, ~0u, all(vec4<bool>(false, global4.x, false, false))), 1200u >> (~arg_1 % 32u)), vec4<u32>(var_2, var_2, _wgslsmith_mod_u32(global0.c, ~1u), (1u | u_input.b.x) | countOneBits(4294967295u))));
    return Struct_2(vec4<u32>(_wgslsmith_add_u32(abs(~arg_1), 0u), global0.c, firstLeadingBit(~_wgslsmith_clamp_u32(var_3.x, global0.c, 105166u)), _wgslsmith_clamp_u32(arg_0.c, _wgslsmith_sub_u32(41545u, arg_0.c) >> (_wgslsmith_add_u32(4294967295u, var_2) % 32u), ~u_input.b.x)), func_2(~vec2<u32>(1u, arg_0.c | 4294967295u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(4294967295u, func_3(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], _wgslsmith_mult_u32(arg_1.a.x, 1u), global0.b).a.x, 16356u);
    var var_1 = Struct_4(func_2(arg_1.a.yw), Struct_3(arg_0.b, _wgslsmith_f_op_f32(802f - _wgslsmith_div_f32(_wgslsmith_div_f32(162f, global0.b), 325f)), global0.c, Struct_1(arg_0.b.a)), func_3(Struct_3(Struct_1(func_3(global2[_wgslsmith_index_u32(arg_0.a.x, 13u)], 8497u, 525f).b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_add_u32(0u, arg_1.a.x), func_2(arg_1.a.xw)), ~_wgslsmith_dot_vec3_u32(countOneBits(arg_0.a.zwx), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), u_input.a);
    let var_2 = !vec4<bool>(true, any(!vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.a.x, 23u)], global4.x)), global3[_wgslsmith_index_u32(arg_1.a.x, 23u)], false);
    let var_3 = vec2<bool>(true, true);
    let var_4 = arg_0.a.xz;
    return Struct_1(reverseBits(max(~vec2<i32>(1i, var_1.c.b.a.x), -arg_1.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 23>();
    global2 = array<Struct_3, 13>();
    let var_0 = -countOneBits(_wgslsmith_clamp_i32(i32(-1i) * -global0.d.a.x, -global0.a.a.x, abs(u_input.a >> (4294967295u % 32u))));
    var var_1 = func_4(func_3(Struct_3(func_1(), _wgslsmith_f_op_f32(max(global0.b, global0.b)), ~27036u << (global0.c % 32u), global0.a), 64253u, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(1f * global0.b))), Struct_2(vec4<u32>(93188u, abs(u_input.b.x), _wgslsmith_mod_u32(global0.c, u_input.b.x), _wgslsmith_mult_u32(21767u, global0.c)) ^ abs(abs(vec4<u32>(1u, global0.c, 0u, u_input.b.x))), global0.a), global0.b);
    let var_2 = Struct_4(Struct_1(reverseBits(countOneBits(-var_1.a))), Struct_3(func_3(global2[_wgslsmith_index_u32(~(9157u << (u_input.b.x % 32u)), 13u)], 4294967295u, global0.b).b, _wgslsmith_f_op_f32(-global0.b), global0.c, func_4(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 74581u, global0.c), vec4<u32>(0u, 11330u, 38104u, 0u)), Struct_1(vec2<i32>(u_input.a, 2147483647i))), func_3(Struct_3(global0.d, 1008f, 0u, global0.d), firstLeadingBit(1256u), global0.b), _wgslsmith_f_op_f32(trunc(-962f)))), func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.b.x, u_input.b.x, 7655u), u_input.b), _wgslsmith_sub_vec3_u32(u_input.b, ~u_input.b)), 13u)], _wgslsmith_mod_u32(global0.c, ~4294967295u), _wgslsmith_f_op_f32(select(-407f, global0.b, (global0.b != 1321f) | true))), var_1.a.x);
    var var_3 = !any(!vec3<bool>(!global4.x, false | global3[_wgslsmith_index_u32(69781u, 23u)], any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.c.a.x, 5u)], global3[_wgslsmith_index_u32(2043u, 23u)], true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.a.a | var_2.c.b.a), max(~(~u_input.b.zy) ^ vec2<u32>(1u, 1u), (min(vec2<u32>(65988u, 64335u), vec2<u32>(var_2.b.c, u_input.b.x)) & vec2<u32>(u_input.b.x, var_2.b.c)) << (~countOneBits(vec2<u32>(0u, var_2.c.a.x)) % vec2<u32>(32u))), _wgslsmith_div_vec3_i32(abs(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.a.x, 1i, 61266i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, global0.d.a.x, 2147483647i), vec3<i32>(global0.a.a.x, -2147483647i, global0.a.a.x), vec3<i32>(global0.d.a.x, global0.d.a.x, 0i)))), select(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-34891i, 3947i, -59524i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0, var_0), vec3<i32>(var_2.d, var_2.c.b.a.x, 48109i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2106i, 1i, var_1.a.x), vec3<i32>(var_2.a.a.x, u_input.a, u_input.a)), !select(vec3<bool>(global4.x, global1[_wgslsmith_index_u32(27929u, 5u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global3[_wgslsmith_index_u32(4294967295u, 23u)]), global1[_wgslsmith_index_u32(global0.c, 5u)]))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 0u) | _wgslsmith_mod_vec2_u32(var_2.c.a.wx, u_input.b.xy), ~(~vec2<u32>(global0.c, 0u))));
}

