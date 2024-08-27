struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec2<f32> = vec2<f32>(1476f, 495f);

var<private> global2: array<i32, 13>;

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    let var_0 = Struct_1(-5338i, firstLeadingBit(vec3<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), 103002u | u_input.a.x) >> (vec3<u32>(0u, ~arg_0.b.x, 45405u) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global1.x, 1306f) * vec3<f32>(arg_1, arg_1, -395f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, -365f)))))));
    var var_2 = 57967i;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(arg_1 * global1.x))), var_1.x, -335f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_1, -450f) + vec3<f32>(-950f, 1087f, -1032f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, var_1.x, global1.x))))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true))))));
}

fn func_2() -> vec2<f32> {
    var var_0 = any(vec4<bool>(true, true, true, true)) && true;
    var var_1 = u_input.b.yz;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(0i, vec3<u32>(select(1u, u_input.b.x, false), _wgslsmith_div_u32(var_1.x, u_input.b.x), countOneBits(u_input.b.x))), _wgslsmith_f_op_f32(-global1.x))), true, ~(~select(vec4<u32>(u_input.b.x, 24651u, 11659u, 55620u), u_input.a, true)) << ((u_input.a << (vec4<u32>(0u, u_input.a.x, 0u, ~43424u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(max(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(var_1.x, 13u)], -24894i), vec3<i32>(2147483647i, 2147483647i, 10023i)), -2147483647i), u_input.b), select(~firstLeadingBit(vec3<u32>(2744u, var_1.x, u_input.a.x) & u_input.b), max(vec3<u32>(u_input.b.x, ~var_1.x, ~54874u), vec3<u32>(var_1.x, u_input.a.x, _wgslsmith_mod_u32(u_input.b.x, 63660u))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(28980u, 77744u, u_input.a.x, u_input.a.x), vec4<u32>(var_1.x, var_1.x, u_input.a.x, 0u)), 4294967295u >> (var_1.x % 32u), true) != var_1.x));
    return _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -688f), var_2.a.zx);
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-35598i, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.a.b.x, u_input.a.x), vec3<u32>(arg_0.a.b.x, u_input.a.x, 62018u))), global1.x)).x);
    global1 = var_0.zy;
    global1 = vec2<f32>(global1.x, 317f);
    global2 = array<i32, 13>();
    return var_0.ww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec2<u32>(~41181u, 1u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 885f)))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(-522f, 1871f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(672f, 401f), vec2<f32>(2643f, 380f)))) + _wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], vec3<u32>(4294967295u, 122755u, 0u)), -16555i, vec4<i32>(global2[_wgslsmith_index_u32(38135u, 13u)], 24834i, global2[_wgslsmith_index_u32(var_0.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)])), true)))) - vec2<f32>(-1272f, _wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(f32(-1f) * -436f))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1311f, -1718f))))))) + vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * -207f)));
    let var_2 = 382f;
    let var_3 = vec4<bool>(false, false, select(true, true, global2[_wgslsmith_index_u32(min(u_input.a.x >> (4294967295u % 32u), u_input.a.x), 13u)] <= _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(~var_0.x, 13u)])), !(~var_0.x > ~(~10609u)));
    let var_4 = 38839i;
    let var_5 = select(-59021i, global2[_wgslsmith_index_u32(~(4294967295u >> ((_wgslsmith_dot_vec3_u32(u_input.a.yyx, vec3<u32>(4294967295u, 0u, 1u)) | ~u_input.b.x) % 32u)), 13u)], !var_3.x & false);
    let var_6 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(abs(var_2)))), 935f, _wgslsmith_f_op_f32(-global1.x))), (firstTrailingBit(-1i) > 2147483647i) == all(select(select(var_3.wyy, vec3<bool>(true, var_3.x, true), global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<bool>(true, false, var_3.x), !vec3<bool>(true, var_3.x, false))), countOneBits(abs(firstLeadingBit(select(vec4<u32>(var_0.x, 56043u, 5203u, 19925u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), var_3.x)))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -880i, var_5), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_5), vec3<i32>(0i, 0i, var_5)))), u_input.b), u_input.a.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, var_2, var_0.x != 0u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -495f)))), -452f, 495f, -2745f), var_6.a, 169f);
}

