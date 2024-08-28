struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, false, true, true, true, false, false, true, false, true, false, false, false, true, true, true, true, true, false, false);

var<private> global1: array<f32, 27> = array<f32, 27>(-305f, 1607f, 1178f, -2335f, 619f, 1212f, 1125f, -1500f, -1000f, -574f, 1708f, -744f, -1875f, -761f, 1163f, 425f, -913f, 325f, 1723f, 147f, -1009f, -289f, -307f, -1978f, -499f, -2553f, 1000f);

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 16>;

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -4206i, arg_1, 1i), vec4<i32>(arg_1, arg_1, 5095i, arg_1), vec4<i32>(arg_1, -20062i, 1i, 0i)) | countOneBits(vec4<i32>(-67203i, arg_1, arg_0.b, 7068i) & vec4<i32>(-23669i, arg_1, arg_1, arg_1)), vec4<i32>(~arg_0.b, arg_1, 42916i, 1i));
    var var_1 = Struct_1(select(select(~countOneBits(vec4<u32>(u_input.a, arg_0.a.x, arg_0.a.x, global4.x)), ~arg_0.a >> (_wgslsmith_clamp_vec4_u32(arg_0.a, vec4<u32>(global4.x, arg_0.a.x, u_input.b, arg_0.a.x), arg_0.a) % vec4<u32>(32u)), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 20u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(43736u, 20u)], global0[_wgslsmith_index_u32(global4.x, 20u)], global0[_wgslsmith_index_u32(arg_0.a.x, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(26174u, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)], true))), vec4<u32>(min(_wgslsmith_mod_u32(16991u, arg_0.a.x), _wgslsmith_add_u32(u_input.b, 21886u)), 40592u << (_wgslsmith_dot_vec2_u32(arg_0.a.yx, vec2<u32>(arg_0.a.x, 1u)) % 32u), u_input.b, u_input.b), 1u > arg_0.a.x), firstTrailingBit(-max(_wgslsmith_mult_i32(arg_1, arg_0.b), reverseBits(1i))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 27u)]))))));
    global2 = arg_0.a.x <= min(~28528u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global4.x, global4.x), vec3<u32>(30620u, global4.x, 1u) ^ vec3<u32>(arg_0.a.x, u_input.b, 4294967295u)));
    let var_2 = Struct_1(abs(abs(var_1.a)), arg_1 ^ _wgslsmith_add_i32(-1i, 1i), var_1.c, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 27u)]));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 0u, min(_wgslsmith_dot_vec4_u32(var_2.a, _wgslsmith_div_vec4_u32(var_1.a, var_2.a)), max(global4.x >> (4294967295u % 32u), u_input.b | 1u)), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, arg_0.a.x), vec2<u32>(53976u, global4.x)), ~(~86178u), all(select(vec2<bool>(global0[_wgslsmith_index_u32(65950u, 20u)], false), vec2<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 20u)], global0[_wgslsmith_index_u32(var_1.a.x, 20u)]), global3[_wgslsmith_index_u32(var_1.a.x, 16u)])))), abs(arg_1), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c - arg_0.c) - arg_0.c) * _wgslsmith_f_op_vec2_f32(trunc(var_1.c))))), -1000f);
    return _wgslsmith_div_u32(global4.x, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = !global3[_wgslsmith_index_u32(global4.x, 16u)];
    let var_1 = Struct_1(vec4<u32>(func_3(arg_0, arg_0.b), 50930u, 4294967295u, 67791u) & ~firstTrailingBit(~arg_0.a), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_0.b, arg_0.b)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(47744i, 40332i)))) ^ _wgslsmith_dot_vec4_i32(select(-vec4<i32>(arg_0.b, -12712i, -14761i, 24578i), ~vec4<i32>(arg_0.b, 12115i, -1i, -23408i), var_0.x & true), vec4<i32>(43658i, -1i, 1i, -arg_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))), -1418f);
    var_0 = select(!select(!select(global3[_wgslsmith_index_u32(34878u, 16u)], global3[_wgslsmith_index_u32(3498u, 16u)], global3[_wgslsmith_index_u32(global4.x, 16u)]), !vec2<bool>(false, var_0.x), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)]), !global3[_wgslsmith_index_u32(1u, 16u)])), vec2<bool>(false, any(vec4<bool>(true, true, true, true))), global0[_wgslsmith_index_u32(76746u, 20u)]);
    return 1479f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> u32 {
    global0 = array<bool, 20>();
    let var_0 = Struct_1(vec4<u32>(~0u, 95341u, 1u, global4.x), _wgslsmith_mult_i32(~abs(~(-1i)), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(13556i, 22091i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -4557i, 0i) << (vec4<u32>(arg_0.x, 1u, global4.x, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, -1i, -18795i, 0i))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(~vec4<u32>(76072u, 4294967295u, 0u, 6035u), 27264i, arg_1, global1[_wgslsmith_index_u32(func_3(Struct_1(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 11539u), 73300i, vec2<f32>(813f, arg_1.x), global1[_wgslsmith_index_u32(arg_0.x, 27u)]), -2147483647i), 27u)]), global4.zwz))));
    global2 = _wgslsmith_mod_i32(-1i | -min(var_0.b, -50097i), ~(~_wgslsmith_div_i32(-2147483647i, 1i))) == _wgslsmith_mult_i32(max(~var_0.b, _wgslsmith_add_i32(var_0.b, ~2147483647i)), abs(~var_0.b));
    var var_1 = !vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 20u)], global0[_wgslsmith_index_u32(arg_0.x, 20u)], (88425u & firstLeadingBit(u_input.a)) >= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, global4.x, 0u, 14866u), vec4<u32>(global4.x, u_input.a, 1u, var_0.a.x)), var_0.a), global0[_wgslsmith_index_u32(~global4.x, 20u)]);
    var var_2 = all(!var_1.wy);
    return ~(~_wgslsmith_sub_u32(32883u ^ _wgslsmith_div_u32(arg_0.x, u_input.b), _wgslsmith_mod_u32(arg_0.x, ~45486u)));
}

