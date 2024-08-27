struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-959f, 224f));

var<private> global1: Struct_3 = Struct_3(-383f, Struct_1(-105f, vec3<f32>(-1634f, 740f, -1448f), vec4<u32>(4294967295u, 4294967295u, 18048u, 25814u), vec2<u32>(4294967295u, 0u)), Struct_2(4294967295u, Struct_1(-178f, vec3<f32>(179f, 628f, -1112f), vec4<u32>(67508u, 22566u, 1787u, 4294967295u), vec2<u32>(4294967295u, 15080u)), -22871i), vec4<i32>(1866i, 75874i, -1i, -35485i), 17542u);

var<private> global2: array<u32, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    var var_0 = 39866i;
    var var_1 = Struct_2(firstTrailingBit(select(~u_input.b.x, ~arg_0.c.a, true)) >> (abs(4294967295u) % 32u), Struct_1(arg_0.c.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1083f, arg_1.b.x, arg_1.b.x))) + arg_0.b.b)), vec4<u32>(51636u, ~1u, global2[_wgslsmith_index_u32(48516u, 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(31458u, u_input.b.x), ~vec2<u32>(64037u, 69510u))), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(23336u, 30927u), vec2<u32>(1u, 16584u) >> (global1.c.b.d % vec2<u32>(32u))))), u_input.d.x);
    var_0 = -15687i;
    return _wgslsmith_f_op_f32(-arg_1.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(round(arg_1.b.b.x))))), arg_1.b, arg_1.c, vec4<i32>(38061i, ~arg_0.d.x, 1i & _wgslsmith_div_i32(firstLeadingBit(u_input.a.x), ~arg_1.c.c), _wgslsmith_mult_i32(-_wgslsmith_div_i32(arg_0.d.x, u_input.e.x), 2429i)), 33031u);
    global2 = array<u32, 14>();
    var var_0 = arg_1.c.c;
    global2 = array<u32, 14>();
    let var_1 = Struct_1(1000f, arg_0.c.b.b, ~_wgslsmith_mod_vec4_u32(~(global1.c.b.c | vec4<u32>(arg_0.b.c.x, 42187u, global2[_wgslsmith_index_u32(1u, 14u)], 1u)), global1.c.b.c), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(global1.b.c.yy, vec2<u32>(4294967295u, arg_1.c.b.d.x))) ^ select(max(vec2<u32>(4369u, arg_1.c.b.c.x), abs(global1.c.b.d)), (vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 14u)]) << (vec2<u32>(42850u, 36542u) % vec2<u32>(32u))) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), vec2<bool>(all(vec3<bool>(false, false, true)), true)));
    return _wgslsmith_mult_u32(var_1.d.x, countOneBits(~abs(20977u)));
}

