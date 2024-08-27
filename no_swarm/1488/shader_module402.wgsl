struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(29833i, -1i, -19356i, -1i, 36021i, 21610i, 1i, -8566i, 2147483647i, 0i);

var<private> global1: array<i32, 13> = array<i32, 13>(2379i, 16087i, -1i, 1i, -15546i, -1i, -11627i, -32667i, -1i, -52789i, -1i, -32309i, i32(-2147483648));

var<private> global2: array<vec3<u32>, 16>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    global1 = array<i32, 13>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(u_input.c), vec2<u32>(u_input.a, ~0u) & ~countOneBits(vec2<u32>(4294967295u, 4232u)), vec2<u32>(4294967295u, u_input.a << (3210u % 32u))), firstTrailingBit(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-8695i, global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b.x), vec3<i32>(15241i, global1[_wgslsmith_index_u32(101697u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]) & vec3<i32>(0i, 10784i, global0[_wgslsmith_index_u32(arg_1, 10u)]))), _wgslsmith_mod_u32(~u_input.a, ~countOneBits(66188u)), vec2<u32>(4294967295u, _wgslsmith_add_u32(firstTrailingBit(~arg_1), ~(~0u))));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1939f * _wgslsmith_f_op_f32(max(-994f, 235f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(360f * 110f), -477f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(539f)) + _wgslsmith_f_op_f32(max(731f, -829f)))))), Struct_1(max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(227u, 41197u), u_input.c, ~var_0.d), select(vec2<u32>(26361u, var_0.a.x), var_0.a, vec2<bool>(true, true))), i32(-1i) * -(2147483647i << (var_0.c % 32u)), u_input.c.x, (vec2<u32>(0u, var_0.c) >> (vec2<u32>(11600u, var_0.c) % vec2<u32>(32u))) | ~(~u_input.c)));
    let var_2 = select(vec2<bool>(true, true), select(!vec2<bool>(398f < var_1.a, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true && all(vec4<bool>(false, false, false, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(true, false, false)), vec2<bool>(true, true)));
    let var_3 = var_1.b;
    return var_1.b.c;
}

fn func_2() -> Struct_2 {
    global1 = array<i32, 13>();
    var var_0 = Struct_1(u_input.c, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), 54693u, vec2<u32>(u_input.a, 4294967295u));
    var var_1 = Struct_2(-1662f, Struct_1(vec2<u32>(~func_3(26395i, 4294967295u), var_0.c), abs(global0[_wgslsmith_index_u32(46665u, 10u)]), var_0.d.x, select(vec2<u32>(~4294967295u, u_input.c.x), ~vec2<u32>(54220u, 0u), select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-882f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_f32(-626f, 804f)))), var_1.a)));
    let var_3 = 4294967295u;
    return Struct_2(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), true && any(vec3<bool>(false, true, true)))), var_1.b);
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = u_input.b.x;
    global1 = array<i32, 13>();
    var var_2 = -(~vec3<i32>(abs(u_input.b.x), global1[_wgslsmith_index_u32(abs(var_0.b.a.x), 13u)], -1i) & vec3<i32>(select(var_0.b.b, var_0.b.b, true) << (~7841u % 32u), firstTrailingBit(22400i), arg_0));
    var_0 = func_2();
    return !vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * 508f))) >= _wgslsmith_f_op_f32(select(-755f, var_0.a, true)), any(vec2<bool>(true, true)), firstTrailingBit(arg_0 ^ u_input.b.x) < -2147483647i, !(!(arg_0 == 2147483647i)));
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_1(~_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 79882u), vec2<u32>(u_input.a, u_input.c.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c.x) ^ vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c.x, 0u) | u_input.c)), abs(u_input.b.x), u_input.c.x & u_input.a, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c), ~u_input.c.x) << (u_input.a % 32u), u_input.a));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(~u_input.b.x, -1i), -4161i, global1[_wgslsmith_index_u32(43503u, 13u)]);
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    var var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c, u_input.a, u_input.a, var_0.c), ~vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 47442u, u_input.a, 24867u), vec4<u32>(var_0.d.x, u_input.c.x, u_input.a, var_0.c), vec4<u32>(var_0.c, 1u, 4294967295u, var_0.c)), abs(vec4<u32>(u_input.c.x, 90694u, 8715u, 27264u)), ~vec4<u32>(var_0.a.x, 35242u, u_input.c.x, u_input.a)) & firstTrailingBit(vec4<u32>(16218u, var_0.c, 75938u, var_0.a.x) >> (vec4<u32>(0u, 39978u, 1u, u_input.c.x) % vec4<u32>(32u))), countOneBits(abs(~vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, u_input.a)))), ~(~min(vec4<u32>(var_0.d.x, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(var_0.d.x, u_input.c.x, 107111u, u_input.c.x))) & ~vec4<u32>(1u, 4294967295u, ~2471u, reverseBits(var_0.c)));
    return StorageBuffer(~_wgslsmith_mod_vec3_i32(var_1, vec3<i32>(-var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1949i, -2147483647i, -3186i, 2143i), vec4<i32>(global1[_wgslsmith_index_u32(var_0.c, 13u)], 2147483647i, 6334i, var_1.x)), ~(-53370i))), ~(~global2[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1760f - -747f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u << (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(~4294967295u, 66271u, ~u_input.c.x)), select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 76709u), 16u)], global2[_wgslsmith_index_u32(~u_input.c.x >> (_wgslsmith_mult_u32(u_input.c.x, 4294967295u) % 32u), 16u)], true)) % 32u);
    var var_1 = _wgslsmith_div_f32(1000f, 757f);
    global0 = array<i32, 10>();
    var var_2 = ~3336u;
    global0 = array<i32, 10>();
    let x = u_input.a;
    s_output = func_4(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, var_0), 10u)]));
}

