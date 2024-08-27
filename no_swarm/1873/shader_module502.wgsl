struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(934f, -1110f), vec2<f32>(1232f, -795f), vec2<f32>(-522f, 483f), vec2<f32>(1252f, -1027f), vec2<f32>(-165f, 828f), vec2<f32>(2040f, 1089f), vec2<f32>(-2171f, 1000f), vec2<f32>(-1000f, 986f), vec2<f32>(-535f, -354f), vec2<f32>(-647f, -1956f), vec2<f32>(916f, 405f), vec2<f32>(1049f, -1814f), vec2<f32>(1021f, -846f), vec2<f32>(-849f, 1000f), vec2<f32>(422f, -314f));

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    let var_0 = arg_1.b.d.x;
    let var_1 = _wgslsmith_mod_u32(reverseBits(~_wgslsmith_dot_vec3_u32(select(u_input.b, u_input.a.zwy, arg_3), ~u_input.a.xyz)), ~(~arg_1.d.x));
    global0 = array<vec2<f32>, 15>();
    let var_2 = arg_1;
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1498f));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = vec2<bool>(all(!vec2<bool>(select(global1.x, global1.x, true), u_input.a.x != u_input.b.x)), !(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a.x, u_input.b.x), Struct_2(u_input.c.zwx, Struct_1(u_input.b.x, 0u, u_input.a, vec3<bool>(global1.x, global1.x, true), -1i), 331f, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), 23684i, vec3<bool>(global1.x, false, false))) < _wgslsmith_f_op_f32(abs(784f))) | true);
    global0 = array<vec2<f32>, 15>();
    global0 = array<vec2<f32>, 15>();
    global0 = array<vec2<f32>, 15>();
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x ^ 46840u, ~u_input.b.x), firstLeadingBit(reverseBits(vec2<u32>(u_input.b.x, 52683u)))) | _wgslsmith_mult_vec2_u32(max(u_input.a.zx & u_input.a.ww, abs(vec2<u32>(1u, 1u))), u_input.b.zy), vec2<u32>(max(~70765u, ~4294967295u), ~abs(0u)) | ~u_input.b.xz);
    return Struct_1(22318u, u_input.a.x, ~min(~u_input.a, ~abs(u_input.a)), !select(!select(vec3<bool>(global1.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, global1.x, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, false, global1.x), global1.x), false), global1.x), _wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0, u_input.c.x, u_input.c.x, arg_0) ^ u_input.c), u_input.c));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(arg_0.xzz, arg_0.yzx)), _wgslsmith_div_vec3_f32(vec3<f32>(-1213f, arg_1.c.c, arg_0.x), arg_0.wxz), true)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(920f, arg_0.x, arg_1.c.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.c, 1331f, 575f)))), vec3<f32>(arg_0.x, 264f, arg_1.c.c))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(888f, arg_1.c.c))), arg_0.x, -789f)))));
    let var_1 = func_2(-23011i);
    global0 = array<vec2<f32>, 15>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0))))), arg_0)));
    global0 = array<vec2<f32>, 15>();
    return ~(~_wgslsmith_dot_vec3_u32(func_2(arg_1.d.e).c.wzx & vec3<u32>(0u, u_input.a.x, 0u), _wgslsmith_mod_vec3_u32(var_1.c.xzy, var_1.c.xyy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(u_input.b.x & u_input.b.x, countOneBits(u_input.b.x) << ((u_input.a.x & ~4294967295u) % 32u));
    let var_1 = select(51341u, ~_wgslsmith_div_u32(~u_input.b.x, 4294967295u) << (u_input.b.x % 32u), !global1.x || all(!select(vec3<bool>(false, true, true), vec3<bool>(true, global1.x, true), false)));
    let var_2 = Struct_1(_wgslsmith_add_u32(abs(u_input.a.x) ^ (~45330u | (21137u ^ var_1)), var_1), _wgslsmith_sub_u32(var_1, 24918u), vec4<u32>(max(firstLeadingBit(~var_1), u_input.b.x), select(45655u, u_input.a.x, global1.x & (-1i > u_input.c.x)), _wgslsmith_mod_u32(4294967295u, 1587u), var_1), !(!select(vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(global1.x, false, true), select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, false, global1.x), true))), 2147483647i);
    var var_3 = true;
    var var_4 = Struct_1(u_input.b.x, ~((56330u >> (var_1 % 32u)) | func_1(vec4<f32>(535f, 1000f, 260f, -324f), Struct_3(-1i, var_2, Struct_2(vec3<i32>(u_input.c.x, 12913i, var_2.e), Struct_1(1u, 1u, var_2.c, vec3<bool>(global1.x, true, true), 33158i), 636f, vec3<u32>(24904u, 12256u, u_input.a.x)), var_2))) << (var_1 % 32u), vec4<u32>(var_2.b, max(~select(1u, var_1, true), ~var_1), _wgslsmith_mult_u32(97047u, ~abs(var_1)), abs(_wgslsmith_add_u32(var_1, 1u))), select(!select(var_2.d, select(vec3<bool>(true, global1.x, var_2.d.x), vec3<bool>(true, global1.x, true), true), all(var_2.d.zx)), vec3<bool>(!(2147483647i > u_input.c.x), min(u_input.b.x, var_1) != 704u, !(!global1.x)), var_2.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e, u_input.c.x), min(vec2<i32>(var_2.e, 0i), vec2<i32>(-2147483647i, -40349i))) << (_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(var_2.c.xx, reverseBits(vec2<u32>(u_input.b.x, 1u)))) % 32u));
    let var_5 = _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_1, 16908u, var_4.c.x, var_4.a) >> (vec4<u32>(0u, var_2.b, u_input.b.x, var_1) % vec4<u32>(32u))) & abs(var_2.c), ~(~var_4.c));
    var_3 = var_2.d.x;
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2133f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(681f - -816f), -310f, var_2.d.x)))), _wgslsmith_f_op_f32(abs(2638f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-286f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-274f)), 1506f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_4.c.x, 15u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, var_6.x))))), var_4.c.zw, (u_input.c.x ^ min(-24965i, var_2.e)) ^ _wgslsmith_mod_i32(-(~var_4.e), _wgslsmith_dot_vec4_i32(u_input.c, firstTrailingBit(u_input.c))));
}

