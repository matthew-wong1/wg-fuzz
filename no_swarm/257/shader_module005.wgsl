struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<i32, 5> = array<i32, 5>(61109i, -1i, i32(-2147483648), -273i, i32(-2147483648));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<u32, 17>();
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-arg_3.b.x) >= -372f;
    var_1 = !(!(-arg_3.c.x < (i32(-1i) * -36059i)));
    var var_2 = Struct_2(arg_3);
    return select(select(!(!select(var_2.a.a, vec2<bool>(true, var_2.a.a.x), arg_3.a.x)), !var_2.a.a, arg_3.a.x), arg_2.yz, (true | arg_2.x) | ((firstTrailingBit(1i) >= -2147483647i) | any(!vec4<bool>(var_2.a.a.x, var_2.a.a.x, arg_3.a.x, false))));
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    let var_0 = Struct_2(Struct_1(func_3(1f, -(vec3<i32>(global1[_wgslsmith_index_u32(1u, 5u)], 13510i, u_input.a) & vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2747u, 17u)], 17u)], 5u)], -7458i, 5505i)), vec4<bool>(!arg_0.x, any(arg_0.yy), true, all(arg_0.zz)), Struct_1(!arg_0.xy, vec4<f32>(-897f, -1460f, -207f, -1241f), ~vec4<i32>(global1[_wgslsmith_index_u32(23709u, 5u)], -30775i, 0i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, _wgslsmith_f_op_f32(615f - -656f), -101f, _wgslsmith_div_f32(-1433f, -844f))), ~abs(vec4<i32>(-1i, -1i, -11027i, u_input.a))));
    let var_1 = vec4<bool>(false && (!(!var_0.a.a.x) && !all(vec2<bool>(var_0.a.a.x, false))), var_0.a.a.x, false, var_0.a.a.x);
    global0 = array<u32, 17>();
    return u_input.c;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1602f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-344f, 582f, 885f), vec3<f32>(-1000f, 198f, 638f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, -609f, 474f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(285f, 1000f, 1049f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -243f, -661f))), false)))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_3 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 5u)];
    var var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), max(~vec3<u32>(global0[_wgslsmith_index_u32(61370u, 17u)], u_input.b, global0[_wgslsmith_index_u32(66902u, 17u)]), func_2(vec3<bool>(true, true, false)))))), 5u)];
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = Struct_2(Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(361f, -143f, 564f, -1698f), vec4<f32>(1429f, 109f, 595f, 769f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1995f, -101f, -999f, -616f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(850f, -2349f, 1227f, -713f)))), ~firstLeadingBit(-vec4<i32>(2147483647i, -29884i, -2147483647i, -12930i))));
    global0 = array<u32, 17>();
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    var_0 = Struct_2(Struct_1(vec2<bool>(true, true), var_0.a.b, reverseBits(vec4<i32>(-13522i, global1[_wgslsmith_index_u32(10632u, 5u)], ~var_0.a.c.x, ~(-2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(~0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_1(), 17u)], 17u)], 1u) ^ max(u_input.c, u_input.c), ~(~(-max(var_0.a.c.zyx, var_0.a.c.yxw))), 37278u, ~(~countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]) | vec2<u32>(0u, 24266u))));
}

