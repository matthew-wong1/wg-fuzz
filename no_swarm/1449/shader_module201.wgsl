struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-2192f, 550f, -296f, 478f), vec3<f32>(-837f, -677f, -1000f)), Struct_2(vec4<bool>(true, false, true, false), vec4<f32>(987f, 851f, 1505f, 461f), vec3<f32>(643f, -1091f, -263f)), Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(-638f, 828f, -1594f, -561f), vec3<f32>(1424f, -647f, -657f)), Struct_2(vec4<bool>(true, false, true, false), vec4<f32>(891f, -1015f, 362f, 795f), vec3<f32>(-526f, -883f, 1436f)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(-464f, -415f, 1144f, -547f), vec3<f32>(1235f, -559f, -606f)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(-215f, -208f, 931f, -1293f), vec3<f32>(-3130f, -1389f, 395f)), Struct_2(vec4<bool>(true, false, false, false), vec4<f32>(-1626f, 136f, -1451f, -1139f), vec3<f32>(1000f, -292f, 493f)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(1123f, 898f, -630f, -1000f), vec3<f32>(1462f, -161f, 366f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-437f, -192f, 312f, 796f), vec3<f32>(1000f, 1786f, 177f)), Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(-1109f, -650f, -1055f, -253f), vec3<f32>(-995f, -225f, 2241f)), Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(996f, 1711f, -163f, 170f), vec3<f32>(980f, 189f, 720f)), Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-1000f, 715f, 1771f, -433f), vec3<f32>(1349f, 1503f, 236f)), Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(218f, 922f, -2274f, 1000f), vec3<f32>(769f, -1043f, -130f)), Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(427f, 222f, -1000f, 1173f), vec3<f32>(1287f, -1000f, -948f)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(-905f, 1135f, 2244f, -480f), vec3<f32>(2051f, 1602f, 126f)), Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-1017f, -801f, -445f, 813f), vec3<f32>(-600f, -266f, 940f)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(267f, 553f, 712f, -315f), vec3<f32>(-761f, -106f, -553f)), Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(1304f, -1063f, -1449f, -1135f), vec3<f32>(981f, -513f, -839f)), Struct_2(vec4<bool>(true, true, false, false), vec4<f32>(-139f, -721f, -1662f, -713f), vec3<f32>(-1397f, -367f, 344f)), Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(-147f, -1068f, -1704f, -1505f), vec3<f32>(490f, -1522f, -1742f)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(985f, 108f, -262f, -2040f), vec3<f32>(314f, 171f, -326f)), Struct_2(vec4<bool>(false, true, false, true), vec4<f32>(127f, 1546f, 787f, -195f), vec3<f32>(-836f, -981f, -2412f)));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    let var_0 = ~min(u_input.c.wy, ~firstTrailingBit(u_input.c.yw));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(197f - 1416f), _wgslsmith_f_op_f32(-1000f + -230f)))))));
    global3 = !select(select(vec2<bool>(global3.x, true), !select(vec2<bool>(global1.c, false), vec2<bool>(global3.x, true), global1.c), !vec2<bool>(true, global1.c)), vec2<bool>(true, (var_1 < var_1) || false), (_wgslsmith_f_op_f32(1762f - var_1) > _wgslsmith_f_op_f32(f32(-1f) * -1710f)) & global2.c);
    return _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

fn func_1() -> vec2<i32> {
    global2 = Struct_1(89956u, ~(~1i), false, _wgslsmith_sub_vec2_u32(abs(vec2<u32>(9118u, u_input.a)), global2.d), global1.e);
    var var_0 = false;
    global3 = vec2<bool>(true, true);
    let var_1 = Struct_1(28983u, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 72175i), abs(u_input.c.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f * -1251f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(f32(-1f) * -1400f)), ~(~global1.d), -global1.e);
    return vec2<i32>(~global1.e, global1.b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = !(!vec2<bool>(true, all(vec3<bool>(true, true, true))));
    global1 = arg_0;
    global0 = array<Struct_2, 22>();
    global3 = !(!select(select(!vec2<bool>(global3.x, false), !vec2<bool>(global2.c, global2.c), global3.x), vec2<bool>(false, global3.x), !(true | global3.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 778f, -1342f, 206f))), vec4<f32>(-1147f, _wgslsmith_div_f32(652f, -133f), -1000f, _wgslsmith_f_op_f32(-950f - 3328f)))) * vec4<f32>(820f, -100f, 1352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1028f))))));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, firstLeadingBit(28696u)), ~(~vec2<u32>(4294967295u, 5209u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global0[_wgslsmith_index_u32(31952u, 22u)];
    global3 = var_1.a.yw;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, var_1.c.x) * var_1.c.x))), var_1.c.x));
    var var_3 = Struct_1(~(~min(7956u, u_input.a)) & ~global2.d.x, ~global1.b, global3.x, global2.d, 0i);
    global1 = Struct_1(~global2.d.x, 0i, !global1.c & all(var_1.a.zxz), vec2<u32>(~11467u, ~(func_3(Struct_1(53322u, global1.e, true, vec2<u32>(82696u, global1.d.x), 0i)) | abs(45253u))), global1.b);
    var var_4 = var_1.a.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(select(-2147483647i, global1.e, !var_4.x), max(var_3.e | 37917i, reverseBits(var_0.x)))), _wgslsmith_dot_vec2_i32(~u_input.c.xx, -(~vec2<i32>(var_0.x, 1i)) ^ abs(_wgslsmith_div_vec2_i32(u_input.c.wy, vec2<i32>(2147483647i, var_0.x)))), vec4<u32>(0u, var_3.a, firstTrailingBit(countOneBits(reverseBits(var_3.a))), ~22075u), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, var_1.b.x)), all(vec4<bool>(global1.c, var_1.a.x, true, global3.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1534f - -267f), -1103f)))));
}

