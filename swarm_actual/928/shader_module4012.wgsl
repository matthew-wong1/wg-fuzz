struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_5(!select(select(global1.a, !vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, arg_0, false, false)), select(vec4<bool>(true, arg_0, global1.a.x, global1.a.x), global1.a, vec4<bool>(false, true, true, arg_0)), true), Struct_2(~_wgslsmith_div_i32(1165i, -47727i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1016f, 1190f, 520f, -1039f), vec4<f32>(334f, 887f, 824f, 404f))))), vec4<u32>(~u_input.a, u_input.a, u_input.a << (~u_input.a % 32u), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f + 835f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1313f, -1000f, false))), 735f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(349f, -571f, true)), -1326f))));
    return 723f;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_3(false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0) + 675f), arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_div_vec3_f32(vec3<f32>(1141f, 838f, arg_0), vec3<f32>(arg_0, 798f, arg_0))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1808f, -710f), vec3<f32>(-578f, arg_0, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0, var_0.x) - vec3<f32>(-1000f, -1000f, arg_0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1167f, 799f, var_0.x) * vec3<f32>(-2569f, -1000f, -1099f)), vec3<f32>(1000f, 946f, -832f)))));
    var var_1 = (vec4<i32>(2147483647i, abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(3847i, -9124i, 15964i, -17162i), vec4<i32>(2147483647i, -30230i, 1i, -41098i)) >> (~arg_2 % 32u), max(1i, 1i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-50749i, -43849i, -2147483647i), i32(-1i) * -1i, _wgslsmith_add_i32(-5717i, -1i), -2147483647i), ~(~vec4<i32>(16042i, -2147483647i, -2147483647i, 20378i)))) >> (_wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(40231u, 13068u, 0u, 0u))), firstTrailingBit(~(~vec4<u32>(u_input.a, 113223u, 0u, 141246u))), max(~vec4<u32>(u_input.a, 1u, arg_1, arg_2), ~(vec4<u32>(1u, arg_2, 0u, 16431u) << (vec4<u32>(17187u, arg_1, arg_1, 72176u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var var_2 = global1.a.x;
    let var_3 = var_1.x;
    return Struct_2(_wgslsmith_add_i32(-(~(-1630i >> (u_input.a % 32u))), var_1.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + arg_0))), _wgslsmith_f_op_f32(floor(arg_0)), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(376f, var_0.x)))), arg_0, _wgslsmith_f_op_f32(round(-942f)), arg_0))), vec4<u32>(~(~6643u), ~27569u, _wgslsmith_clamp_u32(firstLeadingBit(54142u), arg_1, _wgslsmith_clamp_u32(u_input.a, arg_1, 90484u)), arg_2) | vec4<u32>(~4294967295u, 1u, ~(~27155u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_1, 0u, arg_1), vec4<u32>(u_input.a, 1u, u_input.a, 53494u), vec4<u32>(1u, 0u, 1u, 4294967295u)), ~vec4<u32>(4294967295u, u_input.a, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1732f, arg_0, 170f, 2467f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, arg_0, var_0.x, -323f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, -168f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1722f, 1541f, -1000f) * vec4<f32>(1756f, -484f, arg_0, -647f))), (u_input.a & u_input.a) > arg_2)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(414f)), arg_0)))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> vec2<u32> {
    global0 = arg_1;
    var var_0 = 1133f;
    let var_1 = -2147483647i;
    let var_2 = Struct_5(select(global1.a, global1.a, global1.a.x), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 651f)))), arg_2, arg_2));
    var var_3 = Struct_1(var_2.a);
    return var_2.b.c.yz;
}

fn func_4(arg_0: vec2<u32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-328f)) + _wgslsmith_f_op_f32(round(858f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -460f)))));
    var var_0 = ~vec4<i32>(-1i >> (~4294967295u % 32u), ~1i, ~_wgslsmith_div_i32(firstLeadingBit(1i), _wgslsmith_add_i32(3992i, -23752i)), -1i);
    var var_1 = !select(select(global1.a.www, vec3<bool>(global1.a.x, false | global1.a.x, u_input.a < 42970u), global1.a.zzw), vec3<bool>(global1.a.x, true, any(vec2<bool>(global1.a.x, global1.a.x)) | true), !(!select(global1.a.yxx, global1.a.xyz, global1.a.yzy)));
    var var_2 = Struct_5(!(!vec4<bool>(any(vec4<bool>(false, true, false, true)), !var_1.x, true, true)), func_2(-2449f, _wgslsmith_mult_u32(u_input.a, 12426u), min(reverseBits(91795u) ^ u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a | 1u))));
    var var_3 = Struct_1(!(!(!var_2.a)));
    return Struct_4(Struct_3(Struct_1(vec4<bool>(any(var_2.a.xyz), all(var_2.a), true, false && var_1.x)), ~countOneBits(var_2.b.c.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(849f + 745f), _wgslsmith_f_op_f32(1270f * 222f)))))) - 293f);
    var var_1 = func_4(_wgslsmith_clamp_vec2_u32(~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 4294967295u))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), -126f, u_input.a), vec2<u32>(7526u, u_input.a) >> (firstLeadingBit(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))));
    var var_2 = -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, 1i, 12177i, -18578i), abs(vec4<i32>(-15197i, -20001i, -74235i, 2147483647i)), true), vec4<i32>(-30777i, 2147483647i >> (var_1.a.b.x % 32u), min(0i, 2147483647i), i32(-1i) * -1i)), vec4<i32>(1i, 1i, 1i, 1i));
    var_1 = func_4(_wgslsmith_mult_vec2_u32(func_4(var_1.a.b).a.b | vec2<u32>(var_1.a.b.x, 46658u), countOneBits(vec2<u32>(1u, 1u) | func_4(var_1.a.b).a.b)));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~countOneBits(var_2.x)), func_2(_wgslsmith_f_op_f32(min(var_0, -567f)), var_1.a.b.x, 36135u).b.wwx, 8797u, ~u_input.a);
}

