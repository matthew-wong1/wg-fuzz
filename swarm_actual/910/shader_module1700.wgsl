struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 807u, 4294967295u, 4294967295u, 4294967295u, 1u, 0u, 66583u, 4294967295u, 78746u, 19317u, 0u, 4294967295u, 4294967295u, 4096u, 14631u, 0u, 1u, 17182u);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = u_input.b;
    var var_1 = firstLeadingBit(~(~62068i));
    var var_2 = Struct_1(1181f, ~(-(~(-32218i))));
    var var_3 = 0u;
    var var_4 = !select(vec4<bool>(true, true, !(31696u == global0[_wgslsmith_index_u32(56021u, 19u)]), (true && arg_0) && (var_2.b > -1i)), vec4<bool>(arg_0, select(arg_0, !arg_0, true), arg_0, false), false);
    return u_input.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1199f, global1.x, 1058f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, arg_2.a, 140f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(497f, 1191f, -343f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, -702f) + vec3<f32>(-1000f, arg_2.a, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(286f, arg_2.a, global1.x) - vec3<f32>(global1.x, arg_2.a, arg_2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -286f, global1.x) - vec3<f32>(1616f, 963f, 481f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(212f, 345f, var_0.x) * vec3<f32>(-455f, 1540f, -430f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a * 266f), _wgslsmith_f_op_f32(-global1.x))))))), -350f, _wgslsmith_f_op_f32(floor(636f)));
    var var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(0u), 19u)], 19u)] | _wgslsmith_sub_u32(101122u, global0[_wgslsmith_index_u32(~0u, 19u)] | (global0[_wgslsmith_index_u32(1u, 19u)] | min(14793u, 1u)));
    let var_2 = arg_2;
    return global2[_wgslsmith_index_u32(0u, 32u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 24778i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(-32870i, arg_0.x, 11923i), vec3<i32>(arg_0.x, arg_0.x, 17241i))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -63668i, 0i) | vec4<i32>(-1i, -2147483647i, -74270i, u_input.b), min(vec4<i32>(u_input.b, u_input.b, 2147483647i, 2147483647i), vec4<i32>(-1i, u_input.a, 12899i, u_input.a)))), ~(-min(vec3<i32>(u_input.a, 1i, -1i), vec3<i32>(u_input.b, -1i, 1i)))));
    let var_1 = func_3(!select(vec2<bool>(43003u < global0[_wgslsmith_index_u32(arg_1, 19u)], all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), true), vec4<i32>(func_2(true) | arg_0.x, u_input.a, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, -47884i), vec3<i32>(arg_0.x, -16526i, 0i)), var_0.b), arg_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1096f - global1.x), _wgslsmith_f_op_f32(sign(global1.x))))), -u_input.b), -18966i);
    global2 = array<Struct_1, 32>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(round(-1718f)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1983f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 456f))), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(select(-258f, _wgslsmith_f_op_f32(-var_1.a), true)), -1000f)));
    global0 = array<u32, 19>();
    return vec4<bool>(false, global1.x == func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(false, false, false, true))), vec4<i32>(_wgslsmith_add_i32(-34605i, 33075i), ~0i, firstLeadingBit(u_input.a), ~u_input.b), func_3(vec2<bool>(true, false), countOneBits(vec4<i32>(var_1.b, var_1.b, arg_0.x, 1i)), func_3(vec2<bool>(false, true), vec4<i32>(var_1.b, u_input.a, -27701i, -18336i), Struct_1(var_0.a, arg_0.x), 2147483647i), -13293i), -2147483647i).a, !all(vec2<bool>(false, false)), _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(~arg_1, 19u)], ~global0[_wgslsmith_index_u32(18400u, 19u)]) > _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(arg_1, arg_1), ~(global0[_wgslsmith_index_u32(0u, 19u)] << (4294967295u % 32u)), 51024u));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-2147483647i, ~1i, arg_0)), ~_wgslsmith_clamp_i32(firstLeadingBit(-7013i), ~arg_0, ~1340i), func_3(select(select(vec2<bool>(true, true), arg_2.wz, arg_1), select(arg_2.zx, vec2<bool>(arg_2.x, arg_2.x), true), arg_1), vec4<i32>(arg_0, -29467i, -17658i, u_input.a) ^ vec4<i32>(var_0.b, 1i, arg_0, arg_3.b), var_0, u_input.b).b, -34298i), -vec4<i32>(-19020i, 1082i ^ var_0.b, arg_0, -1i) ^ (_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(0i, -22944i, 1i, var_0.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_0, 1i), vec4<i32>(1i, 13118i, -2147483647i, -48033i), vec4<i32>(2147483647i, 33383i, -61685i, -1591i))) | _wgslsmith_add_vec4_i32(~vec4<i32>(-10739i, arg_0, arg_0, 13069i), ~vec4<i32>(var_0.b, 0i, arg_3.b, 51628i))));
    var var_2 = arg_2;
    var var_3 = global0[_wgslsmith_index_u32(0u, 19u)];
    global2 = array<Struct_1, 32>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_3.a, _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(min(289f, arg_3.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a, var_0.a, -299f)))), ~vec3<u32>(_wgslsmith_div_u32(~52216u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(17093u, 19u)], global0[_wgslsmith_index_u32(26020u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42821u, 19u)], 19u)], 19u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13770u, 19u)], 19u)], 19u)], 19u)], 0u))), ~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), 19u)], ~min(0u, 76014u)), min(~4294967295u, 10375u), arg_3.a, -var_1.zyw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-31594i, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), 563f != global1.x)), select(vec4<bool>(false, all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, global1.x < -1602f, true), select(func_1(vec2<i32>(u_input.a, -21179i), 0u, global1.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), true), Struct_1(global1.x, u_input.a));
}

