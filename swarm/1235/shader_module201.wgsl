struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 26>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 1u, 49609u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    let var_0 = ~0u;
    global2 = vec3<u32>(~_wgslsmith_add_u32(var_0, var_0), reverseBits(1u), abs(global2.x));
    global0 = global1[_wgslsmith_index_u32(1u, 26u)];
    global1 = array<Struct_1, 26>();
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(global0.b.wwy, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(global2.x, var_0, 53792u)), _wgslsmith_add_vec3_u32(global0.b.wyy, global0.b.xzy) << (firstLeadingBit(global0.b.zyw) % vec3<u32>(32u)))), select(_wgslsmith_clamp_u32(~5740u, abs(global0.b.x), _wgslsmith_clamp_u32(4294967295u, 7108u, var_0)) ^ _wgslsmith_add_u32(42036u, ~global2.x), firstLeadingBit(13251u), !arg_2)), 26u)];
    return max(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x ^ 0u, ~16774u, var_1.b.x, 3889u), ~select(vec4<u32>(global2.x, 75007u, 21932u, 21173u), global0.b, vec4<bool>(arg_0, arg_2, arg_0, false))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, 39519u << (global2.x % 32u)), 15127u) << (_wgslsmith_sub_u32(~max(49017u, var_0), firstTrailingBit(~4294967295u)) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    let var_0 = (12639i == ~_wgslsmith_div_i32(u_input.a, reverseBits(u_input.a))) | true;
    return 1u < (func_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-745f, arg_0.c) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, arg_0.c)))), !(!var_0)) | 4294967295u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global0.a), 26u)];
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2353f)) - _wgslsmith_f_op_f32(-1000f - arg_1.x)))), 151f);
    let var_1 = Struct_1(4294967295u, abs(~countOneBits(vec4<u32>(7639u, global0.b.x, 4294967295u, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + global0.c), -2111f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-576f - -779f))), -225f, func_2(global1[_wgslsmith_index_u32(~15817u, 26u)], select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))))));
    var var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(global0.b.xzy, vec3<u32>(7610u, _wgslsmith_mult_u32(global2.x, 4294967295u), countOneBits(var_1.a))), ~max((global0.b.yyz ^ vec3<u32>(1u, global2.x, 88642u)) & select(var_1.b.xwx, global0.b.zzz, true), abs(~vec3<u32>(global2.x, global0.b.x, 37837u)))), 26u)];
    return global1[_wgslsmith_index_u32(4294967295u << ((41186u & var_1.a) % 32u), 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(select(_wgslsmith_div_u32(reverseBits(0u), ~4136u & global0.a), 81234u, !arg_1), vec4<u32>(_wgslsmith_add_u32(~global2.x, 21427u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(arg_0.b.x), func_3(true, vec2<f32>(global0.c, -280f), true)), arg_0.b.x), _wgslsmith_dot_vec2_u32(~global0.b.xx, global0.b.yz >> (firstLeadingBit(var_0.b.ww) % vec2<u32>(32u))), global0.a), -1027f);
    let var_1 = -abs((vec2<i32>(-1i) * -vec2<i32>(-1i, 75673i)) & ~(vec2<i32>(u_input.a, 27466i) & vec2<i32>(-2147483647i, 30393i)));
    var var_2 = firstTrailingBit(~_wgslsmith_add_i32(34530i, _wgslsmith_add_i32(-3248i >> (1u % 32u), var_1.x)));
    global0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1102f, arg_0.c), vec2<f32>(1020f, 490f), arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(954f, -593f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(544f, 591f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, arg_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, 514f) + vec2<f32>(global0.c, -1216f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.c) - var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 1062f)), _wgslsmith_f_op_f32(684f - _wgslsmith_f_op_f32(ceil(-1923f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c * -213f), var_0.c))));
    return func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(791f)), _wgslsmith_div_f32(global0.c, -1501f)), vec4<f32>(556f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(599f)) - _wgslsmith_f_op_f32(-var_0.c)), arg_1 != any(vec3<bool>(false, arg_1, arg_1)))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), arg_0.c) * 1f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<f32> {
    global1 = array<Struct_1, 26>();
    global0 = global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1115f, arg_1.c))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, -134f, arg_1.c, global0.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -1292f, 314f, -242f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1035f, arg_1.c, arg_0.c, 153f)))), select(true, !arg_2.x, arg_2.x || arg_2.x) || arg_2.x))).b.x, 26u)];
    let var_0 = _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(f32(-1f) * -317f));
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_mult_u32(~4294967295u, 125259u), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b ^ vec4<u32>(79260u, global2.x, arg_1.b.x, 1u), ~arg_1.b) >> (var_1.b % vec4<u32>(32u)), ~vec4<u32>(~var_1.b.x, arg_0.b.x >> (arg_0.a % 32u), 0u, abs(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, arg_1.c, arg_1.c))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-238f, -1388f, arg_1.c)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 473f, -270f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1398f, 967f) - vec3<f32>(165f, arg_0.c, global0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1177f, 1000f, 654f) + vec3<f32>(690f, -224f, -484f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c, arg_1.c, global0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(37102u, 26u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-457f, global0.c), vec2<f32>(global0.c, global0.c), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1027f, 725f, 990f) + vec4<f32>(450f, 557f, global0.c, 1024f))), _wgslsmith_f_op_f32(global0.c - -187f) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, 368f) + 1149f)), Struct_1(global2.x, func_4(global1[_wgslsmith_index_u32(0u, 26u)], all(vec3<bool>(true, true, true))).b, global0.c), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), true)));
    var var_1 = -1144f;
    let var_2 = !(!vec4<bool>(all(vec2<bool>(true, true)), true, true, true));
    global2 = ~func_1(vec2<f32>(_wgslsmith_div_f32(var_0.x, global0.c), _wgslsmith_f_op_f32(floor(1725f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, global0.c, 424f)) * vec4<f32>(1345f, global0.c, global0.c, global0.c))).b.yxx ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global2.x, global0.b.x), abs(global0.b.zwx), func_4(global1[_wgslsmith_index_u32(firstLeadingBit(global2.x) ^ _wgslsmith_add_u32(global2.x, 0u), 26u)], false).b.zww);
    var var_3 = 1i;
    var var_4 = firstLeadingBit(53121u) & min(_wgslsmith_mod_u32(52145u, 8206u), global2.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(3421f)) + _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_5(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], vec4<bool>(true, var_2.x, true, false))).x, _wgslsmith_f_op_f32(abs(var_0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_5 = func_1(vec2<f32>(_wgslsmith_div_f32(func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, var_0.x, global0.c, global0.c), vec4<f32>(-235f, 1428f, global0.c, -837f), false))).c, _wgslsmith_f_op_f32(step(-595f, -1196f))), 952f), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 748f, var_2.x))))), global0.c, var_0.x, 219f));
    let x = u_input.a;
    s_output = StorageBuffer(max(~countOneBits(select(vec3<u32>(var_5.b.x, 56507u, global2.x), global0.b.zxx, var_2.x)), ~(~countOneBits(vec3<u32>(var_5.a, 158u, global2.x)))), -vec4<i32>(-2147483647i, -u_input.a, 0i, 0i), _wgslsmith_f_op_vec2_f32(-var_0.zz), 19203u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(1u, select(var_5.b, vec4<u32>(0u, global0.a, global0.a, global0.b.x), var_2), _wgslsmith_f_op_f32(-var_5.c)), var_5, vec4<bool>(!var_2.x, true, all(vec2<bool>(var_2.x, false)), var_2.x))).x));
}

