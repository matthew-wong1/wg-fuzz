struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(-11278i), Struct_3(i32(-2147483648)), Struct_3(-1i), Struct_3(12120i), Struct_3(0i), Struct_3(0i), Struct_3(-2497i), Struct_3(-1i), Struct_3(-9966i), Struct_3(i32(-2147483648)), Struct_3(-30074i), Struct_3(9924i));

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<Struct_3, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = u_input.a;
    var var_1 = !select(select(false, (u_input.a != u_input.a) != true, true), ~_wgslsmith_add_u32(102812u, u_input.a) < u_input.a, !(128f >= arg_1.a.x));
    let var_2 = Struct_3(arg_0);
    return _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    global2 = array<Struct_3, 6>();
    global1 = array<vec2<bool>, 20>();
    let var_0 = vec2<i32>(1i, 0i);
    let var_1 = vec4<f32>(409f, _wgslsmith_f_op_f32(ceil(arg_0)), arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(func_3(2147483647i, Struct_4(vec3<f32>(279f, arg_0, -1795f))))) + -129f), 292f)));
    var var_2 = Struct_3(arg_2.a);
    return Struct_3(~var_0.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global1 = array<vec2<bool>, 20>();
    global1 = array<vec2<bool>, 20>();
    let var_0 = -(~abs(reverseBits(-3695i)));
    global1 = array<vec2<bool>, 20>();
    global2 = array<Struct_3, 6>();
    return ~firstTrailingBit(arg_0.x);
}

fn func_1() -> Struct_4 {
    let var_0 = 0u;
    var var_1 = vec3<bool>(false, any(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), !(!(var_0 <= var_0)));
    let var_2 = Struct_2(vec3<u32>(func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0, u_input.a, 71083u), vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), global2[_wgslsmith_index_u32(var_0, 6u)], func_2(951f, vec4<i32>(-2147483647i, 18749i, 59390i, 1i), Struct_3(-71162i))) & min(_wgslsmith_add_u32(u_input.a, 0u), u_input.a), var_0, var_0), !select(!select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), var_1.x), !all(vec4<bool>(var_1.x, var_1.x, true, false))), all(!vec4<bool>(select(false, var_1.x, false), any(vec4<bool>(false, false, var_1.x, false)), any(vec3<bool>(false, var_1.x, true)), true)), Struct_1(vec4<f32>(-227f, -224f, _wgslsmith_f_op_f32(round(277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f + -514f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(757f, -1496f, 861f)) + vec3<f32>(552f, -122f, 710f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(779f, 463f, 1243f))))), true, !all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), vec2<u32>(~(~var_0) ^ 1u, ~(~17280u & var_0)));
    let var_3 = global1[_wgslsmith_index_u32(1u, 20u)];
    var var_4 = var_2.d;
    return Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-289f, 1545f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-804f, var_4.a.x, var_4.b.x))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    let var_0 = !vec4<bool>(!all(vec4<bool>(false, false, false, false)), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), !(_wgslsmith_f_op_f32(round(713f)) == -2861f), true);
    return Struct_3(_wgslsmith_clamp_i32(~(2147483647i ^ -arg_0), _wgslsmith_mod_i32(arg_0, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2237i, -34740i, arg_0, -15825i)), vec4<i32>(arg_0, arg_0, -22556i, arg_0))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-48737i, 38317u, Struct_4(vec3<f32>(-208f, _wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(303f * -907f))), func_1());
    var var_1 = _wgslsmith_f_op_f32(func_3(var_0.a, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f - 880f) * -785f), _wgslsmith_f_op_f32(floor(331f))))));
    var var_2 = vec3<bool>(all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(trunc(-590f)) != -150f, any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(global1[_wgslsmith_index_u32(u_input.a, 20u)])), vec3<bool>(true, true, true), u_input.a < ~54840u)));
    var var_3 = ~select(reverseBits(~vec4<u32>(86021u, u_input.a, 51120u, 1u) ^ select(vec4<u32>(7928u, 1u, 27280u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), true)), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), 26406u, 1u), vec4<u32>(u_input.a, 1u, func_4(vec4<u32>(1u, u_input.a, 24063u, u_input.a), Struct_3(1i), Struct_3(-7361i)), 79806u)), vec4<bool>(false, !var_2.x | false, var_2.x, true));
    var_0 = Struct_3(47054i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<u32>(abs(_wgslsmith_clamp_u32(28167u, 28765u, ~var_3.x)), 4294967295u), var_3.xzz);
}

