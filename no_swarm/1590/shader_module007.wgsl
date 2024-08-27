struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(i32(-2147483648), 53021i, i32(-2147483648), 2147483647i), vec4<i32>(-15938i, 0i, 33166i, -1i), vec4<i32>(-1i, -1890i, 27075i, i32(-2147483648)), vec4<i32>(36163i, -25160i, 2147483647i, -18197i), vec4<i32>(0i, -61344i, -9826i, -15347i), vec4<i32>(4423i, 1i, -1i, 2147483647i), vec4<i32>(-45730i, 0i, -1i, -1i), vec4<i32>(19220i, 81919i, 33915i, -1i), vec4<i32>(-20739i, 1i, -547i, 30588i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 21072i), vec4<i32>(1i, -1i, 5253i, -1i), vec4<i32>(-57284i, 0i, i32(-2147483648), 16097i), vec4<i32>(-1i, -22323i, -18806i, 8593i), vec4<i32>(-40857i, 16604i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 16732i, -49676i, -1i), vec4<i32>(13480i, -50050i, 1i, 2147483647i), vec4<i32>(-1118i, 31158i, -20243i, 45037i), vec4<i32>(1i, -10300i, 3000i, 0i), vec4<i32>(2147483647i, 2147483647i, 31304i, 23442i), vec4<i32>(2147483647i, -13404i, 4594i, -1i), vec4<i32>(2147483647i, 34980i, -18909i, -1i), vec4<i32>(2147483647i, -35313i, i32(-2147483648), -1i), vec4<i32>(55547i, 0i, -25390i, -8225i), vec4<i32>(1i, 21442i, 2147483647i, -8863i));

var<private> global4: array<vec4<f32>, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(true, true));
    global4 = array<vec4<f32>, 32>();
    var var_1 = (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, u_input.c.x, arg_0.x, 1u)) >> (arg_0.x % 32u), 62041u) >> (0u % 32u)) <= arg_0.x;
    var var_2 = ~select(~abs(select(vec3<u32>(u_input.c.x, 1u, u_input.d.x), vec3<u32>(29357u, u_input.a, 4294967295u), false)), ~firstLeadingBit(u_input.d), vec3<bool>(!(!var_0.x), (var_0.x & var_0.x) & true, !var_0.x && all(vec2<bool>(var_0.x, false))));
    global4 = array<vec4<f32>, 32>();
    return firstTrailingBit(~arg_0.yx) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~4294967295u), vec2<u32>(7373u, var_2.x) & ~vec2<u32>(arg_0.x, var_2.x)), 22964u);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1807f);
    global3 = array<vec4<i32>, 25>();
    let var_1 = global1[_wgslsmith_index_u32(32147u, 21u)];
    var var_2 = func_3(u_input.d);
    let var_3 = vec3<i32>(max(50675i, -u_input.b.x), u_input.b.x, u_input.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * -624f));
}

fn func_1() -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 17u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123f + _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(vec2<bool>(false, true)), ~vec4<u32>(84542u, 886u, 1u, u_input.a), Struct_1(u_input.c.x, var_0.zw, vec3<u32>(62427u, u_input.d.x, u_input.c.x), vec3<i32>(global0.x, global0.x, u_input.b.x))))))));
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 21u)];
    var var_3 = !select(!vec4<bool>(true, true, any(vec2<bool>(false, false)), any(vec3<bool>(true, true, false))), vec4<bool>(select(true, false, all(vec4<bool>(false, true, true, true))), true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), select(vec4<bool>(true, false, u_input.c.x == var_2.a, var_1.x >= 552f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), select(var_1.x < -611f, select(true, false, true), false)));
    let var_4 = var_2.a;
    return ~vec4<u32>(abs(u_input.a), u_input.d.x, abs(abs(abs(4294967295u))), select(0u, _wgslsmith_div_u32(~u_input.c.x, 21722u << (u_input.c.x % 32u)), !any(vec2<bool>(var_3.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, 1658u);
    let var_1 = ~_wgslsmith_sub_vec4_u32(countOneBits(max(vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.d.x), vec4<u32>(u_input.d.x, var_0.x, u_input.c.x, var_0.x))) & _wgslsmith_add_vec4_u32(vec4<u32>(42516u, 78398u, u_input.c.x, 30460u) | vec4<u32>(4294967295u, 1u, 1u, 23897u), func_1()), countOneBits(select(vec4<u32>(23744u, 58930u, 1u, u_input.c.x), vec4<u32>(12863u, var_0.x, u_input.d.x, u_input.a), true)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 36412u, u_input.c.x, u_input.a) >> (vec4<u32>(37544u, 99661u, u_input.a, var_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(369u, 1u, var_0.x, 23076u), vec4<u32>(108202u, 43007u, 2730u, var_0.x))));
    global2 = array<vec4<f32>, 17>();
    let var_2 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1484f, -1366f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(808f, -345f) + vec2<f32>(-620f, -1515f))))), vec3<u32>(16303u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 7613u, var_1.x, u_input.d.x), var_1)), vec3<i32>(39167i, ~_wgslsmith_mod_i32(global0.x, global0.x), global0.x));
    global3 = array<vec4<i32>, 25>();
    global4 = array<vec4<f32>, 32>();
    var var_3 = select(vec2<bool>(all(vec2<bool>(true, true)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), any(vec2<bool>(true, true))))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), var_2.d.x >= -17474i)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x, _wgslsmith_div_f32(var_2.b.x, 465f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-744f, var_2.b.x, var_2.b.x), vec3<f32>(205f, var_2.b.x, 330f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, var_2.b.x, -1000f) * vec3<f32>(-231f, var_2.b.x, -1362f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_2.b.x, 1129f) + vec3<f32>(501f, 237f, var_2.b.x)), select(vec3<bool>(true, true, false), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, var_3.x))))), all(vec2<bool>(true, false && var_3.x)))), -var_2.d.x);
}

