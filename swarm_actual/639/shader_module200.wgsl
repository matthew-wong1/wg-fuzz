struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 4294967295u, 4294967295u, 0u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(~abs(u_input.e), select(arg_0.xzw, select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, false)), true), select(arg_0.x, !arg_0.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.wxw + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, 973f, 697f))))), !(!(!arg_0.xyw))), Struct_1(~(~u_input.c.x & ~4923u), vec3<bool>(~4294967295u != global0[_wgslsmith_index_u32(78376u & u_input.c.x, 4u)], select(arg_0.x, 1095f != arg_1.x, any(arg_0.wxw)), _wgslsmith_f_op_f32(-arg_1.x) < -1000f), arg_1.yzz, select(select(vec3<bool>(false, arg_0.x, false), select(vec3<bool>(true, false, arg_0.x), arg_0.xww, arg_0.x), !vec3<bool>(arg_0.x, false, false)), select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(arg_0.zxy, arg_0.xxz, true), vec3<bool>(arg_0.x, false, false)), !vec3<bool>(true, arg_0.x, arg_0.x))));
    let var_1 = Struct_3(Struct_1(~firstLeadingBit(~4294967295u), var_0.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.zww)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-867f, arg_1.x, -1408f))))), select(vec3<bool>(true, true, u_input.e == global0[_wgslsmith_index_u32(1u, 4u)]), select(!vec3<bool>(var_0.a.b.x, false, arg_0.x), select(arg_0.wyx, vec3<bool>(var_0.a.b.x, var_0.a.d.x, true), true), select(vec3<bool>(arg_0.x, var_0.b.b.x, true), arg_0.xyz, true)), !(!var_0.a.d))), u_input.b.x, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e, var_0.b.a, 4294967295u, 1u), vec4<u32>(0u, var_0.b.a, u_input.e, 106828u)) ^ firstTrailingBit(abs(vec4<u32>(47511u, 1u, 93184u, 1u)) >> (~vec4<u32>(65145u, u_input.e, 21205u, 0u) % vec4<u32>(32u))));
    let var_2 = firstTrailingBit(_wgslsmith_add_i32(max(1i, select(1i, u_input.b.x, true)), u_input.d.x)) | (-2147483647i << (~_wgslsmith_mod_u32(~38115u, var_0.a.a) % 32u));
    var var_3 = var_0.a;
    let var_4 = Struct_4(vec4<bool>(true, true, false, -1i >= _wgslsmith_mult_i32(~var_2, 0i)), var_0);
    return select(!var_4.a, arg_0, 78342u < ~u_input.c.x);
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = !select(!select(func_3(vec4<bool>(false, true, false, true), vec4<f32>(1000f, arg_0, -1005f, 126f)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), !func_3(vec4<bool>(false, true, false, false), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, -953f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -2188f))), any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(Struct_1(abs(10982u << (u_input.c.x % 32u)), func_3(!(!vec4<bool>(true, var_0.x, true, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2447f, 1338f, -1027f, -1373f) + vec4<f32>(561f, arg_0, 185f, -1274f)))).xzy, vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1994f), _wgslsmith_f_op_f32(f32(-1f) * -425f), -1040f), var_0.zwz), Struct_1(~22663u >> (global0[_wgslsmith_index_u32(0u, 4u)] % 32u), func_3(select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1198f, arg_0, arg_0, -705f), vec4<f32>(-386f, -1000f, arg_0, arg_0)))).xyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 311f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), var_0.zyw));
    let var_2 = var_1.b;
    let var_3 = u_input.c.x;
    let var_4 = var_1.b.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.b.c)))) - var_2.c));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = select(u_input.c.zy, vec2<u32>(~4294967295u, 21774u), arg_0.b.xx);
    let var_1 = 1i;
    global0 = array<u32, 4>();
    let var_2 = arg_0.b.yz;
    let var_3 = !var_2;
    return Struct_3(arg_0, -(~(~_wgslsmith_sub_i32(-47132i, 1i))), vec4<u32>(16604u, 18858u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 36848u) << (~u_input.c % vec3<u32>(32u)), vec3<u32>(50322u, ~var_0.x, var_0.x)), 49791u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> StorageBuffer {
    var var_0 = arg_1.x;
    var var_1 = func_4(Struct_1(_wgslsmith_mult_u32(~(arg_0.x >> (u_input.e % 32u)), arg_3), vec3<bool>(true, false, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xwz), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(1056f + arg_1.x)))), vec3<bool>(-13232i != (-53548i & u_input.a.x), true && any(vec4<bool>(true, false, true, false)), u_input.b.x != _wgslsmith_mult_i32(-1i, -43415i))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(arg_2 - arg_2), true)), _wgslsmith_f_op_f32(-var_1.a.c.x)), 455f)));
    var_1 = func_4(Struct_1(max(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.a.a, u_input.c.x), 0u)), var_1.a.d, func_4(var_1.a).a.c, vec3<bool>(false || !var_1.a.d.x, all(var_1.a.d) | var_1.a.b.x, var_1.a.d.x)));
    let var_3 = func_4(func_4(Struct_1(~4294967295u, vec3<bool>(var_1.a.b.x, var_1.a.d.x, func_4(var_1.a).a.d.x), _wgslsmith_f_op_vec3_f32(floor(var_1.a.c)), select(var_1.a.b, vec3<bool>(false, false, false), arg_3 > u_input.e))).a).a;
    return StorageBuffer(~_wgslsmith_div_vec2_u32(var_1.c.yx, vec2<u32>(16802u, 31191u)), vec3<u32>(func_4(func_4(Struct_1(var_3.a, vec3<bool>(var_3.d.x, false, false), var_1.a.c, vec3<bool>(true, var_1.a.d.x, var_1.a.d.x))).a).c.x, 0u, abs(reverseBits(_wgslsmith_mod_u32(0u, 4294967295u)))), 1i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f - var_3.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x)), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_2)).x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(582f - arg_1.x), 439f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1201f, var_2, true)) - _wgslsmith_f_op_f32(var_1.a.c.x + 1190f)) - arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 4>();
    let var_0 = !(!vec2<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), true == all(vec2<bool>(true, true))));
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let x = u_input.a;
    s_output = func_1(~(~(~abs(vec2<u32>(u_input.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)])))), vec4<f32>(-1224f, _wgslsmith_f_op_f32(-1125f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-398f, 320f)) - _wgslsmith_f_op_f32(1101f - -144f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f) + _wgslsmith_f_op_f32(-955f - _wgslsmith_f_op_f32(-935f - 1091f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f - 147f)), _wgslsmith_f_op_f32(max(-1000f, -740f)), var_0.x))), 2420f, min(u_input.c.x, ~min(countOneBits(1u), ~global0[_wgslsmith_index_u32(1u, 4u)])));
}

