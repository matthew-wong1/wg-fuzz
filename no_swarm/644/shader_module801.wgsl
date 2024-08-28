struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(1203f, 177f), vec2<f32>(1000f, -526f), vec2<f32>(-534f, 687f), vec2<f32>(-559f, 1682f), vec2<f32>(1375f, 915f), vec2<f32>(900f, 565f), vec2<f32>(-512f, -1206f), vec2<f32>(435f, -1247f), vec2<f32>(627f, 721f));

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(520f, 161f, 1298f), vec3<f32>(693f, 844f, 731f), vec3<f32>(-1625f, -999f, 282f), vec3<f32>(353f, -1616f, 776f), vec3<f32>(1000f, -139f, 306f), vec3<f32>(558f, 595f, 1317f), vec3<f32>(-1013f, 885f, 1000f), vec3<f32>(-2274f, -1210f, 2394f), vec3<f32>(-716f, 388f, 224f), vec3<f32>(1798f, 604f, 1661f), vec3<f32>(-1096f, 1305f, 688f), vec3<f32>(-375f, 555f, 1045f), vec3<f32>(331f, 652f, 133f), vec3<f32>(-135f, 357f, 270f), vec3<f32>(572f, 1262f, 2220f), vec3<f32>(143f, -1000f, -1487f), vec3<f32>(-220f, 688f, 653f), vec3<f32>(-183f, -1727f, 1000f), vec3<f32>(-1391f, -1571f, -478f), vec3<f32>(1707f, 240f, -282f), vec3<f32>(1573f, 184f, -1000f), vec3<f32>(-572f, -1496f, -824f), vec3<f32>(-340f, 2125f, -856f), vec3<f32>(-149f, 1193f, -753f), vec3<f32>(-1310f, -195f, -930f), vec3<f32>(-746f, -1293f, 1040f), vec3<f32>(-558f, 650f, -330f), vec3<f32>(-785f, -1290f, 653f), vec3<f32>(147f, 1011f, -625f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = 27152u;
    return -916f;
}

fn func_3() -> vec2<i32> {
    global0 = array<vec2<f32>, 9>();
    let var_0 = Struct_1(u_input.d);
    global0 = array<vec2<f32>, 9>();
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(19507u, ~1u, u_input.a.x), u_input.c.yxw);
    global0 = array<vec2<f32>, 9>();
    return u_input.d;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(select(func_3(), -u_input.d, !(_wgslsmith_f_op_f32(step(-732f, -1325f)) == arg_0)));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = -1i;
    var_0 = u_input.d.x;
    var var_1 = Struct_1(firstLeadingBit(vec2<i32>(~56142i, u_input.d.x)));
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(-751f - _wgslsmith_f_op_f32(floor(1265f))), (41806u >= u_input.a.x) || true)))), ~_wgslsmith_add_vec2_i32(vec2<i32>(-arg_0.a.x, func_2(-687f, vec2<i32>(var_1.a.x, var_1.a.x)).a.x), ~(arg_0.a & vec2<i32>(var_1.a.x, arg_1.a.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(72178u, 9u)], global0[_wgslsmith_index_u32(countOneBits(abs(~u_input.a.x)), 9u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_div_f32(-1458f, 1000f)))) + global0[_wgslsmith_index_u32(~u_input.a.x, 9u)]));
    return firstTrailingBit(vec4<u32>(u_input.c.x, ~u_input.a.x, ~_wgslsmith_mult_u32(208u, _wgslsmith_sub_u32(u_input.c.x, u_input.a.x)), 33488u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(666f, -1347f, -171f, -1733f), vec4<f32>(-632f, -313f, -417f, 1357f), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(458f * 232f), -117f, _wgslsmith_f_op_f32(sign(-657f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(sign(-1225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f * -1031f) + -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(609f * 2080f), 1f, var_0.x)))));
    global1 = array<vec3<f32>, 29>();
    let var_2 = vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -533f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, var_0.x, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_0.x, var_0.x, true))) - _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), 507f);
    var var_3 = ~max(select(~vec4<u32>(1u, u_input.a.x, u_input.b, u_input.c.x), u_input.c, true) & vec4<u32>(u_input.b >> (u_input.a.x % 32u), u_input.c.x ^ u_input.b, u_input.a.x, ~u_input.c.x), func_4(Struct_1(u_input.d), func_2(_wgslsmith_div_f32(var_2.x, var_2.x), vec2<i32>(1i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1526f))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + 385f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1.x, -389f, var_2.x)) * _wgslsmith_f_op_vec4_f32(-var_2)))))));
}

