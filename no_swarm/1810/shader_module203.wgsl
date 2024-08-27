struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, false, true, false, false, true, false, true, true, false, false, false, true, true, true, true, false, true, false, true, true, false, true, false, false, true, true, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1984f - _wgslsmith_f_op_f32(sign(arg_0.x))))) + arg_0.x);
    var var_1 = 4108f;
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_add_i32(-u_input.a, u_input.a), u_input.a >> (4294967295u % 32u), _wgslsmith_clamp_i32(abs(0i), u_input.a, _wgslsmith_mult_i32(35578i, u_input.a))), firstLeadingBit(vec4<i32>(u_input.a & u_input.a, _wgslsmith_clamp_i32(0i, 27604i, u_input.a), u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)) ^ vec4<i32>(u_input.a, firstLeadingBit(11359i), 0i, ~1i)), abs(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, 9885i, u_input.a, u_input.a)) ^ select(vec4<i32>(u_input.a, 1i, -14289i, 5982i), vec4<i32>(u_input.a, -32372i, u_input.a, u_input.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(47465u, 30u)], global0[_wgslsmith_index_u32(43452u, 30u)])), ~vec4<i32>(u_input.a, 2736i, u_input.a, -1i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(arg_1.yz, vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, 148f)), _wgslsmith_f_op_f32(arg_1.x * arg_0))))), _wgslsmith_f_op_f32(-1706f + 1975f));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> bool {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f + 1875f) - _wgslsmith_f_op_f32(616f + -1378f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-173f + -2249f), 561f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(218f, -306f, -517f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-118f, -1101f, 714f), vec3<f32>(-398f, -313f, -172f)))))) * vec3<f32>(1f, 1f, 1f)));
    let var_1 = func_2(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, var_0.a, -663f))))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(131f * 393f), var_0.a))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(193f, -1328f, var_0.a)))))))));
    return global0[_wgslsmith_index_u32(firstTrailingBit(41540u), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xxy, ~u_input.b.zzx ^ (u_input.b.yww & u_input.b.zxz)), _wgslsmith_clamp_vec3_u32(select(u_input.b.wzy, u_input.b.yyw, vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(29182u, 30u)], true)) & vec3<u32>(60858u, u_input.b.x, u_input.b.x), u_input.b.xwy, ~u_input.b.zzx ^ ~u_input.b.wxy)), u_input.b.x);
    var var_1 = false;
    let var_2 = Struct_4(vec3<bool>(func_1(vec3<u32>(u_input.b.x, u_input.b.x >> (4294967295u % 32u), select(72719u, 21749u, global0[_wgslsmith_index_u32(1u, 30u)])), vec4<i32>(-u_input.a, countOneBits(u_input.a), u_input.a, -22922i)), false, all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], false, true, true), !vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(58943u, 30u)]), !global0[_wgslsmith_index_u32(4294967295u, 30u)]))), Struct_3(vec2<f32>(627f, -2567f), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 65245u, 0u), u_input.b) << (~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 17413u) % vec4<u32>(32u))), select(~select(u_input.b, u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(62471u, 30u)], false, global0[_wgslsmith_index_u32(4294967295u, 30u)])), u_input.b ^ u_input.b, !select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], false, global0[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], true, false, true), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), 1733f), vec2<u32>(max(firstTrailingBit(83686u), ~4294967295u), _wgslsmith_sub_u32(4294967295u >> (u_input.b.x % 32u), u_input.b.x & 4294967295u)) ^ min(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 13197u), vec2<u32>(54877u, u_input.b.x))), ~vec2<u32>(u_input.b.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1711f + -1957f)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(282f)))));
    var var_3 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_2.b.b.x, 1u, 12352u), ~_wgslsmith_sub_vec3_u32(var_2.b.c.wzy, var_2.b.c.xww << (vec3<u32>(u_input.b.x, var_2.c.x, 4294967295u) % vec3<u32>(32u)))), var_2.c.x);
    var_3 = reverseBits(vec3<u32>(u_input.b.x, ~_wgslsmith_mult_u32(4294967295u, var_3.x), _wgslsmith_add_u32(u_input.b.x, ~var_2.b.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.x, -596f, 678f, var_2.b.a.x)), vec4<f32>(392f, var_2.b.d, _wgslsmith_f_op_f32(max(var_2.d, var_2.b.a.x)), _wgslsmith_f_op_f32(-var_2.b.d)))))));
    global0 = array<bool, 30>();
    let var_5 = var_2.b;
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_4 - _wgslsmith_f_op_vec4_f32(var_4 * vec4<f32>(1654f, var_2.b.a.x, var_5.d, var_4.x))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1024f), 503f, var_4.x, var_4.x), vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(min(var_2.b.d, -1640f)), _wgslsmith_f_op_f32(step(257f, -598f)), -1376f), vec4<bool>(true, global0[_wgslsmith_index_u32(var_5.c.x, 30u)] == false, -18399i < u_input.a, any(vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.b.x, var_5.b.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, ~var_2.b.b.x), ~4294967295u)));
}

