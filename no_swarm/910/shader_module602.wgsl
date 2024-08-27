struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<i32, 13>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, false, false, true, false, false, false, true, true, true, false, true, false, true, true, false, false, false, false, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~(reverseBits(64279u << (1u % 32u)) | u_input.a), 23u)];
    var var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(-(vec4<i32>(12354i, 17183i, 8587i, global0[_wgslsmith_index_u32(6943u, 13u)]) ^ vec4<i32>(-10802i, 0i, 1i, -20446i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(25515i, u_input.b.x, -2147483647i, u_input.b.x), -vec4<i32>(0i, arg_1.x, 1i, u_input.b.x)), abs(vec4<i32>(2147483647i, -87923i, global0[_wgslsmith_index_u32(u_input.a, 13u)], u_input.b.x)) >> (vec4<u32>(18015u, u_input.a, 6018u, u_input.a) % vec4<u32>(32u))), -abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_1.x, -2147483647i, arg_0.a.c, arg_1.x), vec4<i32>(arg_1.x, 7355i, global0[_wgslsmith_index_u32(arg_0.a.b.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), firstLeadingBit(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(arg_0.b.c, 13u)])))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.a.b.xz, _wgslsmith_clamp_vec2_u32(arg_0.a.b.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 25903u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.c, 0u), arg_0.a.b.yz)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1857u), ~vec2<u32>(0u, u_input.a)))), ~_wgslsmith_div_u32(41271u, ~11666u >> (1u % 32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), 2007f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, 2517f) - vec2<f32>(1232f, -136f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2250f, 1670f) - vec2<f32>(-595f, 587f)))))));
    global1 = array<bool, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-124f, 622f))))));
}

fn func_2() -> f32 {
    let var_0 = !vec4<bool>(global1[_wgslsmith_index_u32(~u_input.a >> (1u % 32u), 23u)], !(!global1[_wgslsmith_index_u32(u_input.a, 23u)]) & false, true, global1[_wgslsmith_index_u32(~64548u, 23u)]);
    var var_1 = ~(~(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 0u, 22643u) ^ vec4<u32>(1u, u_input.a, 41177u, 4294967295u))));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_2 = var_1.yw;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-782f + _wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(24564u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 1i), var_1.xxy, global0[_wgslsmith_index_u32(4294967295u, 13u)], 1u), Struct_1(var_0.yzx, false, var_1.x), u_input.b.yx & u_input.b.zx, reverseBits(vec3<i32>(9971i, -2147483647i, u_input.b.x))), vec2<i32>(-1i) * -u_input.b.zz))), _wgslsmith_f_op_f32(max(-279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1696f, -1588f))))))));
}

fn func_1() -> vec4<u32> {
    global0 = array<i32, 13>();
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, u_input.b.x, global0[_wgslsmith_index_u32(29138u, 13u)], -2147483647i) << (vec4<u32>(u_input.a, 1685u, 1u, 51418u) % vec4<u32>(32u))), vec4<i32>(2147483647i, ~1i, global0[_wgslsmith_index_u32(abs(4294967295u), 13u)], global0[_wgslsmith_index_u32(0u, 13u)] | global0[_wgslsmith_index_u32(4216u, 13u)])), firstLeadingBit(56063i | global0[_wgslsmith_index_u32(1u, 13u)]), -1i);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(744f * 1159f), -399f))))));
    var var_2 = Struct_4(~vec3<i32>(1i, countOneBits(var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), reverseBits(vec2<u32>(3603u, 36599u))), 13u)]), ~(~abs(~vec3<u32>(u_input.a, 41969u, u_input.a))), -firstLeadingBit(-1i), 22226u);
    global0 = array<i32, 13>();
    return ~max(~(~abs(vec4<u32>(0u, 0u, 4294967295u, 16624u))), vec4<u32>(~_wgslsmith_div_u32(var_2.d, var_2.d), ~_wgslsmith_add_u32(var_2.d, 36729u), abs(min(4294967295u, var_2.d)), 57232u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-309f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(201f, _wgslsmith_f_op_f32(f32(-1f) * -1286f))), 681f))));
    global0 = array<i32, 13>();
    let var_1 = vec4<bool>(!global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 23u)] || !(!global1[_wgslsmith_index_u32(u_input.a, 23u)]), true, global1[_wgslsmith_index_u32(~(~60727u), 23u)], global1[_wgslsmith_index_u32(1u, 23u)]);
    var var_2 = vec4<u32>(~4294967295u, abs(u_input.a & u_input.a), 1u, 21678u << (u_input.a % 32u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(35319u, u_input.a, u_input.a | u_input.a), 1u, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 1u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(37172u, u_input.a, u_input.a, 41476u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 50683u)), func_1()) % vec4<u32>(32u));
    global1 = array<bool, 23>();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1000f, -524f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(491f, 2040f, var_0, var_0), vec4<f32>(918f, var_0, var_0, -460f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1210f, var_0, -873f, -117f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(364f, 478f, var_0, 1567f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a));
}

