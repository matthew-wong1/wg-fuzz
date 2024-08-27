struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 5598u), vec3<u32>(16226u, 1u, 13507u), vec3<u32>(66525u, 0u, 89700u), vec3<u32>(48521u, 25974u, 31484u), vec3<u32>(9327u, 4294967295u, 0u), vec3<u32>(1u, 52173u, 4294967295u), vec3<u32>(48058u, 1u, 4294967295u), vec3<u32>(1u, 22860u, 12532u), vec3<u32>(13469u, 11435u, 3109u), vec3<u32>(0u, 19848u, 4294967295u), vec3<u32>(23790u, 4294967295u, 35782u), vec3<u32>(1u, 0u, 18184u), vec3<u32>(37844u, 4294967295u, 33562u), vec3<u32>(1u, 0u, 6075u), vec3<u32>(0u, 28650u, 4294967295u), vec3<u32>(1u, 19936u, 35719u), vec3<u32>(63314u, 87928u, 4294967295u), vec3<u32>(4294967295u, 7117u, 13188u), vec3<u32>(2750u, 36511u, 0u), vec3<u32>(33442u, 2259u, 22801u), vec3<u32>(35664u, 33162u, 25025u), vec3<u32>(1810u, 4294967295u, 1u), vec3<u32>(1u, 31427u, 1u), vec3<u32>(3752u, 0u, 4294967295u), vec3<u32>(4294967295u, 65498u, 0u), vec3<u32>(4294967295u, 4294967295u, 25203u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(66470u, 4294967295u, 11032u), vec3<u32>(15251u, 7837u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(454u, 0u, 5717u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    let var_0 = select(vec3<u32>(abs(u_input.b), ~firstLeadingBit(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), u_input.b), select(select(vec3<u32>(u_input.b, 42290u, 0u), vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 37763u, 0u, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), ~u_input.b), vec3<bool>(true, any(vec2<bool>(true, true)), true)), vec3<u32>(~_wgslsmith_mod_u32(0u, u_input.b), 1u, _wgslsmith_add_u32(~u_input.b, ~1u)), vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], reverseBits(vec3<u32>(u_input.b, 0u, 0u))) < (u_input.b & 113009u));
    let var_1 = !(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, false, false), true), vec4<bool>(all(vec2<bool>(false, false)), -1i > u_input.a.x, true, true), false || any(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_f32(-2087f - -645f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1457f - 1409f)))) + var_2) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_f32(570f * _wgslsmith_f_op_f32(f32(-1f) * -1077f))), var_2));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f - -206f)))), -1086f);
    let var_1 = -(u_input.a.x >> (u_input.b % 32u));
    global0 = array<vec3<u32>, 17>();
    global1 = array<vec3<u32>, 32>();
    let var_2 = 25925i;
    return 417f;
}

fn func_1() -> f32 {
    global1 = array<vec3<u32>, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(f32(-1f) * -1143f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    var var_1 = max(~_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(select(u_input.b, 14108u, var_0.x), 17u)], vec3<u32>(u_input.b, 6483u, 35284u)), vec3<u32>(~2641u, 64395u, 9356u)) >> (~global1[_wgslsmith_index_u32(1u, 32u)] % vec3<u32>(32u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f), -496f));
    var var_3 = select(vec3<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(1i, u_input.a.x))), u_input.a.x), vec3<i32>(countOneBits(-countOneBits(-2452i)), -1i, countOneBits(u_input.a.x)), var_0);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * -664f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(func_1()), 1f, _wgslsmith_f_op_f32(func_1())), Struct_1(624f, !any(select(var_0, var_0, vec3<bool>(var_0.x, false, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(989f, -1033f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 511f, 1566f, -1000f) - vec4<f32>(-303f, 738f, 614f, 713f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, 1083f, 542f, 315f))))));
    var_1 = global1[_wgslsmith_index_u32(~1u, 32u)];
    var var_5 = vec4<i32>(-22950i, var_3.x | -2147483647i, _wgslsmith_add_i32(~747i, 0i), abs(var_3.x | var_3.x)) ^ countOneBits(vec4<i32>(~abs(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-13019i, var_3.x), u_input.a.yz) >> (u_input.b % 32u), var_3.x & abs(u_input.a.x), var_3.x));
    let var_6 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), 4294967295u, ~(u_input.b ^ u_input.b), var_1.x), vec4<u32>(4294967295u, var_1.x, 0u, 1u)), var_1.x, 1u);
    global0 = array<vec3<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_add_i32(7724i, var_5.x) << (abs(var_1.x) % 32u)));
}

