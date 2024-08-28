struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-831f, 1000f, -894f, -389f), vec4<f32>(120f, 963f, 195f, -1867f), vec4<f32>(-1066f, -192f, -1234f, -482f), vec4<f32>(935f, 627f, 1322f, 1009f), vec4<f32>(-209f, 1845f, 445f, 790f), vec4<f32>(-929f, 1000f, -226f, -1448f), vec4<f32>(-219f, 1000f, -2185f, -583f), vec4<f32>(-1382f, -328f, -1489f, 690f), vec4<f32>(-817f, -352f, 1311f, -1366f), vec4<f32>(257f, -111f, -608f, -1839f), vec4<f32>(371f, -1073f, 1000f, 1265f), vec4<f32>(-1000f, -1000f, -300f, 1051f), vec4<f32>(-166f, 458f, 184f, -1116f), vec4<f32>(-383f, -595f, -1000f, -657f), vec4<f32>(1000f, -2206f, -1354f, 333f), vec4<f32>(755f, -417f, -2358f, -931f), vec4<f32>(-132f, -1504f, -1000f, -1043f), vec4<f32>(848f, 906f, -1155f, 1779f), vec4<f32>(-1025f, -1370f, -233f, 1000f));

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(false, 1022f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = reverseBits(vec2<i32>(-1i) * -(~u_input.b.yx));
    global0 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 14>();
    global1 = array<vec4<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, arg_0.c.x)))));
    return Struct_4(false, 543f);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    global1 = array<vec4<f32>, 14>();
    let var_0 = Struct_3(~vec2<u32>(u_input.c, 33701u));
    var var_1 = u_input.b.x;
    let var_2 = (reverseBits((vec3<u32>(var_0.a.x, u_input.c, u_input.c) >> (vec3<u32>(4294967295u, 1u, 31578u) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.c, 67369u, u_input.c)) | ~(reverseBits(vec3<u32>(var_0.a.x, 0u, 39154u)) << (~vec3<u32>(var_0.a.x, 62317u, 1u) % vec3<u32>(32u)))) ^ ((_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.x, 4294967295u, 38097u)), ~vec3<u32>(34963u, var_0.a.x, 710u)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x)), vec3<u32>(31044u, 101417u, 68025u)) % vec3<u32>(32u))) >> (abs(vec3<u32>(u_input.c, u_input.c ^ u_input.c, var_0.a.x)) % vec3<u32>(32u)));
    var var_3 = -564f;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b)))), -751f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> vec3<u32> {
    global2 = array<Struct_4, 1>();
    global1 = array<vec4<f32>, 14>();
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, arg_2) & vec2<u32>(46772u, 16222u), ~vec2<u32>(arg_2, u_input.c), true), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, arg_2), reverseBits(vec2<u32>(0u, u_input.c))))) | (_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.c, 24835u) | vec2<u32>(4294967295u, 4294967295u)), firstTrailingBit(~vec2<u32>(u_input.c, arg_2))) ^ vec2<u32>(arg_2, 42760u << (_wgslsmith_dot_vec4_u32(vec4<u32>(13972u, 4021u, 79551u, 0u), vec4<u32>(arg_2, arg_2, 23314u, 4294967295u)) % 32u)));
    var var_1 = Struct_2(Struct_1(-min(abs(arg_0.x), -54995i >> (var_0.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-577f + -2045f) - _wgslsmith_f_op_f32(func_3(Struct_4(arg_1, 1245f), vec3<i32>(arg_0.x, 2147483647i, u_input.b.x), Struct_2(Struct_1(24592i, 572f, global1[_wgslsmith_index_u32(59394u, 14u)], arg_0.x, u_input.a), vec3<f32>(378f, -127f, 1505f), arg_1, 1i, Struct_1(u_input.a, -1000f, vec4<f32>(-1139f, -766f, -695f, -507f), arg_0.x, -2147483647i))))), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(select(~1u, u_input.c, select(true, false, true)), 19u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), 1707f, _wgslsmith_f_op_f32(2184f - -1000f), _wgslsmith_f_op_f32(min(864f, 457f))), select(!arg_1, true, arg_1))), 36501i, _wgslsmith_mult_i32(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-19203i, arg_0.x), arg_0.zz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(Struct_1(-2147483647i, -1480f, vec4<f32>(969f, -1831f, 445f, 463f), arg_0.x, u_input.a), -arg_0.x, Struct_3(vec2<u32>(var_0.x, var_0.x))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-534f, 631f, arg_1)) * _wgslsmith_f_op_f32(300f + -1916f)), _wgslsmith_f_op_f32(sign(-2432f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2563f, 1756f, -418f)))))), true, -u_input.b.x, Struct_1(1i ^ (~(-28135i) | ~u_input.a), _wgslsmith_f_op_f32(1000f - -1646f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(339f - 1132f), 485f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2347f, -272f, 244f, 103f)))), u_input.b.x, arg_0.x));
    global0 = array<vec4<f32>, 19>();
    return firstLeadingBit(~(~vec3<u32>(arg_2, 1u, 1u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    var var_0 = select(_wgslsmith_f_op_f32(-arg_0.b) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))), arg_0.a, true);
    global1 = array<vec4<f32>, 14>();
    global2 = array<Struct_4, 1>();
    let var_1 = ~27602u;
    var var_2 = 4294967295u;
    return !(!any(select(vec4<bool>(arg_0.a, false, arg_0.a, false), !vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), !arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~1u));
    let var_1 = all(vec2<bool>(func_4(func_1(Struct_1(-45429i, 1000f, vec4<f32>(-276f, 1764f, 1371f, -790f), u_input.a, u_input.b.x), u_input.a, Struct_3(vec2<u32>(1u, 58181u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 50269u, u_input.c), func_2(vec4<i32>(57189i, -5878i, -8949i, u_input.b.x), false, u_input.c)), Struct_3(vec2<u32>(u_input.c, u_input.c))), func_4(func_1(Struct_1(-2147483647i, 411f, global1[_wgslsmith_index_u32(24332u, 14u)], u_input.b.x, -17872i), ~44723i, Struct_3(vec2<u32>(u_input.c, u_input.c))), min(select(vec3<u32>(0u, 18852u, u_input.c), vec3<u32>(4294967295u, 47182u, 0u), vec3<bool>(false, true, false)), vec3<u32>(u_input.c, 24929u, u_input.c) | vec3<u32>(4294967295u, 14729u, u_input.c)), Struct_3(abs(vec2<u32>(u_input.c, u_input.c))))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(0i, -1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(834f)))), global0[_wgslsmith_index_u32(1u, 19u)], ~reverseBits(_wgslsmith_mod_i32(-17253i, -12665i)), -2147483647i);
    var var_3 = Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(~(u_input.c | u_input.c), ~u_input.c), vec2<u32>(u_input.c, u_input.c)));
    var var_4 = Struct_1(~(-_wgslsmith_add_i32(u_input.a, reverseBits(-2147483647i))), var_2.c.x, _wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(~(~abs(0u)), 19u)], global1[_wgslsmith_index_u32(abs(abs(firstLeadingBit(u_input.c))), 14u)])), -23094i, ~(-2147483647i));
    var var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(countOneBits(u_input.a) << ((1u | u_input.c) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-var_4.d, 1i), var_4.a, -1i), -(~(-11765i)) ^ var_4.a, 1i), 1f);
}

