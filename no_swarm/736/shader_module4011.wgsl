struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<vec2<i32>, 1>;

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-143f, 319f, -868f), vec3<f32>(-288f, 1043f, -1300f), vec3<f32>(-526f, -350f, -1138f), vec3<f32>(-456f, -442f, 607f), vec3<f32>(469f, -1000f, -633f), vec3<f32>(-595f, 1864f, -888f), vec3<f32>(-1685f, 606f, 302f), vec3<f32>(1000f, -325f, 345f), vec3<f32>(-519f, -1516f, -1456f), vec3<f32>(444f, 600f, 2704f), vec3<f32>(1603f, 1000f, 684f), vec3<f32>(-663f, 621f, -1362f), vec3<f32>(-1000f, 1000f, 271f), vec3<f32>(854f, -195f, -207f), vec3<f32>(-1000f, 344f, 451f), vec3<f32>(-754f, 112f, 571f), vec3<f32>(1653f, 543f, 1382f), vec3<f32>(246f, -243f, 544f), vec3<f32>(-133f, -153f, -520f), vec3<f32>(732f, 1152f, 569f), vec3<f32>(-452f, 1565f, -741f), vec3<f32>(-1000f, -643f, -341f), vec3<f32>(1539f, -1450f, -609f), vec3<f32>(2071f, 421f, -353f), vec3<f32>(908f, -973f, 1745f), vec3<f32>(-705f, 1000f, -1000f));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.b), 1u, 131501u, _wgslsmith_sub_u32(147u, _wgslsmith_mult_u32(7883u, u_input.b))), max(~vec4<u32>(38502u, 5481u, u_input.b, 21887u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c.x, 417u, u_input.c.x), vec4<u32>(38711u, 66521u, u_input.b, u_input.a)) | select(vec4<u32>(9749u, u_input.a, 49510u, 1u), vec4<u32>(0u, u_input.c.x, u_input.b, 4294967295u), vec4<bool>(false, global1.x, global1.x, false))));
    global4 = var_0;
    global0 = array<Struct_1, 19>();
    var var_1 = Struct_2(false, Struct_1(~1u, select(!(!global1.xx), vec2<bool>(all(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -479f, 377f, -666f)))))), -345f, global0[_wgslsmith_index_u32(abs(1u), 19u)], countOneBits(vec4<u32>(u_input.a, u_input.b, ~(~u_input.b), 302u)));
    global1 = !(!select(vec3<bool>(true, select(global1.x, true, global1.x), false), vec3<bool>(false, true, true), select(select(vec3<bool>(global1.x, var_1.b.b.x, true), vec3<bool>(global1.x, true, var_1.b.b.x), vec3<bool>(true, var_1.a, global1.x)), vec3<bool>(true, global1.x, true), var_1.b.b.x || var_1.b.b.x)));
    return 1u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(global1.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~u_input.a)), 19u)], _wgslsmith_f_op_f32(arg_0.x * arg_0.x), Struct_1(~(~33457u), global1.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -636f, -1000f, -1804f), vec4<f32>(arg_0.x, 454f, arg_0.x, -689f), false))))), vec4<u32>(u_input.a, firstLeadingBit(~110775u), ~(~u_input.c.x), 3114u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(727f, _wgslsmith_f_op_f32(f32(-1f) * -860f)));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_3 = vec2<bool>(any(select(select(!vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(false, true, true), vec3<bool>(global1.x, true, true), false), select(vec3<bool>(var_0.b.b.x, false, var_0.d.b.x), vec3<bool>(true, var_0.b.b.x, true), true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.b.b.x, var_0.a), vec3<bool>(global1.x, true, true)), !vec3<bool>(false, false, var_2.b.x), true), !select(vec3<bool>(var_2.b.x, var_2.b.x, var_0.d.b.x), vec3<bool>(var_0.b.b.x, true, global1.x), vec3<bool>(false, true, true)))), !var_0.d.b.x);
    let var_4 = Struct_2(!select(false, global1.x, all(select(vec2<bool>(false, var_2.b.x), vec2<bool>(false, var_3.x), true))), Struct_1(var_0.d.a, select(!(!global1.yy), select(vec2<bool>(var_2.b.x, var_0.a), select(var_0.b.b, var_2.b, var_0.a), var_0.d.a >= var_0.b.a), true), vec4<f32>(_wgslsmith_f_op_f32(-392f * _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1901f), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -288f), -473f)), _wgslsmith_f_op_f32(f32(-1f) * -826f), Struct_1(_wgslsmith_add_u32(min(~0u, 1u), ~var_2.a), var_0.b.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, -540f), var_0.b.c.x, _wgslsmith_f_op_f32(-var_0.d.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d.c + var_2.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(266f, 1297f, arg_0.x, var_0.c) - var_2.c)), any(select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(false, false, false), vec3<bool>(var_3.x, var_0.b.b.x, var_2.b.x)))))), countOneBits(_wgslsmith_sub_vec4_u32(var_0.e, ~select(var_0.e, vec4<u32>(4294967295u, 39458u, 0u, u_input.b), vec4<bool>(var_3.x, var_0.b.b.x, true, var_0.a)))));
    return Struct_2(!all(!(!vec3<bool>(true, true, var_3.x))), Struct_1(4294967295u, !var_4.b.b, _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(_wgslsmith_f_op_f32(min(-787f, -1000f)), arg_0.x, -961f, _wgslsmith_f_op_f32(var_0.b.c.x - -1318f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(max(arg_0.x, -359f))))), Struct_1(func_3(), var_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_4.d.c, vec4<f32>(180f, var_0.b.c.x, -569f, var_4.d.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(-1692f * 1476f), _wgslsmith_f_op_f32(min(-347f, -265f)), _wgslsmith_f_op_f32(-var_0.c)))), ~abs(abs(vec4<u32>(var_2.a, u_input.c.x, u_input.b, var_2.a) | var_0.e)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = firstLeadingBit(arg_0.d.a);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f * arg_2.d.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -564f), arg_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.x) * 1000f));
    let var_2 = 21634u;
    global4 = _wgslsmith_sub_u32(reverseBits(4294967295u), arg_3.x);
    let var_3 = ~reverseBits(1i);
    return select(!func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-215f, -1000f)))).b.b, !func_2(arg_1.c.xx).d.b, false);
}

