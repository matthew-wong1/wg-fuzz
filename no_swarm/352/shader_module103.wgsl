struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(682f, 336f, -432f, -599f), vec4<f32>(1529f, 926f, -388f, -224f), vec4<f32>(962f, 1468f, 634f, 798f));

var<private> global1: array<u32, 1>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    return _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(0u, 4294967295u, 66500u, global1[_wgslsmith_index_u32(u_input.a, 1u)])) & vec4<u32>(92899u, 6004u, _wgslsmith_dot_vec2_u32(vec2<u32>(2481u, 54532u), vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 1u)])), select(arg_2.a, 31694u, arg_2.c.x)), ~vec4<u32>(59480u, arg_1.b, ~global1[_wgslsmith_index_u32(82755u, 1u)], 4294967295u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(arg_2.a, 39517u, arg_1.b, arg_1.b) ^ vec4<u32>(arg_1.b, arg_1.b, 0u, u_input.a)), vec4<u32>(17510u, reverseBits(u_input.a), _wgslsmith_add_u32(68580u, 20256u), arg_1.b << (79831u % 32u))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 97941u, 47842u), vec4<u32>(global1[_wgslsmith_index_u32(2188u, 1u)], 23204u, arg_2.a, 4294967295u), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(3819u, 1u)], arg_2.e, global1[_wgslsmith_index_u32(23645u, 1u)])) ^ ~vec4<u32>(1u, arg_1.b, arg_1.b, 4244u), select(~vec4<u32>(22078u, arg_1.b, 59599u, 0u), ~vec4<u32>(4294967295u, 1u, 1u, u_input.a), arg_0 | arg_2.c.x)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, -519f, _wgslsmith_f_op_f32(-arg_0.a)));
    global0 = array<vec4<f32>, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, -348f)));
    return _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.b ^ _wgslsmith_dot_vec3_u32(abs(arg_1.wyz), max(vec3<u32>(global1[_wgslsmith_index_u32(arg_2.b, 1u)], arg_0.b, arg_2.b) << (vec3<u32>(arg_1.x, arg_0.b, arg_1.x) % vec3<u32>(32u)), vec3<u32>(arg_1.x, 1u, 47658u) | vec3<u32>(global1[_wgslsmith_index_u32(1u, 1u)], arg_0.b, arg_0.b))), ~u_input.a);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: u32) -> f32 {
    global1 = array<u32, 1>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(select(53193u, 15118u, false) << (17016u % 32u), 4294967295u) ^ _wgslsmith_mult_u32(u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, ~global1[_wgslsmith_index_u32(u_input.a, 1u)]), 1u)]), _wgslsmith_add_i32(50976i, abs(~(~(-6665i)))), vec2<bool>(true, ~countOneBits(47310u) < _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 1u), arg_1)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, arg_0))) - vec3<f32>(-332f, _wgslsmith_f_op_f32(-arg_0), arg_0)))), (~4294967295u >> (0u % 32u)) << (max(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 55281u, 15036u), vec3<u32>(global1[_wgslsmith_index_u32(10475u, 1u)], 41161u, 1u)), global1[_wgslsmith_index_u32(31112u, 1u)] | arg_1), arg_1 << (global1[_wgslsmith_index_u32(arg_2, 1u)] % 32u)) % 32u));
    let var_1 = select(!select(!(!vec2<bool>(false, var_0.c.x)), select(select(var_0.c, vec2<bool>(false, var_0.c.x), var_0.c.x), var_0.c, vec2<bool>(var_0.c.x, var_0.c.x)), !(!var_0.c.x)), vec2<bool>(var_0.c.x, var_0.c.x), select(var_0.c.x, false, all(select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), !var_0.c.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f - -113f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-338f, -1089f)))), (66063u | firstTrailingBit(_wgslsmith_mod_u32(var_0.a, 1u))) ^ ~79147u);
    global1 = array<u32, 1>();
    return -987f;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_5(-289f, global1[_wgslsmith_index_u32(func_4(Struct_2(_wgslsmith_f_op_f32(round(168f)), ~firstLeadingBit(34083u)), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 4294967295u, 101968u, 45233u)), func_3(true, Struct_2(-1708f, u_input.a), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 1u)], -2147483647i, vec2<bool>(false, arg_0), vec3<f32>(267f, 2009f, -1000f), global1[_wgslsmith_index_u32(4294967295u, 1u)])) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 24045u, 39303u, u_input.a)), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(536f, -899f, false)))), ~690u), select(!vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), !vec2<bool>(true, arg_0)), vec2<bool>(any(vec3<bool>(false, false, arg_0)), false))), 1u)], _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 58608u, 13055u)), vec4<u32>(11020u, 81294u, global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23843u, 1u)], 1u)], 1u)], 1u)])) << (26734u % 32u), _wgslsmith_mod_u32(reverseBits(53354u), _wgslsmith_div_u32(u_input.a, u_input.a)) & u_input.a)));
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    global1 = array<u32, 1>();
    global0 = array<vec4<f32>, 3>();
    return select(vec4<bool>(any(vec3<bool>(select(false, false, true), false, arg_0)), all(!(!vec3<bool>(arg_0, arg_0, arg_0))), false, any(!select(vec2<bool>(true, true), vec2<bool>(false, arg_0), vec2<bool>(false, true)))), select(select(select(!vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, false), var_0 < var_0), select(!vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(false, true, arg_0, false), !arg_0), true), select(!select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(false, true, false, false)), !vec4<bool>(all(vec4<bool>(false, true, true, false)), true, all(vec3<bool>(arg_0, arg_0, arg_0)), var_0 < var_0)), arg_0);
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    let var_0 = Struct_1(select(global1[_wgslsmith_index_u32(max(~u_input.a, u_input.a >> ((23719u << (1u % 32u)) % 32u)), 1u)], global1[_wgslsmith_index_u32(25085u, 1u)], !arg_1), -reverseBits(max(1i, -28884i)), vec2<bool>(true, all(func_2(!arg_1))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1665f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(-256f)))))), arg_0), global1[_wgslsmith_index_u32(~u_input.a, 1u)]);
    var var_1 = var_0.c;
    return all(var_0.c);
}

