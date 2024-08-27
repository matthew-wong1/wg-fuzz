struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<f32>(1000f, 696f, 156f, -444f), -1437f), Struct_1(vec4<f32>(-1325f, 971f, 1659f, 2899f), 482f), Struct_1(vec4<f32>(-280f, -1000f, 1000f, 1319f), 606f), Struct_1(vec4<f32>(355f, -455f, 103f, -1369f), -1714f), Struct_1(vec4<f32>(1014f, -172f, -178f, -131f), -1426f), Struct_1(vec4<f32>(-974f, -1000f, 528f, 849f), -2060f), Struct_1(vec4<f32>(-927f, 160f, -168f, -1003f), -1000f), Struct_1(vec4<f32>(-418f, 2386f, 488f, 1000f), 1000f), Struct_1(vec4<f32>(118f, -658f, -1974f, -1423f), -646f), Struct_1(vec4<f32>(-813f, 1411f, -1000f, 168f), -770f), Struct_1(vec4<f32>(-1496f, 1208f, -1440f, -1424f), 1171f), Struct_1(vec4<f32>(-396f, -534f, -1880f, -654f), 994f), Struct_1(vec4<f32>(657f, -712f, -1396f, 692f), -419f), Struct_1(vec4<f32>(-836f, -968f, 316f, 1302f), 130f), Struct_1(vec4<f32>(490f, -358f, -728f, 1436f), -285f), Struct_1(vec4<f32>(-864f, 200f, 146f, -1229f), -120f));

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<u32, 12> = array<u32, 12>(30552u, 64095u, 4294967295u, 31297u, 61255u, 0u, 17244u, 21070u, 1u, 4435u, 8910u, 36138u);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(777f, 1633f, 931f, 391f), 331f);

var<private> global4: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<f32>) -> vec2<i32> {
    global1 = array<Struct_1, 18>();
    global4 = vec4<i32>(-2147483647i, 0i, _wgslsmith_add_i32(firstTrailingBit(global4.x), ~(~(-1029i) | _wgslsmith_add_i32(global4.x, global4.x))), global4.x);
    let var_0 = _wgslsmith_add_u32(0u, ~39256u) & ~(~(~_wgslsmith_div_u32(0u, u_input.a.x)));
    global1 = array<Struct_1, 18>();
    let var_1 = global4.x;
    return -max(abs(vec2<i32>(select(global4.x, global4.x, false), ~global4.x)), ~global4.zy);
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(abs(u_input.a.x) << (4294967295u % 32u), abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(22803u, 12u)])), 12u)]))), 18u)];
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)))));
    var var_2 = _wgslsmith_div_vec2_i32(max(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, 1i, global4.x, global4.x), vec4<i32>(global4.x, 1i, -27810i, 2147483647i)), _wgslsmith_div_i32(global4.x, 2147483647i)), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(global3.b, var_0.b, var_0.b, var_0.b)), var_0.a.x), Struct_1(vec4<f32>(-121f, global3.a.x, -590f, global3.b), _wgslsmith_f_op_f32(max(var_0.b, global3.a.x))), vec4<bool>(all(vec2<bool>(true, false)), true, true, true), vec3<f32>(-1306f, 342f, _wgslsmith_f_op_f32(-var_0.a.x)))), firstLeadingBit(firstLeadingBit(global4.zw)));
    var var_3 = global0[_wgslsmith_index_u32(1u, 16u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b, global3.b, var_3.a.x, var_0.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.b, -866f, var_3.a.x, var_0.a.x), vec4<f32>(global3.b, var_0.b, 1501f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-369f + 2234f), global3.a.x, -1458f, _wgslsmith_f_op_f32(146f * -1000f))))), _wgslsmith_f_op_f32(ceil(var_0.b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.a - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1000f, global3.b, arg_1.b)), global3.a)), _wgslsmith_f_op_vec4_f32(-arg_1.a), global4.x == -(~global4.x))), arg_0.x);
    let var_1 = func_2();
    global0 = array<Struct_1, 16>();
    var var_2 = func_2();
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1228f * 873f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-855f * -355f) - 755f)), -102f), 1425f);
    return vec3<f32>(_wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -584f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(564f, global3.b, false)) - -189f)))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-130f, var_3.b, arg_2.x))), var_1.b, all(vec4<bool>(arg_2.x, false, true, arg_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    let var_1 = vec3<bool>(false, !all(vec3<bool>(true, 2147483647i < global4.x, false)), true);
    let var_2 = global3.a.xz;
    let var_3 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 16u)];
    var var_4 = _wgslsmith_f_op_f32(-2329f - _wgslsmith_f_op_f32(f32(-1f) * -155f));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global3.a.zwz, Struct_1(vec4<f32>(-979f, 987f, 1311f, global3.a.x), _wgslsmith_f_op_f32(ceil(var_2.x))), !vec2<bool>(var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, 789f, var_3.a.x)), var_3.a.zyx)))));
    var var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_5.x, var_2.x, 1000f) - _wgslsmith_f_op_vec4_f32(select(var_3.a, vec4<f32>(-101f, 260f, global3.a.x, 2510f), vec4<bool>(true, var_1.x, false, false)))))), global3.a, select(vec4<bool>(any(vec4<bool>(var_1.x, false, false, var_1.x)), all(vec3<bool>(var_1.x, true, true)), var_1.x, true), select(!vec4<bool>(true, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, false)), !(global4.x <= 2147483647i)))), _wgslsmith_f_op_vec3_f32(func_1(global3.a.ywx, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], select(select(select(var_1.yy, var_1.zz, var_1.yx), vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, true)), var_1.zz, false))).x);
    let var_7 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b))), -197f, 1000f, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.yyw - global3.a.xxw) * _wgslsmith_f_op_vec3_f32(-global3.a.wxx)), func_2(), var_1.yx)).x), _wgslsmith_f_op_f32(abs(1453f)));
    var_5 = _wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-995f * 1052f) * _wgslsmith_f_op_f32(floor(var_3.a.x)))), -1536f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, var_6.b, _wgslsmith_f_op_f32(abs(-598f)), _wgslsmith_f_op_f32(max(var_7.a.x, global3.a.x)))), 953f), var_1.yx));
    let x = u_input.a;
    s_output = StorageBuffer(300f, u_input.a.ww, 1948f);
}

