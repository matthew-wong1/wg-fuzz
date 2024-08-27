struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(15915u, 0u), vec2<u32>(26109u, 0u), vec2<u32>(23679u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(67940u, 1u), vec2<u32>(14787u, 1u), vec2<u32>(161u, 3883u), vec2<u32>(33881u, 1u), vec2<u32>(27002u, 4294967295u), vec2<u32>(42727u, 4294967295u), vec2<u32>(14014u, 14368u), vec2<u32>(40240u, 1u), vec2<u32>(1u, 41325u), vec2<u32>(73100u, 1u), vec2<u32>(48226u, 0u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_4(Struct_3(!arg_1.x, vec3<f32>(-1644f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-426f, -1967f) + _wgslsmith_div_f32(457f, 1000f)), 824f)), true, Struct_3(false & !select(false, false, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1900f + 1354f)))), Struct_2(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(1u, u_input.c, arg_0.x) ^ (arg_0.x ^ 36646u), ~arg_0.x), _wgslsmith_f_op_f32(-1097f + _wgslsmith_f_op_f32(step(1340f, 1143f))), true, Struct_1(-496f), vec4<bool>(any(select(vec3<bool>(false, true, arg_1.x), arg_1.xxy, vec3<bool>(false, true, false))), false, -55157i >= -u_input.d, abs(u_input.d) >= (5775i << (u_input.c % 32u)))), Struct_2(vec3<u32>(u_input.a | u_input.c, ~arg_0.x, 10150u << (u_input.a % 32u)) | min(select(vec3<u32>(arg_0.x, 285u, arg_0.x), vec3<u32>(arg_0.x, u_input.a, 0u), arg_1.x), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.c))), _wgslsmith_f_op_f32(ceil(-284f)), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1653f + 1938f))), !(!arg_1)));
    global0 = array<vec2<u32>, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(536f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2367f + var_0.e.d.a))))), vec3<f32>(_wgslsmith_f_op_f32(-396f + _wgslsmith_f_op_f32(max(893f, -1713f))), var_0.c.b.x, 423f), !var_0.d.c));
    let var_2 = var_0.d.d;
    var var_3 = max(_wgslsmith_sub_vec4_u32(abs(countOneBits(vec4<u32>(4294967295u, arg_0.x, 4928u, arg_0.x)) & ~vec4<u32>(59578u, 4294967295u, 403u, var_0.e.a.x)), ~(~vec4<u32>(u_input.c, arg_0.x, 4294967295u, var_0.e.a.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a, var_0.e.a.x, u_input.a, 0u) >> (vec4<u32>(arg_0.x, 48530u, 7010u, arg_0.x) % vec4<u32>(32u))), reverseBits(vec4<u32>(arg_0.x, arg_0.x, u_input.a, arg_0.x)) & ~vec4<u32>(0u, arg_0.x, 35667u, 22863u)), vec4<u32>(~(0u >> (arg_0.x % 32u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26324u, u_input.a, arg_0.x), vec4<u32>(u_input.c, arg_0.x, u_input.c, u_input.a)) >> (~u_input.c % 32u), ~_wgslsmith_mult_u32(arg_0.x, var_0.e.a.x)), abs(vec4<u32>(~arg_0.x, arg_0.x ^ u_input.c, abs(0u), 16823u))));
    return var_0.d.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> bool {
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    var var_0 = _wgslsmith_dot_vec3_u32(func_3(~countOneBits(global0[_wgslsmith_index_u32(4294967295u, 15u)]) | _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(1u, 15u)] << (global0[_wgslsmith_index_u32(4294967295u, 15u)] % vec2<u32>(32u)), vec2<u32>(u_input.c, 0u), ~vec2<u32>(14978u, u_input.c)), vec4<bool>(all(vec4<bool>(false, true, false, true)), false, 56696u != u_input.a, select(arg_0.x < 1362f, false, select(false, false, false)))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(u_input.c, 1u, u_input.c), vec3<bool>(true, false, false)), vec3<u32>(u_input.a, 4294967295u, 4294967295u)) ^ vec3<u32>(5687u, _wgslsmith_clamp_u32(u_input.c, 11512u, u_input.c), _wgslsmith_div_u32(u_input.c, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), 1703u, ~1u), vec3<u32>(reverseBits(1u), 0u, reverseBits(u_input.c)))));
    var_0 = u_input.c;
    global0 = array<vec2<u32>, 15>();
    return all(vec3<bool>(all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(618f, arg_0.x)), 1846f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) - _wgslsmith_f_op_f32(floor(arg_0.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    global0 = array<vec2<u32>, 15>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 1044f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(318f - 1000f))) * arg_1.b), 701f);
    global0 = array<vec2<u32>, 15>();
    let var_1 = Struct_3(any(!arg_1.e.xx), arg_2.a.b);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.e.b)) + _wgslsmith_f_op_f32(f32(-1f) * -753f));
    return Struct_2(vec3<u32>(arg_1.a.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, arg_1.a.x, arg_1.a.x, 4294967295u), vec4<u32>(arg_1.a.x, 55863u, arg_2.e.a.x, 20116u)), vec4<u32>(~arg_1.a.x, 1u, _wgslsmith_clamp_u32(arg_1.a.x, u_input.c, 1u), 4294967295u)), func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 0u), vec2<u32>(arg_1.a.x, arg_1.a.x)), vec4<bool>(var_1.a, false, arg_1.e.x, arg_0.x)).x >> (arg_1.a.x % 32u)), arg_2.c.b.x, arg_0.x, arg_2.d.d, arg_2.d.e);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec3_u32(abs(abs(firstLeadingBit(vec3<u32>(4294967295u, 1u, 0u)))) | reverseBits(~vec3<u32>(u_input.c, 4409u, u_input.c) | ~vec3<u32>(4294967295u, 0u, 56109u)), firstTrailingBit(~(~vec3<u32>(u_input.a, u_input.a, u_input.a) << (firstTrailingBit(vec3<u32>(16941u, 4294967295u, u_input.a)) % vec3<u32>(32u)))));
    let var_1 = -14679i;
    let var_2 = func_4(vec4<bool>(any(vec3<bool>(func_2(vec4<f32>(130f, 587f, 534f, -829f), -1i, u_input.d), false, true)), false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), var_1 > u_input.b)), ((var_0.x << (u_input.a % 32u)) >= firstTrailingBit(var_0.x)) | all(vec3<bool>(true, true, false))), Struct_2(~vec3<u32>(min(u_input.c, 22554u), 46504u & var_0.x, abs(1u)), -849f, true | (true && select(false, false, true)), Struct_1(_wgslsmith_div_f32(-131f, _wgslsmith_f_op_f32(-607f + 1436f))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), any(vec2<bool>(false, true)))), Struct_4(Struct_3(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1232f, -139f, 423f) + vec3<f32>(1217f, -1492f, 1714f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, -2416f, 634f))))), firstLeadingBit(var_1) > u_input.d, Struct_3(!select(true, false, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(468f, -481f, -509f)))), Struct_2(~vec3<u32>(4294967295u, var_0.x, u_input.c) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<u32>(4294967295u, u_input.a, u_input.c), vec3<u32>(63860u, 1u, 1u)), -1068f, any(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(round(1906f))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), 22741i > u_input.d)), Struct_2(~vec3<u32>(4294967295u, 8292u, 73156u) | (vec3<u32>(var_0.x, 4294967295u, var_0.x) >> (vec3<u32>(u_input.a, 20907u, u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-153f, -799f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(730f, -269f, 155f, 1077f)), ~u_input.d, abs(1i)), Struct_1(_wgslsmith_f_op_f32(step(197f, -790f))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))))));
    var var_3 = var_2.d;
    let var_4 = var_2.b;
    return StorageBuffer(countOneBits(u_input.c), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

