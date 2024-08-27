struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(21624i, 26213i, -38288i);

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, true, true, false, false, false, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false);

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-731f, -318f), vec2<f32>(1326f, 1310f));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1102f, 4884i, vec4<i32>(i32(-2147483648), 55496i, 26577i, 0i), -16231i), Struct_1(-114f, -1i, vec4<i32>(-1i, 25413i, -27306i, 1i), 2147483647i), Struct_1(484f, 44358i, vec4<i32>(-1i, -20074i, -18783i, 2147483647i), i32(-2147483648)), Struct_1(1000f, i32(-2147483648), vec4<i32>(i32(-2147483648), -54493i, 1128i, -10946i), 32918i), Struct_1(1482f, -1i, vec4<i32>(1i, 24749i, -43292i, 0i), 29038i), Struct_1(-430f, 53572i, vec4<i32>(i32(-2147483648), -32618i, 35646i, -1i), 2147483647i), Struct_1(462f, -27862i, vec4<i32>(-27520i, i32(-2147483648), -13649i, i32(-2147483648)), -32836i), Struct_1(-598f, 9246i, vec4<i32>(i32(-2147483648), 66895i, 2147483647i, 2227i), -40696i), Struct_1(465f, 2147483647i, vec4<i32>(70460i, -30379i, 44000i, 34055i), 0i), Struct_1(1663f, 1i, vec4<i32>(38503i, 32878i, 50711i, 2147483647i), 0i), Struct_1(662f, -8597i, vec4<i32>(2147483647i, 1i, 0i, 18587i), 34169i), Struct_1(132f, 0i, vec4<i32>(2147483647i, 0i, -1i, -1i), i32(-2147483648)), Struct_1(-105f, i32(-2147483648), vec4<i32>(-2235i, 19800i, -6398i, -23478i), -11004i), Struct_1(-834f, 2147483647i, vec4<i32>(25019i, 11144i, 29820i, -9760i), 1i), Struct_1(-150f, 0i, vec4<i32>(i32(-2147483648), -1i, 1i, -14952i), -1i), Struct_1(1388f, 44644i, vec4<i32>(29337i, 37127i, 0i, -16252i), 0i), Struct_1(723f, 25610i, vec4<i32>(20053i, 1i, -34470i, 1i), 23316i), Struct_1(1346f, -22041i, vec4<i32>(i32(-2147483648), 1i, -31690i, -1i), -37303i), Struct_1(-626f, 12136i, vec4<i32>(2147483647i, 0i, i32(-2147483648), 53478i), 37044i), Struct_1(458f, 2147483647i, vec4<i32>(58766i, -10013i, 0i, 3383i), i32(-2147483648)), Struct_1(-1030f, 2147483647i, vec4<i32>(16686i, 2147483647i, 70604i, 1i), -4160i), Struct_1(-419f, i32(-2147483648), vec4<i32>(i32(-2147483648), 0i, -40882i, 2147483647i), -1i), Struct_1(-530f, 8313i, vec4<i32>(0i, -1i, 14782i, 1i), i32(-2147483648)), Struct_1(-1064f, -1i, vec4<i32>(8514i, 25756i, -27193i, i32(-2147483648)), 42346i), Struct_1(1000f, 2147483647i, vec4<i32>(-1i, -16252i, -1i, -18444i), -13933i), Struct_1(192f, 6806i, vec4<i32>(-1494i, 0i, 18066i, 1i), 62991i), Struct_1(-441f, -1i, vec4<i32>(0i, 2147483647i, -12193i, 2147483647i), -20913i), Struct_1(-1435f, -30628i, vec4<i32>(14872i, 1i, 2147483647i, -41618i), 20752i), Struct_1(150f, 0i, vec4<i32>(-1i, i32(-2147483648), -12485i, 2147483647i), 2147483647i), Struct_1(-474f, 0i, vec4<i32>(-1i, 1i, 2147483647i, 0i), 20703i), Struct_1(-1000f, 2147483647i, vec4<i32>(-13065i, -1i, -1i, -1i), -1i), Struct_1(624f, 1i, vec4<i32>(2147483647i, -38959i, 2147483647i, 1i), 31190i));

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: f32) -> vec3<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(196f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) - arg_3))));
    var var_2 = arg_0.c;
    var var_3 = !all(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], var_0))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(-arg_3))), -(~var_2.x << (0u % 32u)), ~vec4<i32>(arg_0.d, arg_0.b, _wgslsmith_mult_i32(global0.x, 47308i), -2147483647i), 11172i);
    return arg_2.yyz;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_1 = 13454u;
    global3 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(abs(abs(vec2<u32>(u_input.a, 1u))), vec2<u32>(~4294967295u, 24735u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(35470u, 1u)), ~firstLeadingBit(vec2<u32>(1u, 45970u))));
    global2 = array<vec2<f32>, 2>();
    return ~(~min(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(var_2, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 34531u), vec2<u32>(72637u, 4294967295u)))));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = min(abs(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 8375u, 37655u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 37367u)), func_2(global3[_wgslsmith_index_u32(u_input.a, 32u)], vec4<f32>(1232f, -419f, 509f, 1232f), vec4<u32>(u_input.a, u_input.a, 17267u, 0u), -1475f))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(36395u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(func_3(Struct_1(623f, global0.x, vec4<i32>(global0.x, global0.x, global0.x, global0.x), global0.x)), ~104u, u_input.a))) << (func_2(global4[_wgslsmith_index_u32(select(u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(19197u, 0u, 15340u, 72274u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4660u), vec4<u32>(9627u, u_input.a, 22137u, u_input.a))), u_input.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(1700u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 3067u, u_input.a, u_input.a))), 17u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(621f, 307f, -1200f, 1981f))), firstTrailingBit(vec4<u32>(1u, u_input.a << (74311u % 32u), abs(u_input.a), abs(61245u))), _wgslsmith_f_op_f32(sign(-2440f))) % vec3<u32>(32u));
    return max(~(global0.x | 24625i) & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, global0.x, global0.x), vec4<i32>(-35974i, global0.x, global0.x, global0.x)), select(-39058i, ~global0.x, any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 22u)])))) ^ global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], !global1[_wgslsmith_index_u32(~1u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], true);
    let var_1 = Struct_1(1000f, global0.x, vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-1i, global0.x, 27372i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, 15674i) << (vec3<u32>(47075u, 1u, 14781u) % vec3<u32>(32u)), vec3<i32>(-29946i, global0.x, -1i), vec3<i32>(global0.x, 2147483647i, 0i))), func_1(vec4<bool>(true, false, false, 18186u < u_input.a)), 24026i, ~(global0.x << (u_input.a % 32u)) ^ _wgslsmith_sub_i32(max(global0.x, -1i), 19397i)), 1i);
    var var_2 = abs(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1934u, 1u, u_input.a), vec4<u32>(11912u, u_input.a, u_input.a, u_input.a)) & _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, 52876u, u_input.a, 34109u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 25648u)))));
    global2 = array<vec2<f32>, 2>();
    let var_3 = global0.x;
    global2 = array<vec2<f32>, 2>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(510f + var_1.a), all(var_0.yyx))), global0.x, var_1.c, var_1.c.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)] - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 2u)])) * vec2<f32>(var_1.a, var_4.a))) * vec2<f32>(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