fn func_6(arg_0: bool, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_i32(select(i32(-1i) * -40921i, 15530i, arg_0), firstTrailingBit(min(18804i, _wgslsmith_dot_vec3_i32(-vec3<i32>(10205i, 2147483647i, -27836i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -23117i, 6918i), vec3<i32>(1i, 0i, -23044i))))));
    global0 = array<vec4<f32>, 3>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(-210f)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(~global1[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, !arg_0), 1u, 0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)] ^ global1[_wgslsmith_index_u32(4294967295u, 1u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], _wgslsmith_add_u32(u_input.a, 4294967295u)), ~global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(8019u, 1u)]), 1u)])));
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    return StorageBuffer(vec3<i32>(1i, ~_wgslsmith_add_i32(var_0, ~(-5789i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0, var_0, var_0), vec4<i32>(var_0, var_0, 25053i, -63720i)), firstLeadingBit(vec4<i32>(var_0, var_0, var_0, -32260i)))), _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(0u, ~global1[_wgslsmith_index_u32(4294967295u, 1u)], 1371u)), 3u)])), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 49439u) ^ ~vec3<u32>(u_input.a, var_1.b, 4294967295u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a, 1u), vec3<u32>(var_1.b, var_1.b, 28594u) | vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(0u, 44175u, u_input.a) ^ vec3<u32>(global1[_wgslsmith_index_u32(45875u, 1u)], 55937u, u_input.a))), ~(~vec3<u32>(func_4(var_1, vec4<u32>(19989u, u_input.a, 1u, 4294967295u), Struct_2(-1000f, var_1.b), vec2<bool>(arg_0, arg_0)), var_1.b & 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1.b, 4294967295u), vec4<u32>(60310u, global1[_wgslsmith_index_u32(12427u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.a);
    var_0 = firstLeadingBit(1u);
    global0 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = func_6(func_1(-100f, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-554f + -306f), -184f, _wgslsmith_f_op_f32(sign(-629f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, -707f, 1271f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, 375f, 302f))))), vec3<bool>(true, false, true))));
}

