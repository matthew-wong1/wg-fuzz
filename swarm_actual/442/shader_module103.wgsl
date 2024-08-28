struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(i32(-2147483648), -75375i, -14415i, -7226i, 11669i, 1i, 12612i, i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_add_vec3_i32(-arg_0.a, (arg_0.a ^ arg_3.c.yyw) & arg_3.c.wwz), _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0.c, 1u), ~(~arg_0.c)), arg_0.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3.d, 15456u), select(8410u | u_input.b.x, 39160u, arg_2 | true)), arg_3.a.x >> (0u % 32u)), ~select(vec2<u32>(arg_3.d, _wgslsmith_clamp_u32(50380u, arg_3.d, arg_0.b)), u_input.b.xy, select(vec2<bool>(arg_2, arg_3.b), vec2<bool>(true, arg_2), false)), max(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_3.a, vec4<u32>(arg_0.d, arg_0.e, 82304u, u_input.b.x)), ~arg_3.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_3.d), u_input.d), firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, 1u)), ~arg_0.b), arg_3.a));
    var var_1 = Struct_3(Struct_2(reverseBits(abs(vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.d, 12u)], -2147483647i, var_0.a.a.x))), _wgslsmith_mod_u32(arg_0.c, 1174u), (~32853u >> (1u % 32u)) << (1u % 32u), firstTrailingBit(~u_input.d.x << (0u % 32u)), 1u), _wgslsmith_div_vec2_u32(vec2<u32>(9940u, u_input.d.x), vec2<u32>(~_wgslsmith_sub_u32(60898u, u_input.d.x), arg_3.d)), _wgslsmith_sub_vec4_u32(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.x, 1u, 0u, var_0.a.d), var_0.c))), vec4<u32>(var_0.b.x, _wgslsmith_mod_u32(~arg_3.d, ~arg_3.d), ~_wgslsmith_add_u32(110804u, arg_0.e), arg_3.d)));
    let var_2 = arg_3.a.x;
    var var_3 = Struct_2(vec3<i32>(arg_0.a.x, arg_0.a.x, _wgslsmith_div_i32(-30432i, ~select(-90275i, 0i, true))), 1u, arg_0.d, 41486u, firstLeadingBit(~_wgslsmith_add_u32(var_2, 4294967295u) | _wgslsmith_div_u32(~4294967295u, arg_3.d)));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1305f, 941f, -1079f, 149f) + vec4<f32>(-1034f, -810f, -613f, -264f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(850f, -563f, 377f, 359f), vec4<f32>(-437f, -130f, 122f, -1000f), true)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-903f)), -490f, _wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(min(-521f, -325f)))))));
    return var_1.a.a.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_0.a.x), -countOneBits(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(var_2, 12u)]) ^ vec2<i32>(-1i, arg_3.c.x)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(countOneBits(~(~(vec4<u32>(u_input.b.x, 1u, u_input.d.x, 61666u) << (vec4<u32>(u_input.a, u_input.d.x, u_input.b.x, 0u) % vec4<u32>(32u))))), true, vec4<i32>(abs(func_3(Struct_2(u_input.c.yyz, 0u, u_input.d.x, u_input.b.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 12u)], -6787i, 834i), u_input.c), true, Struct_1(vec4<u32>(0u, 0u, 18567u, 4294967295u), true, u_input.c, u_input.a))), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 7550u), 12u)], -firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 12u)])), u_input.c.x, u_input.c.x), u_input.d.x);
    return vec4<bool>(true, var_0.b, all(!select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(true, true, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b))) || any(!select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), false)), !var_0.b);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!any(func_2()), select(arg_1.x & 0u, u_input.b.x, true) > 1u, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), vec3<bool>(false, any(!func_2().yy), all(vec3<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false)), true))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_1 = true;
    let var_2 = Struct_1(~max(min(vec4<u32>(0u, arg_1.x, arg_1.x, 34237u), vec4<u32>(arg_1.x, 21723u, 30877u, 1u)) | countOneBits(vec4<u32>(20351u, arg_1.x, u_input.a, arg_1.x)), vec4<u32>(~arg_1.x, max(122231u, 59621u), ~0u, arg_1.x)), false, vec4<i32>(u_input.c.x, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x), u_input.c) << (~0u % 32u)) << (_wgslsmith_div_u32(abs(61231u), arg_1.x) % 32u), -2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 18320u, u_input.b.x), u_input.b))), 12u)]), ~(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, arg_1.x)), vec2<u32>(arg_1.x, 0u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(vec3<i32>(-2147483647i, reverseBits(1i), _wgslsmith_clamp_i32(47233i, u_input.c.x, 24280i)) << (reverseBits(~vec3<u32>(1u, 4294967295u, u_input.a)) % vec3<u32>(32u)), u_input.b);
    let var_1 = var_0.x;
    global0 = array<i32, 12>();
    var var_2 = ~(-_wgslsmith_dot_vec3_i32(-u_input.c.zzy, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 12u)], 2147483647i)));
    let var_3 = ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(_wgslsmith_sub_u32(49680u, u_input.b.x) | 21666u), u_input.a), 12u)];
    global0 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)) | max(~select(u_input.b, vec3<u32>(u_input.b.x, 94328u, 1u), vec3<bool>(var_0.x, var_0.x, var_0.x)), ~(u_input.b | vec3<u32>(0u, u_input.a, u_input.d.x))));
}

