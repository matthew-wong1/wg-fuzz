struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(43487i, 1i), vec2<i32>(-17721i, 79469i), vec2<i32>(95254i, -42422i), vec2<i32>(-1i, 34703i), vec2<i32>(-63379i, -16291i), vec2<i32>(-4820i, 7842i), vec2<i32>(-1i, 41026i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(-8944i, 3913i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), -31377i), vec2<i32>(48058i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(28595i, i32(-2147483648)), vec2<i32>(367i, 16187i), vec2<i32>(18141i, -70553i), vec2<i32>(0i, -8897i), vec2<i32>(33500i, -45056i), vec2<i32>(2147483647i, -10323i), vec2<i32>(51055i, 2147483647i), vec2<i32>(i32(-2147483648), -23092i), vec2<i32>(70091i, 2147483647i), vec2<i32>(-38817i, -1i), vec2<i32>(60031i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 0i));

var<private> global2: array<i32, 8> = array<i32, 8>(i32(-2147483648), -41692i, -33696i, 2147483647i, i32(-2147483648), -1i, -1i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global2 = array<i32, 8>();
    global0 = array<i32, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    global1 = array<vec2<i32>, 28>();
    var var_1 = _wgslsmith_mod_vec2_i32(abs(vec2<i32>(~firstTrailingBit(-2147483647i), -firstTrailingBit(global2[_wgslsmith_index_u32(arg_0.x, 8u)]))), u_input.c.yw ^ max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8283u, 7229u, arg_0.x, 1u) & vec4<u32>(15866u, 24065u, arg_0.x, arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 66733u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 29468u, arg_0.x))), 28u)], vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.c.x, -1i)), 1i)));
    return Struct_2(u_input.c.wzz, abs(abs(arg_0.x)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(498f + arg_0))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(409f, -590f))) + arg_0));
    let var_1 = all(vec3<bool>(true, true, true));
    var_0 = _wgslsmith_div_f32(arg_0, arg_0);
    var_0 = arg_0;
    global1 = array<vec2<i32>, 28>();
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = all(vec2<bool>(true, false));
    let var_1 = ~16404i;
    global0 = array<i32, 32>();
    let var_2 = Struct_4(vec4<i32>(-65346i, _wgslsmith_clamp_i32(~2147483647i, abs(1i), global2[_wgslsmith_index_u32(~1u, 8u)]), _wgslsmith_clamp_i32(2147483647i, global0[_wgslsmith_index_u32(1u, 32u)] & 1i, firstTrailingBit(i32(-1i) * -21368i)), max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 0u)), ~vec2<u32>(6004u, 26543u)), 8u)], countOneBits(global2[_wgslsmith_index_u32(1u, 8u)]))), Struct_2(u_input.c.ywz, 1u), func_2(~(~vec3<u32>(11554u, 0u, 1u) << (select(vec3<u32>(74416u, 29275u, 0u), vec3<u32>(93218u, 18397u, 19908u), vec3<bool>(true, false, true)) % vec3<u32>(32u)))), ~vec3<u32>(33788u, ~41902u, abs(max(0u, 13935u))), !(!all(vec2<bool>(true, true))));
    global2 = array<i32, 8>();
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-694f * _wgslsmith_f_op_f32(func_3(1187f, 1835f))), 1798f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 28>();
    global0 = array<i32, 32>();
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-107f, -843f, _wgslsmith_f_op_f32(-714f - -1614f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(259f, -390f, 1044f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(615f, 141f, -1986f), vec3<f32>(-1018f, 834f, 1898f)))))));
    global1 = array<vec2<i32>, 28>();
    let var_2 = Struct_4(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(3087u), 1u), 32u)], 1i, 2147483647i, 2147483647i), func_2(vec3<u32>(max(1u, abs(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 34317u, 358u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), ~59531u)), Struct_2(u_input.c.xzw, 1u), vec3<u32>(~1u, func_2(abs(vec3<u32>(21876u, 29051u, 51558u))).b ^ ~abs(53261u), 21478u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(4605u, 0u, 36916u, 11384u), vec4<u32>(1u, 16830u, 38461u, 54838u))), abs(~4294967295u)) >= 91714u);
    var var_3 = Struct_5(var_1.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f) * var_1.x)), var_1.x, select(vec3<bool>(any(vec2<bool>(false, var_2.e)), var_2.e | var_2.e, var_2.a.x == -3020i), vec3<bool>(false || var_2.e, true, select(false, var_2.e, false)), _wgslsmith_f_op_f32(var_1.x * 477f) < _wgslsmith_div_f32(var_1.x, -123f)), firstTrailingBit(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, global2[_wgslsmith_index_u32(var_2.c.b, 8u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.c.x)), _wgslsmith_f_op_f32(1148f * _wgslsmith_f_op_f32(f32(-1f) * -1563f)));
}