fn func_1() -> f32 {
    var var_0 = Struct_2(any(select(func_4(func_2(vec2<f32>(-605f, 582f)), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 19u)], Struct_2(false, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1022f, Struct_1(0u, global1.xx, vec4<f32>(233f, 456f, 749f, -953f)), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)), ~vec3<u32>(13155u, u_input.a, 52576u)), func_4(func_2(vec2<f32>(1753f, -625f)), Struct_1(46721u, vec2<bool>(true, global1.x), vec4<f32>(800f, -1245f, 206f, 2358f)), Struct_2(global1.x, Struct_1(u_input.b, global1.zz, vec4<f32>(-1955f, -1375f, 224f, -1879f)), 884f, global0[_wgslsmith_index_u32(8512u, 19u)], vec4<u32>(u_input.b, 1u, u_input.c.x, 1u)), vec3<u32>(56362u, 1u, u_input.c.x)), true)), global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(0u, u_input.b)))), 19u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-870f - -1190f))) * func_2(_wgslsmith_div_vec2_f32(vec2<f32>(268f, -764f), vec2<f32>(579f, -1392f))).b.c.x))), func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(438f)))), _wgslsmith_f_op_f32(-444f * -1346f))).d, ~(abs(vec4<u32>(60465u, 4294967295u, 1u, u_input.c.x)) & vec4<u32>(min(u_input.c.x, u_input.c.x), func_3(), ~17000u, ~u_input.c.x)));
    let var_1 = Struct_2(global1.x, Struct_1(~(~74435u) | u_input.c.x, vec2<bool>(!(!global1.x), true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b.c.x)), _wgslsmith_div_f32(2128f, var_0.b.c.x), _wgslsmith_f_op_f32(floor(-1078f)), var_0.c)))), var_0.c, var_0.d, var_0.e);
    let var_2 = !vec4<bool>(true, ~u_input.c.x < u_input.b, !global1.x, global1.x);
    let var_3 = -781f;
    var var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(-1i, -798i, 1i, countOneBits(-28187i))), 29411i);
}

