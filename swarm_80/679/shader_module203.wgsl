struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -27795i), vec2<i32>(40276i, -7503i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -21452i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 37417i), vec2<i32>(5060i, -3770i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-54610i, i32(-2147483648)), vec2<i32>(-58431i, -27822i), vec2<i32>(-1i, 22086i), vec2<i32>(-20457i, 43273i), vec2<i32>(10616i, 27376i), vec2<i32>(34430i, -7885i), vec2<i32>(-37013i, 0i), vec2<i32>(1i, -6098i));

var<private> global1: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 30447u, 14344u, 49363u, 60946u, 81627u, 10063u, 1u, 90064u, 1u, 2765u, 1u, 72068u, 507u, 1u, 1u, 0u, 16511u, 18973u, 21747u, 0u, 4294967295u, 28116u, 0u, 13574u, 1u, 6679u, 9139u, 1u, 2650u);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1345f, -676f, -689f), -1138f, vec4<i32>(-57793i, 2147483647i, -1i, i32(-2147483648)), -144f, vec3<f32>(1350f, 892f, -1366f)));

var<private> global3: array<u32, 22>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = global4.c.x;
    let var_1 = !vec3<bool>(all(vec3<bool>(false, false, true)), false, true);
    let var_2 = 1u | (global1[_wgslsmith_index_u32(abs(firstTrailingBit(10381u)), 31u)] ^ abs(4294967295u));
    var var_3 = ~23443u;
    let var_4 = Struct_2(Struct_1(vec3<f32>(global4.a.x, 1000f, global4.d), -1953f, global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f - -1000f) + 777f)), global4.a));
    return _wgslsmith_f_op_f32(-322f + -117f);
}

fn func_2() -> Struct_2 {
    var var_0 = min(i32(-1i) * -31594i, u_input.a);
    let var_1 = ~(61763u << (_wgslsmith_mod_u32(reverseBits(~global1[_wgslsmith_index_u32(7419u, 31u)]), ~_wgslsmith_sub_u32(1u, 0u)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -330f);
    global1 = array<u32, 31>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.a.e.x, -858f, !(u_input.a >= global4.c.x))))), global4.a.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(735f, _wgslsmith_f_op_f32(step(global4.b, -686f)), _wgslsmith_f_op_f32(exp2(global4.b))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(exp2(global4.a.x)), _wgslsmith_f_op_f32(-695f - global4.b)))), _wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(-746f + _wgslsmith_f_op_f32(f32(-1f) * -839f))), vec4<i32>(global2.a.c.x, ~(global2.a.c.x >> (0u % 32u)), -(~0i), global4.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-657f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f * var_3.x))), vec3<f32>(1f, -1000f, global2.a.b)));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = func_2();
    let var_1 = vec2<i32>(-2147483647i, 52387i);
    global3 = array<u32, 22>();
    var var_2 = func_2().a;
    let var_3 = ~(~1i);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec2<u32>(global1[_wgslsmith_index_u32(13785u, 31u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(69760u), 31u)], 22u)] | 59370u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97759u, 22u)], 31u)], 31u)], 0u)), select(vec2<u32>(1u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 31u)]), vec2<u32>(global3[_wgslsmith_index_u32(26006u, 22u)], 0u), true))));
}

