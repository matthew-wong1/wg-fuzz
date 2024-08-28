struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(1u, 1u, 0u, 4294967295u, 0u, 88980u, 4294967295u, 1u, 0u, 0u, 173173u, 1u, 1u, 1u, 1u);

var<private> global1: array<f32, 31> = array<f32, 31>(-508f, -2119f, 446f, 611f, -978f, 1060f, 1220f, 1143f, 294f, 1237f, 2029f, -1286f, -1056f, 400f, 359f, 281f, -645f, -1000f, 651f, 882f, 298f, 961f, -1444f, 311f, -867f, -783f, -1000f, 286f, 1157f, -1326f, -295f);

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = vec4<i32>(-36494i, -1i, u_input.b.x, 60809i);
    var var_1 = -332f;
    var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<u32, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c.x))), global1[_wgslsmith_index_u32(~abs(1u), 31u)]), vec3<f32>(arg_1.e.a, _wgslsmith_f_op_f32(f32(-1f) * -1543f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~59179u)), 31u)])));
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.e.b.x, 65256u, _wgslsmith_div_u32(18782u, 9433u)), firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 15u)], 4294967295u, 9628u)));
}

fn func_2() -> Struct_2 {
    var var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(34022u, 34118u), u_input.c, 1u), func_3(Struct_1(450f, vec3<u32>(1u, 1u, 1u)), Struct_2(vec2<f32>(-509f, global1[_wgslsmith_index_u32(0u, 31u)]), global1[_wgslsmith_index_u32(4294967295u, 31u)], vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41529u, 15u)], 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)]), global1[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_1(global1[_wgslsmith_index_u32(10495u, 31u)], vec3<u32>(u_input.a.x, 0u, u_input.c))))) ^ (~0u ^ ~(0u | u_input.a.x))) <= (1u >> ((~0u >> (global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(22314u, 15u)], u_input.c), 15u)] % 32u)) % 32u));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(56980u, 31u)], _wgslsmith_add_vec3_u32(~abs(vec3<u32>(38496u, 1u, global0[_wgslsmith_index_u32(65883u, 15u)])), vec3<u32>(~u_input.a.x, 21072u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 20735u, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 15u)] & 25785u))));
    var var_2 = Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], u_input.a.x, 57004u, 4294967295u), vec4<u32>(23315u, 0u, 4294967295u, global0[_wgslsmith_index_u32(1u, 15u)])), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(var_1.b.x, 15u)], var_1.b.x, u_input.c)), select(vec4<u32>(1u, 96478u, 7911u, var_1.b.x), vec4<u32>(u_input.a.x, 1u, var_1.b.x, 0u) ^ vec4<u32>(var_1.b.x, 0u, 56427u, global0[_wgslsmith_index_u32(1u, 15u)]), true)), 31u)], _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(13072u, 31u)])))))), var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1481f, -776f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-810f * var_1.a), 1f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 31u)], var_1.b), Struct_2(vec2<f32>(var_1.a, var_1.a), var_1.a, vec2<f32>(211f, -342f), -645f, var_1)).x) << ((~4294967295u | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(34280u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])) % 32u), 15u)], 31u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f + 237f)))), var_1);
    global1 = array<f32, 31>();
    let var_3 = vec4<u32>(~(~71338u), var_1.b.x & ~_wgslsmith_mod_u32(4294967295u, 1u), min(func_3(var_2.e, Struct_2(vec2<f32>(213f, var_2.c.x), -1000f, vec2<f32>(var_1.a, var_1.a), 1331f, var_1)).x, _wgslsmith_add_u32(var_1.b.x, var_1.b.x)) >> ((abs(21616u) ^ ~global0[_wgslsmith_index_u32(1u, 15u)]) % 32u), u_input.c) ^ vec4<u32>(~var_2.e.b.x, abs(_wgslsmith_mult_u32(var_2.e.b.x << (global0[_wgslsmith_index_u32(u_input.c, 15u)] % 32u), var_2.e.b.x)), 4294967295u, _wgslsmith_dot_vec2_u32(var_1.b.yz, _wgslsmith_sub_vec2_u32(var_1.b.yz, var_2.e.b.zx)));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-658f, var_2.e.a))))), 196f), 401f, vec2<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - var_1.a), global1[_wgslsmith_index_u32(var_3.x, 31u)]) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 31u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_2.e.b.x, 31u)], var_1.a)))), -703f, Struct_1(696f, _wgslsmith_mult_vec3_u32(var_1.b, ~(~vec3<u32>(var_1.b.x, 50440u, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global2 = reverseBits(1i);
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, _wgslsmith_f_op_f32(select(-977f, _wgslsmith_f_op_f32(arg_0.a * arg_1.c.x), false)))) + vec2<f32>(783f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d - var_0.d)))));
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(var_0.e.b.x, 4294967295u), _wgslsmith_div_u32(60672u << (0u % 32u), _wgslsmith_mod_u32(0u, arg_1.e.b.x)) ^ func_3(func_2().e, func_2()).x, select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.e.b.x, 4294967295u, 1u, 15566u), vec4<u32>(var_0.e.b.x, 4294967295u, arg_1.e.b.x, 0u), false), vec4<u32>(var_0.e.b.x, 64427u, var_0.e.b.x, 7630u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.b.yz, abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 4294967295u))), 15u)], true)), ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(52500u, var_0.e.b.x, var_0.e.b.x), var_0.e.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global2 = -u_input.b.x;
    let var_1 = u_input.a;
    global2 = _wgslsmith_mult_i32(-1i, -(-abs(u_input.b.x) ^ ((u_input.b.x & var_0) ^ var_0)));
    let var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_0 << (~(~0u) % 32u), ((var_0 ^ u_input.b.x) << (~27954u % 32u)) & ((-9197i & u_input.b.x) << (func_1(Struct_1(global1[_wgslsmith_index_u32(46803u, 31u)], vec3<u32>(42563u, 71592u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45165u, 15u)], 15u)])), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], 1626f), global1[_wgslsmith_index_u32(4294967295u, 31u)], vec2<f32>(global1[_wgslsmith_index_u32(1433u, 31u)], global1[_wgslsmith_index_u32(67796u, 31u)]), global1[_wgslsmith_index_u32(var_1.x, 31u)], Struct_1(global1[_wgslsmith_index_u32(1u, 31u)], vec3<u32>(var_1.x, 0u, global0[_wgslsmith_index_u32(4294967295u, 15u)])))) % 32u))), -21251i, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(41116u, u_input.c), 3725u, 1u, _wgslsmith_add_u32(var_2, 8824u)) ^ abs(countOneBits(vec4<u32>(var_1.x, u_input.a.x, var_1.x, 4755u))), countOneBits(vec4<u32>(var_1.x, ~0u, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))));
}

