struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, false, true);

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(false, false, true), Struct_2(true, false, true), Struct_2(true, true, true), Struct_2(false, true, true), Struct_2(false, false, true), Struct_2(true, false, false), Struct_2(false, true, true), Struct_2(true, true, false), Struct_2(false, true, false), Struct_2(false, false, true), Struct_2(false, true, false), Struct_2(false, true, false), Struct_2(true, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, u_input.b)), ~vec4<u32>(u_input.c.x, 1812u, 4294967295u, u_input.e.x)))) >> (~(_wgslsmith_mod_u32(~0u, u_input.c.x) >> (firstTrailingBit(_wgslsmith_mod_u32(34177u, 8867u)) % 32u)) % 32u);
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(221f, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) + _wgslsmith_f_op_f32(min(-302f, _wgslsmith_f_op_f32(f32(-1f) * -277f)))), _wgslsmith_f_op_f32(1f + var_0.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, var_0.a.x, -1265f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, var_0.a.x, -260f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 675f, arg_2.a.x)))))), global0.c));
    global1 = u_input.c.x;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(36315u, firstLeadingBit(u_input.c.x), abs(~u_input.e.x)), u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    var var_0 = vec2<bool>(global0.c, global0.a);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + 744f) + _wgslsmith_f_op_f32(func_3(vec3<i32>(0i, u_input.a, arg_2), Struct_1(arg_0.a), Struct_1(vec2<f32>(204f, arg_1.a.x))))), arg_0.a.x)));
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(66760u, max(~u_input.b, u_input.b)), ~(~(~vec2<u32>(4294967295u, u_input.c.x)))) >> (4294967295u % 32u);
    var_0 = !vec2<bool>(select(var_0.x & true, any(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, var_0.x, true, false))), true || global0.c), !(!var_0.x));
    let var_2 = vec4<bool>(true, false, (1u < u_input.e.x) || (~0u != ~_wgslsmith_sub_u32(100024u, u_input.d)), !var_0.x);
    return var_2;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = -u_input.a;
    let var_1 = -vec4<i32>(abs(-2147483647i), -u_input.a | -(~u_input.a), -63900i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0) >> (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(-13483i, u_input.a))));
    let var_2 = -549f;
    var var_3 = vec2<bool>(global0.a, global0.a);
    let var_4 = select(select(vec4<bool>(!(u_input.a >= u_input.a), any(vec2<bool>(true, true)), !(arg_0.x <= 539f), global0.a), select(select(!vec4<bool>(var_3.x, true, true, var_3.x), select(vec4<bool>(global0.a, var_3.x, global0.b, true), vec4<bool>(false, true, true, var_3.x), var_3.x), func_2(global2[_wgslsmith_index_u32(28157u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], 0i)), !vec4<bool>(global0.c, var_3.x, var_3.x, var_3.x), global0.a), all(func_2(global2[_wgslsmith_index_u32(~u_input.c.x, 6u)], global2[_wgslsmith_index_u32(~u_input.e.x, 6u)], 0i))), !select(select(select(vec4<bool>(global0.c, var_3.x, var_3.x, true), vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(false, true, global0.b, global0.c)), !vec4<bool>(global0.c, true, true, false), true), !(!vec4<bool>(global0.b, true, global0.b, global0.a)), !func_2(global2[_wgslsmith_index_u32(u_input.d, 6u)], global2[_wgslsmith_index_u32(10947u, 6u)], var_1.x).x), all(vec2<bool>(!global0.b, select(2147483647i >= var_0, false, true))));
    return global3[_wgslsmith_index_u32(abs(u_input.d), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -332f;
    let var_1 = !vec2<bool>(all(vec4<bool>(false, global0.a, global0.a, false)) || true, any(!vec3<bool>(global0.c, true, true)));
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.c, u_input.c);
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-128f, -1166f), _wgslsmith_div_vec2_f32(vec2<f32>(399f, 400f), vec2<f32>(-159f, -172f))) - vec2<f32>(_wgslsmith_f_op_f32(-564f + 633f), _wgslsmith_f_op_f32(round(628f)))))));
    var_2 = _wgslsmith_mod_u32(max(u_input.b, u_input.e.x) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(53267u, 0u, u_input.b, u_input.e.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 36054u, 0u), vec4<u32>(u_input.d, 1101u, u_input.b, 11912u))), ~_wgslsmith_mult_u32(u_input.d, u_input.e.x ^ 1u));
    var_3 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1610f), _wgslsmith_div_f32(-2015f, 627f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~u_input.a, 2147483647i), -2147483647i, 1i << (((_wgslsmith_sub_u32(20377u, 10973u) | u_input.b) << (~max(u_input.e.x, 42793u) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(660f)), _wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(f32(-1f) * -590f), -327f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1053f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1095f * 1384f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-552f, -545f), vec2<f32>(-409f, -953f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1613f, 1755f), vec2<f32>(1212f, 1715f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, 1402f))))));
}

