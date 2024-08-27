struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(3985u, 35333u, 1u, 39216u), vec4<u32>(1935u, 16312u, 77027u, 29108u), vec4<u32>(19975u, 0u, 1u, 32102u), vec4<u32>(106563u, 23955u, 48186u, 0u), vec4<u32>(29230u, 99444u, 21812u, 4523u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 0u, 20861u, 119686u), vec4<u32>(4294967295u, 1u, 30519u, 22646u), vec4<u32>(1u, 2206u, 14823u, 1u), vec4<u32>(10771u, 1u, 39212u, 85490u), vec4<u32>(23333u, 25063u, 1u, 1u), vec4<u32>(1076u, 0u, 4294967295u, 91607u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = array<vec4<u32>, 12>();
    var var_0 = Struct_1(!(-(~u_input.a.x) != -reverseBits(-2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(341f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)));
    var var_2 = false;
    let var_3 = abs(max(_wgslsmith_mult_u32(~4294967295u, ~46135u), ~(~1u))) <= ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 59945u, 53607u)), vec3<u32>(1u, 1u, 1u));
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> bool {
    let var_0 = func_3(vec4<bool>(all(vec4<bool>(true, true, true, true)), u_input.a.x != u_input.a.x, true, arg_0.x > _wgslsmith_div_u32(reverseBits(0u), arg_0.x)));
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.yz + vec2<f32>(_wgslsmith_div_f32(744f, 790f), _wgslsmith_div_f32(arg_1.x, 277f))))), Struct_2(Struct_1(arg_0.x >= 30758u), u_input.a.x, Struct_1(true), countOneBits(93218u)), !(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), !select(true, false, true));
    global0 = array<vec4<u32>, 12>();
    return !(!(var_1.b.b >= 1i));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    global0 = array<vec4<u32>, 12>();
    var var_0 = (firstTrailingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_1.b.d, 4294967295u)), firstTrailingBit(vec3<u32>(arg_1.b.d, arg_1.b.d, arg_0)))) > (~63591u ^ ~_wgslsmith_div_u32(arg_0, 23676u))) & (func_2(vec3<u32>(47218u, ~arg_0, _wgslsmith_mult_u32(arg_1.b.d, arg_1.b.d)), vec3<f32>(_wgslsmith_f_op_f32(-656f - arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))) || true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-938f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_2))));
    var_1 = false & !any(arg_1.c.zyx);
    let var_2 = vec2<bool>(all(arg_1.c.wx), !arg_1.d);
    return ~vec2<u32>(25145u, ~(~(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(firstTrailingBit(1u), 1u) > ~_wgslsmith_mod_u32(50351u, 2262u)), 1i, Struct_1(true), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(~func_1(123848u, Struct_4(vec2<f32>(348f, 1000f), Struct_2(Struct_1(true), -65176i, Struct_1(false), 1u), vec4<bool>(false, true, false, true), true), 1366f), countOneBits(vec2<u32>(21136u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-507f, -520f) * _wgslsmith_f_op_f32(f32(-1f) * -515f)) - _wgslsmith_f_op_f32(select(-1547f, -1309f, false)))), 1i ^ var_0.b, vec3<i32>(1i, i32(-1i) * -min(-12319i, 1i), u_input.a.x), _wgslsmith_div_vec3_i32(~(vec3<i32>(10224i, u_input.a.x, var_0.b) & u_input.a) << ((vec3<u32>(34627u, 23243u, 44311u) << (firstTrailingBit(vec3<u32>(5003u, 1u, var_0.d)) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a), abs(_wgslsmith_div_i32(37633i, 1i)));
}

