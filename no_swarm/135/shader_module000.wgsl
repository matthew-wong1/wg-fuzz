struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<f32>(-120f, -534f, -157f), true, Struct_2(2147483647i, 1873f), Struct_2(-43169i, -770f), false), Struct_3(vec3<f32>(1496f, 439f, -899f), false, Struct_2(8197i, -103f), Struct_2(1i, 640f), true), Struct_3(vec3<f32>(762f, 1473f, 688f), false, Struct_2(-47181i, -434f), Struct_2(-1i, -959f), false), Struct_3(vec3<f32>(1041f, 1217f, 937f), false, Struct_2(-37324i, 884f), Struct_2(-24018i, -788f), false), Struct_3(vec3<f32>(1163f, -1000f, -1332f), false, Struct_2(-67680i, -1052f), Struct_2(52162i, 1056f), false), Struct_3(vec3<f32>(-1422f, -145f, -155f), true, Struct_2(i32(-2147483648), -1608f), Struct_2(2147483647i, -425f), false), Struct_3(vec3<f32>(998f, -1473f, 101f), true, Struct_2(-7763i, -1618f), Struct_2(i32(-2147483648), -395f), true), Struct_3(vec3<f32>(1302f, -230f, 2280f), false, Struct_2(0i, 1085f), Struct_2(1i, 1826f), true), Struct_3(vec3<f32>(593f, 1942f, 1000f), false, Struct_2(0i, -230f), Struct_2(-5771i, 379f), true), Struct_3(vec3<f32>(1000f, 399f, 188f), false, Struct_2(1i, -1000f), Struct_2(i32(-2147483648), 719f), true), Struct_3(vec3<f32>(-744f, 349f, 1000f), false, Struct_2(0i, 617f), Struct_2(i32(-2147483648), -552f), false), Struct_3(vec3<f32>(1168f, -1093f, -667f), true, Struct_2(1i, 1000f), Struct_2(1i, 1401f), false), Struct_3(vec3<f32>(-1050f, 1316f, -1081f), true, Struct_2(-18222i, 1000f), Struct_2(17328i, 1000f), false), Struct_3(vec3<f32>(147f, -619f, 458f), false, Struct_2(1i, -1000f), Struct_2(18959i, 1917f), true), Struct_3(vec3<f32>(-1089f, -290f, -2121f), true, Struct_2(2147483647i, -633f), Struct_2(2147483647i, 786f), false), Struct_3(vec3<f32>(-141f, 1328f, -854f), true, Struct_2(0i, -225f), Struct_2(-1i, -989f), true), Struct_3(vec3<f32>(-1204f, -622f, -982f), true, Struct_2(-1i, -1986f), Struct_2(2147483647i, 850f), false), Struct_3(vec3<f32>(164f, 1000f, 574f), true, Struct_2(246i, 1994f), Struct_2(2147483647i, -131f), false), Struct_3(vec3<f32>(-1000f, -810f, 938f), false, Struct_2(13826i, 1000f), Struct_2(i32(-2147483648), 2022f), true), Struct_3(vec3<f32>(-1534f, -983f, -305f), false, Struct_2(1i, 625f), Struct_2(-3615i, -281f), false), Struct_3(vec3<f32>(-273f, 736f, 664f), true, Struct_2(1i, 733f), Struct_2(1i, -889f), false), Struct_3(vec3<f32>(1000f, -1000f, -375f), false, Struct_2(-18010i, -1000f), Struct_2(1i, 1000f), false), Struct_3(vec3<f32>(-833f, 1622f, -1374f), false, Struct_2(28784i, 684f), Struct_2(1i, 162f), false), Struct_3(vec3<f32>(-2154f, -571f, -446f), false, Struct_2(9857i, -635f), Struct_2(40290i, -1000f), true), Struct_3(vec3<f32>(443f, 531f, -288f), true, Struct_2(i32(-2147483648), -1587f), Struct_2(-17179i, -1117f), false));

