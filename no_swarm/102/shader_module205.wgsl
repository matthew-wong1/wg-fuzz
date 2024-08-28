struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, false, false, true, true, false, true, true, true, false, true, true, true, false, false, false, true, true, false, false, true);

var<private> global1: array<f32, 31>;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(603f, -911f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), 659f), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, ~u_input.a.x), 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(6397u, 31u)])))), -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 31u)])))))));
    let var_1 = _wgslsmith_div_u32(~select(~u_input.e, u_input.d.x, false), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(70242u, 10247u, u_input.a.x, 40821u)), ~vec4<u32>(~23653u, u_input.c.x, _wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_mult_u32(u_input.e, u_input.c.x))));
    global4 = Struct_1(0i, vec3<bool>(global4.b.x, true, global0[_wgslsmith_index_u32(u_input.e, 23u)]));
    var var_2 = Struct_1(global3.a, global3.b);
    var var_3 = ~(~countOneBits(select(-global3.a, 13552i, all(global4.b))));
    return true || (select(abs(~u_input.b.x), countOneBits(0i), true) > _wgslsmith_add_i32(_wgslsmith_div_i32(~var_2.a, ~var_2.a), ~(global4.a << (var_1 % 32u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> bool {
    global3 = Struct_1(-687i, global3.b);
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_1 = Struct_1(38818i, !select(global4.b, !vec3<bool>(true, global4.b.x, global4.b.x), !vec3<bool>(global3.b.x, global4.b.x, true)));
    let var_2 = !func_3();
    var var_3 = ~global3.a;
    return global0[_wgslsmith_index_u32(u_input.e, 23u)];
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(select(~arg_0.xy, abs(-_wgslsmith_sub_vec2_i32(u_input.b.xz, vec2<i32>(arg_0.x, arg_1.a))), global4.b.xz), ~abs(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, global3.a)), vec2<i32>(17241i, -2147483647i) >> (vec2<u32>(0u, u_input.d.x) % vec2<u32>(32u)))));
    var var_1 = Struct_1(1i, vec3<bool>(func_4(vec3<bool>(false, func_3(), 1u >= u_input.e), 901f), global3.b.x, any(vec2<bool>(false, func_4(global3.b, -387f)))));
    var var_2 = arg_1;
    var_0 = _wgslsmith_dot_vec2_i32(max(abs(select(vec2<i32>(arg_1.a, 2147483647i), vec2<i32>(arg_0.x, global3.a), false)), min(~_wgslsmith_sub_vec2_i32(u_input.b.yy, arg_0.yy), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, 6613i), u_input.b.xx))), _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, 2147483647i) << (_wgslsmith_mod_vec2_u32(u_input.d, ~vec2<u32>(u_input.c.x, u_input.d.x)) % vec2<u32>(32u)), arg_0.zz));
    var var_3 = 32155i;
    return ~u_input.c.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = !(u_input.a.x < _wgslsmith_div_u32(func_2(-vec4<i32>(global4.a, -1i, -1i, global4.a), Struct_1(u_input.b.x, vec3<bool>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 23u)], true))), abs(1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-525f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 31u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, arg_0))))))));
    global2 = false;
    let var_2 = arg_2;
    var var_3 = u_input.b.xy;
    return _wgslsmith_mod_i32(var_3.x, 505i);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    global1 = array<f32, 31>();
    let var_0 = Struct_1(1i, select(global4.b, global4.b, false));
    var var_1 = var_0;
    var var_2 = select(vec3<bool>(func_4(!vec3<bool>(false, var_1.b.x, var_1.b.x), -551f), all(!select(vec2<bool>(var_0.b.x, var_1.b.x), global4.b.yy, global4.b.x)), false), global4.b, !select(vec3<bool>(false, u_input.b.x != -64544i, !var_1.b.x), global4.b, global3.b));
    let var_3 = ~(~1u);
    return _wgslsmith_sub_i32(global3.a, abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, var_1.a), ~arg_0)) | var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(min(func_5(func_1(global3.b.x, u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(817f, global1[_wgslsmith_index_u32(10182u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]) * vec3<f32>(global1[_wgslsmith_index_u32(45002u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], 1554f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, -288f)), vec2<f32>(613f, 1034f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(46058u, 31u)], 1178f, 628f, global1[_wgslsmith_index_u32(1u, 31u)]), vec4<f32>(985f, global1[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], 519f, 1046f, -1261f) - vec4<f32>(519f, -1000f, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-368f, global1[_wgslsmith_index_u32(1u, 31u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), 1i), select(select(vec3<bool>(global3.b.x, false, !global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(false, global4.b.x, true), select(!global4.b, !vec3<bool>(false, true, global4.b.x), vec3<bool>(global4.b.x, global3.b.x, global3.b.x))), global4.b, global4.b.x));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(30900u, 31u)], -108f))))) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.e, 31u)])) * 1117f);
    let var_1 = 1256f;
    global4 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), global4.a), ~u_input.b.x), 19548i ^ min(~u_input.b.x, func_5(-2147483647i, vec2<f32>(-978f, var_0), vec4<f32>(var_0, global1[_wgslsmith_index_u32(36140u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], 476f), 1078f))), !vec3<bool>(!global3.b.x, global4.b.x, (-753f > global1[_wgslsmith_index_u32(30275u, 31u)]) & any(global3.b.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(91908u, 63698u), ~39771u, ~u_input.c.x, func_2(vec4<i32>(0i, -33038i, 1i, global3.a), Struct_1(1i, vec3<bool>(global4.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], true)))) << (firstLeadingBit(~vec4<u32>(u_input.e, u_input.a.x, 0u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(~23408u, countOneBits(u_input.e), ~0u, 1u)), global3.a, abs(reverseBits(_wgslsmith_sub_i32(-39506i, u_input.b.x)) >> (firstLeadingBit(~89276u) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~5847u, 31u)])), -1656f)), ~u_input.e ^ countOneBits(1u));
}

