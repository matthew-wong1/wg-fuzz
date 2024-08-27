struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, false, false, false, true, true, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), -1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1271f)) - arg_3.x)));
    let var_1 = 1000f;
    global0 = array<bool, 10>();
    var var_2 = var_0.x;
    var var_3 = 0i & _wgslsmith_sub_i32(arg_0.x, reverseBits(u_input.b.x));
    return !global0[_wgslsmith_index_u32(~arg_1, 10u)];
}

fn func_2() -> u32 {
    var var_0 = Struct_3(~(~(~min(vec4<u32>(u_input.e, 4294967295u, 14511u, u_input.e), u_input.d))), vec3<bool>(1445f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-492f)) + _wgslsmith_f_op_f32(644f + 1445f)), !func_3(vec4<i32>(u_input.c, -1i, 1i, u_input.a.x), select(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(1u, 10u)]), 19961i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 576f))), true), Struct_2(Struct_1(false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(832f, 687f), vec2<f32>(-392f, -1000f)))))));
    var var_1 = Struct_3(~vec4<u32>(firstLeadingBit(~4294967295u), ~firstTrailingBit(u_input.d.x), 5851u, 1u << (select(var_0.a.x, var_0.a.x, false) % 32u)), select(vec3<bool>(any(select(vec2<bool>(false, var_0.b.x), var_0.b.zy, var_0.b.x)), false, -2147483647i > (1460i & u_input.b.x)), select(select(var_0.b, !var_0.b, vec3<bool>(true, global0[_wgslsmith_index_u32(40581u, 10u)], true)), var_0.b, var_0.b.x), vec3<bool>(var_0.c.a.a, false, global0[_wgslsmith_index_u32(13070u, 10u)])), var_0.c);
    var var_2 = ~var_0.a.x;
    let var_3 = vec4<u32>((1u >> (u_input.d.x % 32u)) << (u_input.e % 32u), var_0.a.x, u_input.e, 0u);
    var var_4 = (i32(-1i) * -firstLeadingBit(44070i)) << (~_wgslsmith_add_u32(var_0.a.x, var_0.a.x) % 32u);
    return ((var_1.a.x & abs(var_3.x)) & _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec3_u32(var_0.a.xzw, var_1.a.xxy), ~var_1.a.x), 0u, _wgslsmith_mod_u32(94552u, var_1.a.x >> (var_3.x % 32u)))) ^ ~(~_wgslsmith_mod_u32(~1u, var_1.a.x));
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    global0 = array<bool, 10>();
    let var_0 = !select(vec4<bool>(global0[_wgslsmith_index_u32(func_2(), 10u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.xw, ~u_input.d.xx), 10u)], global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1, arg_1), 10u)], !(!global0[_wgslsmith_index_u32(arg_1, 10u)])), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(22712u, 10u)], global0[_wgslsmith_index_u32(53322u, 10u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(36984u, 10u)], false, true)));
    global0 = array<bool, 10>();
    let var_1 = Struct_3(u_input.d, select(vec3<bool>(all(!vec3<bool>(true, var_0.x, false)), var_0.x, !any(vec4<bool>(true, true, false, false))), var_0.zyy, var_0.xww), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) < (-70123i ^ u_input.c), vec2<f32>(_wgslsmith_f_op_f32(floor(1705f)), _wgslsmith_f_op_f32(round(-224f))))));
    var var_2 = var_1.b.xx;
    return firstTrailingBit(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    var var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(29606u, _wgslsmith_dot_vec2_u32(vec2<u32>(56449u, 51173u), reverseBits(vec2<u32>(u_input.d.x, u_input.d.x))), func_1(1i, 97142u), ~(~u_input.e)), vec4<u32>(83490u, 4294967295u, _wgslsmith_mult_u32(u_input.e, 30761u) << (~u_input.e % 32u), 4294967295u), u_input.d), !select(vec3<bool>(any(vec2<bool>(true, false)), 58541u > u_input.e, any(vec3<bool>(global0[_wgslsmith_index_u32(4034u, 10u)], false, global0[_wgslsmith_index_u32(u_input.e, 10u)]))), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(48305u, 10u)], true, global0[_wgslsmith_index_u32(43071u, 10u)]), global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), global0[_wgslsmith_index_u32(countOneBits(8309u), 10u)])), Struct_2(Struct_1(!func_3(vec4<i32>(u_input.c, -17982i, 15322i, u_input.c), u_input.e, -53195i, vec2<f32>(769f, 1092f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(901f, 964f) * vec2<f32>(1143f, -127f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(505f, 598f), vec2<f32>(1645f, 185f)))))));
    var var_1 = Struct_2(var_0.c.a);
    let var_2 = Struct_3(vec4<u32>(~(firstTrailingBit(var_0.a.x) << (1u % 32u)), firstTrailingBit(u_input.e), 4294967295u, ~u_input.e), var_0.b, var_0.c);
    let var_3 = var_2.c.a.b;
    var_1 = var_0.c;
    let var_4 = Struct_3(max(select(~max(vec4<u32>(u_input.d.x, 40910u, 51958u, u_input.e), var_2.a), var_0.a, global0[_wgslsmith_index_u32(var_0.a.x, 10u)]), ~min(vec4<u32>(var_2.a.x, u_input.d.x, var_0.a.x, var_0.a.x) | vec4<u32>(u_input.e, u_input.d.x, 54927u, var_0.a.x), countOneBits(var_2.a))), var_0.b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1000f, var_3.x), _wgslsmith_sub_u32(~(var_2.a.x & ~4294967295u), ~(~var_2.a.x) | var_2.a.x), ~reverseBits(~min(vec2<u32>(20546u, 25126u), vec2<u32>(var_2.a.x, 1u))), reverseBits(~_wgslsmith_div_vec4_u32(var_0.a, var_2.a >> (vec4<u32>(var_2.a.x, var_4.a.x, 16651u, 60761u) % vec4<u32>(32u)))), var_2.a);
}