var<private> global2: array<Struct_2, 5>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = -1274f;
    let var_1 = arg_2;
    global1 = array<Struct_3, 25>();
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), 322f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(var_2))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -736f, var_1.c.b, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2080f, var_0, var_1.c.b, -641f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1630f, -207f, arg_2.c.b, var_1.c.b) * vec4<f32>(-755f, var_1.d.b, var_2, 721f))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1704f, 833f)), var_1.c.b, var_2, var_2))));
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = ~select(u_input.a >> (~(~4294967295u) % 32u), -1i, global0[_wgslsmith_index_u32(func_3(vec2<u32>(~34122u, ~global3.x), ~(-vec2<i32>(u_input.a, u_input.a)), global1[_wgslsmith_index_u32(global3.x, 25u)]), 20u)]);
    let var_1 = vec3<u32>(4294967295u, global3.x, max(29821u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(6344u, ~global3.x), global3.x)));
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    global0 = array<bool, 20>();
    return select(vec2<bool>(any(vec3<bool>(true, any(arg_0), true)), all(vec3<bool>(all(vec4<bool>(arg_0.x, true, true, global0[_wgslsmith_index_u32(37640u, 20u)])), true, select(false, true, false)))), vec2<bool>(!arg_0.x, true), select(all(!(!vec2<bool>(true, arg_0.x))), false, all(!arg_0)));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = !all(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 20u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), true), !vec2<bool>(arg_1, true), select(vec2<bool>(true, arg_1), vec2<bool>(false, false), true)), !select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), !func_2(vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 20u)], true))));
    global0 = array<bool, 20>();
    global1 = array<Struct_3, 25>();
    var var_2 = global2[_wgslsmith_index_u32(global3.x, 5u)];
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global3.x, countOneBits(global3.x)), ~(~(~global3.x))), 5u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<bool>) -> f32 {
    var var_0 = vec4<bool>(all(arg_2), false, !(!(!arg_3.x) && arg_2.x), true);
    global1 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-483f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b - arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(260f * 2410f), _wgslsmith_f_op_f32(arg_0.c.b + arg_0.c.b))), 453f)));
    global2 = array<Struct_2, 5>();
    global2 = array<Struct_2, 5>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(261f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.b, 1253f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b * _wgslsmith_f_op_f32(f32(-1f) * -1305f))), !all(select(arg_3.yxx, arg_2, arg_3.ywx))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 5>();
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(460f, -112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(1104f - 443f)) * _wgslsmith_f_op_f32(func_4(Struct_3(vec3<f32>(-110f, 553f, 1733f), global0[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(1u, 5u)], Struct_2(u_input.a, -1465f), global0[_wgslsmith_index_u32(50663u, 20u)]), func_1(1245f, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec4<bool>(global0[_wgslsmith_index_u32(13234u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1266f, -2664f) - -700f)))));
    var var_1 = _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(0u, global3.x)) << (vec2<u32>(global3.x, 0u) % vec2<u32>(32u)), ~vec2<u32>(global3.x, global3.x) << (~vec2<u32>(global3.x, 57485u) % vec2<u32>(32u))), countOneBits(vec2<u32>(global3.x >> (global3.x % 32u), 0u)));
    var_1 = _wgslsmith_div_vec2_u32(abs(min(~vec2<u32>(51802u, 1u), min(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, 1u), vec2<u32>(17148u, global3.x)), vec2<u32>(0u, global3.x)))), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(0u, var_1.x, var_1.x), 8234u), firstTrailingBit(vec2<u32>(global3.x, 39030u)) & _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_1.x, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, 91239u), vec2<u32>(var_1.x, 52083u)))));
    let var_2 = 1u;
    global2 = array<Struct_2, 5>();
    var var_3 = !(!global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(var_1.x, 1u, global3.x) >> (~var_2 % 32u)), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1109f + -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-917f, var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), var_0.zww, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(858f, -462f))), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(global3.x, 25u)], global2[_wgslsmith_index_u32(14226u, 5u)], vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 20u)], true), vec4<bool>(global0[_wgslsmith_index_u32(10481u, 20u)], global0[_wgslsmith_index_u32(var_2, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], true))))))), -521f, ~(~vec2<u32>(16163u, var_1.x)));
}

