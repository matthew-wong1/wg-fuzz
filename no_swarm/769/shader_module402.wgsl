struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-1i, -33984i, -27603i, -25269i, 15724i, 36735i, -22248i, 2147483647i, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<i32, 9>();
    let var_0 = 35547i >= (1i & global0[_wgslsmith_index_u32(0u, 9u)]);
    var var_1 = abs(select(vec4<u32>(_wgslsmith_sub_u32(abs(u_input.d.x), max(3752u, 0u)), ~(~1u), u_input.a.x, u_input.a.x), ~(~(vec4<u32>(4294967295u, u_input.d.x, 22922u, u_input.a.x) | u_input.d)), all(vec3<bool>(!var_0, all(vec4<bool>(var_0, var_0, false, true)), var_0 || true))));
    return firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, u_input.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = vec4<u32>(4294967295u, 1u, ~(_wgslsmith_mod_u32(_wgslsmith_sub_u32(34791u, arg_1), 1u) << (_wgslsmith_sub_u32(u_input.a.x ^ 1u, ~0u) % 32u)), max(~5865u, arg_1));
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_1 = Struct_2(~arg_0.b.a);
    var_1 = Struct_2(max(_wgslsmith_clamp_u32(1u, 1u, ~0u), reverseBits(u_input.d.x) ^ _wgslsmith_add_u32(0u, var_0.x)) << (1u % 32u));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    global0 = array<i32, 9>();
    let var_0 = Struct_1(arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, 1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 - arg_0), _wgslsmith_f_op_f32(abs(arg_0))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(835f, -1048f), vec2<f32>(-1534f, var_0.a), vec2<bool>(arg_3.x, arg_3.x))), vec2<f32>(-1000f, arg_2), select(arg_3.x, arg_3.x, arg_3.x)))), select(vec2<bool>(arg_3.x, true), vec2<bool>(false, arg_3.x & arg_3.x), func_4(Struct_3(vec4<f32>(arg_2, arg_2, arg_0, arg_2), Struct_2(u_input.a.x)), u_input.d.x, func_3(var_0))))));
    var var_2 = firstTrailingBit(select(-firstTrailingBit(_wgslsmith_mod_i32(-13716i, -2147483647i)), _wgslsmith_mod_i32(min(_wgslsmith_sub_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), false));
    let var_3 = var_0;
    return 16046u;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, 897f, 506f, 1081f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1809f * -1997f), _wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(max(-345f, -630f)), -1319f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(920f, 695f, 422f, -980f), vec4<f32>(-1575f, 1223f, 1508f, 739f)))))), Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, ~36065u), vec2<u32>(func_2(112f, -vec3<i32>(global0[_wgslsmith_index_u32(0u, 9u)], 16893i, -42413i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), 82742u));
    var var_3 = -1i;
    let var_4 = Struct_3(var_1.a, var_1.b);
    return Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_clamp_u32(u_input.d.x, 0u, 0u)));
    var var_1 = 0i;
    let var_2 = Struct_1(284f);
    var var_3 = Struct_2(31428u >> (_wgslsmith_div_u32(u_input.d.x, 4294967295u | u_input.a.x) % 32u));
    var_3 = Struct_2(~u_input.d.x);
    global0 = array<i32, 9>();
    var var_4 = vec3<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(49773u, 9u)]) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -2147483647i, global0[_wgslsmith_index_u32(var_3.a, 9u)]), vec3<i32>(1i, u_input.b.x, u_input.c)) | -1i), _wgslsmith_mod_i32(abs(0i), select(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -2147483647i), global0[_wgslsmith_index_u32(u_input.d.x, 9u)], any(vec2<bool>(false, false)))) | select(-33828i, _wgslsmith_mod_i32(u_input.b.x, 9037i) ^ -global0[_wgslsmith_index_u32(42881u, 9u)], false), 2147483647i);
    var var_5 = 126u;
    let var_6 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zwz);
}

