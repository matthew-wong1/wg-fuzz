struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(var_0.x, !(!(8952u <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), u_input.b))), all(select(vec3<bool>(true, true, all(var_0.yy)), !vec3<bool>(true, var_0.x, false), select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x), true), select(var_0.x, false, var_0.x)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-876f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-451f, _wgslsmith_f_op_f32(max(1000f, 327f))))))), ~u_input.b.wy, ~max(u_input.a, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, u_input.a.x, u_input.a.x), select(vec3<i32>(-2147483647i, -2147483647i, -14986i), vec3<i32>(1i, u_input.c, u_input.a.x), vec3<bool>(var_0.x, true, var_0.x)))));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, var_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) * vec2<f32>(var_1.a, var_1.a))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), -838f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1844f), -530f)))));
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, var_0.a, -1254f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1489f)), !func_3()));
    var var_2 = vec4<u32>(32917u, 21241u, _wgslsmith_sub_u32(countOneBits(var_0.b.x) << (_wgslsmith_mult_u32(~u_input.d.x, firstTrailingBit(u_input.b.x)) % 32u), 99647u), 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(arg_2.a + -1967f), _wgslsmith_f_op_f32(min(-1314f, 1802f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(103f, -1301f, var_0.a) * vec3<f32>(var_1.x, var_1.x, var_0.a)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1577f, 2314f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2405f, var_0.a, var_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, var_0.a, var_0.a))))), vec3<f32>(2287f, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 567f))), arg_1.x));
    var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -841f) - _wgslsmith_f_op_f32(-var_3.x)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f))))));
    return _wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, ~select(1u, select(arg_2.b.x, 31506u, true), all(vec2<bool>(arg_1.x, true)))) | 1u;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -966f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2299f + 1397f))))));
    return u_input.c >> (~min(func_2(-vec2<i32>(u_input.c, u_input.c), vec2<bool>(false, true), Struct_1(-264f, u_input.d.xy, u_input.a), _wgslsmith_mult_u32(u_input.d.x, 14952u)), 51980u) % 32u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-268f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(902f))))), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b << (vec4<u32>(1u, 39517u, u_input.b.x, 23988u) % vec4<u32>(32u))), ~_wgslsmith_add_u32(u_input.d.x, 24173u) | u_input.d.x), vec3<i32>(_wgslsmith_div_i32(arg_2, abs(1i)), -38473i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-10835i, arg_2, arg_2), ~(u_input.a >> (u_input.d % vec3<u32>(32u))))));
    var_0 = Struct_1(-731f, abs(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, ~var_0.b.x), 0u)), reverseBits(firstTrailingBit(~countOneBits(vec3<i32>(-1i, u_input.a.x, arg_2)))));
    var_0 = Struct_1(-144f, u_input.d.zz, vec3<i32>(firstLeadingBit(arg_1.x), max(2147483647i << (var_0.b.x % 32u), 1i) | (i32(-1i) * -u_input.a.x), _wgslsmith_add_i32(-var_0.c.x & countOneBits(-1i), 1i)));
    let var_1 = _wgslsmith_sub_u32(u_input.d.x, ~u_input.b.x);
    let var_2 = ~(~select(firstTrailingBit(var_0.b), ~vec2<u32>(var_1, 4294967295u), !arg_0));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.d.x >> (1u % 32u));
    let var_1 = firstTrailingBit(~(~65133i << (~var_0 % 32u)));
    let var_2 = vec2<u32>(33349u, func_4(vec2<bool>(!select(true, true, false), true), _wgslsmith_clamp_vec2_i32(firstTrailingBit(-u_input.a.yz), u_input.a.xz, ~abs(u_input.a.yy)), func_1() | -2147483647i));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(select(~countOneBits(u_input.d.x), ~(~var_2.x), reverseBits(var_1) == 1i), 22958u), _wgslsmith_add_vec2_u32(~(~(u_input.b.yz >> (u_input.d.zy % vec2<u32>(32u)))), ~var_2));
    let var_4 = Struct_1(1244f, var_2, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2883i, u_input.a.x, reverseBits(19000i)), vec3<i32>(abs(-1i), reverseBits(u_input.c), u_input.a.x)), ~countOneBits(5468i), 0i));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(floor(var_4.a)), var_3, ~(~u_input.a) << (~vec3<u32>(1u, ~var_0, 4294967295u | u_input.d.x) % vec3<u32>(32u)));
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(abs(u_input.b.x), reverseBits(u_input.b.x)), _wgslsmith_div_u32(63567u, ~var_3.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(var_4.b.x, var_0 << (47099u % 32u)))));
}

