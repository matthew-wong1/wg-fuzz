struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 773f;

var<private> global1: array<i32, 22> = array<i32, 22>(0i, -33194i, -1i, -48211i, 2147483647i, 2147483647i, 20657i, -45541i, 17456i, 15176i, -13490i, 19362i, -35145i, 25926i, -1i, -9852i, i32(-2147483648), -77643i, -68356i, -19622i, 0i, -1i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = ~(reverseBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, 35407u, 18288u), 37924u)) >> (u_input.c % 32u));
    let var_1 = _wgslsmith_sub_u32(var_0, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.c, 0u), 39297u) << (~var_0 % 32u)) << (u_input.c % 32u);
    var var_2 = countOneBits(vec4<i32>(-(-8651i >> (u_input.b.x % 32u)), global1[_wgslsmith_index_u32(4294967295u | ~var_0, 22u)], -(6346i & global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), abs(u_input.a)) & vec4<i32>(-41848i >> (1u % 32u), global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_div_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a), max(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), global1[_wgslsmith_index_u32(~(~44557u), 22u)]));
    var_2 = -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(select(2147483647i, var_2.x, false), global1[_wgslsmith_index_u32(1u, 22u)], -1i, 1i), vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(var_1, 22u)], u_input.a) ^ vec4<i32>(-44341i, u_input.a, -56817i, 2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(559f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(254f))))));
    return var_3;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(u_input.c, -102f, -227f, any(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !any(vec2<bool>(false, true)), ~82499u >= ~u_input.c)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 236f, 303f);
    var var_2 = true;
    var var_3 = Struct_1(~44329u, _wgslsmith_f_op_f32(func_3()), var_1.x, true);
    let var_4 = vec2<bool>(false, true);
    return ~(~(~u_input.b.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = min(u_input.b, u_input.b);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(~(~u_input.b.x), 1u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(11564u, 0u)), vec2<u32>(u_input.c, u_input.b.x))), 1u | abs(func_2()));
    var_1 = arg_1.a;
    var_1 = ~4294967295u;
    var var_2 = Struct_1(_wgslsmith_add_u32(1u, 121302u), _wgslsmith_f_op_f32(abs(-1412f)), _wgslsmith_f_op_f32(step(-1706f, -1270f)), true);
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 22>();
    let var_0 = func_1(u_input.a, Struct_1(arg_2.a, 898f, _wgslsmith_f_op_f32(step(1070f, arg_1)), func_1(31335i << (countOneBits(1u) % 32u), arg_2).d));
    global1 = array<i32, 22>();
    let var_1 = vec2<u32>(reverseBits(4294967295u), 4294967295u);
    let var_2 = vec3<bool>(true, arg_2.d, !var_0.d);
    return func_1(-18008i, func_1(~2147483647i, func_1(~(~global1[_wgslsmith_index_u32(87967u, 22u)]), func_1(u_input.a, Struct_1(32435u, arg_1, -242f, arg_2.d)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = ~firstTrailingBit(-50725i << (~(arg_2.a << (4294967295u % 32u)) % 32u));
    let var_1 = firstLeadingBit(arg_1.x) == ~(~0u);
    global1 = array<i32, 22>();
    var var_2 = arg_0;
    let var_3 = func_1(firstLeadingBit((i32(-1i) * -2147483647i) | _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, global1[_wgslsmith_index_u32(arg_3, 22u)]), global1[_wgslsmith_index_u32(44681u, 22u)] ^ u_input.a)), Struct_1(_wgslsmith_mult_u32(29465u, arg_3) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 1u, arg_1.x), vec3<u32>(u_input.b.x, 7705u, arg_2.a)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.c)), arg_0.c, !(!arg_0.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1237f + var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, -1517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(-649f, 1951f, func_1(1i, Struct_1(u_input.b.x, -660f, 113f, true))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 9275u), vec2<u32>(22380u, u_input.c)), func_1(1i, func_1(-47426i, Struct_1(u_input.b.x, 1551f, 1321f, true))), u_input.c << (~9680u % 32u))) * 540f), select(false, true, false));
    global0 = _wgslsmith_f_op_f32(trunc(-1113f));
    var var_1 = vec2<bool>(!(!var_0.d), all(vec2<bool>(true, 1u == select(u_input.b.x, 0u, true))));
    let var_2 = -52707i;
    let var_3 = !(!vec3<bool>(any(vec2<bool>(var_1.x, true)), !any(vec3<bool>(var_0.d, true, var_1.x)), false));
    let var_4 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1041f), var_0.c, func_1(0i, func_1(u_input.a, Struct_1(_wgslsmith_add_u32(u_input.c, 0u), -619f, var_0.c, all(vec2<bool>(var_1.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(16586u, abs(func_1(var_2 << (u_input.b.x % 32u), func_1(-1i, var_4)).a), 4294967295u, 0u), var_0.c, abs(global1[_wgslsmith_index_u32(var_4.a, 22u)]));
}

