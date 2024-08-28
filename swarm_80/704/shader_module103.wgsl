struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec2<f32>(-1000f, -1000f), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false))), vec3<f32>(1179f, -1068f, 1221f), vec2<f32>(1274f, 221f), vec2<i32>(0i, 2147483647i)), Struct_4(vec2<f32>(-805f, -451f), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))), vec3<f32>(1125f, 479f, -769f), vec2<f32>(1140f, 1107f), vec2<i32>(i32(-2147483648), 13816i)), Struct_4(vec2<f32>(-647f, -1064f), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true))), vec3<f32>(-337f, 1511f, 1000f), vec2<f32>(334f, 977f), vec2<i32>(i32(-2147483648), -29425i)), Struct_4(vec2<f32>(-1505f, 1077f), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false))), vec3<f32>(-1695f, -1000f, -195f), vec2<f32>(1000f, -1601f), vec2<i32>(53267i, -26798i)), Struct_4(vec2<f32>(388f, -1024f), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true))), vec3<f32>(-2074f, 316f, 711f), vec2<f32>(-1000f, 715f), vec2<i32>(11616i, 1i)), Struct_4(vec2<f32>(1222f, 271f), Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false))), vec3<f32>(-1591f, -176f, -1695f), vec2<f32>(684f, -587f), vec2<i32>(37598i, 2147483647i)), Struct_4(vec2<f32>(-1659f, -1490f), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false))), vec3<f32>(-1086f, -207f, 637f), vec2<f32>(1896f, -283f), vec2<i32>(1i, 12899i)));

var<private> global1: array<u32, 12>;

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = max(min(u_input.b.x, ~global1[_wgslsmith_index_u32(0u ^ global1[_wgslsmith_index_u32(u_input.e.x, 12u)], 12u)]), firstTrailingBit(~u_input.e.x));
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_1 = Struct_1(vec2<bool>(arg_0.b.b.a.x && select(false, !arg_0.b.a.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 12u)] < 0u), false & (arg_0.e.x >= -1i)));
    let var_2 = 2147483647i;
    return _wgslsmith_f_op_f32(max(-2394f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)), -212f))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> vec3<bool> {
    global1 = array<u32, 12>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1098f, 1830f, -1054f))) + vec4<f32>(_wgslsmith_div_f32(-1725f, arg_1.d.x), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-arg_0), arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, arg_1.c.x, _wgslsmith_div_f32(602f, arg_1.a.x), -750f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-945f, -664f, 227f, 172f)))))));
    return vec3<bool>(!all(select(select(arg_1.b.a.a, arg_1.b.b.a, arg_1.b.a.a.x), vec2<bool>(false, true), arg_1.b.b.a.x && arg_1.b.b.a.x)), true, true || any(vec2<bool>(arg_1.b.a.a.x & true, all(vec4<bool>(true, true, false, false)))));
}

fn func_2() -> vec4<u32> {
    global1 = array<u32, 12>();
    let var_0 = select(all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, all(vec2<bool>(false, false))), true)), any(vec3<bool>(all(vec4<bool>(true, false, true, true)), select(true, true, true), !(u_input.b.x <= 0u))), all(vec4<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, false)) || false, !any(vec4<bool>(true, true, false, true)))));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 7u)])) + _wgslsmith_f_op_f32(f32(-1f) * -1655f)), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(558f, 370f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1663f, 1020f))) - vec2<f32>(_wgslsmith_f_op_f32(select(466f, -131f, false)), _wgslsmith_f_op_f32(-606f * 1120f))), Struct_2(Struct_1(select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), false)), Struct_1(!vec2<bool>(true, var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, 279f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -1034f, 717f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, -930f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, 205f))))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.c, -62688i), vec4<i32>(u_input.a.x, u_input.d, -1i, 3644i)), vec4<i32>(u_input.c, u_input.c, -1i, u_input.a.x) ^ vec4<i32>(2147483647i, -35846i, 1i, -20890i)), select(60129i | u_input.a.x, u_input.d ^ u_input.a.x, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(455f))))))));
    var var_2 = true;
    var var_3 = -378f;
    return _wgslsmith_mod_vec4_u32(~u_input.b, firstTrailingBit(~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b.x, 4294967295u, 15604u))));
}

fn func_1() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~func_2(), firstLeadingBit(u_input.b)), 7u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.x, var_0.d.x, -768f, 240f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.a.x, var_0.d.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 365f, 2944f, var_0.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, -1000f, -574f, -1024f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -923f) + vec4<f32>(var_0.c.x, 408f, -635f, -599f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1029f, -891f, var_0.a.x, -1415f) + vec4<f32>(-379f, 1519f, var_0.a.x, -424f)))), select(!(!vec4<bool>(var_0.b.a.a.x, true, var_0.b.a.a.x, true)), !(!vec4<bool>(var_0.b.a.a.x, var_0.b.b.a.x, true, false)), select(vec4<bool>(var_0.b.a.a.x, var_0.b.b.a.x, var_0.b.b.a.x, true), select(vec4<bool>(var_0.b.a.a.x, true, true, false), vec4<bool>(false, false, var_0.b.b.a.x, var_0.b.b.a.x), false), var_0.b.b.a.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1394f, var_0.a.x, var_0.d.x, var_0.c.x), vec4<f32>(var_0.a.x, var_0.a.x, var_0.d.x, var_0.a.x), var_0.b.b.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, -104f, var_0.c.x, 1627f)))))))));
    global0 = array<Struct_4, 7>();
    var var_2 = var_0.e.x;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-var_0.a.x))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), var_0.b, vec3<f32>(var_1.x, var_0.d.x, 1000f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -192f))), -797f))), -vec2<i32>(1i, u_input.d));
    return (1u > (~global1[_wgslsmith_index_u32(u_input.b.x, 12u)] >> (737u % 32u))) & all(vec4<bool>(var_0.b.a.a.x, !(global1[_wgslsmith_index_u32(5414u, 12u)] < u_input.b.x), !(-7731i >= u_input.c), !(!var_3.b.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<bool>(func_1(), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), false), vec2<bool>(true, false)));
    let var_1 = vec4<i32>(0i >> (u_input.b.x % 32u), 0i, u_input.d, ~_wgslsmith_div_i32(~firstTrailingBit(u_input.c), ~(-1i)));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a.x, 84831i)), u_input.a.yx));
    let var_3 = Struct_2(var_0, var_0);
    var_2 = abs(-u_input.a.x | abs(var_1.x));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(462f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(743f, _wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(-716f, 1689f), Struct_2(Struct_1(var_0.a), var_3.a), vec3<f32>(-1018f, 109f, 1031f), vec2<f32>(-398f, -650f), var_1.ww)))))) + -1105f);
    global0 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~u_input.b.x), 23026u, 1u, ~(~4294967295u)) ^ vec4<u32>(min(~1u, u_input.b.x ^ 1u), 4294967295u, u_input.b.x, ~1u), 0u, vec4<f32>(1f, _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1092f, -1802f) + vec2<f32>(1219f, -834f)), Struct_2(Struct_1(vec2<bool>(var_0.a.x, false)), Struct_1(var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, -735f, 1323f) - vec3<f32>(-288f, 1356f, -175f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, -355f)), vec2<i32>(u_input.c, 19498i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f + -1303f) - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-552f - _wgslsmith_f_op_f32(f32(-1f) * -1308f))))), u_input.a);
}

