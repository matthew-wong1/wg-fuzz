struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(-1000f, vec2<bool>(true, true), true), Struct_3(761f, vec2<bool>(false, true), true), Struct_3(887f, vec2<bool>(true, false), false), Struct_3(-492f, vec2<bool>(false, true), false), Struct_3(545f, vec2<bool>(true, true), false), Struct_3(-725f, vec2<bool>(false, false), false), Struct_3(-1415f, vec2<bool>(true, true), true), Struct_3(1000f, vec2<bool>(true, false), false), Struct_3(-169f, vec2<bool>(false, false), false), Struct_3(1831f, vec2<bool>(true, true), false), Struct_3(103f, vec2<bool>(true, false), true), Struct_3(-1154f, vec2<bool>(true, true), false), Struct_3(-788f, vec2<bool>(true, true), false), Struct_3(417f, vec2<bool>(true, true), true), Struct_3(745f, vec2<bool>(true, true), false), Struct_3(-657f, vec2<bool>(true, false), true), Struct_3(1612f, vec2<bool>(false, true), true), Struct_3(-808f, vec2<bool>(false, false), false), Struct_3(1000f, vec2<bool>(true, false), false), Struct_3(246f, vec2<bool>(true, true), true), Struct_3(1000f, vec2<bool>(false, false), true), Struct_3(-282f, vec2<bool>(false, true), true), Struct_3(-179f, vec2<bool>(true, true), false), Struct_3(781f, vec2<bool>(true, true), false), Struct_3(-1527f, vec2<bool>(false, false), true), Struct_3(-586f, vec2<bool>(true, true), false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> bool {
    let var_0 = vec4<bool>(arg_1, any(vec2<bool>(true, true)), any(vec3<bool>(1f >= _wgslsmith_f_op_f32(step(-743f, -1000f)), arg_1, arg_1)), all(select(vec2<bool>(true, true), vec2<bool>(arg_1, all(vec3<bool>(true, arg_1, false))), any(vec4<bool>(false, false, arg_1, arg_1)))));
    let var_1 = Struct_1(vec3<i32>(u_input.a, ~(~15943i), max(-2147483647i, _wgslsmith_sub_i32(10779i, u_input.b.x))) << (vec3<u32>(1u, u_input.d.x, ~(u_input.d.x << (74592u % 32u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(sign(-314f)))));
    let var_3 = var_1;
    global0 = array<Struct_3, 26>();
    return arg_1;
}

fn func_3(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = select(vec3<bool>(true, abs(16578u ^ arg_0.x) >= 4294967295u, true), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), !vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(true, u_input.a <= -10653i, false), _wgslsmith_clamp_u32(arg_0.x, 1u, u_input.d.x) != 2454u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1390f, _wgslsmith_f_op_f32(-1f))))), _wgslsmith_f_op_f32(f32(-1f) * -237f));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(-529f, -346f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x))), var_1.x, func_2(u_input.b, false)))))));
    var var_3 = Struct_1(-u_input.b);
    let var_4 = Struct_2(!any(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), var_0.x)), firstTrailingBit(_wgslsmith_add_vec2_u32(~(~arg_0.yy), _wgslsmith_add_vec2_u32(~arg_0.wz, vec2<u32>(u_input.d.x, arg_0.x)))));
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> vec4<f32> {
    global0 = array<Struct_3, 26>();
    var var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-156f - arg_1.a), vec2<bool>(true, true), func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), true));
    let var_2 = Struct_1(func_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, arg_2, 0u), ~vec4<u32>(1u, arg_2, arg_2, 4294967295u)) << (firstTrailingBit(~vec4<u32>(0u, 33974u, 0u, arg_2)) % vec4<u32>(32u))));
    var var_3 = firstLeadingBit(22016i << (arg_2 % 32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(trunc(-525f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a - arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(arg_1.a * 825f), -228f) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(796f, 1252f, arg_1.a, arg_1.a), vec4<f32>(-1127f, var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 933f, 882f, arg_1.a)))))) + vec4<f32>(-732f, -153f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(185f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    var var_0 = any(!(!vec2<bool>(true, any(vec4<bool>(true, true, false, false)))));
    var var_1 = vec3<u32>(74520u, u_input.d.x, _wgslsmith_mod_u32(7609u, ~1u) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(48172u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 1u, u_input.d.x)), firstTrailingBit(u_input.d.x)) % 32u)) & firstTrailingBit(~_wgslsmith_div_vec3_u32(~vec3<u32>(50579u, 54711u, 1u), vec3<u32>(120743u, 1u, u_input.d.x)));
    global0 = array<Struct_3, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1052f)), _wgslsmith_f_op_f32(round(977f))) - -185f), 2457f, -266f, 591f), _wgslsmith_f_op_vec4_f32(func_1(true, Struct_3(_wgslsmith_f_op_f32(1203f - _wgslsmith_div_f32(-292f, 1066f)), vec2<bool>(true, true), true), ~(1746u & u_input.d.x) >> (63131u % 32u)))));
    var var_3 = var_2.wx;
    let var_4 = Struct_1(-(u_input.b | vec3<i32>(u_input.b.x, -30378i, -52444i)));
    let var_5 = Struct_2(true, ~var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_div_vec2_f32(var_2.zz, _wgslsmith_f_op_vec4_f32(func_1(all(!vec3<bool>(var_5.a, var_5.a, true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_5.b.x, var_5.b.x << (77557u % 32u)), 26u)], ~29606u)).xx));
}

