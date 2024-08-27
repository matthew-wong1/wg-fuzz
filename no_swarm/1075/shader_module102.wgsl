struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(1i, -1i, i32(-2147483648), -70451i, -46172i, 0i, -667i, -1i, -1i, -9264i, -2802i, -5967i, 61794i, -28080i, 1i, -44720i, -7724i, 24742i, -16606i, 66500i, 15032i, -77646i, 1i);

var<private> global1: i32;

var<private> global2: u32 = 20695u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    global1 = 48116i >> (1u % 32u);
    var var_0 = Struct_3(!(!vec3<bool>(u_input.c.x < 1i, true, arg_3.x)));
    var_0 = Struct_3(select(!vec3<bool>(any(arg_1.a.xy), arg_1.a.x & var_0.a.x, true), arg_1.a, _wgslsmith_f_op_f32(select(-409f, _wgslsmith_f_op_f32(min(198f, 853f)), arg_1.a.x)) == -1046f));
    var var_1 = vec3<bool>(all(arg_1.a), select(~74953u != _wgslsmith_div_u32(~arg_0.x, arg_0.x), true, select(false, any(var_0.a) & true, max(arg_2, global0[_wgslsmith_index_u32(arg_0.x, 23u)]) < _wgslsmith_div_i32(2562i, -1i))), min(_wgslsmith_div_u32(4294967295u, arg_0.x), _wgslsmith_clamp_u32(arg_0.x, arg_0.x >> (1u % 32u), abs(arg_0.x))) > 69989u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-273f, -316f, arg_1.a.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -503f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(750f)) + 549f))), 668f, 1f);
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, arg_0.x), (arg_0.x << (arg_0.x % 32u)) << (0u % 32u)) | ~firstLeadingBit(1u), ~abs(~arg_0.x) | abs(abs(reverseBits(55910u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    global2 = ~1u;
    let var_0 = u_input.c.ywx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(998f - 2006f))))));
    let var_2 = Struct_1(!(!vec3<bool>(false, arg_1.x == 0i, any(arg_0.a))), var_0.x, vec4<i32>(1i, ~_wgslsmith_add_i32(i32(-1i) * -28097i, arg_1.x ^ 2147483647i), ~1i, -(-22350i << (1u % 32u))));
    global2 = ~(~(~(~24212u))) | func_3(vec3<u32>(~firstTrailingBit(4294967295u), 0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(20120u, 1u), _wgslsmith_div_u32(6301u, 2762u))), Struct_1(!(!arg_0.a), _wgslsmith_add_i32(-25773i << (1u % 32u), ~(-1i)), abs(vec4<i32>(arg_1.x, var_0.x, u_input.c.x, var_2.c.x))), -(~(-9855i)), arg_0.a);
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(~(~(~vec3<u32>(1u, 21488u, 22141u)))), ~firstTrailingBit(~reverseBits(vec3<u32>(796u, 8706u, 1u))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), max(-abs(global0[_wgslsmith_index_u32(69539u, 23u)]), -global0[_wgslsmith_index_u32(0u, 23u)] << (func_2(Struct_3(vec3<bool>(true, false, true)), vec4<i32>(0i, -18599i, u_input.c.x, 1i), true) % 32u)), select(u_input.c >> (~vec4<u32>(1u, 18152u, 17721u, 0u) % vec4<u32>(32u)), u_input.c, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1037f, 332f, 999f, -232f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, 220f, 676f, 2189f) + vec4<f32>(-712f, 922f, 1468f, 1475f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, 1503f, 168f, -915f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1177f, 1364f, -744f, -359f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = var_1.x;
    let var_4 = var_0.a;
    return Struct_1(vec3<bool>(var_4.a.x, true, all(vec4<bool>(true, all(vec4<bool>(var_4.a.x, false, false, false)), true, true))), ~(-36560i), var_0.a.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.c.zwx, vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(2147483647i, 31335i)), 40861i, select(1i, ~(-2147483647i), arg_1.a.a.x)), vec3<i32>(-firstLeadingBit(-global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_clamp_i32(1i, -1i, arg_2.x), 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -285f);
    global1 = -2147483647i;
    return Struct_3(select(!(!vec3<bool>(arg_1.a.a.x, arg_1.a.a.x, false)), select(vec3<bool>(arg_1.a.a.x, true, !arg_1.a.a.x), arg_1.a.a, 3931u <= (arg_0.x >> (arg_0.x % 32u))), !(!arg_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true)))), abs(abs(abs(vec3<u32>(10287u, 0u, 1u))))), Struct_2(func_1()), ~(~countOneBits(u_input.c << (vec4<u32>(2363u, 72767u, 398u, 0u) % vec4<u32>(32u)))));
    var var_1 = Struct_2(func_1());
    global0 = array<i32, 23>();
    var var_2 = _wgslsmith_div_vec4_i32(-func_1().c, reverseBits(var_1.a.c));
    var var_3 = !vec4<bool>(var_0.a.x, true, any(!(!vec3<bool>(var_0.a.x, false, false))), true);
    var_2 = _wgslsmith_div_vec4_i32(max(u_input.c, var_1.a.c), abs((~vec4<i32>(var_2.x, 2147483647i, -2147483647i, -5001i) >> (firstLeadingBit(vec4<u32>(0u, 4294967295u, 204146u, 88596u)) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_4 = Struct_2(var_1.a);
    global1 = -37730i;
    var_1 = Struct_2(Struct_1(var_1.a.a, 2147483647i, vec4<i32>(-1i) * -(~vec4<i32>(u_input.b.x, var_2.x, -32323i, global0[_wgslsmith_index_u32(4294967295u, 23u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(-1i), i32(-1i) * -31945i, u_input.b.x), var_4.a.c.xxz ^ max(min(vec3<i32>(u_input.b.x, -2147483647i, -13988i), select(vec3<i32>(var_4.a.b, global0[_wgslsmith_index_u32(4294967295u, 23u)], var_1.a.b), vec3<i32>(u_input.a, -12222i, 22102i), false)), abs(vec3<i32>(13495i, var_1.a.c.x, u_input.a) << (vec3<u32>(4294967295u, 0u, 7683u) % vec3<u32>(32u)))), min(abs(~42171u), ~(~4672u)) | max(~func_2(Struct_3(var_3.wwz), vec4<i32>(-1936i, var_4.a.b, global0[_wgslsmith_index_u32(4294967295u, 23u)], 50740i), false), 1u), ~(~(~abs(42424u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1218f), -1933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1002f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1122f)), -1653f)));
}

