struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global2: array<f32, 30> = array<f32, 30>(1303f, 882f, -144f, -165f, 457f, -311f, -157f, 1000f, 614f, 1231f, -1084f, -104f, -139f, -1574f, -1000f, -1000f, 561f, 410f, -1993f, -243f, 1242f, -2141f, -1511f, -902f, -181f, -224f, 225f, 1000f, -675f, -1041f);

var<private> global3: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-1i, -23469i, -10510i, -53558i), vec4<i32>(1i, 2033i, -2829i, 1i), vec4<i32>(-29650i, 1832i, 24897i, -30075i), vec4<i32>(1i, -1i, 0i, -63730i), vec4<i32>(0i, 0i, 2147483647i, -13008i), vec4<i32>(15622i, -16268i, 2147483647i, 2147483647i), vec4<i32>(-24299i, -10701i, i32(-2147483648), 31632i), vec4<i32>(1i, -30876i, 16236i, -40351i), vec4<i32>(25056i, -11621i, i32(-2147483648), -25204i), vec4<i32>(-1i, 0i, 0i, -7006i), vec4<i32>(i32(-2147483648), 1i, 4067i, -1i), vec4<i32>(2147483647i, 48155i, -6836i, 83616i), vec4<i32>(1i, -8376i, 36803i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 25963i), vec4<i32>(-32276i, 29149i, 1i, 2147483647i), vec4<i32>(-449i, 1i, 0i, 10436i), vec4<i32>(-7262i, -792i, i32(-2147483648), -25711i), vec4<i32>(2147483647i, -29548i, 5881i, 1i), vec4<i32>(15634i, 2147483647i, 74941i, 46634i), vec4<i32>(i32(-2147483648), -1i, 15708i, -31693i), vec4<i32>(44694i, 2147483647i, -1i, -14601i), vec4<i32>(5507i, 5495i, 2147483647i, 43894i), vec4<i32>(0i, -1i, -1i, -19551i), vec4<i32>(0i, 19993i, 39626i, 1i), vec4<i32>(-3384i, i32(-2147483648), 20487i, -1i));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(270f, 397f), vec4<f32>(-650f, -2216f, 901f, 370f), vec4<u32>(0u, 4249u, 84900u, 25897u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global3 = array<vec4<i32>, 25>();
    let var_0 = true;
    return -1349f;
}

fn func_3() -> vec2<f32> {
    var var_0 = global3[_wgslsmith_index_u32(global4.a.d.x & _wgslsmith_mod_u32(~countOneBits(global0.d.x), global0.d.x), 25u)];
    let var_1 = true;
    var var_2 = !vec3<bool>(global0.a.x | true, !(!all(global0.a.xy)), all(global0.a));
    global1 = array<vec3<bool>, 13>();
    global3 = array<vec4<i32>, 25>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.a.c.zy, global0.c.yz, global0.a.x)) - global4.a.c.yz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-655f, -132f)) - _wgslsmith_f_op_vec2_f32(step(global0.b, vec2<f32>(-587f, global0.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, 723f), global4.a.c.yz)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(22563u, 30u)]), _wgslsmith_f_op_f32(-1000f * -912f))), _wgslsmith_f_op_f32(global4.a.c.x * global4.a.b.x)))));
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = global4.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3())));
    var_1 = global0.c.zz;
    var var_2 = Struct_2(Struct_1(vec4<bool>(global0.a.x && true, !global0.a.x && true, true, var_0.a.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1676f, global4.a.c.x)) - vec2<f32>(global0.c.x, -1626f)))), global4.a.c, firstLeadingBit(global0.d)));
    var var_3 = select(var_0.a.yw, vec2<bool>(select(true, global0.a.x, true) || !(u_input.b >= u_input.c), true), vec2<bool>(true, true));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(global4.a.d.wwz, global0.d.wxx))), ~(~max(vec3<u32>(1u, 4389u, global4.a.d.x), global4.a.d.xzx)));
    var var_1 = Struct_1(global4.a.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(global0.d.x), 30u)]), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), vec2<f32>(-1576f, 607f), global4.a.c, vec4<u32>(4294967295u, global4.a.d.x, 0u, var_0))), Struct_1(vec4<bool>(global0.a.x, global4.a.a.x, global4.a.a.x, true), global4.a.b, global0.c, vec4<u32>(var_0, global0.d.x, 18189u, 38352u))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(578f, 340f) - global4.a.c.xz)))), _wgslsmith_f_op_vec4_f32(-global4.a.c), firstTrailingBit(global4.a.d));
    var_1 = Struct_1(func_2(global0.d.yxy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -277f)) * vec2<f32>(-451f, global2[_wgslsmith_index_u32(var_1.d.x, 30u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -565f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-606f, global4.a.b.x))), _wgslsmith_f_op_f32(-1071f - var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1085f), -645f), reverseBits(global4.a.d));
    var var_2 = all(vec2<bool>(true, select(-3190i, 9074i, global0.a.x) > -75058i));
    global1 = array<vec3<bool>, 13>();
    let var_3 = global0.a.xz;
    let var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~11887u, 44863u, 1848u), reverseBits(~vec3<u32>(8073u, 94573u, var_0)) & vec3<u32>(~4294967295u, ~4294967295u, _wgslsmith_div_u32(0u, var_1.d.x))), 2147483647i, -2202i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global4.a.a, vec2<f32>(global0.b.x, var_1.c.x), global4.a.c, vec4<u32>(92361u, var_0, 50889u, global0.d.x))), Struct_1(vec4<bool>(true, false, global4.a.a.x, false), vec2<f32>(global4.a.c.x, -403f), vec4<f32>(869f, global4.a.b.x, -163f, -402f), var_1.d))))))));
}