fn func_2() -> f32 {
    var var_0 = vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(0i, reverseBits(max(global1.c.c, u_input.d.x) & 1i)), max(global1.d.x, global1.c.c) << (global2[_wgslsmith_index_u32(func_4(Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(global1.c.b.a, Struct_1(1145f, vec3<f32>(global1.c.b.b.x, -1183f, 256f), global1.b.c, global1.c.b.d), global1.c, vec4<i32>(1043i, global1.d.x, global1.d.x, 1i), 1u), global1.b)), Struct_1(-1018f, global1.b.b, vec4<u32>(global2[_wgslsmith_index_u32(global1.b.d.x, 14u)], 1u, u_input.b.x, global1.e), global1.c.b.d), global1.c, vec4<i32>(global1.d.x, u_input.c, 1i, u_input.d.x), global1.e), Struct_3(_wgslsmith_f_op_f32(-global1.c.b.a), Struct_1(global1.c.b.a, global1.b.b, global1.b.c, u_input.b.yz), global1.c, countOneBits(global1.d), min(18442u, 40851u))), 14u)] % 32u));
    global2 = array<u32, 14>();
    global0 = array<vec2<f32>, 1>();
    var_0 = u_input.d;
    var var_1 = global1.c.b;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = arg_3;
    return !all(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(all(vec3<bool>(true, false, false)), 1u == global1.c.a, any(vec2<bool>(false, true)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    var var_0 = vec4<bool>(-39354i < _wgslsmith_mult_i32(arg_2.x, ~arg_0), !(false || select(true, false, false)) | true, func_5(Struct_3(_wgslsmith_f_op_f32(func_2()), Struct_1(759f, vec3<f32>(891f, arg_3, 391f), vec4<u32>(u_input.b.x, 4544u, global2[_wgslsmith_index_u32(40885u, 14u)], 19984u), vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8986u, 14u)], 14u)], 14u)])), Struct_2(global1.b.d.x, Struct_1(254f, vec3<f32>(270f, 565f, -846f), arg_1.c, arg_1.d), max(4374i, global1.d.x)), countOneBits(vec4<i32>(-2147483647i, 2147483647i, arg_0, -1i)), ~(~u_input.b.x)), _wgslsmith_dot_vec2_i32(arg_2 >> (vec2<u32>(global2[_wgslsmith_index_u32(118903u, 14u)], u_input.b.x) % vec2<u32>(32u)), vec2<i32>(-1i, arg_2.x)) >> (60995u % 32u), Struct_3(1866f, arg_1, Struct_2(u_input.b.x, Struct_1(-982f, vec3<f32>(arg_1.a, arg_3, -361f), global1.c.b.c, vec2<u32>(51693u, global1.c.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_2.x, -50523i), vec3<i32>(-80772i, global1.c.c, arg_0))), vec4<i32>(u_input.d.x, _wgslsmith_mod_i32(-1i, 1i), -1i, 1i), abs(u_input.b.x)), Struct_3(arg_3, Struct_1(361f, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, -883f, global1.b.b.x) * vec3<f32>(arg_3, 824f, arg_1.b.x)), reverseBits(arg_1.c), vec2<u32>(58095u, 0u)), Struct_2(1u, Struct_1(arg_1.a, vec3<f32>(-2754f, -484f, arg_1.a), global1.c.b.c, arg_1.d), -41429i), reverseBits(vec4<i32>(2147483647i, arg_0, 15456i, -26886i)), ~func_4(Struct_3(677f, global1.b, Struct_2(65567u, arg_1, u_input.c), vec4<i32>(global1.d.x, global1.c.c, arg_2.x, -45429i), 27117u), Struct_3(arg_3, arg_1, Struct_2(19971u, arg_1, -3663i), vec4<i32>(arg_0, 12964i, u_input.a.x, -35587i), 4294967295u)))), arg_0 > 0i);
    global0 = array<vec2<f32>, 1>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.b.x & (firstTrailingBit(arg_1.c.x) & global2[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_clamp_u32(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b.x)), 14u)];
    let var_2 = vec2<u32>(0u, _wgslsmith_div_u32(34214u, max(u_input.b.x, abs(u_input.b.x)) >> (_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(arg_1.c.ywy, arg_1.c.zzy)) % 32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.b) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(-378f, 654f, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(750f, -586f, 646f), global1.b.b)), var_0.yyz))))), vec4<u32>(global2[_wgslsmith_index_u32(select(37836u, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(17620u, global2[_wgslsmith_index_u32(1u, 14u)]), 1u, ~1u), 14u)], (arg_3 > -257f) && false), 14u)], _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(global1.c.b.c, global1.c.b.c), 28877u), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 26845u, 9457u), vec3<u32>(0u, u_input.b.x, 56804u)), u_input.b), 1u), ~firstTrailingBit(vec2<u32>(func_4(Struct_3(arg_3, global1.c.b, Struct_2(39913u, arg_1, 2147483647i), vec4<i32>(1i, arg_2.x, -46859i, -2147483647i), var_2.x), Struct_3(arg_3, Struct_1(arg_1.a, vec3<f32>(arg_1.a, -234f, 445f), vec4<u32>(61795u, u_input.b.x, u_input.b.x, arg_1.d.x), global1.b.c.zy), global1.c, vec4<i32>(u_input.e.x, arg_0, -46531i, global1.c.c), 6063u)), 28015u)));
    return ~(~24021u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(-175f, vec3<f32>(global1.a, _wgslsmith_f_op_f32(-336f - -224f), global1.a), _wgslsmith_mult_vec4_u32(global1.c.b.c & vec4<u32>(func_1(global1.d.x, Struct_1(global1.a, global1.c.b.b, vec4<u32>(38770u, global1.b.c.x, 53062u, 28660u), vec2<u32>(21066u, u_input.b.x)), vec2<i32>(u_input.c, -23645i), 1191f), 17709u, ~global2[_wgslsmith_index_u32(global1.e, 14u)], _wgslsmith_dot_vec3_u32(global1.c.b.c.www, u_input.b)), global1.c.b.c), global1.c.b.c.zy);
    var var_2 = !(!select(!(!vec3<bool>(false, var_0, var_0)), vec3<bool>(false, any(vec4<bool>(var_0, var_0, true, true)), var_0), !vec3<bool>(var_0, true, true)));
    var var_3 = Struct_2(_wgslsmith_sub_u32(61381u, func_4(Struct_3(_wgslsmith_f_op_f32(-global1.b.a), Struct_1(var_1.a, vec3<f32>(878f, var_1.a, -324f), var_1.c, vec2<u32>(var_1.d.x, 32163u)), global1.c, global1.d, 39811u | u_input.b.x), Struct_3(-794f, Struct_1(397f, var_1.b, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], u_input.b.x, 4294967295u, 4294967295u), u_input.b.zz), Struct_2(var_1.d.x, global1.c.b, global1.d.x), global1.d, _wgslsmith_mult_u32(global1.b.c.x, u_input.b.x)))), global1.c.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(~(-2147483647i), 0i, 1i)), ~u_input.d ^ vec3<i32>(27366i, abs(global1.d.x), -34731i)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(461f, 934f, var_1.b.x), _wgslsmith_f_op_vec3_f32(min(var_1.b, global1.c.b.b))), var_3.b.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.b.x | 0u), ~global2[_wgslsmith_index_u32(0u, 14u)], select(select(45467u, global2[_wgslsmith_index_u32(global1.e, 14u)], var_0), u_input.b.x, true), 0u), ~(~(vec4<u32>(u_input.b.x, var_1.d.x, 1u, var_1.d.x) ^ vec4<u32>(103196u, 0u, 9888u, u_input.b.x)))), vec2<u32>(0u, global2[_wgslsmith_index_u32(var_1.c.x, 14u)]));
    let var_4 = Struct_1(1776f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(176f - -304f), _wgslsmith_f_op_f32(min(-1670f, 129f))) + vec3<f32>(-593f, _wgslsmith_div_f32(684f, var_1.b.x), -1337f)), vec3<f32>(global1.c.b.b.x, global1.b.a, _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(step(var_3.b.b.x, global1.c.b.a))))), abs(reverseBits(~(vec4<u32>(1u, var_3.b.d.x, 0u, 72736u) ^ vec4<u32>(4294967295u, var_3.a, var_1.d.x, 1u)))), vec2<u32>(34992u, 4294967295u));
    var var_5 = ~var_3.b.c.yzz;
    var var_6 = vec4<f32>(var_3.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-510f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3.b.a))))), 1f, var_3.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.b.x);
}

