struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(78930u, 1u, 31399u, 1847u), vec3<bool>(false, false, true));

var<private> global3: array<i32, 28>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<bool>(global1.b.x, true, select(countOneBits(abs(u_input.b)) == max(countOneBits(0i), -8544i), true, true), true);
    global3 = array<i32, 28>();
    let var_1 = !(!(!var_0.x) | arg_0.b.x);
    var var_2 = ~_wgslsmith_dot_vec2_u32(~global1.a.wy, _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), ~18136u), _wgslsmith_clamp_vec2_u32(u_input.a.xz, firstLeadingBit(vec2<u32>(1u, 40856u)), ~vec2<u32>(35041u, global1.a.x))));
    return _wgslsmith_dot_vec3_u32(global1.a.yyz, u_input.a);
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = vec3<u32>(1u, select(27810u, ~(~global1.a.x), all(!vec4<bool>(global2.b.x, global2.b.x, false, true))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~global2.a.yw, vec2<u32>(1u, u_input.a.x) << (vec2<u32>(global1.a.x, global1.a.x) % vec2<u32>(32u))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(115842u, 99292u), countOneBits(vec2<u32>(32592u, 4704u))), max(u_input.a.xz, _wgslsmith_mult_vec2_u32(vec2<u32>(5983u, global2.a.x), vec2<u32>(40973u, global2.a.x))), !(arg_0 < -6129i))));
    var_0 = global1.a.wzx;
    var var_1 = Struct_2(Struct_1(~(~vec4<u32>(7186u, u_input.a.x, 0u, 1u)), vec3<bool>(global2.b.x, false, arg_1)), vec4<bool>(true, false, select(arg_0 < _wgslsmith_clamp_i32(-52923i, global3[_wgslsmith_index_u32(61831u, 28u)], u_input.b), arg_1, global2.b.x), 0u >= func_2(Struct_1(vec4<u32>(56657u, 49191u, 4294967295u, global2.a.x), vec3<bool>(true, true, arg_1)))), all(select(global2.b.yz, !global2.b.yz, global2.b.yx)), any(vec4<bool>(true, ~u_input.a.x >= ~global2.a.x, all(select(global1.b, vec3<bool>(true, global1.b.x, true), false)), true & (u_input.b > u_input.b))));
    var var_2 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, u_input.a.x, 50419u)), ~(vec3<u32>(u_input.a.x, var_1.a.a.x, global1.a.x) >> (global2.a.zwx % vec3<u32>(32u))) << (vec3<u32>(39141u, ~global1.a.x, _wgslsmith_mult_u32(var_0.x, global2.a.x)) % vec3<u32>(32u))) | _wgslsmith_add_vec3_u32(max(vec3<u32>(max(u_input.a.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.x, 818u, var_1.a.a.x, 45767u), vec4<u32>(6703u, 76520u, global2.a.x, var_1.a.a.x)), _wgslsmith_clamp_u32(var_0.x, var_1.a.a.x, 46493u)), countOneBits(_wgslsmith_sub_vec3_u32(global2.a.ywy, vec3<u32>(var_1.a.a.x, global2.a.x, global1.a.x)))), global1.a.wwy);
    global3 = array<i32, 28>();
    return global1.a.x;
}

fn func_1() -> f32 {
    global1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(~func_2(Struct_1(global2.a, vec3<bool>(false, global2.b.x, true))), _wgslsmith_mult_u32(func_3(u_input.b, global1.b.x), global1.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(func_3(global3[_wgslsmith_index_u32(45909u, 28u)], global1.b.x), 2952u, 48097u)), vec4<u32>(_wgslsmith_add_u32(global1.a.x ^ global1.a.x, u_input.a.x), u_input.a.x, firstTrailingBit(_wgslsmith_div_u32(1u, global1.a.x)), 66101u)), vec3<bool>(select(false, global2.b.x, false), all(!select(vec4<bool>(true, true, global2.b.x, global2.b.x), vec4<bool>(true, global2.b.x, true, true), vec4<bool>(global2.b.x, global1.b.x, true, global2.b.x))), global2.b.x));
    global1 = Struct_1(global1.a, vec3<bool>(any(select(select(vec4<bool>(true, global2.b.x, global2.b.x, true), vec4<bool>(false, false, global1.b.x, true), vec4<bool>(global2.b.x, true, global1.b.x, true)), vec4<bool>(false, global1.b.x, global1.b.x, false), !vec4<bool>(true, global2.b.x, global1.b.x, global1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(693f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) - -511f), select(true, global2.b.x, 0u > u_input.a.x) | false));
    let var_0 = select(vec3<bool>(1u < global1.a.x, true, true), vec3<bool>(true, ((global1.b.x && false) | global2.b.x) && true, !all(vec2<bool>(true, global1.b.x))), select(global1.b, !select(select(global2.b, global2.b, true), !vec3<bool>(global1.b.x, true, global2.b.x), !global2.b), global2.b.x));
    global0 = array<vec3<f32>, 12>();
    var var_1 = Struct_1(select(_wgslsmith_sub_vec4_u32(~global2.a | _wgslsmith_div_vec4_u32(vec4<u32>(38575u, 0u, 11959u, 0u), global1.a), global2.a), global2.a, vec4<bool>(all(!vec4<bool>(false, false, global1.b.x, false)), any(!vec2<bool>(true, global2.b.x)), !(global1.b.x & global2.b.x), var_0.x | all(vec4<bool>(global2.b.x, true, true, var_0.x)))), vec3<bool>(var_0.x, any(select(vec3<bool>(false, global2.b.x, false), select(vec3<bool>(global1.b.x, global1.b.x, global2.b.x), vec3<bool>(var_0.x, var_0.x, true), global2.b), !vec3<bool>(false, global2.b.x, false))), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -1661f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1051f - 355f))))), 1118f));
    global2 = Struct_1(~(~vec4<u32>(~9950u, func_2(Struct_1(global1.a, vec3<bool>(true, global1.b.x, global2.b.x))), u_input.a.x | global2.a.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x))), vec3<bool>(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 18167u), 28u)] == -1i, global2.b.x, global2.b.x));
    var var_1 = -617f;
    let var_2 = 72167u;
    global1 = Struct_1(vec4<u32>(firstTrailingBit(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, select(global2.a.x, 22727u, false), var_2), vec3<u32>(u_input.a.x, 33183u, u_input.a.x)), var_2, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.a.xwy, vec3<u32>(1u, 4294967295u, 1u)), _wgslsmith_mod_u32(1u, global1.a.x) | _wgslsmith_dot_vec4_u32(global2.a, global2.a))), select(global2.b, global1.b, !vec3<bool>(global1.b.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(0u, min(global2.a.x, var_2) | abs(u_input.a.x), true && any(vec4<bool>(global1.b.x, true, false, global2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1769f, 1000f, 884f, -1000f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1686f, 182f) - vec2<f32>(245f, -419f)), vec2<f32>(546f, 417f), select(global1.b.zy, vec2<bool>(false, global1.b.x), vec2<bool>(global2.b.x, global2.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, -1406f)))), max(global1.a, global1.a));
}