fn func_1() -> u32 {
    global3 = array<vec2<bool>, 16>();
    var var_0 = Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(128097u, 0u, u_input.a, global4.x), vec4<u32>(4294967295u, u_input.b, 1u, 61136u)) & vec4<u32>(func_2(vec2<u32>(34342u, global4.x), vec2<f32>(1809f, global1[_wgslsmith_index_u32(u_input.b, 27u)])), reverseBits(global4.x), u_input.b ^ 4294967295u, ~20068u)), -2939i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(9623u, 27u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(40804u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 1000f) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], 125f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 2291f), vec2<f32>(global1[_wgslsmith_index_u32(50839u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-694f, global1[_wgslsmith_index_u32(global4.x, 27u)]), vec2<f32>(138f, global1[_wgslsmith_index_u32(global4.x, 27u)])))))), 440f);
    global4 = var_0.a;
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1316f, global1[_wgslsmith_index_u32(0u, 27u)], -2327f, 985f), vec4<f32>(var_0.c.x, -947f, -646f, -321f))))) + vec4<f32>(1f, _wgslsmith_f_op_f32(var_0.c.x - -2105f), var_0.c.x, 480f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, -246f, 220f, var_0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-563f * 853f))), _wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -1503f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f * var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f - global1[_wgslsmith_index_u32(18643u, 27u)])) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a << (123171u % 32u), 27u)])))));
    return _wgslsmith_div_u32(global4.x, firstLeadingBit(_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_mod_u32(func_3(Struct_1(var_0.a, -1i, var_2.zy, var_0.c.x), -45613i), firstTrailingBit(1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~_wgslsmith_sub_vec3_u32(vec3<u32>(58962u, global4.x, u_input.b), global4.zyz), ~firstTrailingBit(abs(vec3<u32>(global4.x, u_input.a, 4294967295u))));
    global1 = array<f32, 27>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec2_u32(var_0.xx, _wgslsmith_mult_vec2_u32(~global4.wy, firstLeadingBit(vec2<u32>(38487u, 34928u))), vec2<u32>(func_1(), var_0.x)), reverseBits(global4.yw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -1046f, 1034f)));
}

