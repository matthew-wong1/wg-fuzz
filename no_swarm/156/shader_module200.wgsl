struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 1u);

var<private> global2: Struct_1 = Struct_1(597f, 3991u, -1000f, vec2<f32>(621f, -487f), true);

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(283f, 0u, -126f, vec2<f32>(514f, -834f), false), Struct_1(-1575f, 23935u, 314f, vec2<f32>(-230f, -854f), false), Struct_1(-1166f, 4294967295u, 127f, vec2<f32>(133f, 757f), false), Struct_1(513f, 4631u, -3550f, vec2<f32>(-153f, 2229f), false), Struct_1(-1299f, 1u, -215f, vec2<f32>(1180f, -2381f), false), Struct_1(1450f, 0u, -129f, vec2<f32>(475f, -591f), true), Struct_1(-1774f, 0u, 434f, vec2<f32>(-159f, 1114f), true), Struct_1(1411f, 1u, 288f, vec2<f32>(-265f, 268f), true), Struct_1(943f, 0u, 726f, vec2<f32>(550f, -1623f), false), Struct_1(-1000f, 1u, 396f, vec2<f32>(534f, 1429f), false), Struct_1(-160f, 1u, -977f, vec2<f32>(-283f, 127f), false), Struct_1(636f, 1u, 485f, vec2<f32>(-466f, 284f), false), Struct_1(-1030f, 0u, -810f, vec2<f32>(988f, -1019f), false), Struct_1(1659f, 4294967295u, 503f, vec2<f32>(622f, -1000f), false), Struct_1(-747f, 4294967295u, -211f, vec2<f32>(1037f, -1036f), false), Struct_1(1202f, 0u, 150f, vec2<f32>(-1049f, -701f), false), Struct_1(1209f, 82019u, -1404f, vec2<f32>(-472f, -2106f), true));

var<private> global4: array<i32, 7> = array<i32, 7>(2147483647i, 9634i, 16694i, 1i, 1i, 33904i, -8584i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(59033u, 66302u), vec2<u32>(arg_3.b, 1u) & vec2<u32>(arg_3.b, 42785u)), ~firstTrailingBit(71800u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.x))), _wgslsmith_div_vec2_f32(global2.d, _wgslsmith_f_op_vec2_f32(sign(global2.d))), any(arg_1));
    var var_1 = global1.x;
    let var_2 = max(4294967295u, countOneBits(var_0.b));
    let var_3 = Struct_1(1143f, ~var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1591f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * _wgslsmith_f_op_f32(trunc(-600f))))), 1f), var_0.d, !global2.e & true);
    global2 = Struct_1(global2.d.x, ~4294967295u, arg_0.c, vec2<f32>(135f, -1514f), any(vec2<bool>(!arg_1.x, false)));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_1(global2.a, global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.c)), _wgslsmith_f_op_f32(sign(global2.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)) - global2.d)), global2.e | global2.e);
    let var_1 = global2.a;
    global1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(14036u << (abs(arg_0) % 32u), 29106u, _wgslsmith_mod_u32(~6486u, reverseBits(7270u))), max(vec3<u32>(_wgslsmith_sub_u32(~49244u, 37203u), ~min(13077u, 0u), arg_0), vec3<u32>(_wgslsmith_mod_u32(global2.b, 66287u), _wgslsmith_div_u32(10912u, 1u), 4294967295u)), vec3<u32>(~(~(var_0.b >> (26395u % 32u))), 58516u, ~73987u));
    let var_2 = countOneBits(~select(~(~vec4<u32>(21356u, 0u, 64149u, global1.x)), ~vec4<u32>(1u, arg_0, arg_0, 0u), global2.e));
    global4 = array<i32, 7>();
    return !vec2<bool>(true, 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b, var_0.b), ~vec3<u32>(57850u, var_2.x, 4294967295u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = select(vec2<bool>(any(!vec3<bool>(true, global2.e, global2.e)), global2.e), vec2<bool>(global2.e, global2.e), select(func_4(~func_3(Struct_1(arg_0.x, 16021u, 133f, vec2<f32>(global2.a, arg_1.x), true), vec3<bool>(true, true, global2.e), Struct_1(-2068f, global2.b, 1000f, arg_0.xz, true), global3[_wgslsmith_index_u32(global1.x, 17u)]), ~44823i, arg_2.x, arg_2), select(global0[_wgslsmith_index_u32(1u, 7u)], vec2<bool>(!global2.e, false), true), ~(arg_2.x << (1u % 32u)) == 21007i));
    global1 = max(vec3<u32>(_wgslsmith_mod_u32(49039u, global2.b) ^ global2.b, 1u, 37679u) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(48565u, global1.x, global1.x) >> (vec3<u32>(global2.b, global2.b, 7647u) % vec3<u32>(32u)), vec3<u32>(global2.b, global1.x, global1.x)), vec3<u32>(23272u, ~global2.b, _wgslsmith_add_u32(0u, 0u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~firstTrailingBit(global2.b), abs(_wgslsmith_add_u32(global1.x, global1.x)), _wgslsmith_sub_u32(global1.x, 36956u) >> (countOneBits(global1.x) % 32u)), min(~vec3<u32>(0u, global1.x, 23388u), min(vec3<u32>(1u, global1.x, 4294967295u) >> (vec3<u32>(0u, global2.b, 17281u) % vec3<u32>(32u)), max(vec3<u32>(55890u, 0u, 0u), vec3<u32>(global2.b, global2.b, global1.x))))));
    global3 = array<Struct_1, 17>();
    let var_1 = global3[_wgslsmith_index_u32(~0u, 17u)];
    global0 = array<vec2<bool>, 7>();
    return global2.a;
}

