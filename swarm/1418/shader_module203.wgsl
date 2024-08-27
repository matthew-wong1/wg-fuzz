struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(33529i, -9418i, 0i, 2147483647i), vec4<i32>(-1i, -1i, i32(-2147483648), 3506i), vec4<i32>(1i, 9650i, 0i, 8876i), vec4<i32>(2147483647i, -7851i, -2864i, -24248i), vec4<i32>(-27244i, 2147483647i, 45134i, 0i), vec4<i32>(31991i, 10979i, 1i, 0i), vec4<i32>(-1i, 1718i, 1i, -24920i), vec4<i32>(-15319i, -80309i, -6209i, 1i), vec4<i32>(10829i, 2147483647i, 1i, -47429i), vec4<i32>(i32(-2147483648), 38513i, 0i, 46390i), vec4<i32>(8380i, 2147483647i, 28900i, -24416i), vec4<i32>(-31331i, -9892i, i32(-2147483648), 15776i), vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(1i, 1i, 15582i, -950i), vec4<i32>(12124i, 36544i, -6355i, 23876i), vec4<i32>(0i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(1i, 6630i, 713i, -8555i), vec4<i32>(70429i, -1i, 17423i, 0i), vec4<i32>(46595i, -1i, 2147483647i, 1i), vec4<i32>(9198i, 6208i, -1i, -1i), vec4<i32>(6743i, 2147483647i, 1i, 10477i));

var<private> global1: bool = false;

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true));

var<private> global3: Struct_1;

var<private> global4: array<i32, 23> = array<i32, 23>(2147483647i, 52316i, 47800i, 1i, i32(-2147483648), -33751i, 2147483647i, i32(-2147483648), 27176i, i32(-2147483648), 84157i, i32(-2147483648), 19989i, i32(-2147483648), 22359i, -1i, 1i, i32(-2147483648), 29940i, i32(-2147483648), i32(-2147483648), -33906i, i32(-2147483648));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(253f, global3.a, global3.a) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a, global3.a, 158f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -1648f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(947f * -492f), _wgslsmith_f_op_f32(abs(global3.a)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-673f, -628f)) - _wgslsmith_f_op_f32(f32(-1f) * -470f)));
    return Struct_1(_wgslsmith_f_op_f32(abs(-723f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = true;
    global4 = array<i32, 23>();
    let var_2 = Struct_2(~(~_wgslsmith_div_vec4_u32(vec4<u32>(26865u, 41009u, u_input.a, u_input.a), vec4<u32>(28348u, u_input.a, 0u, u_input.a)) & vec4<u32>(u_input.a | 56192u, ~u_input.a, ~u_input.a, 4294967295u & u_input.a)), _wgslsmith_clamp_i32(2147483647i, 0i, 1i | ~select(9851i, -2147483647i, false)));
    global0 = array<vec4<i32>, 21>();
    return ~(vec3<u32>(firstLeadingBit(u_input.a) & abs(var_2.a.x), firstLeadingBit(54664u), ~20724u) & countOneBits(vec3<u32>(select(32643u, u_input.a, false), 12106u, var_2.a.x)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_0.a.x, 0u), ~(~_wgslsmith_mult_vec3_u32(arg_0.a.xyz, vec3<u32>(u_input.a, 40613u, arg_0.a.x)))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(1u), u_input.a, 29285u), ~func_3(vec3<f32>(-389f, arg_2.x, arg_2.x), ~global0[_wgslsmith_index_u32(0u, 21u)])) % vec3<u32>(32u));
    let var_1 = 2147483647i | -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.b, -2147483647i), vec2<i32>(1i, arg_1));
    let var_2 = -(~(-_wgslsmith_dot_vec2_i32(u_input.b, u_input.c.yx))) & 41609i;
    let var_3 = vec4<i32>(-1i) * -(~u_input.c);
    var var_4 = vec3<u32>(_wgslsmith_mod_u32(36730u, select(0u, 30178u, any(vec2<bool>(false, true)) | false)), 34769u, _wgslsmith_sub_u32(1u, select(u_input.a, ~1u, !select(true, false, false))));
    return func_1().a;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(countOneBits(~(~vec4<u32>(1u, u_input.a, 21442u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 28624u) << (vec4<u32>(0u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 36802u))) & ~(~vec4<u32>(u_input.a, 4294967295u, 55758u, u_input.a))), 7587i);
    return Struct_1(_wgslsmith_div_f32(-508f, arg_1.x));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    let var_0 = max(~1i, -global4[_wgslsmith_index_u32(arg_2.x, 23u)]);
    var var_1 = _wgslsmith_mod_vec3_i32(u_input.c.wwy, min(vec3<i32>(~(i32(-1i) * -2147483647i), 1i, global4[_wgslsmith_index_u32(1u, 23u)]), vec3<i32>(_wgslsmith_mod_i32(reverseBits(u_input.b.x), -2147483647i), _wgslsmith_mult_i32(22718i, 0i), var_0)));
    let var_2 = ~(~global4[_wgslsmith_index_u32(30739u, 23u)]);
    global4 = array<i32, 23>();
    let var_3 = !(all(vec2<bool>(-514f != global3.a, any(vec3<bool>(false, arg_1, arg_1)))) & false);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), u_input.b.x), firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, var_0.a))))), 697f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(459f, var_0.a, true)), _wgslsmith_f_op_f32(var_0.a - var_0.a))), -1582f), vec2<f32>(480f, 1270f)), select(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), ((u_input.a != 2321u) || false) || !all(vec4<bool>(false, false, false, true))), ~abs(vec4<u32>(~u_input.a, countOneBits(20862u), abs(33962u), ~4294967295u)));
    global4 = array<i32, 23>();
    var var_2 = true;
    let var_3 = vec2<bool>(true, global4[_wgslsmith_index_u32(firstTrailingBit(5888u), 23u)] <= -1i);
    var var_4 = all(select(select(!(!vec3<bool>(var_3.x, true, var_3.x)), select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(false, false, var_3.x), select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_3.x)), all(!vec3<bool>(var_3.x, var_3.x, true))), select(!(!vec3<bool>(false, var_3.x, true)), vec3<bool>(false, var_3.x | true, true), true), select(vec3<bool>(var_3.x, select(var_3.x, var_3.x, true), -42273i <= u_input.c.x), !select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, var_3.x, false), var_3.x), !var_3.x | var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(74624u, vec4<u32>(172u, 72141u, 64199u, u_input.a), vec4<u32>(0u, 19051u, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), countOneBits(vec3<u32>(71016u, 53564u, 39015u)))), vec2<f32>(280f, _wgslsmith_f_op_f32(global3.a - 1747f)));
}

