struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_div_f32(-1646f, -842f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), !(arg_0.b == true))))) * 1f);
    global0 = array<u32, 4>();
    var_0 = -138f;
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    return ~firstLeadingBit(_wgslsmith_sub_vec3_u32(countOneBits(u_input.a), ~countOneBits(u_input.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<f32>) -> bool {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_0 = true & all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true));
    var var_1 = 0i;
    global0 = array<u32, 4>();
    return !select(all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(57848u, global0[_wgslsmith_index_u32(4294967295u, 4u)]), ~arg_2) == _wgslsmith_mult_u32(5283u, arg_1.x), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(21603u, 4u)], 14874u), any(vec4<bool>(func_4(vec4<f32>(246f, 1686f, -1722f, -1814f), func_3(Struct_1(u_input.a.x, false, vec2<u32>(u_input.a.x, u_input.a.x), 2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_mult_u32(48386u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2474f, -2444f, -109f))), true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), true)), ~abs(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], u_input.a.x), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]), vec2<bool>(true, false))) ^ u_input.a.xy, _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(0i, u_input.c, u_input.c)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-5810i, -57002i, u_input.b.x))) >> (108963u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~35429u & global0[_wgslsmith_index_u32(~4294967295u, 4u)], abs(abs(~global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), 65154u), 4u)]);
    var var_1 = -((max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -23496i, 0i, -28705i), vec4<i32>(var_0.d, var_0.d, 1i, 2147483647i)), ~vec4<i32>(u_input.c, u_input.b.x, -1i, var_0.d)) | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, u_input.c, 1874i, 2147483647i), min(vec4<i32>(0i, var_0.d, u_input.b.x, -1i), vec4<i32>(u_input.c, u_input.c, u_input.b.x, 34776i)))) & (vec4<i32>(max(1i, var_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(17032i, var_0.d), u_input.b), -45353i, ~(-34510i)) >> (select(vec4<u32>(27918u, u_input.a.x, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), countOneBits(vec4<u32>(170u, 17069u, 2709u, 25474u)), !vec4<bool>(var_0.b, false, var_0.b, var_0.b)) % vec4<u32>(32u))));
    var var_2 = vec4<f32>(479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(327f - -293f)))), 267f, _wgslsmith_f_op_f32(round(-1100f)));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.e, 4u)], 4u)], u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.e, 0u, var_0.c.x, var_0.e), vec4<u32>(global0[_wgslsmith_index_u32(57064u, 4u)], 26221u, 1u, 43475u))), select(1u, 4294967295u, true), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 4u)])), vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 4u)], 4u)], global0[_wgslsmith_index_u32(47272u, 4u)] | var_0.e), ~abs(0u), u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)])), var_0.b, ~(firstLeadingBit(vec2<u32>(u_input.a.x, var_0.c.x)) >> (~vec2<u32>(global0[_wgslsmith_index_u32(51929u, 4u)], var_0.a) % vec2<u32>(32u))), -min(u_input.b.x, 14765i), ~(~70402u));
    global0 = array<u32, 4>();
    return ~reverseBits(vec4<u32>(101564u, var_0.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15445u, 4u)], 4u)]) ^ ~vec4<u32>(1u, global0[_wgslsmith_index_u32(117534u, 4u)], var_0.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])) << (~vec4<u32>(var_3.c.x, 0u, ~(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] & var_0.e), var_0.e) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(countOneBits(113796u), 4294967295u, 66971u, ~4294967295u)), vec4<u32>(abs(arg_0.e << (u_input.a.x % 32u)), 74049u, arg_0.a, 97092u)), func_2(), vec4<bool>(true, false, false, arg_0.b));
    global0 = array<u32, 4>();
    var var_1 = u_input.a.zz;
    let var_2 = -57736i;
    return 18091i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1618f - 210f), _wgslsmith_f_op_f32(f32(-1f) * -323f), 1f)))), u_input.a.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1896f, 181f), vec2<f32>(-1389f, 344f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1017f, 1986f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -283f), -772f)), vec2<f32>(2551f, -1232f))), vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, u_input.c ^ -14236i)), u_input.b.x, -1i, _wgslsmith_mod_i32(u_input.b.x, func_1(Struct_1(8601u, false, u_input.a.xz, u_input.c, global0[_wgslsmith_index_u32(24063u, 4u)]), select(u_input.b.x, -61107i, true)))));
}

