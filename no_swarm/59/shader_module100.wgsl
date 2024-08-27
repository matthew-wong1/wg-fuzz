struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)));

var<private> global3: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(2190f, -2637f, 638f), vec3<f32>(274f, -1020f, -505f), vec3<f32>(-941f, -141f, 2473f), vec3<f32>(513f, -413f, 328f), vec3<f32>(389f, 630f, -1503f), vec3<f32>(2807f, -1419f, 496f), vec3<f32>(1095f, 566f, 1400f), vec3<f32>(460f, 365f, -1000f), vec3<f32>(-909f, 285f, 690f), vec3<f32>(-1053f, -1697f, 1420f), vec3<f32>(-815f, -1293f, -855f), vec3<f32>(374f, 881f, 350f), vec3<f32>(-1000f, 1000f, -1000f), vec3<f32>(-567f, -745f, -333f), vec3<f32>(1000f, 1000f, -1023f), vec3<f32>(1035f, -1436f, -751f), vec3<f32>(-333f, -976f, -1020f), vec3<f32>(-897f, 922f, -457f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<vec2<i32>, 20>();
    global1 = array<vec2<i32>, 20>();
    global3 = array<vec3<f32>, 18>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1300f)), _wgslsmith_div_f32(arg_1.x, arg_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-644f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), -1000f, -293f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1056f, arg_1.x)) + 1000f)), _wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = Struct_2(Struct_1(true), Struct_1((~arg_0 < 25635u) || true));
    return Struct_2(Struct_1(var_1.a.a), global0[_wgslsmith_index_u32(4294967295u, 8u)]);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = func_2(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1740f, -839f, !arg_1.a.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1875f)), _wgslsmith_f_op_f32(790f - 579f))), _wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(375f - 224f))), 1493f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(-926f, 1256f, arg_1.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -722f, _wgslsmith_f_op_f32(sign(1794f)))))), u_input.b).b;
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.a), 8u)];
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global3 = array<vec3<f32>, 18>();
    return vec2<u32>(u_input.a, u_input.a) & ~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, 28719u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, arg_1.a.a)), ~vec2<u32>(44649u, 0u)) ^ firstTrailingBit(~vec2<u32>(0u, 4294967295u)));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = ~func_3(Struct_1(true), func_2(~(~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-125f, arg_0.x, -1378f, arg_0.x), vec4<f32>(963f, 728f, arg_0.x, -919f)) + vec4<f32>(526f, -408f, arg_0.x, 849f)), u_input.b), ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.wx), global1[_wgslsmith_index_u32(1u, 20u)]));
    global1 = array<vec2<i32>, 20>();
    var var_1 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), false, func_2(39572u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -900f, arg_0.x, -1268f) + vec4<f32>(arg_0.x, arg_0.x, -1648f, arg_0.x)), u_input.b).b.a), select(vec4<bool>(-1i != u_input.b.x, var_0.x < 40676u, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), !vec4<bool>(true, true, arg_0.x >= _wgslsmith_f_op_f32(round(-2376f)), !select(true, true, true)), select(any(vec3<bool>(true, true, true)), false, ~var_0.x >= _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, u_input.a), var_0)));
    let var_2 = vec3<bool>(true, false, true);
    var var_3 = -_wgslsmith_mult_i32(u_input.b.x, 2147483647i);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-select(u_input.b.yxw, vec3<i32>(-u_input.b.x, -36611i, _wgslsmith_sub_i32(u_input.b.x, 3639i)), u_input.a < min(u_input.a, 28762u)), u_input.b.yzz, select(vec3<bool>(_wgslsmith_div_u32(4294967295u, u_input.a) >= u_input.a, true, !select(true, true, false)), vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, 730f, -985f))), any(vec2<bool>(true, false)) != func_1(vec3<f32>(-469f, -520f, 2551f)), select(true, false, all(vec3<bool>(false, false, true)))), false));
    global2 = array<Struct_2, 30>();
    global1 = array<vec2<i32>, 20>();
    var var_1 = vec2<u32>(34629u, 1u ^ ~_wgslsmith_mod_u32(~0u, u_input.a | u_input.a));
    var var_2 = ~u_input.a;
    global1 = array<vec2<i32>, 20>();
    var var_3 = Struct_2(Struct_1(true), Struct_1(false));
    var var_4 = ~u_input.b.x;
    global1 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-1000f - -864f));
}

