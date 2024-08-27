struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-204f, 254f, -1486f, 698f), vec4<f32>(1751f, 1567f, 1000f, 176f), vec4<f32>(-1172f, 871f, -419f, 1541f), vec4<f32>(-508f, -318f, 284f, -272f), vec4<f32>(572f, -2021f, -1168f, -113f), vec4<f32>(-755f, 1805f, 1194f, 1584f), vec4<f32>(-102f, -135f, -352f, -174f), vec4<f32>(-809f, -1085f, 1250f, 1306f));

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = Struct_3(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1625f)))));
    var var_0 = Struct_3(global1.a);
    var var_1 = vec2<u32>(abs(~_wgslsmith_add_u32(1u, 136634u)) & _wgslsmith_add_u32(abs(~38326u), select(3484u, ~25007u, all(vec2<bool>(false, false)))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 16149u, 13893u), vec4<u32>(5203u, 4294967295u, 4294967295u, 30875u)), 1u) << (_wgslsmith_mod_u32(1u, ~max(1u, 61265u)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))), vec4<u32>(_wgslsmith_sub_u32(1u, 1u ^ var_1.x), 8095u, min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 0u, var_1.x), vec3<u32>(53583u, 1u, 0u))), 13801u) & vec4<u32>(~(var_1.x ^ 100757u), 10641u, max(~0u, 4294967295u), var_1.x), vec3<i32>(~_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, 42607i), ~2147483647i), reverseBits(reverseBits(u_input.a.x)), 0i), u_input.a);
    return ~1u;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = min(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_3.a, arg_1.c), select(countOneBits(vec2<u32>(4294967295u, arg_3.a)), vec2<u32>(11154u, arg_3.a), arg_0)) | ~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_3.c, 150014u) | firstTrailingBit(vec2<u32>(arg_3.a, arg_1.a)), firstLeadingBit(vec2<u32>(arg_3.c, arg_3.a)), !arg_0), vec2<u32>(4294967295u, 69410u & _wgslsmith_dot_vec4_u32(vec4<u32>(29868u, 0u, arg_3.a, arg_1.a), vec4<u32>(arg_1.a, 50816u, arg_3.a, 53852u))), vec2<u32>(arg_3.a, abs(49906u)) | (vec2<u32>(0u, arg_3.c) | ~vec2<u32>(15038u, 1u))));
    global2 = array<vec4<f32>, 26>();
    global2 = array<vec4<f32>, 26>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 137f)), _wgslsmith_f_op_f32(-1888f + global1.a)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1196f * arg_1.b), -1000f, _wgslsmith_f_op_f32(ceil(-808f)), 246f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(arg_1.a, 26u)] * vec4<f32>(arg_3.b, arg_3.b, global1.a, 1057f)))))));
    return -920f;
}

fn func_2(arg_0: bool) -> bool {
    global0 = array<vec4<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(true, Struct_2(func_3(), 1741f, _wgslsmith_mod_u32(86494u, 656u)), u_input.a.x, Struct_2(48291u, _wgslsmith_f_op_f32(round(1373f)), ~0u))))));
    var var_1 = select(!vec4<bool>(true, false, _wgslsmith_f_op_f32(max(global1.a, global1.a)) < global1.a, all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), true))), !vec4<bool>(true && all(vec4<bool>(true, true, true, false)), true, any(vec4<bool>(true, false, arg_0, arg_0)) && true, false), !select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, arg_0, true, true), vec4<bool>(false, true, false, false), 1648i == u_input.a.x), !arg_0 && true));
    var var_2 = (i32(-1i) * -(~max(-2806i, u_input.a.x))) | u_input.a.x;
    let var_3 = Struct_3(var_0);
    return false;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a - -996f), global1.a));
    global1 = Struct_3(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.a)))) * _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(floor(global1.a))))));
    var var_1 = any(vec3<bool>(select(func_2(true), !all(vec3<bool>(true, false, true)), false), true, true));
    let var_2 = global1.a;
    var var_3 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(12368u, max(~94198u, ~61308u)), 50645u), var_0.a, ~0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) - -542f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.a);
    global0 = array<vec4<f32>, 8>();
    global2 = array<vec4<f32>, 26>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_div_f32(var_0.a, var_0.a)) + _wgslsmith_f_op_f32(floor(var_0.a)))));
    global1 = Struct_3(554f);
    var var_2 = ~(1u >> ((1u << (~_wgslsmith_dot_vec2_u32(vec2<u32>(29558u, 0u), vec2<u32>(54223u, 4294967295u)) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, countOneBits(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(70369i, u_input.a.x, -2147483647i, 467i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i) | vec4<i32>(18002i, 66077i, u_input.a.x, u_input.a.x)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(13775i, 21086i, 2147483647i, 2147483647i), vec4<i32>(21019i, 33067i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -21587i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x)), vec4<bool>(true, true, true, false)), vec4<bool>(u_input.a.x >= u_input.a.x, false, false, global1.a != 524f))));
}

