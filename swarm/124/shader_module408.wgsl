struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, false, true, false, false, true, false, true, false, false, true, true, true, false, true, true, true, true, false, true, true, false, true, false);

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1000f, -563f, -465f), vec3<f32>(-1024f, 1231f, 1744f), vec3<f32>(-1000f, -996f, -1322f), vec3<f32>(-641f, -1000f, 386f), vec3<f32>(499f, 1486f, 620f), vec3<f32>(-203f, -397f, -319f), vec3<f32>(-1297f, -870f, -1630f), vec3<f32>(-2202f, -944f, 749f), vec3<f32>(-1105f, 232f, -211f), vec3<f32>(493f, 1347f, 1048f), vec3<f32>(-2073f, -412f, -1188f), vec3<f32>(234f, -1117f, 1321f), vec3<f32>(514f, -979f, -209f), vec3<f32>(-628f, -833f, -2057f), vec3<f32>(108f, -117f, -463f), vec3<f32>(-589f, 250f, 561f), vec3<f32>(-1000f, 491f, -251f), vec3<f32>(-359f, 1052f, 684f), vec3<f32>(857f, 2028f, -371f), vec3<f32>(-1564f, 634f, -1630f), vec3<f32>(-375f, 271f, -137f), vec3<f32>(-328f, 214f, -226f), vec3<f32>(-355f, 327f, -413f), vec3<f32>(-1800f, -1308f, -1389f), vec3<f32>(510f, 2045f, 1248f), vec3<f32>(-375f, 249f, 1253f), vec3<f32>(1000f, 1033f, 1161f), vec3<f32>(1502f, -270f, 1336f), vec3<f32>(1529f, -171f, 969f), vec3<f32>(449f, -425f, 219f));

var<private> global3: Struct_1 = Struct_1(1562f, vec3<f32>(-438f, -576f, -1000f), vec4<bool>(true, true, false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_u32(reverseBits(u_input.d), max(firstTrailingBit(vec2<u32>(u_input.c, u_input.e.x)), u_input.e))));
    global0 = abs(firstTrailingBit(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(u_input.a.x, u_input.b.x)) | ~u_input.a.x)));
    let var_1 = global3.c.x;
    let var_2 = vec2<bool>(firstLeadingBit(select(u_input.b.x | 2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.yxy), var_0.x > var_0.x)) > u_input.b.x, !any(!global3.c) | true);
    var var_3 = Struct_2(Struct_1(-1655f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-279f)), _wgslsmith_f_op_f32(floor(global3.a)), _wgslsmith_f_op_f32(step(global3.a, global3.a)))), select(!vec4<bool>(false, global3.c.x, global3.c.x, true), vec4<bool>(var_2.x, true, global3.c.x, false), false)));
    return var_3.a.a;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(4294967295u);
    var var_1 = Struct_3(u_input.e.x);
    global3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(select(vec4<u32>(u_input.d.x, 1u, 0u, u_input.e.x), vec4<u32>(var_1.a, 49340u, var_0.a, u_input.e.x), true))), _wgslsmith_div_f32(1208f, _wgslsmith_f_op_f32(step(-1000f, global3.a)))))), vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x * global3.a) - _wgslsmith_f_op_f32(ceil(global3.a)))), _wgslsmith_f_op_f32(-global3.a)), select(vec4<bool>(true, any(select(global3.c, vec4<bool>(true, global1[_wgslsmith_index_u32(1819u, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(22086u, 25u)]), vec4<bool>(global3.c.x, global3.c.x, false, false))), _wgslsmith_f_op_f32(-global3.b.x) < global3.b.x, true), select(global3.c, vec4<bool>(true, all(vec4<bool>(false, true, global3.c.x, true)), all(vec2<bool>(global3.c.x, global3.c.x)), global3.c.x), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.c, 25u)], !global3.c.x, global3.c.x, false || global3.c.x)), vec4<bool>(true && global3.c.x, true, global1[_wgslsmith_index_u32(~var_0.a, 25u)], !(!global3.c.x))));
    var var_2 = var_0;
    var var_3 = false;
    return Struct_2(Struct_1(254f, _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~var_0.a & _wgslsmith_dot_vec4_u32(vec4<u32>(47013u, u_input.c, 4294967295u, 0u), vec4<u32>(45282u, 51533u, 0u, var_1.a)), 30u)]), select(vec4<bool>(!global3.c.x, u_input.b.x < u_input.a.x, -841f < global3.b.x, true), global3.c, global3.c)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(-global3.a);
    var var_2 = -(vec4<i32>(-1i) * -u_input.a);
    let var_3 = func_2().a;
    return !vec4<bool>(true, global3.c.x, global3.c.x, !all(var_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global3.c, select(global3.c, select(select(func_1(Struct_1(1000f, global2[_wgslsmith_index_u32(58990u, 30u)], vec4<bool>(global1[_wgslsmith_index_u32(7676u, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)], false, global3.c.x))), !global3.c, vec4<bool>(global3.c.x, global3.c.x, true, global3.c.x)), global3.c, global1[_wgslsmith_index_u32(~u_input.c, 25u)]), func_1(func_2().a).x | any(vec3<bool>(false, true, global3.c.x))), vec4<bool>(!any(func_1(Struct_1(global3.a, vec3<f32>(global3.a, global3.a, global3.a), global3.c))), false, false | all(select(global3.c.wz, global3.c.yw, true)), !all(vec2<bool>(global3.c.x, global3.c.x))));
    var_0 = !global3.c;
    global0 = u_input.a.x;
    global2 = array<vec3<f32>, 30>();
    let var_1 = ~firstLeadingBit(abs(~vec3<u32>(0u, u_input.d.x, 36489u)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(57019u, 30u)])) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1762f, -1000f, 1159f) * vec3<f32>(664f, 214f, 1376f)), vec3<f32>(639f, 1079f, 1190f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -458f, -828f))) + vec3<f32>(828f, _wgslsmith_f_op_f32(sign(-1050f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1614f))))));
    var var_4 = -select(u_input.b, -vec2<i32>(abs(u_input.b.x), i32(-1i) * -16155i), var_0.wy);
    var var_5 = !any(global3.c.yyz);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(select(var_1, var_1, false), min(var_1, var_1))), _wgslsmith_f_op_f32(-var_3.x), ~(-select(u_input.a, u_input.a, false)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, var_4.x, u_input.a.x) >> (vec3<u32>(u_input.d.x, 1u, u_input.e.x) % vec3<u32>(32u)), vec3<i32>(-19707i, var_4.x, u_input.a.x)), 2147483647i, -u_input.a.x ^ var_4.x, u_input.a.x), ~(i32(-1i) * -2962i));
}

