struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(0i, -12011i), vec2<i32>(2147483647i, 0i));

var<private> global1: i32 = -51841i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(642f, -476f) + vec2<f32>(-250f, 617f)) + _wgslsmith_div_vec2_f32(vec2<f32>(379f, 803f), vec2<f32>(1943f, -1515f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(583f, -985f)))))));
    global1 = 1i;
    var var_1 = ~u_input.a;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 2u)];
    let var_3 = Struct_1(_wgslsmith_mod_u32(~firstLeadingBit(~15900u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 0u, 28645u)), max(vec4<u32>(17463u, 56055u, 24284u, 2140u), vec4<u32>(0u, 1u, 90615u, 1u))), 1u)), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), true), !(!all(vec4<bool>(true, true, false, true))) != all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)));
    return var_3.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = Struct_1(0u, vec4<bool>(true, !arg_2, true, false), func_3());
    let var_1 = vec2<u32>(1u, 0u);
    global1 = _wgslsmith_mod_i32(u_input.a, -50899i << (var_1.x % 32u));
    let var_2 = ~(~(~select(vec3<u32>(0u, 4294967295u, var_1.x), vec3<u32>(var_1.x, 36742u, 4294967295u), vec3<bool>(true, false, false)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, 4294967295u), vec3<u32>(var_0.a, var_1.x, var_0.a), vec3<u32>(var_1.x, 50060u, 4294967295u)) % vec3<u32>(32u))));
    var var_3 = Struct_2(vec3<i32>(2147483647i, ~min(-u_input.a, ~0i), -(~(u_input.a << (var_1.x % 32u)))));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec2<u32> {
    global0 = array<vec2<i32>, 2>();
    let var_0 = Struct_2(vec3<i32>(1i, ~(-(~arg_0.x)), -u_input.a));
    var var_1 = arg_1;
    var var_2 = Struct_1(1u, !select(!arg_2, vec4<bool>(select(arg_2.x, arg_2.x, false), true, true, false), arg_2), arg_2.x);
    var var_3 = Struct_2(vec3<i32>(firstLeadingBit(-2147483647i ^ arg_1.b), arg_0.x << (_wgslsmith_sub_u32(var_2.a, var_2.a) % 32u), arg_3.x));
    return select(min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(var_2.a, 23547u)), abs(vec2<u32>(var_2.a, var_2.a))), ~(vec2<u32>(var_2.a, var_2.a) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(31659u, 1u), vec2<u32>(19814u, var_2.a), vec2<u32>(var_2.a, var_2.a))), !select(!var_2.b.wy, !vec2<bool>(arg_2.x, arg_2.x), arg_2.xz)) << (vec2<u32>(0u, var_2.a | 15990u) % vec2<u32>(32u));
}

fn func_1() -> u32 {
    global0 = array<vec2<i32>, 2>();
    var var_0 = ~(~1i) ^ u_input.a;
    global0 = array<vec2<i32>, 2>();
    var var_1 = _wgslsmith_mult_u32(abs(~55374u), select(countOneBits(1u) >> (1u % 32u), ~firstTrailingBit(max(124999u, 1938u)), u_input.a <= -2141i));
    let var_2 = func_4(~(vec4<i32>(u_input.a, reverseBits(u_input.a), 1i, _wgslsmith_mod_i32(u_input.a, u_input.a)) | -vec4<i32>(u_input.a, u_input.a, u_input.a, -14201i)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2314f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1578f, 805f, true)))), 2147483647i), vec4<bool>(false, any(vec2<bool>(true, true)), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(340f, -1000f), u_input.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1691f, 1000f, 1975f, 753f))), select(true, false, true))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -336f))), vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 19533i, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -18400i, u_input.a, u_input.a), vec4<i32>(4488i, -3398i, 1i, u_input.a), vec4<i32>(-14248i, u_input.a, u_input.a, 2147483647i))), reverseBits(8795i), 7229i));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, func_1() << ((14624u & _wgslsmith_mod_u32(firstTrailingBit(4294967295u), firstTrailingBit(1u))) % 32u), firstLeadingBit(_wgslsmith_mult_u32(1u, firstLeadingBit(~4294967295u))));
    global1 = ~u_input.a;
    global1 = ~u_input.a << ((var_0.x & _wgslsmith_clamp_u32(var_0.x, max(1u, var_0.x) << (~0u % 32u), _wgslsmith_add_u32(1u, var_0.x) >> (abs(var_0.x) % 32u))) % 32u);
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-280f, -1240f))) * _wgslsmith_div_vec2_f32(vec2<f32>(534f, 947f), vec2<f32>(-1000f, -538f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(944f * 805f), _wgslsmith_f_op_f32(sign(-227f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(min(864f, 1121f))))), _wgslsmith_mod_i32(~countOneBits(min(u_input.a, 33051i)), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_div_vec2_i32(vec2<i32>(-9065i, u_input.a), global0[_wgslsmith_index_u32(1u, 2u)]) | min(vec2<i32>(-24742i, u_input.a), global0[_wgslsmith_index_u32(19969u, 2u)]))));
    let var_2 = ~(~max(vec4<u32>(0u, 4294967295u, 4294967295u, var_0.x) | vec4<u32>(28697u, 38862u, 1u, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))) ^ abs(max(~vec4<u32>(var_0.x, 1u, 4294967295u, var_0.x), ~select(vec4<u32>(11709u, var_0.x, 0u, 0u), vec4<u32>(47498u, 4294967295u, 1u, 1u), true)));
    var var_3 = 2147483647i;
    let var_4 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))), -584f, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)))), var_1.a.x), abs(-var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_4.b, -2147483647i), select(var_4.b, -16439i, true)), _wgslsmith_mult_i32(abs(var_1.b), ~1i)), max(var_1.b, var_4.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1805f - var_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.a.x))))));
}