fn func_5(arg_0: vec4<f32>) -> vec3<u32> {
    global3 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(471f, global2.d.x)), _wgslsmith_f_op_f32(-1310f * arg_0.x))), arg_0.x)) + _wgslsmith_f_op_f32(sign(1819f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + 913f))), ~10634u ^ global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_div_f32(global2.d.x, arg_0.x))))), arg_0.wz, global2.e);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c)) + -149f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 361f) - _wgslsmith_f_op_f32(global2.c + var_1.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f * global2.d.x)) + -516f) + _wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = abs(_wgslsmith_clamp_u32(~(~0u & (44588u >> (global2.b % 32u))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(26596u, global2.b, global2.b), vec3<u32>(global1.x, 1306u, 0u)) >> (max(var_1.b, global1.x) % 32u)), _wgslsmith_mult_u32(0u, global2.b)));
    return reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~52814u, _wgslsmith_div_u32(global1.x, 0u), 59968u), abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(var_1.b >> (var_3 % 32u), var_3 << (var_3 % 32u), 0u)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = arg_2.d;
    global1 = func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(global2.d.x, 448f, -654f), vec4<f32>(arg_2.a, 377f, 752f, var_0.x), vec3<i32>(global4[_wgslsmith_index_u32(93186u, 7u)], u_input.a.x, -6248i)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(627f)))))));
    global1 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(54084u ^ global2.b, 6770u, 42516u), func_5(vec4<f32>(global2.c, global2.c, -768f, -2075f))) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, arg_0) ^ vec4<u32>(58486u, 0u, arg_0, arg_2.b), vec4<u32>(4294967295u, 1u, global2.b, arg_0)), _wgslsmith_div_u32(~4294967295u, global2.b)) % vec3<u32>(32u)));
    let var_1 = vec3<bool>(func_4(~arg_0, u_input.a.x, (firstTrailingBit(0i) >> (82901u % 32u)) << (1u % 32u), select(~(~vec3<i32>(1i, u_input.a.x, arg_1.x)), ~u_input.a.zyz & _wgslsmith_mod_vec3_i32(vec3<i32>(-41525i, global4[_wgslsmith_index_u32(global2.b, 7u)], global4[_wgslsmith_index_u32(8326u, 7u)]), u_input.a.xyy), vec3<bool>(true, arg_0 != global1.x, global2.e))).x, !func_4(1u, reverseBits(global4[_wgslsmith_index_u32(~arg_0, 7u)]), -(~global4[_wgslsmith_index_u32(global1.x, 7u)]), _wgslsmith_mod_vec3_i32(u_input.a.yxx, u_input.a.xyx)).x, arg_2.e);
    let var_2 = arg_2;
    return select(!(!vec3<bool>(var_1.x, false, arg_2.e)), select(!(!select(var_1, vec3<bool>(var_1.x, true, global2.e), var_2.e)), var_1, true), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(~global2.b, 17u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(676f)), _wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(min(global2.d.x, -386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), 381f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -660f, global2.a, global2.d.x) + vec4<f32>(global2.a, 1046f, global2.c, -820f)))))));
    let var_1 = select(!(!(!(!vec3<bool>(global2.e, global2.e, false)))), !(!(!select(vec3<bool>(global2.e, global2.e, false), vec3<bool>(global2.e, global2.e, global2.e), vec3<bool>(global2.e, global2.e, true)))), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, global2.e, false), global2.e), func_1(0u, vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(59704u, 7u)]), Struct_1(-554f, global1.x, 652f, vec2<f32>(-523f, global2.d.x), true)), global2.e)));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.zxz - var_0.yxx);
    let var_3 = func_4(_wgslsmith_add_u32(global2.b, ~(select(global2.b, 1u, var_1.x) << (_wgslsmith_sub_u32(global2.b, 4294967295u) % 32u))), -21927i, max(-abs(countOneBits(global4[_wgslsmith_index_u32(global1.x, 7u)])), countOneBits(-(u_input.a.x | u_input.a.x))), ~u_input.a.wxw | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, 0i) >> (~vec3<u32>(0u, 11427u, global1.x) % vec3<u32>(32u)), firstLeadingBit(u_input.a.zyx)));
    let var_4 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global2.b, ~4294967295u)), global1.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(527f, _wgslsmith_f_op_f32(-var_2.x))), var_2.x), -(~_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(-1i, u_input.a.x)) << (_wgslsmith_div_u32(0u, 46971u) % 32u)), -21471i, _wgslsmith_dot_vec3_i32(u_input.a.yxy, u_input.a.zwx));
}

