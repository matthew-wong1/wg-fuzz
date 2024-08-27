struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1615u, vec3<f32>(655f, -276f, -1473f));

var<private> global1: Struct_1 = Struct_1(10550u, vec3<f32>(-862f, -189f, 555f));

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(97475u, vec3<f32>(719f, 1734f, 605f)), Struct_1(42833u, vec3<f32>(-293f, -2109f, 889f)), Struct_1(22092u, vec3<f32>(409f, -246f, 1405f)), Struct_1(41807u, vec3<f32>(-962f, 1017f, 751f)), Struct_1(38744u, vec3<f32>(-817f, 404f, -573f)), Struct_1(4611u, vec3<f32>(939f, -561f, 1000f)), Struct_1(4294967295u, vec3<f32>(-1139f, -1971f, 648f)), Struct_1(1u, vec3<f32>(-1143f, 537f, -1000f)), Struct_1(1u, vec3<f32>(-111f, -1208f, -1547f)), Struct_1(30296u, vec3<f32>(-935f, 913f, 394f)), Struct_1(1u, vec3<f32>(-178f, -546f, -1000f)), Struct_1(19704u, vec3<f32>(976f, 731f, -1152f)), Struct_1(2125u, vec3<f32>(-1000f, 1273f, -1946f)), Struct_1(59411u, vec3<f32>(-119f, -1997f, -1812f)), Struct_1(53523u, vec3<f32>(525f, 1566f, -1030f)), Struct_1(76934u, vec3<f32>(-741f, -275f, 1000f)), Struct_1(0u, vec3<f32>(-520f, 226f, -2133f)), Struct_1(34333u, vec3<f32>(1421f, -645f, -210f)), Struct_1(1u, vec3<f32>(-395f, -862f, -2710f)), Struct_1(1u, vec3<f32>(964f, 1142f, -1603f)), Struct_1(24u, vec3<f32>(-1101f, -346f, -1010f)), Struct_1(1u, vec3<f32>(-1000f, 1054f, 1754f)), Struct_1(0u, vec3<f32>(561f, -976f, -1359f)), Struct_1(48512u, vec3<f32>(610f, -196f, 728f)), Struct_1(1u, vec3<f32>(1051f, -1335f, 608f)), Struct_1(0u, vec3<f32>(1000f, -1481f, -1672f)), Struct_1(96396u, vec3<f32>(-673f, -328f, 306f)));

var<private> global4: array<f32, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = -1i;
    let var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, min(abs(0u), abs(82953u & global0.a))), 4418u);
    var var_2 = all(vec2<bool>(arg_0, arg_0 | false));
    global2 = array<vec3<bool>, 29>();
    var_2 = !arg_0;
    return 0u;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_mult_u32(~global1.a, ~(~81097u)), vec3<f32>(global4[_wgslsmith_index_u32(~global1.a ^ func_3(u_input.b >= u_input.b, 2147483647i), 2u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstLeadingBit(29037u), _wgslsmith_clamp_u32(global0.a, ~global0.a, min(27418u, 1u))), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-255f)) - _wgslsmith_f_op_f32(floor(823f)))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(14055u, 2u)] * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -826f), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 2u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.b.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-244f, 1032f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f - 392f)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.xz * _wgslsmith_f_op_vec2_f32(func_2())))));
    let var_1 = vec2<f32>(global1.b.x, var_0.x);
    return Struct_1(global1.a, vec3<f32>(749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, -147f))), _wgslsmith_f_op_f32(trunc(global0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec3<i32>(31152i, 2147483647i, countOneBits(~u_input.b)));
    var var_1 = vec2<i32>(31660i, i32(-1i) * -7816i);
    global1 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~min(14163u, abs(global1.a))), 27u)]);
    var_0 = vec3<i32>(2147483647i, -var_0.x, -abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(-30309i, u_input.b), 2147483647i)));
    global3 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(367f, _wgslsmith_f_op_f32(sign(-782f)), global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - 415f), 1045f, -304f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-131f, 658f)) + -624f))), global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f), -391f));
}

