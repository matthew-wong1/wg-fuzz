struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: Struct_5 = Struct_5(115f, 4185u, false, Struct_2(vec3<i32>(-25602i, 2147483647i, i32(-2147483648))), 4294967295u);

var<private> global2: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = vec2<bool>(true, global1.c);
    var var_1 = 44421u;
    var var_2 = global1.e;
    let var_3 = Struct_3(Struct_2(~global1.d.a));
    let var_4 = arg_1;
    return 319u;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -132f) * arg_2.yy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + -635f)), !select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(global1.c, global1.c))))));
    global1 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1000f))), min(109620u, 4294967295u ^ _wgslsmith_sub_u32(~u_input.d, func_3(arg_1.b, arg_1))), true, Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(global1.d.a, vec3<i32>(2147483647i, 18218i, global2.a.a.x)) & firstTrailingBit(arg_1.a), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(3350i, u_input.a, global1.d.a.x), global1.d.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.a, arg_1.a), global1.d.a))), ~countOneBits(_wgslsmith_clamp_u32(firstLeadingBit(global1.b), 0u, ~22061u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.a, arg_1.b)))), arg_1.b)), _wgslsmith_f_op_f32(ceil(arg_1.b)));
    let var_2 = u_input.b;
    global0 = array<Struct_3, 23>();
    return Struct_5(-311f, ~59747u, !(arg_0 & (true & global1.c)), global2.a, countOneBits(1u));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(644f)), global1.a));
    global1 = func_2(!arg_0, Struct_4(7812i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f - 375f) + global1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, 684f, 716f, global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, -1343f, global1.a) * vec4<f32>(-528f, global1.a, 1663f, global1.a)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(926f, -2231f, -606f, global1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, 831f, 907f) - vec4<f32>(933f, -315f, 1233f, global1.a)))))));
    let var_1 = 212f;
    var var_2 = Struct_5(var_1, global1.e, any(vec3<bool>(_wgslsmith_f_op_f32(-var_1) == var_1, all(!vec2<bool>(true, global1.c)), !func_2(true, Struct_4(12970i, -156f), vec4<f32>(global1.a, 2104f, global1.a, global1.a)).c)), func_2(!any(!vec3<bool>(true, false, arg_0)), Struct_4(1i, var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, global1.a, 117f, global1.a))))))).d, _wgslsmith_sub_u32(4294967295u, ((global1.b | 0u) << (0u % 32u)) | _wgslsmith_div_u32(global1.e, 1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1914f));
    return Struct_4(-21580i, -1084f);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = u_input.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a)))));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(global1.e & 27191u), u_input.d, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(45777u, 56126u, global1.e), 25014u), 4294967295u & var_0), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43402u, 0u, 50807u, u_input.c), vec4<u32>(0u, global1.e, 1630u, global1.b)), vec4<u32>(~global1.e, global1.b, abs(var_0), firstLeadingBit(0u)))));
    let var_3 = vec3<i32>(_wgslsmith_div_i32(25633i, _wgslsmith_clamp_i32(-1i, ~0i, func_1(global1.c | false, global0[_wgslsmith_index_u32(4294967295u, 23u)]).a)), ~global2.a.a.x, 2147483647i);
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(global1.a, global1.a)), _wgslsmith_f_op_f32(arg_0.b - 1000f), arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(651f, var_1.a, var_1.a)))), vec3<bool>(global1.c, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(max(arg_0.b, global1.a)), global1.a) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1335f, -471f, 424f) * vec3<f32>(var_1.a, 208f, var_1.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-1639f, 763f, -430f), vec3<f32>(-550f, var_1.a, var_1.a))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -589f, 589f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1728f, 981f, arg_0.b)))))))));
    return global0[_wgslsmith_index_u32(7146u, 23u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec2<u32>) -> bool {
    var var_0 = ~((select(vec4<i32>(arg_2.d.a.x, arg_2.d.a.x, global1.d.a.x, 11516i), reverseBits(vec4<i32>(-11882i, 1i, global1.d.a.x, global2.a.a.x)), arg_3.x < global1.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(50816u, arg_2.b, 1u, 1u) ^ vec4<u32>(0u, u_input.b.x, global1.b, 72035u), vec4<u32>(global1.e, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(arg_2.d.a.x, arg_1.a.a.x, u_input.a, -88218i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -5202i, arg_2.d.a.x, -2147483647i), vec4<i32>(7189i, 70182i, 0i, arg_1.a.a.x))) << (reverseBits(~vec4<u32>(1u, global1.b, arg_2.b, 0u)) % vec4<u32>(32u))));
    var var_1 = global1.b;
    global1 = arg_2;
    global2 = Struct_3(func_4(Struct_4(-1i, -2128f)).a);
    var var_2 = _wgslsmith_f_op_f32(abs(-1000f));
    return select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - arg_2.a) - _wgslsmith_f_op_f32(1830f + 1170f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) - _wgslsmith_f_op_f32(-arg_2.a))) >= arg_2.a, false, !(!global1.c));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = 2147483647i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(17277u, 16596u), u_input.d), 23u)], vec2<bool>(false, func_5(vec2<bool>(!global1.c, any(vec2<bool>(true, global1.c))), func_4(func_1(global1.c, global0[_wgslsmith_index_u32(global1.b, 23u)])), Struct_5(_wgslsmith_div_f32(global1.a, global1.a), reverseBits(global1.e), all(vec3<bool>(true, true, false)), global1.d, ~4294967295u), vec2<u32>(global1.b, func_2(false, Struct_4(7311i, 1046f), vec4<f32>(global1.a, global1.a, global1.a, 314f)).e))));
    let var_1 = func_2(any(vec4<bool>(all(vec4<bool>(true, global1.c, true, global1.c)), false, global1.c, global1.c)) && true, Struct_4(_wgslsmith_mult_i32(-38473i, ~_wgslsmith_mod_i32(-2147483647i, u_input.a)), global1.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(237f * -1217f)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))))));
    var var_2 = reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(62109u, u_input.d), vec2<u32>(10975u, var_1.b)), u_input.b), vec2<u32>(global1.b, _wgslsmith_clamp_u32(4294967295u, global1.e, u_input.c))), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(global1.b, var_1.b)), vec2<u32>(~u_input.b.x, _wgslsmith_mult_u32(1u, 44620u)))));
    var var_3 = u_input.b.x;
    let var_4 = func_4(Struct_4(-2147483647i, global1.a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(max(~global2.a.a.yy, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~var_1.d.a.xy, max(vec2<i32>(1i, var_4.a.x), var_1.d.a.zz)), var_1.d.a.yz)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1567f, var_0.a) * vec2<f32>(-657f, var_1.a)) * vec2<f32>(var_1.a, var_0.a)), vec2<f32>(var_0.a, -1000f)))), ~(~17981i), var_4.a.x);
}

