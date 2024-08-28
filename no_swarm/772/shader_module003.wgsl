struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> vec4<u32> {
    global0 = array<f32, 3>();
    global1 = array<Struct_1, 9>();
    var var_0 = global0[_wgslsmith_index_u32((9299u << (min(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(0u, 51961u, 4294967295u, arg_1.x)), ~max(arg_1.x, arg_1.x)) % 32u)) ^ arg_1.x, 3u)];
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1964f, -127f))), 1000f);
    var var_1 = Struct_1(_wgslsmith_sub_i32(0i, i32(-1i) * -76925i), arg_2, select(!(!arg_0.c), select(!vec2<bool>(true, arg_2), !(!vec2<bool>(arg_2, arg_0.c.x)), vec2<bool>(any(vec3<bool>(false, arg_2, arg_2)), true)), !select(select(vec2<bool>(arg_2, arg_0.b), arg_0.c, arg_0.c), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.c.x))), -25977i);
    return vec4<u32>(_wgslsmith_sub_u32(arg_1.x, 33255u), _wgslsmith_div_u32(abs(1729u), _wgslsmith_mod_u32(1u, 4294967295u)), arg_1.x, 23751u);
}

fn func_4(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(11717u, 9u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1807f, 1620f))));
    var var_2 = global1[_wgslsmith_index_u32(0u, 9u)];
    let var_3 = var_1.x;
    var var_4 = all(select(!vec4<bool>(true, var_0.c.x, arg_0 & true, var_2.b), !vec4<bool>(var_2.b, var_2.b && true, select(true, false, var_0.c.x), var_1.x <= global0[_wgslsmith_index_u32(arg_1, 3u)]), arg_0));
    return -545f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = array<f32, 3>();
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_1.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(87710u, 4294967295u, 72060u, 5248u), vec4<u32>(48958u, 1u, 39384u, 4516u)), func_3(arg_0, vec3<u32>(1u, 4294967295u, 1u), arg_1.c.x)), ~select(4294967295u, 4294967295u, arg_1.c.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(911f - -550f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 3u)])) * global0[_wgslsmith_index_u32(min(8624u, 24447u), 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~9109u, 3u)], _wgslsmith_f_op_f32(-385f * -991f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1035f + 2054f))), true)));
    var var_2 = abs(~u_input.b);
    var var_3 = vec3<i32>(~_wgslsmith_clamp_i32(abs(-1i), ~(~u_input.b.x), _wgslsmith_mod_i32(-22688i, 11073i)), u_input.b.x, -687i);
    return !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, var_0.c.x))) & all(select(!vec4<bool>(true, arg_0.b, arg_1.b, false), !vec4<bool>(true, true, true, var_0.c.x), var_0.b)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(func_3(Struct_1(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(92243u, 0u, 25282u, 176055u)) % 32u), arg_0.c.x, !arg_1.yw, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(10291i, u_input.b.x), firstTrailingBit(~arg_0.d))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(67713u, 86873u, 1612u), vec3<u32>(0u, 23827u, 1u))))), any(select(vec4<bool>(false, select(arg_0.b, arg_0.c.x, arg_0.b), arg_1.x, arg_1.x & arg_0.b), !(!arg_1), arg_1))).x, 9u)];
    var var_1 = global1[_wgslsmith_index_u32(~(0u << (abs(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 85400u, 32176u), vec3<u32>(7073u, 1u, 22020u)))) % 32u)), 9u)];
    let var_2 = vec3<bool>(!(!(!all(vec4<bool>(arg_1.x, false, var_1.b, true)))), any(select(!arg_1.xzz, vec3<bool>(var_1.b, var_0.b, all(vec3<bool>(false, false, var_1.b))), vec3<bool>(!var_0.b, any(vec3<bool>(true, false, arg_1.x)), var_0.b))), any(vec4<bool>(true, arg_0.c.x, any(arg_1) && any(vec2<bool>(var_1.c.x, true)), false)));
    global1 = array<Struct_1, 9>();
    global0 = array<f32, 3>();
    return select(select(arg_1, arg_1, func_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35802u, ~3725u, 102407u), 9u)], global1[_wgslsmith_index_u32(1u, 9u)], -1i)), !select(select(arg_1, select(arg_1, vec4<bool>(var_0.b, var_1.c.x, arg_0.b, var_1.c.x), var_1.b), vec4<bool>(true, var_0.b, true, var_1.b)), vec4<bool>(true, arg_0.d >= u_input.a.x, false, global0[_wgslsmith_index_u32(0u, 3u)] <= -388f), !(!vec4<bool>(arg_1.x, arg_0.c.x, var_0.c.x, arg_1.x))), !select(select(vec4<bool>(false, arg_0.b, true, arg_0.b), vec4<bool>(true, false, false, false), !arg_1.x), select(select(arg_1, vec4<bool>(false, arg_1.x, false, false), var_0.b), arg_1, var_2.x), !var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global1 = array<Struct_1, 9>();
    let var_0 = Struct_1(2147483647i, any(func_5(arg_0, vec4<bool>(func_2(arg_0, Struct_1(arg_0.a, false, vec2<bool>(arg_0.b, true), u_input.b.x), 35427i), any(vec3<bool>(true, false, arg_1.c.x)), arg_0.c.x, true))), select(select(select(arg_1.c, select(vec2<bool>(arg_1.b, true), arg_1.c, arg_0.c), arg_1.c), !(!arg_1.c), !vec2<bool>(arg_0.b, true)), vec2<bool>(false, true), arg_0.c), (_wgslsmith_add_i32(-arg_2.x, _wgslsmith_clamp_i32(42588i, u_input.b.x, arg_0.a)) ^ _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(arg_2.x, -14107i, arg_1.d), arg_1.d)) & select(arg_2.x, u_input.a.x, true));
    return _wgslsmith_sub_u32(1u, 100224u & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 84637u, 115527u), func_3(Struct_1(-35441i, var_0.b, vec2<bool>(var_0.b, var_0.b), arg_2.x), vec3<u32>(1u, 4294967295u, 4294967295u), arg_1.c.x).yxx), reverseBits(firstLeadingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = abs(countOneBits(vec3<u32>(~1u, func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(6856u, 61381u), 9u)], global1[_wgslsmith_index_u32(min(4294967295u, 0u), 9u)], vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x)), firstTrailingBit(1u))));
    let var_2 = all(!select(select(vec2<bool>(true, false), func_5(Struct_1(1i, false, vec2<bool>(true, false), u_input.b.x), vec4<bool>(true, false, false, true)).yw, vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_5(global1[_wgslsmith_index_u32(var_1.x, 9u)], vec4<bool>(true, true, true, true)).wz), (u_input.b.x >= u_input.a.x) && all(vec3<bool>(false, true, true))));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1844f, -479f, global0[_wgslsmith_index_u32(29724u, 3u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 3u)], 437f, global0[_wgslsmith_index_u32(var_1.x, 3u)]))) + vec3<f32>(326f, global0[_wgslsmith_index_u32(var_1.x, 3u)], 671f)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(119078u, 3u)]), -490f, -1990f)), vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~15165u ^ (15779u << (var_1.x % 32u)), 3u)])), global0[_wgslsmith_index_u32(~1u, 3u)], -517f));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(_wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(var_1.x, 4294967295u), abs(9588u))), _wgslsmith_clamp_u32(4294967295u, 0u, ~max(var_1.x, 31742u)), 0u), firstLeadingBit(-u_input.b.x), _wgslsmith_mult_i32(~(~1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<i32>(u_input.b.x, 21342i), u_input.b.yz, true)), firstLeadingBit(u_input.a & u_input.b.yz))), _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(u_input.b.x << (var_1.x % 32u)), ~(u_input.b.x << (16563u % 32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(countOneBits(u_input.b), ~u_input.b), u_input.b.x ^ u_input.b.x)));
}

