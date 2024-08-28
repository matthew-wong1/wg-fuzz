struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-113f, vec2<f32>(1000f, -245f), false, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(1346f, vec2<f32>(1242f, -853f), false, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(1607f, vec2<f32>(238f, 927f), false, Struct_1(vec4<bool>(true, true, true, true))), Struct_2(-303f, vec2<f32>(-786f, -575f), true, Struct_1(vec4<bool>(false, true, false, false))), Struct_2(-316f, vec2<f32>(-589f, 1279f), false, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(450f, vec2<f32>(1253f, 214f), false, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(-1534f, vec2<f32>(-321f, 2194f), true, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(-1887f, vec2<f32>(112f, -796f), true, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(797f, vec2<f32>(-511f, 336f), true, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(-648f, vec2<f32>(1209f, 456f), false, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(-528f, vec2<f32>(-2101f, -1113f), false, Struct_1(vec4<bool>(true, true, true, true))), Struct_2(764f, vec2<f32>(-1427f, -725f), true, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(-1701f, vec2<f32>(748f, -675f), false, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(-350f, vec2<f32>(-718f, -311f), true, Struct_1(vec4<bool>(true, false, false, false))), Struct_2(-2066f, vec2<f32>(-605f, 1519f), false, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(283f, vec2<f32>(115f, -1057f), false, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(163f, vec2<f32>(-992f, -934f), false, Struct_1(vec4<bool>(false, false, false, false))));

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true));

var<private> global2: Struct_2 = Struct_2(1477f, vec2<f32>(220f, -1471f), true, Struct_1(vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = 27928u;
    let var_1 = global0[_wgslsmith_index_u32(0u, 17u)];
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.a)))) == -1000f;
    var var_3 = arg_2.d;
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a, global2.b.x, -246f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -606f, var_1.b.x))))));
    return ~(29390u << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_u32(4294967295u, max(1u, 4294967295u)), true) % 32u));
}

fn func_2() -> f32 {
    let var_0 = min(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(vec4<u32>(69164u << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(38499u, 1u)) % 32u), ~func_3(Struct_1(global2.d.a), vec2<bool>(global2.c, false), Struct_2(-1127f, global2.b, global2.c, global2.d)), firstTrailingBit(1u), 10864u)));
    var var_1 = firstLeadingBit(~vec2<i32>(1i, _wgslsmith_mod_i32(1i, -1i))) & u_input.b.xw;
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, ~var_1.x), -(u_input.b.x & u_input.b.x)), countOneBits(u_input.c.zz));
    global1 = array<vec4<bool>, 22>();
    var var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.a))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(max(global2.a, global2.b.x)))))) + -1071f);
}

fn func_1() -> vec3<u32> {
    global1 = array<vec4<bool>, 22>();
    var var_0 = !(!(!global2.c) && true);
    let var_1 = u_input.b.yw;
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global2.a + global2.a), select(global2.c, global2.d.a.x, true)))), 1343f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), global2.b.x), global2.b), global2.c && global2.d.a.x, Struct_1(select(vec4<bool>(true, all(vec2<bool>(global2.d.a.x, true)), any(vec2<bool>(true, global2.d.a.x)), true), global2.d.a, select(global2.d.a, select(global2.d.a, vec4<bool>(global2.d.a.x, false, global2.d.a.x, false), global2.c), true))));
    return vec3<u32>(1u, 1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(firstTrailingBit(vec3<u32>(~1u, ~abs(21367u), 1u)), ~firstLeadingBit(select(vec3<u32>(1u, 14357u, 4294967295u), vec3<u32>(97808u, 26550u, 34813u), false)) | _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(func_1(), vec3<u32>(51910u, 0u, 4294967295u), global2.d.a.xyw)), vec3<bool>(false, global2.d.a.x, true));
    let var_1 = 79623i;
    var var_2 = Struct_1(vec4<bool>(!all(select(global1[_wgslsmith_index_u32(0u, 22u)], vec4<bool>(global2.d.a.x, false, true, true), global2.d.a.x)), false, global2.c, global2.d.a.x));
    var_2 = global2.d;
    global0 = array<Struct_2, 17>();
    global1 = array<vec4<bool>, 22>();
    var_2 = global2.d;
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(countOneBits(~1u), var_0.x), 73280u);
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~var_3.x) ^ var_0.x), 0u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(-374f, global2.b.x)), _wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_f_op_f32(-global2.a)));
}

