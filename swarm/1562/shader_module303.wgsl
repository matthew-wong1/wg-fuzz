struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-53902i, -1i, 57651i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-21887i, 58705i, 0i), vec3<i32>(-23744i, 34274i, 1i), vec3<i32>(2147483647i, 41909i, 2147483647i), vec3<i32>(-288i, -1i, -31986i), vec3<i32>(-36744i, -69917i, -512i), vec3<i32>(-25146i, 2147483647i, -12028i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    return Struct_1(vec2<i32>(-12289i, ~abs(24498i) << (u_input.e.x % 32u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~arg_0, 1i), -(vec2<i32>(arg_0, arg_0) ^ vec2<i32>(u_input.b, 1i)), ~vec2<i32>(-2147483647i, arg_0)), func_1().a >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 27184u), u_input.e.zz), u_input.e.yx) % vec2<u32>(32u))), 0i);
    var var_1 = Struct_2(true, Struct_1(select(vec2<i32>(arg_0, abs(30447i)), -vec2<i32>(arg_0, 43876i), ~var_0 < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.c, -1i), vec4<i32>(var_0, 0i, arg_0, 23656i)))), 4294967295u << (~u_input.d % 32u));
    global0 = array<vec4<i32>, 9>();
    var var_2 = vec3<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2088f, arg_2), -733f, any(vec2<bool>(var_1.a, var_1.a)))) - _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(abs(-920f))))), -1130f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -124f, var_2.x), vec3<f32>(-415f, -1345f, 483f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1318f, -1000f, 532f), vec3<f32>(-585f, -171f, var_2.x))))))));
    return Struct_1(vec2<i32>(arg_0 >> (u_input.d % 32u), 0i >> (var_1.c % 32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    let var_0 = func_3(-_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.yx), arg_1.zx), vec3<bool>(select(true, all(vec4<bool>(false, false, true, true)), true) || false, false, !(!(arg_0.x < arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3419f * -190f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2445f, 1371f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(835f, 891f) * vec2<f32>(-562f, 1000f))))) + vec2<f32>(127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-865f, 230f, true))))));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 9u)], ~_wgslsmith_mult_vec4_i32(-abs(global0[_wgslsmith_index_u32(u_input.a, 9u)]), global0[_wgslsmith_index_u32(~(arg_0.x | arg_0.x), 9u)]), var_0.a);
    let var_3 = _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(round(1451f))));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -445f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1153f)) * -2630f), all(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(514f - -1019f) - _wgslsmith_f_op_f32(round(var_3))))));
    return ~firstLeadingBit(14303u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1140f)) * -1747f)));
    let var_1 = func_1();
    global1 = -33376i;
    var var_2 = var_1;
    let var_3 = u_input.d;
    let var_4 = vec2<u32>(var_3, _wgslsmith_div_u32(firstLeadingBit(func_2(~u_input.e, vec3<i32>(1i, u_input.b, 0i), -54564i)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_3, u_input.a), vec3<u32>(1u, u_input.e.x, u_input.e.x)), ~u_input.e.xwx, vec3<bool>(true, false, true)), _wgslsmith_div_vec3_u32(vec3<u32>(var_3, var_3, u_input.d), u_input.e.wxz) ^ _wgslsmith_mult_vec3_u32(u_input.e.xyz, vec3<u32>(u_input.d, var_3, 25822u)))));
    global2 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, firstTrailingBit(1i), 1i, abs(var_2.a.x)), global0[_wgslsmith_index_u32(u_input.a, 9u)]), ~(global0[_wgslsmith_index_u32(~0u, 9u)] >> (select(vec4<u32>(4294967295u, 14039u, 0u, 12224u), u_input.e, vec4<bool>(false, false, true, true)) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3, var_4.x, 29999u, 18251u), vec4<u32>(var_3, u_input.e.x, 26702u, u_input.e.x)), u_input.e), _wgslsmith_add_vec4_u32(u_input.e, u_input.e), true), max(abs(u_input.e) ^ u_input.e, u_input.e << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, u_input.e.x, var_3, 1u), u_input.e) % vec4<u32>(32u)))), min(52677u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(11270u, var_3) ^ var_4.x, abs(1u))), vec4<f32>(-189f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1757f - -943f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(342f, -1108f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(377f, 524f)))), -1000f));
}

