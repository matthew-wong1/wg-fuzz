struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global2: u32 = 7229u;

var<private> global3: array<Struct_2, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1059f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-520f, -388f)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1509f, 1148f, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + var_0))));
    let var_2 = 1u;
    var var_3 = ~vec4<i32>(1i, 1i, 1i, 1i);
    let var_4 = global3[_wgslsmith_index_u32(116419u, 28u)];
    return _wgslsmith_mod_vec2_u32(~vec2<u32>(~firstLeadingBit(39180u), _wgslsmith_mult_u32(arg_0, reverseBits(0u))), ~(~u_input.d.yy));
}

fn func_2() -> u32 {
    var var_0 = Struct_2((-584f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(488f, 963f)))) | true);
    global0 = _wgslsmith_mult_vec2_u32(func_3(global0.x, !vec3<bool>(var_0.a, any(vec4<bool>(false, false, var_0.a, var_0.a)), any(global1[_wgslsmith_index_u32(4294967295u, 26u)]))), ~vec2<u32>(_wgslsmith_div_u32(1u, 1u), ~_wgslsmith_mult_u32(4294967295u, u_input.c.x)));
    let var_1 = !all(vec2<bool>(true, var_0.a)) && false;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-4333i, -37433i)), vec2<i32>(2147483647i, 2147483647i) >> (vec2<u32>(0u, u_input.e) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(20884i, 2147483647i), vec2<i32>(1i, 22833i))), firstTrailingBit(reverseBits(vec2<i32>(16376i, -1i))) & ~vec2<i32>(-28169i, 2147483647i)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~4294967295u), global0.x), 28u)];
    return firstTrailingBit(~global0.x) | global0.x;
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_2 {
    global1 = array<vec4<bool>, 26>();
    let var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(arg_1, ~(~arg_1))), 28u)];
    global3 = array<Struct_2, 28>();
    global1 = array<vec4<bool>, 26>();
    var var_1 = 16140u;
    return global3[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.d.wyy) << (~23032u % 32u))), 28u)];
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    global2 = _wgslsmith_mod_u32(~(~(~u_input.c.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d.xzz, _wgslsmith_div_vec3_u32(~u_input.d.zyz, ~u_input.d.wzy)), global0.x));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(~0u, 1u, global0.x << (u_input.e % 32u))), 4294967295u), 26u)];
    global0 = countOneBits(~select(vec2<u32>(4294967295u, 1u), u_input.d.wx, !select(var_0.wx, vec2<bool>(var_0.x, false), true)));
    let var_1 = _wgslsmith_f_op_f32(-655f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(801f, -1065f)))))));
    let var_2 = func_4(-418f, _wgslsmith_clamp_u32(firstLeadingBit(0u >> (0u % 32u)), reverseBits(_wgslsmith_mod_u32(func_2(), u_input.a)), _wgslsmith_mod_u32(countOneBits(global0.x), ~_wgslsmith_add_u32(global0.x, global0.x))));
    return true == var_0.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1170f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -257i), vec3<i32>(-226i, 2147483647i, 16263i)) ^ 1i, ~(~29529i << (_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.d.zz) % 32u))), 30070i);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2194f, _wgslsmith_f_op_f32(func_5(func_1(true, var_0.x), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-8799i, -1i), var_0)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1426f, -1176f), vec2<f32>(756f, -1284f)), vec2<f32>(-1000f, -416f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) + -1938f)))));
    global1 = array<vec4<bool>, 26>();
    let var_2 = _wgslsmith_f_op_f32(round(var_1.x));
    let var_3 = ~38549i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_2), vec2<f32>(var_1.x, var_1.x), true)), var_1, any(vec3<bool>(true, false, true)))))), ~select(global0.x, 4294967295u, false));
}

